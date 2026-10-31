.class public final Lh7/k;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final k:Ljava/lang/String;

.field public static final l:Ljava/lang/String;

.field public static final m:Ljava/lang/String;

.field public static final n:[J

.field public static final o:Lh7/k;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public final e:Lh7/h;

.field public final f:Lh7/h;

.field public g:Landroid/content/Context;

.field public h:Z

.field public i:Z

.field public j:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x15

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v2, v1, [B

    .line 11
    .line 12
    fill-array-data v2, :array_1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lh7/k;->k:Ljava/lang/String;

    .line 20
    .line 21
    const/16 v0, 0xd

    .line 22
    .line 23
    new-array v0, v0, [B

    .line 24
    .line 25
    fill-array-data v0, :array_2

    .line 26
    .line 27
    .line 28
    new-array v2, v1, [B

    .line 29
    .line 30
    fill-array-data v2, :array_3

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lh7/k;->l:Ljava/lang/String;

    .line 38
    .line 39
    const/16 v0, 0x13

    .line 40
    .line 41
    new-array v0, v0, [B

    .line 42
    .line 43
    fill-array-data v0, :array_4

    .line 44
    .line 45
    .line 46
    new-array v1, v1, [B

    .line 47
    .line 48
    fill-array-data v1, :array_5

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lh7/k;->m:Ljava/lang/String;

    .line 56
    .line 57
    const/4 v0, 0x5

    .line 58
    new-array v0, v0, [J

    .line 59
    .line 60
    fill-array-data v0, :array_6

    .line 61
    .line 62
    .line 63
    sput-object v0, Lh7/k;->n:[J

    .line 64
    .line 65
    new-instance v0, Lh7/k;

    .line 66
    .line 67
    invoke-direct {v0}, Lh7/k;-><init>()V

    .line 68
    .line 69
    .line 70
    sput-object v0, Lh7/k;->o:Lh7/k;

    .line 71
    .line 72
    return-void

    .line 73
    :array_0
    .array-data 1
        -0x6t
        0x26t
        0x2ct
        -0xct
        -0x60t
        -0x1ft
        -0x1ct
        -0x63t
        -0x3dt
        0x26t
        0x2bt
        -0x5t
        -0x4dt
        -0x1ft
        -0x33t
        -0x5ft
        -0x27t
        0x20t
        0x2dt
        -0xbt
        -0x5at
    .end array-data

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    nop

    .line 89
    :array_1
    .array-data 1
        -0x49t
        0x49t
        0x59t
        -0x66t
        -0x2ct
        -0x7ct
        -0x80t
        -0x32t
    .end array-data

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    :array_2
    .array-data 1
        -0x3bt
        -0x7at
        -0x5ct
        0x5ct
        -0x76t
        -0xdt
        0x6dt
        -0x6at
        -0x26t
        -0x7at
        -0x42t
        0x46t
        -0x73t
    .end array-data

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    nop

    .line 109
    :array_3
    .array-data 1
        -0x58t
        -0x17t
        -0x2ft
        0x32t
        -0x2t
        -0x6at
        0x9t
        -0x37t
    .end array-data

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    :array_4
    .array-data 1
        0x49t
        -0x77t
        -0x30t
        -0x18t
        -0x74t
        0x77t
        -0x70t
        0x2ct
        0x51t
        -0x6bt
        -0x39t
        -0x27t
        -0x64t
        0x77t
        -0x7et
        0x1at
        0x47t
        -0x7dt
        -0x2at
    .end array-data

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    :array_5
    .array-data 1
        0x24t
        -0x1at
        -0x5bt
        -0x7at
        -0x8t
        0x12t
        -0xct
        0x73t
    .end array-data

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    :array_6
    .array-data 8
        0x3e8
        0xbb8
        0x1770
        0x2ee0
        0x4650
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lh7/k;->a:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lh7/k;->b:Landroid/os/Handler;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lh7/k;->c:Ljava/util/ArrayList;

    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lh7/k;->d:Ljava/util/ArrayList;

    .line 35
    .line 36
    new-instance v0, Lh7/h;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-direct {v0, p0, v1}, Lh7/h;-><init>(Lh7/k;I)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lh7/k;->e:Lh7/h;

    .line 43
    .line 44
    new-instance v0, Lh7/h;

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    invoke-direct {v0, p0, v1}, Lh7/h;-><init>(Lh7/k;I)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lh7/k;->f:Lh7/h;

    .line 51
    .line 52
    return-void
.end method

.method public static a(Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 18

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    new-array v2, v0, [B

    .line 9
    .line 10
    fill-array-data v2, :array_1

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const/16 v1, 0xd

    .line 18
    .line 19
    new-array v1, v1, [B

    .line 20
    .line 21
    fill-array-data v1, :array_2

    .line 22
    .line 23
    .line 24
    new-array v2, v0, [B

    .line 25
    .line 26
    fill-array-data v2, :array_3

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const/16 v1, 0x10

    .line 34
    .line 35
    new-array v2, v1, [B

    .line 36
    .line 37
    fill-array-data v2, :array_4

    .line 38
    .line 39
    .line 40
    new-array v5, v0, [B

    .line 41
    .line 42
    fill-array-data v5, :array_5

    .line 43
    .line 44
    .line 45
    invoke-static {v2, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    const/16 v2, 0x14

    .line 50
    .line 51
    new-array v6, v2, [B

    .line 52
    .line 53
    fill-array-data v6, :array_6

    .line 54
    .line 55
    .line 56
    new-array v7, v0, [B

    .line 57
    .line 58
    fill-array-data v7, :array_7

    .line 59
    .line 60
    .line 61
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    new-array v7, v0, [B

    .line 66
    .line 67
    fill-array-data v7, :array_8

    .line 68
    .line 69
    .line 70
    new-array v8, v0, [B

    .line 71
    .line 72
    fill-array-data v8, :array_9

    .line 73
    .line 74
    .line 75
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    const/16 v8, 0xc

    .line 80
    .line 81
    new-array v8, v8, [B

    .line 82
    .line 83
    fill-array-data v8, :array_a

    .line 84
    .line 85
    .line 86
    new-array v9, v0, [B

    .line 87
    .line 88
    fill-array-data v9, :array_b

    .line 89
    .line 90
    .line 91
    invoke-static {v8, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    const/16 v9, 0xa

    .line 96
    .line 97
    new-array v10, v9, [B

    .line 98
    .line 99
    fill-array-data v10, :array_c

    .line 100
    .line 101
    .line 102
    new-array v11, v0, [B

    .line 103
    .line 104
    fill-array-data v11, :array_d

    .line 105
    .line 106
    .line 107
    invoke-static {v10, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    const/16 v11, 0xe

    .line 112
    .line 113
    new-array v11, v11, [B

    .line 114
    .line 115
    fill-array-data v11, :array_e

    .line 116
    .line 117
    .line 118
    new-array v12, v0, [B

    .line 119
    .line 120
    fill-array-data v12, :array_f

    .line 121
    .line 122
    .line 123
    invoke-static {v11, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v11

    .line 127
    new-array v2, v2, [B

    .line 128
    .line 129
    fill-array-data v2, :array_10

    .line 130
    .line 131
    .line 132
    new-array v12, v0, [B

    .line 133
    .line 134
    fill-array-data v12, :array_11

    .line 135
    .line 136
    .line 137
    invoke-static {v2, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    const/16 v12, 0x11

    .line 142
    .line 143
    new-array v12, v12, [B

    .line 144
    .line 145
    fill-array-data v12, :array_12

    .line 146
    .line 147
    .line 148
    new-array v13, v0, [B

    .line 149
    .line 150
    fill-array-data v13, :array_13

    .line 151
    .line 152
    .line 153
    invoke-static {v12, v13}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v12

    .line 157
    const/16 v13, 0x12

    .line 158
    .line 159
    new-array v14, v13, [B

    .line 160
    .line 161
    fill-array-data v14, :array_14

    .line 162
    .line 163
    .line 164
    new-array v15, v0, [B

    .line 165
    .line 166
    fill-array-data v15, :array_15

    .line 167
    .line 168
    .line 169
    invoke-static {v14, v15}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v14

    .line 173
    new-array v13, v13, [B

    .line 174
    .line 175
    fill-array-data v13, :array_16

    .line 176
    .line 177
    .line 178
    new-array v15, v0, [B

    .line 179
    .line 180
    fill-array-data v15, :array_17

    .line 181
    .line 182
    .line 183
    invoke-static {v13, v15}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v13

    .line 187
    new-array v15, v1, [B

    .line 188
    .line 189
    fill-array-data v15, :array_18

    .line 190
    .line 191
    .line 192
    new-array v1, v0, [B

    .line 193
    .line 194
    fill-array-data v1, :array_19

    .line 195
    .line 196
    .line 197
    invoke-static {v15, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v15

    .line 201
    new-array v1, v9, [B

    .line 202
    .line 203
    fill-array-data v1, :array_1a

    .line 204
    .line 205
    .line 206
    new-array v9, v0, [B

    .line 207
    .line 208
    fill-array-data v9, :array_1b

    .line 209
    .line 210
    .line 211
    invoke-static {v1, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    const/16 v9, 0x10

    .line 216
    .line 217
    new-array v9, v9, [B

    .line 218
    .line 219
    fill-array-data v9, :array_1c

    .line 220
    .line 221
    .line 222
    move-object/from16 v16, v1

    .line 223
    .line 224
    new-array v1, v0, [B

    .line 225
    .line 226
    fill-array-data v1, :array_1d

    .line 227
    .line 228
    .line 229
    invoke-static {v9, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    move-object v9, v14

    .line 234
    move-object v14, v13

    .line 235
    move-object v13, v9

    .line 236
    move-object/from16 v17, v1

    .line 237
    .line 238
    move-object v9, v10

    .line 239
    move-object v10, v11

    .line 240
    const/16 v1, 0xa

    .line 241
    .line 242
    move-object v11, v2

    .line 243
    filled-new-array/range {v3 .. v17}, [Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    const/4 v3, 0x0

    .line 248
    move v4, v3

    .line 249
    :goto_0
    const/16 v5, 0xf

    .line 250
    .line 251
    if-ge v4, v5, :cond_2

    .line 252
    .line 253
    aget-object v5, v2, v4

    .line 254
    .line 255
    new-instance v6, Ljava/io/File;

    .line 256
    .line 257
    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 261
    .line 262
    .line 263
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    goto :goto_1

    .line 265
    :catch_0
    const/4 v5, 0x0

    .line 266
    :goto_1
    if-nez v5, :cond_1

    .line 267
    .line 268
    :cond_0
    move-object/from16 v11, p0

    .line 269
    .line 270
    move-object/from16 v12, p1

    .line 271
    .line 272
    goto :goto_3

    .line 273
    :cond_1
    array-length v6, v5

    .line 274
    move v7, v3

    .line 275
    :goto_2
    if-ge v7, v6, :cond_0

    .line 276
    .line 277
    aget-object v8, v5, v7

    .line 278
    .line 279
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    const/4 v9, 0x7

    .line 283
    new-array v9, v9, [B

    .line 284
    .line 285
    fill-array-data v9, :array_1e

    .line 286
    .line 287
    .line 288
    new-array v10, v0, [B

    .line 289
    .line 290
    fill-array-data v10, :array_1f

    .line 291
    .line 292
    .line 293
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v9

    .line 297
    new-array v10, v1, [B

    .line 298
    .line 299
    fill-array-data v10, :array_20

    .line 300
    .line 301
    .line 302
    new-array v11, v0, [B

    .line 303
    .line 304
    fill-array-data v11, :array_21

    .line 305
    .line 306
    .line 307
    invoke-static {v10, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v10

    .line 311
    move-object/from16 v11, p0

    .line 312
    .line 313
    move-object/from16 v12, p1

    .line 314
    .line 315
    invoke-static {v11, v12, v8, v9, v10}, Lh7/k;->b(Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    add-int/lit8 v7, v7, 0x1

    .line 319
    .line 320
    goto :goto_2

    .line 321
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 322
    .line 323
    goto :goto_0

    .line 324
    :cond_2
    return-void

    .line 325
    :array_0
    .array-data 1
        0x50t
        -0x11t
        0x14t
        -0xdt
        0x5et
        -0x50t
        0x20t
        0x24t
    .end array-data

    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    :array_1
    .array-data 1
        0x7ft
        -0x64t
        0x60t
        -0x64t
        0x2ct
        -0x2ft
        0x47t
        0x41t
    .end array-data

    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    :array_2
    .array-data 1
        0x2ft
        0x0t
        0x42t
        -0x16t
        -0xdt
        0x6et
        0x21t
        0x4t
        0x69t
        0xct
        0x73t
        -0x14t
        -0x55t
    .end array-data

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
    .line 352
    nop

    .line 353
    :array_3
    .array-data 1
        0x0t
        0x6dt
        0x2ct
        -0x62t
        -0x24t
        0x3t
        0x44t
        0x60t
    .end array-data

    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    :array_4
    .array-data 1
        0x3bt
        0x24t
        -0x52t
        0x13t
        0x35t
        0x76t
        -0x55t
        0x4ft
        0x4bt
        0x3at
        -0x4ct
        0x8t
        0x68t
        0x62t
        -0x41t
        0x48t
    .end array-data

    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    :array_5
    .array-data 1
        0x14t
        0x49t
        -0x40t
        0x67t
        0x1at
        0x3t
        -0x28t
        0x2dt
    .end array-data

    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    :array_6
    .array-data 1
        0x17t
        -0x4at
        0x6bt
        0x1ft
        0x46t
        0x38t
        -0x5ct
        0x7t
        0x17t
        -0x50t
        0x6ct
        0x12t
        0x6bt
        0x2at
        -0x49t
        0xdt
        0x4at
        -0x5ct
        0x78t
        0x15t
    .end array-data

    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    :array_7
    .array-data 1
        0x38t
        -0x3bt
        0x1ft
        0x70t
        0x34t
        0x59t
        -0x3dt
        0x62t
    .end array-data

    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    :array_8
    .array-data 1
        -0x4et
        -0x22t
        -0x1dt
        -0x51t
        -0x2bt
        -0x64t
        0x6t
        0x79t
    .end array-data

    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    :array_9
    .array-data 1
        -0x63t
        -0x4dt
        -0x73t
        -0x25t
        -0x6t
        -0x17t
        0x75t
        0x1bt
    .end array-data

    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    :array_a
    .array-data 1
        0x53t
        0x27t
        0x76t
        0x4et
        -0x6dt
        0x22t
        0x77t
        -0x72t
        0x53t
        0x21t
        0x71t
        0x43t
    .end array-data

    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    :array_b
    .array-data 1
        0x7ct
        0x54t
        0x2t
        0x21t
        -0x1ft
        0x43t
        0x10t
        -0x15t
    .end array-data

    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    :array_c
    .array-data 1
        -0x18t
        -0x5et
        -0x24t
        -0x2bt
        -0x48t
        0x66t
        -0x79t
        -0x5ft
        -0x4ct
        -0x5ct
    .end array-data

    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    nop

    .line 447
    :array_d
    .array-data 1
        -0x39t
        -0x31t
        -0x4et
        -0x5ft
        -0x69t
        0x13t
        -0x1dt
        -0x38t
    .end array-data

    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    :array_e
    .array-data 1
        0x14t
        -0x46t
        0x4at
        -0x10t
        -0x27t
        0x5t
        0x2ct
        0x45t
        0x14t
        -0x44t
        0x5at
        -0xat
        -0x28t
        0xft
    .end array-data

    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    nop

    .line 467
    :array_f
    .array-data 1
        0x3bt
        -0x37t
        0x3et
        -0x61t
        -0x55t
        0x64t
        0x4bt
        0x20t
    .end array-data

    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    :array_10
    .array-data 1
        -0x12t
        0x47t
        -0x4t
        -0x7at
        0x4t
        -0x36t
        -0x51t
        -0x35t
        -0x4bt
        0x43t
        -0x1t
        -0x69t
        0x4t
        -0x24t
        -0x41t
        -0x3dt
        -0x60t
        0x5ft
        -0x2t
        -0x7at
    .end array-data

    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    :array_11
    .array-data 1
        -0x3ft
        0x2at
        -0x6et
        -0xet
        0x2bt
        -0x48t
        -0x26t
        -0x5bt
    .end array-data

    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    :array_12
    .array-data 1
        0x59t
        0x58t
        -0x5dt
        -0xft
        0x5bt
        0x25t
        0x53t
        -0x3dt
        0x2t
        0x5ct
        -0x60t
        -0x20t
        0x5bt
        0x25t
        0x43t
        -0x34t
        0x12t
    .end array-data

    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    nop

    .line 511
    :array_13
    .array-data 1
        0x76t
        0x35t
        -0x33t
        -0x7bt
        0x74t
        0x57t
        0x26t
        -0x53t
    .end array-data

    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    :array_14
    .array-data 1
        -0x43t
        -0x31t
        -0x4bt
        0x3bt
        0xet
        0x66t
        -0xet
        -0x46t
        -0x1at
        -0x35t
        -0x4at
        0x2at
        0xet
        0x63t
        -0xbt
        -0x43t
        -0x1at
        -0x39t
    .end array-data

    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    nop

    .line 533
    :array_15
    .array-data 1
        -0x6et
        -0x5et
        -0x25t
        0x4ft
        0x21t
        0x14t
        -0x79t
        -0x2ct
    .end array-data

    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    :array_16
    .array-data 1
        -0xct
        -0x13t
        0x34t
        -0x35t
        -0x5et
        -0x54t
        -0x5dt
        -0x7dt
        -0xct
        -0x5t
        0x38t
        -0x30t
        -0x7dt
        -0x57t
        -0x79t
        -0x79t
        -0x57t
        -0x6t
    .end array-data

    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    nop

    .line 555
    :array_17
    .array-data 1
        -0x25t
        -0x62t
        0x40t
        -0x5ct
        -0x30t
        -0x33t
        -0x3ct
        -0x1at
    .end array-data

    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    :array_18
    .array-data 1
        -0x3t
        0x39t
        -0x35t
        -0x3t
        -0x2ct
        0x3et
        -0x39t
        0x21t
        -0x3t
        0x39t
        -0x25t
        -0xft
        -0x39t
        0x2dt
        -0x3ct
        0x75t
    .end array-data

    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    :array_19
    .array-data 1
        -0x2et
        0x4at
        -0x41t
        -0x6et
        -0x5at
        0x5ft
        -0x60t
        0x44t
    .end array-data

    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    :array_1a
    .array-data 1
        0x5dt
        -0x3et
        -0x58t
        0x5ft
        0xdt
        -0x75t
        0x73t
        -0x16t
        0x1t
        -0x35t
    .end array-data

    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    nop

    .line 593
    :array_1b
    .array-data 1
        0x72t
        -0x51t
        -0x3at
        0x2bt
        0x22t
        -0x12t
        0xbt
        -0x62t
    .end array-data

    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    :array_1c
    .array-data 1
        -0x35t
        -0x14t
        -0x26t
        -0x65t
        0xat
        0x55t
        0x4et
        -0x5bt
        -0x7ft
        -0xdt
        -0x26t
        -0x72t
        0x49t
        0x6ft
        0x45t
        -0x4bt
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
    .line 611
    .line 612
    .line 613
    :array_1d
    .array-data 1
        -0x1ct
        -0x7ft
        -0x4ct
        -0x11t
        0x25t
        0x30t
        0x36t
        -0x2ft
    .end array-data

    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    :array_1e
    .array-data 1
        0x75t
        -0x76t
        -0x18t
        -0x35t
        0x1t
        -0x4bt
        -0x6dt
    .end array-data

    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    :array_1f
    .array-data 1
        0x18t
        -0x1bt
        -0x63t
        -0x5bt
        0x75t
        -0x30t
        -0x9t
        0x23t
    .end array-data

    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    :array_20
    .array-data 1
        0x3ft
        0x2et
        -0x5at
        0x3t
        0x5ft
        -0x6et
        0x28t
        0x7t
        0x33t
        0x2ft
    .end array-data

    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    nop

    .line 647
    :array_21
    .array-data 1
        0x52t
        0x41t
        -0x2dt
        0x6dt
        0x2bt
        -0x41t
        0x5bt
        0x64t
    .end array-data
.end method

.method public static b(Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    goto/16 :goto_0

    .line 4
    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_1
    const/16 v2, 0x9

    .line 22
    .line 23
    new-array v3, v2, [B

    .line 24
    .line 25
    fill-array-data v3, :array_0

    .line 26
    .line 27
    .line 28
    const/16 v4, 0x8

    .line 29
    .line 30
    new-array v5, v4, [B

    .line 31
    .line 32
    fill-array-data v5, :array_1

    .line 33
    .line 34
    .line 35
    invoke-static {v3, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_6

    .line 44
    .line 45
    new-array v2, v2, [B

    .line 46
    .line 47
    fill-array-data v2, :array_2

    .line 48
    .line 49
    .line 50
    new-array v3, v4, [B

    .line 51
    .line 52
    fill-array-data v3, :array_3

    .line 53
    .line 54
    .line 55
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    goto/16 :goto_0

    .line 66
    .line 67
    :cond_2
    const/4 v2, 0x5

    .line 68
    new-array v3, v2, [B

    .line 69
    .line 70
    fill-array-data v3, :array_4

    .line 71
    .line 72
    .line 73
    new-array v5, v4, [B

    .line 74
    .line 75
    fill-array-data v5, :array_5

    .line 76
    .line 77
    .line 78
    invoke-static {v3, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-nez v3, :cond_6

    .line 87
    .line 88
    new-array v2, v2, [B

    .line 89
    .line 90
    fill-array-data v2, :array_6

    .line 91
    .line 92
    .line 93
    new-array v3, v4, [B

    .line 94
    .line 95
    fill-array-data v3, :array_7

    .line 96
    .line 97
    .line 98
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_3

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    if-eqz v1, :cond_6

    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_4

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_4
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 119
    .line 120
    .line 121
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    if-eqz v0, :cond_6

    .line 123
    .line 124
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-nez p1, :cond_5

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_5
    new-instance p1, Lh7/i;

    .line 136
    .line 137
    invoke-direct {p1, p2}, Lh7/i;-><init>(Ljava/io/File;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    new-instance p0, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    const/16 p1, 0x11

    .line 149
    .line 150
    new-array p1, p1, [B

    .line 151
    .line 152
    fill-array-data p1, :array_8

    .line 153
    .line 154
    .line 155
    new-array p2, v4, [B

    .line 156
    .line 157
    fill-array-data p2, :array_9

    .line 158
    .line 159
    .line 160
    invoke-static {p1, p2, p0, v0}, Lcom/google/protobuf/q;->u([B[BLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    new-array p1, v4, [B

    .line 164
    .line 165
    fill-array-data p1, :array_a

    .line 166
    .line 167
    .line 168
    new-array p2, v4, [B

    .line 169
    .line 170
    fill-array-data p2, :array_b

    .line 171
    .line 172
    .line 173
    invoke-static {p1, p2, p0, p4}, Lcom/google/protobuf/q;->u([B[BLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    const/4 p1, 0x7

    .line 177
    new-array p1, p1, [B

    .line 178
    .line 179
    fill-array-data p1, :array_c

    .line 180
    .line 181
    .line 182
    new-array p2, v4, [B

    .line 183
    .line 184
    fill-array-data p2, :array_d

    .line 185
    .line 186
    .line 187
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    sget-object p1, Lh7/k;->k:Ljava/lang/String;

    .line 202
    .line 203
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    :catch_0
    :cond_6
    :goto_0
    return-void

    .line 207
    :array_0
    .array-data 1
        -0x61t
        0x4t
        0x1at
        0x3bt
        -0x48t
        -0x2bt
        0x7ct
        -0x3bt
        -0x2ct
    .end array-data

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    nop

    .line 217
    :array_1
    .array-data 1
        -0x50t
        0x61t
        0x77t
        0x4et
        -0x2ct
        -0x4ct
        0x8t
        -0x60t
    .end array-data

    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    :array_2
    .array-data 1
        -0x77t
        -0x43t
        0x2bt
        -0x13t
        -0x36t
        0x32t
        -0x5at
        -0x8t
        -0x3et
    .end array-data

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    nop

    .line 235
    :array_3
    .array-data 1
        -0x5at
        -0x28t
        0x46t
        -0x68t
        -0x5at
        0x53t
        -0x2et
        -0x63t
    .end array-data

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    :array_4
    .array-data 1
        0x65t
        0x7at
        -0x66t
        -0x17t
        0x55t
    .end array-data

    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    nop

    .line 251
    :array_5
    .array-data 1
        0x4at
        0x9t
        -0x1t
        -0x7bt
        0x33t
        0x2et
        -0x63t
        0x40t
    .end array-data

    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    :array_6
    .array-data 1
        0xet
        -0x40t
        0x7bt
        0x9t
        -0x17t
    .end array-data

    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    nop

    .line 267
    :array_7
    .array-data 1
        0x21t
        -0x4dt
        0x1et
        0x65t
        -0x71t
        -0x71t
        0x2ft
        0x43t
    .end array-data

    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    :array_8
    .array-data 1
        -0x11t
        -0x2et
        0x2ft
        -0x5bt
        0x13t
        0x4ft
        0x2ft
        0x1ft
        -0xft
        -0x37t
        0x35t
        -0x47t
        0x6t
        0x4dt
        0x2et
        0x5t
        -0x5et
    .end array-data

    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    nop

    .line 289
    :array_9
    .array-data 1
        -0x7et
        -0x43t
        0x5at
        -0x35t
        0x67t
        0x2at
        0x4bt
        0x3ft
    .end array-data

    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    :array_a
    .array-data 1
        0x79t
        -0x65t
        0x6bt
        0x5dt
        -0x7at
        -0x2dt
        0xat
        -0x57t
    .end array-data

    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    :array_b
    .array-data 1
        0x59t
        -0x18t
        0x4t
        0x28t
        -0xct
        -0x50t
        0x6ft
        -0x6ct
    .end array-data

    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    :array_c
    .array-data 1
        0x49t
        0x4t
        -0x4t
        -0x28t
        -0x6t
        -0x4ct
        0x13t
    .end array-data

    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    :array_d
    .array-data 1
        0x69t
        0x77t
        -0x78t
        -0x47t
        -0x72t
        -0x2ft
        0x2et
        -0x71t
    .end array-data
.end method

.method public static c(Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p0, p1, p2, p4, p5}, Lh7/k;->b(Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-lez p2, :cond_0

    .line 11
    .line 12
    new-instance p2, Ljava/io/File;

    .line 13
    .line 14
    const/16 v0, 0x8

    .line 15
    .line 16
    new-array v1, v0, [B

    .line 17
    .line 18
    fill-array-data v1, :array_0

    .line 19
    .line 20
    .line 21
    new-array v2, v0, [B

    .line 22
    .line 23
    fill-array-data v2, :array_1

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {p2, v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/16 v1, 0x9

    .line 34
    .line 35
    new-array v1, v1, [B

    .line 36
    .line 37
    fill-array-data v1, :array_2

    .line 38
    .line 39
    .line 40
    new-array v2, v0, [B

    .line 41
    .line 42
    fill-array-data v2, :array_3

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {p0, p1, p2, p4, v1}, Lh7/k;->b(Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    new-instance p2, Ljava/io/File;

    .line 57
    .line 58
    const/16 v1, 0xd

    .line 59
    .line 60
    new-array v1, v1, [B

    .line 61
    .line 62
    fill-array-data v1, :array_4

    .line 63
    .line 64
    .line 65
    new-array v2, v0, [B

    .line 66
    .line 67
    fill-array-data v2, :array_5

    .line 68
    .line 69
    .line 70
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-direct {p2, v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const/16 p3, 0xe

    .line 78
    .line 79
    new-array p3, p3, [B

    .line 80
    .line 81
    fill-array-data p3, :array_6

    .line 82
    .line 83
    .line 84
    new-array v0, v0, [B

    .line 85
    .line 86
    fill-array-data v0, :array_7

    .line 87
    .line 88
    .line 89
    invoke-static {p3, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    invoke-virtual {p5, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p3

    .line 97
    invoke-static {p0, p1, p2, p4, p3}, Lh7/k;->b(Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_0
    return-void

    .line 101
    :array_0
    .array-data 1
        0x7bt
        -0x5bt
        0x22t
        -0x6t
        -0x7et
        -0x44t
        0x6bt
        -0x43t
    .end array-data

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    :array_1
    .array-data 1
        0x54t
        -0x2at
        0x56t
        -0x6bt
        -0x10t
        -0x23t
        0xct
        -0x28t
    .end array-data

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    :array_2
    .array-data 1
        -0x54t
        -0x6ft
        -0x1bt
        0x4ft
        -0x30t
        -0x40t
        0x1ct
        -0x41t
        -0xdt
    .end array-data

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    nop

    .line 127
    :array_3
    .array-data 1
        -0x6at
        -0x42t
        -0x6at
        0x3bt
        -0x41t
        -0x4et
        0x7dt
        -0x28t
    .end array-data

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    :array_4
    .array-data 1
        -0x70t
        0x6bt
        -0x63t
        -0x4dt
        -0x5bt
        0xct
        0x7bt
        0x7dt
        -0x2at
        0x67t
        -0x54t
        -0x4bt
        -0x3t
    .end array-data

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    nop

    .line 147
    :array_5
    .array-data 1
        -0x41t
        0x6t
        -0xdt
        -0x39t
        -0x76t
        0x61t
        0x1et
        0x19t
    .end array-data

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    :array_6
    .array-data 1
        0x69t
        -0x6ft
        -0x5bt
        -0x51t
        0x4ct
        -0x36t
        0x42t
        0x73t
        0x37t
        -0x29t
        -0x57t
        -0x62t
        0x4at
        -0x6et
    .end array-data

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    nop

    .line 167
    :array_7
    .array-data 1
        0x53t
        -0x42t
        -0x38t
        -0x3ft
        0x38t
        -0x1bt
        0x2ft
        0x16t
    .end array-data
.end method

.method public static varargs d([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    .line 5
    aget-object v2, p0, v1

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-lez v3, :cond_0

    .line 18
    .line 19
    return-object v2

    .line 20
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method public static g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    goto :goto_2

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    move-object v2, v1

    .line 10
    :goto_0
    if-eqz v2, :cond_1

    .line 11
    .line 12
    :try_start_1
    invoke-virtual {v2, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 13
    .line 14
    .line 15
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 16
    goto :goto_1

    .line 17
    :catch_0
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {v1, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_1
    const/4 v1, 0x1

    .line 27
    invoke-virtual {p1, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 34
    return-object p0

    .line 35
    :catch_1
    :goto_2
    return-object v0
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    new-array v2, v1, [B

    .line 10
    .line 11
    fill-array-data v2, :array_1

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const/16 v0, 0xa

    .line 25
    .line 26
    new-array v0, v0, [B

    .line 27
    .line 28
    fill-array-data v0, :array_2

    .line 29
    .line 30
    .line 31
    new-array v1, v1, [B

    .line 32
    .line 33
    fill-array-data v1, :array_3

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 p0, 0x0

    .line 48
    return p0

    .line 49
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 50
    return p0

    .line 51
    :array_0
    .array-data 1
        0x75t
        -0x48t
        0x70t
        -0xat
        0x57t
        -0x59t
        0x78t
    .end array-data

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    :array_1
    .array-data 1
        0x18t
        -0x29t
        0x5t
        -0x68t
        0x23t
        -0x3et
        0x1ct
        0x7ct
    .end array-data

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    :array_2
    .array-data 1
        -0x77t
        0x36t
        -0x4ft
        0x1t
        0x56t
        -0x57t
        0x5et
        0x6at
        -0x6at
        0x36t
    .end array-data

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    nop

    .line 77
    :array_3
    .array-data 1
        -0x1ct
        0x59t
        -0x3ct
        0x6ft
        0x22t
        -0x34t
        0x3at
        0x35t
    .end array-data
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/16 v0, 0x2f

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v2, v1, [B

    .line 11
    .line 12
    fill-array-data v2, :array_1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const/16 v0, 0x2f

    .line 26
    .line 27
    new-array v0, v0, [B

    .line 28
    .line 29
    fill-array-data v0, :array_2

    .line 30
    .line 31
    .line 32
    new-array v2, v1, [B

    .line 33
    .line 34
    fill-array-data v2, :array_3

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    const/16 v0, 0x32

    .line 48
    .line 49
    new-array v2, v0, [B

    .line 50
    .line 51
    fill-array-data v2, :array_4

    .line 52
    .line 53
    .line 54
    new-array v3, v1, [B

    .line 55
    .line 56
    fill-array-data v3, :array_5

    .line 57
    .line 58
    .line 59
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-nez v2, :cond_1

    .line 68
    .line 69
    new-array v0, v0, [B

    .line 70
    .line 71
    fill-array-data v0, :array_6

    .line 72
    .line 73
    .line 74
    new-array v1, v1, [B

    .line 75
    .line 76
    fill-array-data v1, :array_7

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    if-eqz p0, :cond_0

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    const/4 p0, 0x0

    .line 91
    return p0

    .line 92
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 93
    return p0

    .line 94
    nop

    .line 95
    :array_0
    .array-data 1
        -0x77t
        -0x6ct
        -0x4ct
        0x46t
        -0x72t
        -0x13t
        -0x31t
        0x12t
        -0x80t
        -0x65t
        -0x5et
        0x50t
        -0x6at
        -0x1bt
        -0x27t
        0x59t
        -0x3at
        -0x71t
        -0x5dt
        0x56t
        -0x31t
        -0x1bt
        -0x38t
        0x48t
        -0x7ft
        -0x6bt
        -0x42t
        0x1at
        -0x4ct
        -0x29t
        -0x17t
        0x63t
        -0x54t
        -0x41t
        -0x7at
        0x7dt
        -0x5et
        -0x3ft
        -0xct
        0x7dt
        -0x44t
        -0x52t
        -0x6ft
        0x77t
        -0x57t
        -0x3ft
        -0x11t
    .end array-data

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    :array_1
    .array-data 1
        -0x18t
        -0x6t
        -0x30t
        0x34t
        -0x1ft
        -0x7ct
        -0x55t
        0x3ct
    .end array-data

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    :array_2
    .array-data 1
        -0xft
        -0x40t
        -0x2ct
        -0x30t
        -0x16t
        0x78t
        -0x4ft
        -0x3bt
        -0x8t
        -0x31t
        -0x3et
        -0x3at
        -0xet
        0x70t
        -0x59t
        -0x72t
        -0x42t
        -0x25t
        -0x3dt
        -0x40t
        -0x55t
        0x70t
        -0x4at
        -0x61t
        -0x7t
        -0x3ft
        -0x22t
        -0x74t
        -0x30t
        0x42t
        -0x69t
        -0x4ct
        -0x2ct
        -0x15t
        -0x1at
        -0x15t
        -0x3at
        0x54t
        -0x76t
        -0x51t
        -0x2bt
        -0x6t
        -0xft
        -0x1ft
        -0x33t
        0x54t
        -0x6ft
    .end array-data

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    :array_3
    .array-data 1
        -0x70t
        -0x52t
        -0x50t
        -0x5et
        -0x7bt
        0x11t
        -0x2bt
        -0x15t
    .end array-data

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    :array_4
    .array-data 1
        0x7dt
        -0x16t
        -0x6et
        -0x4dt
        0x4t
        0x42t
        -0x6at
        -0x6bt
        0x74t
        -0x1bt
        -0x7ct
        -0x5bt
        0x1ct
        0x4at
        -0x80t
        -0x22t
        0x32t
        -0xft
        -0x7bt
        -0x5dt
        0x45t
        0x4at
        -0x6ft
        -0x31t
        0x75t
        -0x15t
        -0x68t
        -0x11t
        0x3et
        0x78t
        -0x50t
        -0x1ct
        0x5dt
        -0x39t
        -0x4bt
        -0x7ct
        0x38t
        0x78t
        -0x43t
        -0x17t
        0x45t
        -0x25t
        -0x49t
        -0x6bt
        0x3ft
        0x6at
        -0x4ft
        -0xdt
        0x59t
        -0x40t
    .end array-data

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    nop

    .line 197
    :array_5
    .array-data 1
        0x1ct
        -0x7ct
        -0xat
        -0x3ft
        0x6bt
        0x2bt
        -0xet
        -0x45t
    .end array-data

    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    :array_6
    .array-data 1
        0x39t
        0xet
        -0x3ft
        0xat
        0x69t
        0x1t
        0x1ct
        0x35t
        0x30t
        0x1t
        -0x29t
        0x1ct
        0x71t
        0x9t
        0xat
        0x7et
        0x76t
        0x15t
        -0x2at
        0x1at
        0x28t
        0x9t
        0x1bt
        0x6ft
        0x31t
        0xft
        -0x35t
        0x56t
        0x53t
        0x3bt
        0x3at
        0x44t
        0x19t
        0x23t
        -0x1at
        0x3dt
        0x55t
        0x3bt
        0x37t
        0x49t
        0x1t
        0x3ft
        -0x1ft
        0x3dt
        0x52t
        0x29t
        0x3bt
        0x53t
        0x1dt
        0x24t
    .end array-data

    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    nop

    .line 235
    :array_7
    .array-data 1
        0x58t
        0x60t
        -0x5bt
        0x78t
        0x6t
        0x68t
        0x78t
        0x1bt
    .end array-data
.end method

.method public static j(Landroid/content/Context;)Ljava/util/List;
    .locals 5

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sget-object v0, Lh7/k;->l:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, ""

    .line 13
    .line 14
    invoke-virtual {p0, v0, v1}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_4

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    new-array v1, v1, [B

    .line 34
    .line 35
    fill-array-data v1, :array_0

    .line 36
    .line 37
    .line 38
    const/16 v2, 0x8

    .line 39
    .line 40
    new-array v2, v2, [B

    .line 41
    .line 42
    fill-array-data v2, :array_1

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    array-length v1, p0

    .line 54
    const/4 v2, 0x0

    .line 55
    :goto_0
    if-ge v2, v1, :cond_3

    .line 56
    .line 57
    aget-object v3, p0, v2

    .line 58
    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-lez v4, :cond_2

    .line 70
    .line 71
    new-instance v4, Ljava/io/File;

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    return-object v0

    .line 87
    :cond_4
    :goto_1
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 88
    .line 89
    return-object p0

    .line 90
    nop

    .line 91
    :array_0
    .array-data 1
        -0x46t
        -0x7ct
    .end array-data

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    nop

    .line 97
    :array_1
    .array-data 1
        -0x1at
        -0x16t
        0x45t
        0x6t
        0x31t
        -0x48t
        0x38t
        0x5et
    .end array-data
.end method

.method public static k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    :goto_0
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 8
    .line 9
    .line 10
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 11
    const/4 v0, 0x1

    .line 12
    :try_start_2
    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :catch_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/NoSuchFieldException;

    .line 26
    .line 27
    invoke-direct {p0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 31
    :catch_1
    const/4 p0, 0x0

    .line 32
    return-object p0
.end method

.method public static l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lh7/k;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p1, Ljava/lang/Number;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    invoke-static {p0, p2}, Lh7/k;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    instance-of p1, p0, Ljava/lang/Number;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    check-cast p0, Ljava/lang/Number;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    :cond_1
    const/4 p0, -0x1

    .line 32
    return p0
.end method

.method public static m(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-static {p0, p1}, Lh7/k;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, v0

    .line 10
    :goto_0
    instance-of v1, p1, Ljava/io/File;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    check-cast p1, Ljava/io/File;

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    check-cast p1, Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-lez v1, :cond_2

    .line 28
    .line 29
    new-instance v1, Ljava/io/File;

    .line 30
    .line 31
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    move-object p1, v1

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    move-object p1, v0

    .line 37
    :goto_1
    if-eqz p1, :cond_3

    .line 38
    .line 39
    return-object p1

    .line 40
    :cond_3
    invoke-static {p0, p2}, Lh7/k;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    instance-of p1, p0, Ljava/io/File;

    .line 45
    .line 46
    if-eqz p1, :cond_4

    .line 47
    .line 48
    check-cast p0, Ljava/io/File;

    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_4
    instance-of p1, p0, Ljava/lang/String;

    .line 52
    .line 53
    if-eqz p1, :cond_5

    .line 54
    .line 55
    check-cast p0, Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-lez p1, :cond_5

    .line 62
    .line 63
    new-instance p1, Ljava/io/File;

    .line 64
    .line 65
    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-object p1

    .line 69
    :cond_5
    return-object v0
.end method

.method public static n(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    move-object v2, v1

    .line 7
    :goto_0
    if-eqz v2, :cond_0

    .line 8
    .line 9
    :try_start_1
    invoke-virtual {v2, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 13
    goto :goto_1

    .line 14
    :catch_0
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v1, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_1
    const/4 v1, 0x1

    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    instance-of p1, p0, Ljava/lang/String;

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    check-cast p0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 36
    .line 37
    return-object p0

    .line 38
    :catch_1
    :cond_1
    return-object v0
.end method

.method public static s(Ljava/lang/Object;)Ljava/io/File;
    .locals 5

    .line 1
    instance-of v0, p0, Landroid/os/storage/StorageVolume;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v1, 0x1e

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    :try_start_0
    move-object v0, p0

    .line 12
    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 13
    .line 14
    invoke-static {v0}, Landroidx/core/view/accessibility/b;->f(Landroid/os/storage/StorageVolume;)Ljava/io/File;

    .line 15
    .line 16
    .line 17
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    return-object v0

    .line 21
    :catch_0
    :cond_0
    const/16 v0, 0xb

    .line 22
    .line 23
    new-array v0, v0, [B

    .line 24
    .line 25
    fill-array-data v0, :array_0

    .line 26
    .line 27
    .line 28
    const/16 v1, 0x8

    .line 29
    .line 30
    new-array v2, v1, [B

    .line 31
    .line 32
    fill-array-data v2, :array_1

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v2, 0x0

    .line 40
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 44
    move-object v4, v3

    .line 45
    :goto_0
    if-eqz v4, :cond_1

    .line 46
    .line 47
    :try_start_2
    invoke-virtual {v4, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 48
    .line 49
    .line 50
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 51
    goto :goto_1

    .line 52
    :catch_1
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v3, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :goto_1
    const/4 v3, 0x1

    .line 62
    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    instance-of v3, v0, Ljava/io/File;

    .line 70
    .line 71
    if-eqz v3, :cond_2

    .line 72
    .line 73
    check-cast v0, Ljava/io/File;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :catch_2
    :cond_2
    move-object v0, v2

    .line 77
    :goto_2
    if-eqz v0, :cond_3

    .line 78
    .line 79
    return-object v0

    .line 80
    :cond_3
    const/4 v0, 0x7

    .line 81
    new-array v0, v0, [B

    .line 82
    .line 83
    fill-array-data v0, :array_2

    .line 84
    .line 85
    .line 86
    new-array v1, v1, [B

    .line 87
    .line 88
    fill-array-data v1, :array_3

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {p0, v0}, Lh7/k;->n(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    if-eqz p0, :cond_4

    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-lez v0, :cond_4

    .line 106
    .line 107
    new-instance v0, Ljava/io/File;

    .line 108
    .line 109
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-object v0

    .line 113
    :cond_4
    return-object v2

    .line 114
    nop

    .line 115
    :array_0
    .array-data 1
        0x3dt
        0x7ft
        0x57t
        -0x37t
        -0x76t
        0x69t
        -0x47t
        0x43t
        0x33t
        0x76t
        0x46t
    .end array-data

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    :array_1
    .array-data 1
        0x5at
        0x1at
        0x23t
        -0x67t
        -0x15t
        0x1dt
        -0x2ft
        0x5t
    .end array-data

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    :array_2
    .array-data 1
        -0x51t
        0x7bt
        -0x9t
        -0x72t
        -0x12t
        0x21t
        0x13t
    .end array-data

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    :array_3
    .array-data 1
        -0x38t
        0x1et
        -0x7dt
        -0x22t
        -0x71t
        0x55t
        0x7bt
        -0x21t
    .end array-data
.end method

.method public static t(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 17

    move-object/from16 v1, p0

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v8, 0x7

    .line 3
    new-array v0, v8, [B

    fill-array-data v0, :array_0

    const/16 v9, 0x8

    new-array v4, v9, [B

    fill-array-data v4, :array_1

    invoke-static {v0, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageVolume;

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    const/4 v5, 0x0

    .line 8
    :goto_1
    invoke-static {v5}, Lh7/k;->h(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v6

    .line 10
    :try_start_2
    invoke-virtual {v4, v1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 11
    :catch_1
    invoke-static {v4}, Lh7/k;->s(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v4

    if-eqz v6, :cond_4

    .line 12
    new-instance v7, Ljava/io/File;

    new-array v11, v9, [B

    fill-array-data v11, :array_2

    new-array v12, v9, [B

    fill-array-data v12, :array_3

    invoke-static {v11, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x17

    new-array v11, v11, [B

    fill-array-data v11, :array_4

    new-array v12, v9, [B

    fill-array-data v12, :array_5

    invoke-static {v11, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v3, v7, v5, v11}, Lh7/k;->b(Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/16 v7, 0xe

    .line 13
    new-array v7, v7, [B

    fill-array-data v7, :array_6

    new-array v11, v9, [B

    fill-array-data v11, :array_7

    invoke-static {v7, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v3, v4, v5, v7}, Lh7/k;->b(Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_1

    .line 14
    new-instance v4, Ljava/io/File;

    const/16 v7, 0xd

    new-array v7, v7, [B

    fill-array-data v7, :array_8

    new-array v11, v9, [B

    fill-array-data v11, :array_9

    invoke-static {v7, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x1c

    new-array v6, v6, [B

    fill-array-data v6, :array_a

    new-array v7, v9, [B

    fill-array-data v7, :array_b

    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lh7/k;->b(Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const/16 v4, 0x18

    .line 15
    new-array v4, v4, [B

    fill-array-data v4, :array_c

    new-array v5, v9, [B

    fill-array-data v5, :array_d

    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lh7/k;->k:Ljava/lang/String;

    invoke-static {v5, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    :cond_5
    :goto_2
    new-array v0, v8, [B

    fill-array-data v0, :array_e

    new-array v4, v9, [B

    fill-array-data v4, :array_f

    invoke-static {v0, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    const/4 v11, 0x5

    if-nez v0, :cond_6

    goto/16 :goto_8

    :cond_6
    const/16 v4, 0xd

    .line 17
    new-array v4, v4, [B

    fill-array-data v4, :array_10

    new-array v5, v9, [B

    fill-array-data v5, :array_11

    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lh7/k;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-nez v4, :cond_7

    goto/16 :goto_8

    .line 19
    :cond_7
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v13

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v13, :cond_11

    .line 20
    invoke-static {v0, v14}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_8

    goto/16 :goto_7

    .line 21
    :cond_8
    new-array v5, v9, [B

    fill-array-data v5, :array_12

    new-array v6, v9, [B

    fill-array-data v6, :array_13

    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lh7/k;->n(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 22
    invoke-static {v6}, Lh7/k;->h(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    goto/16 :goto_7

    :cond_9
    const/16 v5, 0xb

    .line 23
    new-array v5, v5, [B

    fill-array-data v5, :array_14

    new-array v7, v9, [B

    fill-array-data v7, :array_15

    invoke-static {v5, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v5

    .line 24
    invoke-static {v4, v5}, Lh7/k;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 25
    instance-of v7, v5, Ljava/lang/Boolean;

    const/4 v15, 0x1

    if-eqz v7, :cond_a

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_4

    :cond_a
    move v5, v15

    .line 26
    :goto_4
    invoke-static {v4}, Lh7/k;->s(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v7

    if-nez v5, :cond_c

    if-nez v7, :cond_b

    goto/16 :goto_7

    .line 27
    :cond_b
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/16 v12, 0x9

    .line 28
    new-array v12, v12, [B

    fill-array-data v12, :array_16

    new-array v10, v9, [B

    fill-array-data v10, :array_17

    invoke-static {v12, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    const/16 v10, 0xe

    new-array v10, v10, [B

    fill-array-data v10, :array_18

    new-array v12, v9, [B

    fill-array-data v12, :array_19

    invoke-static {v10, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v10

    .line 29
    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    const/16 v10, 0xd

    new-array v10, v10, [B

    fill-array-data v10, :array_1a

    new-array v12, v9, [B

    fill-array-data v12, :array_1b

    invoke-static {v10, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v10

    .line 30
    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    new-array v10, v9, [B

    fill-array-data v10, :array_1c

    new-array v12, v9, [B

    fill-array-data v12, :array_1d

    invoke-static {v10, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v10

    .line 31
    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    const/16 v10, 0xc

    new-array v10, v10, [B

    fill-array-data v10, :array_1e

    new-array v12, v9, [B

    fill-array-data v12, :array_1f

    invoke-static {v10, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v10

    .line 32
    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    const/16 v10, 0xa

    new-array v10, v10, [B

    fill-array-data v10, :array_20

    new-array v12, v9, [B

    fill-array-data v12, :array_21

    invoke-static {v10, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v10

    .line 33
    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    const/16 v10, 0xe

    new-array v10, v10, [B

    fill-array-data v10, :array_22

    new-array v12, v9, [B

    fill-array-data v12, :array_23

    invoke-static {v10, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v10

    .line 34
    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    const/16 v10, 0xc

    new-array v10, v10, [B

    fill-array-data v10, :array_24

    new-array v12, v9, [B

    fill-array-data v12, :array_25

    invoke-static {v10, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v10

    .line 35
    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    new-array v10, v9, [B

    fill-array-data v10, :array_26

    new-array v12, v9, [B

    fill-array-data v12, :array_27

    invoke-static {v10, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v10

    .line 36
    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    const/16 v10, 0xf

    new-array v10, v10, [B

    fill-array-data v10, :array_28

    new-array v12, v9, [B

    fill-array-data v12, :array_29

    invoke-static {v10, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v10

    .line 37
    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 38
    :cond_c
    new-array v5, v8, [B

    fill-array-data v5, :array_2a

    new-array v10, v9, [B

    fill-array-data v10, :array_2b

    invoke-static {v5, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lh7/k;->n(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v10, v11, [B

    fill-array-data v10, :array_2c

    new-array v12, v9, [B

    fill-array-data v12, :array_2d

    invoke-static {v10, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lh7/k;->n(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v5, v10}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lh7/k;->d([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 39
    instance-of v10, v4, Landroid/os/storage/StorageVolume;

    if-eqz v10, :cond_e

    .line 40
    check-cast v4, Landroid/os/storage/StorageVolume;

    .line 41
    :try_start_3
    invoke-virtual {v4, v1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :catch_3
    :cond_d
    const/4 v4, 0x0

    goto :goto_5

    .line 42
    :cond_e
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const/16 v12, 0xe

    new-array v12, v12, [B

    fill-array-data v12, :array_2e

    new-array v11, v9, [B

    fill-array-data v11, :array_2f

    invoke-static {v12, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v11

    const-class v12, Landroid/content/Context;

    filled-new-array {v12}, [Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 43
    invoke-virtual {v10, v15}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 44
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 45
    instance-of v10, v4, Ljava/lang/String;

    if-eqz v10, :cond_d

    .line 46
    check-cast v4, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_5
    if-eqz v7, :cond_f

    .line 47
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    goto :goto_6

    :cond_f
    const/4 v10, 0x0

    :goto_6
    filled-new-array {v4, v5, v10}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lh7/k;->d([Ljava/lang/String;)Ljava/lang/String;

    const/16 v4, 0x1c

    .line 48
    new-array v4, v4, [B

    fill-array-data v4, :array_30

    new-array v10, v9, [B

    fill-array-data v10, :array_31

    invoke-static {v4, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v16, v7

    move-object v7, v4

    move-object/from16 v4, v16

    invoke-static/range {v2 .. v7}, Lh7/k;->c(Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_7
    add-int/lit8 v14, v14, 0x1

    const/4 v11, 0x5

    goto/16 :goto_3

    .line 49
    :cond_11
    :goto_8
    new-array v0, v8, [B

    fill-array-data v0, :array_32

    new-array v4, v9, [B

    fill-array-data v4, :array_33

    invoke-static {v0, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    if-nez v0, :cond_13

    :cond_12
    :goto_9
    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_17

    :cond_13
    const/16 v1, 0xa

    .line 50
    new-array v1, v1, [B

    fill-array-data v1, :array_34

    new-array v4, v9, [B

    fill-array-data v4, :array_35

    invoke-static {v1, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lh7/k;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 51
    instance-of v1, v0, Ljava/util/List;

    if-nez v1, :cond_14

    goto :goto_9

    .line 52
    :cond_14
    check-cast v0, Ljava/util/List;

    .line 53
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_16

    goto :goto_a

    .line 54
    :cond_16
    new-array v4, v8, [B

    fill-array-data v4, :array_36

    new-array v5, v9, [B

    fill-array-data v5, :array_37

    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [B

    fill-array-data v5, :array_38

    new-array v6, v9, [B

    fill-array-data v6, :array_39

    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lh7/k;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_17

    if-eqz v4, :cond_17

    goto :goto_a

    :cond_17
    const/16 v4, 0x11

    .line 55
    new-array v4, v4, [B

    fill-array-data v4, :array_3a

    new-array v5, v9, [B

    fill-array-data v5, :array_3b

    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lh7/k;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 56
    instance-of v5, v4, Ljava/lang/Boolean;

    const/4 v6, 0x2

    const/4 v7, 0x3

    if-eqz v5, :cond_18

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_18

    goto :goto_b

    .line 57
    :cond_18
    new-array v4, v9, [B

    fill-array-data v4, :array_3c

    new-array v5, v9, [B

    fill-array-data v5, :array_3d

    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    new-array v10, v5, [B

    fill-array-data v10, :array_3e

    new-array v5, v9, [B

    fill-array-data v5, :array_3f

    invoke-static {v10, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lh7/k;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_19

    if-ne v4, v7, :cond_15

    .line 58
    :cond_19
    :goto_b
    new-array v4, v8, [B

    fill-array-data v4, :array_40

    new-array v5, v9, [B

    fill-array-data v5, :array_41

    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [B

    fill-array-data v5, :array_42

    new-array v10, v9, [B

    fill-array-data v10, :array_43

    invoke-static {v5, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v5

    .line 59
    invoke-static {v1, v4, v5}, Lh7/k;->m(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [B

    fill-array-data v5, :array_44

    new-array v10, v9, [B

    fill-array-data v10, :array_45

    invoke-static {v5, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    .line 60
    invoke-static {v1, v10, v5}, Lh7/k;->m(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v6, :cond_1b

    .line 61
    aget-object v10, v4, v5

    if-eqz v10, :cond_1a

    goto :goto_d

    :cond_1a
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_1b
    const/4 v10, 0x0

    :goto_d
    const/16 v4, 0xf

    .line 62
    new-array v4, v4, [B

    fill-array-data v4, :array_46

    new-array v5, v9, [B

    fill-array-data v5, :array_47

    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc

    new-array v5, v5, [B

    fill-array-data v5, :array_48

    new-array v11, v9, [B

    fill-array-data v11, :array_49

    invoke-static {v5, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v5

    .line 63
    invoke-static {v1, v4, v5}, Lh7/k;->m(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const/16 v5, 0xc

    new-array v5, v5, [B

    fill-array-data v5, :array_4a

    new-array v11, v9, [B

    fill-array-data v11, :array_4b

    invoke-static {v5, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    .line 64
    invoke-static {v1, v11, v5}, Lh7/k;->m(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v6, :cond_1d

    .line 65
    aget-object v12, v4, v5

    if-eqz v12, :cond_1c

    goto :goto_f

    :cond_1c
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_1d
    move-object v12, v11

    :goto_f
    const/16 v4, 0x9

    .line 66
    new-array v4, v4, [B

    fill-array-data v4, :array_4c

    new-array v5, v9, [B

    fill-array-data v5, :array_4d

    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v4

    .line 67
    invoke-static {v1, v4}, Lh7/k;->n(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    new-array v5, v5, [B

    fill-array-data v5, :array_4e

    new-array v13, v9, [B

    fill-array-data v13, :array_4f

    invoke-static {v5, v13}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v5

    .line 68
    invoke-static {v1, v5}, Lh7/k;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 69
    instance-of v13, v5, Ljava/lang/String;

    if-eqz v13, :cond_1e

    check-cast v5, Ljava/lang/String;

    :goto_10
    const/4 v13, 0x5

    goto :goto_11

    :cond_1e
    move-object v5, v11

    goto :goto_10

    .line 70
    :goto_11
    new-array v14, v13, [B

    fill-array-data v14, :array_50

    new-array v13, v9, [B

    fill-array-data v13, :array_51

    invoke-static {v14, v13}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v13

    .line 71
    invoke-static {v1, v13}, Lh7/k;->n(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-array v6, v6, [B

    fill-array-data v6, :array_52

    new-array v14, v9, [B

    fill-array-data v14, :array_53

    invoke-static {v6, v14}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v6

    .line 72
    invoke-static {v1, v6}, Lh7/k;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 73
    instance-of v14, v6, Ljava/lang/String;

    if-eqz v14, :cond_1f

    check-cast v6, Ljava/lang/String;

    goto :goto_12

    :cond_1f
    move-object v6, v11

    .line 74
    :goto_12
    filled-new-array {v4, v5, v13, v6}, [Ljava/lang/String;

    move-result-object v4

    .line 75
    invoke-static {v4}, Lh7/k;->d([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    .line 76
    new-array v5, v5, [B

    fill-array-data v5, :array_54

    new-array v6, v9, [B

    fill-array-data v6, :array_55

    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v5

    .line 77
    invoke-static {v1, v5}, Lh7/k;->n(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [B

    fill-array-data v6, :array_56

    new-array v13, v9, [B

    fill-array-data v13, :array_57

    invoke-static {v6, v13}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v6

    .line 78
    invoke-static {v1, v6}, Lh7/k;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 79
    instance-of v13, v6, Ljava/lang/String;

    if-eqz v13, :cond_20

    check-cast v6, Ljava/lang/String;

    goto :goto_13

    :cond_20
    move-object v6, v11

    :goto_13
    if-eqz v10, :cond_21

    .line 80
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    goto :goto_14

    :cond_21
    move-object v13, v11

    :goto_14
    filled-new-array {v5, v6, v4, v13}, [Ljava/lang/String;

    move-result-object v5

    .line 81
    invoke-static {v5}, Lh7/k;->d([Ljava/lang/String;)Ljava/lang/String;

    .line 82
    new-array v5, v9, [B

    fill-array-data v5, :array_58

    new-array v6, v9, [B

    fill-array-data v6, :array_59

    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x5

    new-array v6, v13, [B

    fill-array-data v6, :array_5a

    new-array v14, v9, [B

    fill-array-data v14, :array_5b

    invoke-static {v6, v14}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lh7/k;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v7, :cond_22

    const/16 v1, 0xa

    .line 83
    new-array v1, v1, [B

    fill-array-data v1, :array_5c

    new-array v5, v9, [B

    fill-array-data v5, :array_5d

    invoke-static {v1, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v1

    :goto_15
    move-object v5, v1

    goto :goto_16

    .line 84
    :cond_22
    new-array v1, v8, [B

    fill-array-data v1, :array_5e

    new-array v5, v9, [B

    fill-array-data v5, :array_5f

    invoke-static {v1, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :goto_16
    const/16 v1, 0x1e

    .line 85
    new-array v1, v1, [B

    fill-array-data v1, :array_60

    new-array v6, v9, [B

    fill-array-data v6, :array_61

    invoke-static {v1, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v6

    move-object v1, v2

    move-object v2, v3

    move-object v3, v10

    invoke-static/range {v1 .. v6}, Lh7/k;->c(Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x26

    .line 86
    new-array v3, v3, [B

    fill-array-data v3, :array_62

    new-array v6, v9, [B

    fill-array-data v6, :array_63

    invoke-static {v3, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v6

    move-object v3, v12

    invoke-static/range {v1 .. v6}, Lh7/k;->c(Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_a

    .line 87
    :goto_17
    invoke-static {v1, v2}, Lh7/k;->a(Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 88
    new-instance v0, Landroidx/constraintlayout/core/utils/a;

    const/4 v2, 0x6

    invoke-direct {v0, v2}, Landroidx/constraintlayout/core/utils/a;-><init>(I)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1

    :array_0
    .array-data 1
        0x2ft
        -0xdt
        -0x62t
        -0x8t
        0x16t
        -0x59t
        -0x5t
    .end array-data

    :array_1
    .array-data 1
        0x5ct
        -0x79t
        -0xft
        -0x76t
        0x77t
        -0x40t
        -0x62t
        -0x53t
    .end array-data

    :array_2
    .array-data 1
        0x38t
        -0x4bt
        -0x6ct
        0x79t
        0x77t
        -0x78t
        0x44t
        -0x32t
    .end array-data

    :array_3
    .array-data 1
        0x17t
        -0x3at
        -0x20t
        0x16t
        0x5t
        -0x17t
        0x23t
        -0x55t
    .end array-data

    :array_4
    .array-data 1
        0x7ct
        -0x2t
        0x51t
        0x2et
        -0x3et
        0x15t
        0x70t
        -0x59t
        0x4et
        -0x1ct
        0x5ft
        0x3bt
        -0x3at
        0x0t
        0x2ft
        -0x3bt
        0x5ct
        -0x2t
        0x51t
        0x2et
        -0x3et
        0x15t
        0x70t
    .end array-data

    :array_5
    .array-data 1
        0x2ft
        -0x76t
        0x3et
        0x5ct
        -0x5dt
        0x72t
        0x15t
        -0x16t
    .end array-data

    :array_6
    .array-data 1
        0x34t
        0x5t
        -0x42t
        0x3dt
        -0x7at
        -0x9t
        -0x72t
        0x71t
        0x6t
        0x1ft
        -0x50t
        0x28t
        -0x7et
        -0x1et
    .end array-data

    nop

    :array_7
    .array-data 1
        0x67t
        0x71t
        -0x2ft
        0x4ft
        -0x19t
        -0x70t
        -0x15t
        0x3ct
    .end array-data

    :array_8
    .array-data 1
        0x8t
        -0x76t
        -0x50t
        0x7bt
        -0x44t
        0x27t
        -0x3dt
        -0x3t
        0x4et
        -0x7at
        -0x7ft
        0x7dt
        -0x1ct
    .end array-data

    nop

    :array_9
    .array-data 1
        0x27t
        -0x19t
        -0x22t
        0xft
        -0x6dt
        0x4at
        -0x5at
        -0x67t
    .end array-data

    :array_a
    .array-data 1
        0x18t
        -0x25t
        0x51t
        -0x76t
        -0x71t
        0x7et
        -0x36t
        -0x53t
        0x2at
        -0x3ft
        0x5ft
        -0x61t
        -0x75t
        0x6bt
        -0x6bt
        -0x31t
        0x26t
        -0x3ft
        0x4at
        -0x29t
        -0x7dt
        0x7ct
        -0x35t
        -0x77t
        0x2at
        -0x10t
        0x4ct
        -0x71t
    .end array-data

    :array_b
    .array-data 1
        0x4bt
        -0x51t
        0x3et
        -0x8t
        -0x12t
        0x19t
        -0x51t
        -0x20t
    .end array-data

    :array_c
    .array-data 1
        -0x57t
        -0x51t
        -0x2at
        0x74t
        -0x46t
        -0x54t
        0x6dt
        -0x3dt
        -0x57t
        -0x51t
        -0xct
        0x48t
        -0x5et
        -0x4at
        0x72t
        -0x39t
        -0x43t
        -0x16t
        -0x3ct
        0x46t
        -0x59t
        -0x51t
        0x7at
        -0x3at
    .end array-data

    :array_d
    .array-data 1
        -0x32t
        -0x36t
        -0x5et
        0x27t
        -0x32t
        -0x3dt
        0x1ft
        -0x5et
    .end array-data

    :array_e
    .array-data 1
        0x4dt
        -0x60t
        -0x55t
        0x36t
        -0x43t
        0x60t
        -0x32t
    .end array-data

    :array_f
    .array-data 1
        0x3et
        -0x2ct
        -0x3ct
        0x44t
        -0x24t
        0x7t
        -0x55t
        -0xdt
    .end array-data

    :array_10
    .array-data 1
        0x53t
        0x2et
        -0x32t
        0x7t
        0x26t
        0x4t
        0x18t
        0x27t
        0x51t
        0x7t
        -0x2dt
        0x22t
        0x3dt
    .end array-data

    nop

    :array_11
    .array-data 1
        0x34t
        0x4bt
        -0x46t
        0x51t
        0x49t
        0x68t
        0x6dt
        0x4at
    .end array-data

    :array_12
    .array-data 1
        0x56t
        -0x12t
        -0x3et
        -0x4bt
        0x51t
        -0x46t
        0x68t
        -0x72t
    .end array-data

    :array_13
    .array-data 1
        0x31t
        -0x75t
        -0x4at
        -0x1at
        0x25t
        -0x25t
        0x1ct
        -0x15t
    .end array-data

    :array_14
    .array-data 1
        -0x5at
        -0x32t
        -0x22t
        0x50t
        -0x11t
        -0x18t
        0x27t
        0x64t
        -0x53t
        -0x2ft
        -0x17t
    .end array-data

    :array_15
    .array-data 1
        -0x31t
        -0x43t
        -0x74t
        0x35t
        -0x7et
        -0x79t
        0x51t
        0x5t
    .end array-data

    :array_16
    .array-data 1
        -0x24t
        -0x63t
        0x48t
        0x55t
        0x43t
        -0x4bt
        -0x1et
        -0x34t
        -0x24t
    .end array-data

    nop

    :array_17
    .array-data 1
        -0xdt
        -0x12t
        0x3ct
        0x3at
        0x31t
        -0x2ct
        -0x7bt
        -0x57t
    .end array-data

    :array_18
    .array-data 1
        0x79t
        -0x2et
        -0x49t
        -0x62t
        0x7et
        0x60t
        -0x6t
        -0x18t
        0x3ft
        -0x22t
        -0x7at
        -0x68t
        0x26t
        0x22t
    .end array-data

    nop

    :array_19
    .array-data 1
        0x56t
        -0x41t
        -0x27t
        -0x16t
        0x51t
        0xdt
        -0x61t
        -0x74t
    .end array-data

    :array_1a
    .array-data 1
        0x4et
        -0x63t
        0x51t
        -0x50t
        0x67t
        0x2bt
        0x5t
        0x55t
        0x15t
        -0x67t
        0x52t
        -0x5ft
        0x67t
    .end array-data

    nop

    :array_1b
    .array-data 1
        0x61t
        -0x10t
        0x3ft
        -0x3ct
        0x48t
        0x59t
        0x70t
        0x3bt
    .end array-data

    :array_1c
    .array-data 1
        0x3ct
        -0x6dt
        -0x20t
        -0x53t
        -0x5bt
        0x77t
        -0xdt
        -0x75t
    .end array-data

    :array_1d
    .array-data 1
        0x13t
        -0x2t
        -0x72t
        -0x27t
        -0x76t
        0x2t
        -0x80t
        -0x17t
    .end array-data

    :array_1e
    .array-data 1
        0x5t
        0x71t
        -0x73t
        -0x5ft
        -0x60t
        -0x6dt
        -0x6dt
        0x49t
        0x5t
        0x77t
        -0x76t
        -0x54t
    .end array-data

    :array_1f
    .array-data 1
        0x2at
        0x2t
        -0x7t
        -0x32t
        -0x2et
        -0xet
        -0xct
        0x2ct
    .end array-data

    :array_20
    .array-data 1
        0x13t
        0x28t
        -0x13t
        -0x72t
        -0x22t
        -0x73t
        -0x14t
        0x26t
        0x4ft
        0x2et
    .end array-data

    nop

    :array_21
    .array-data 1
        0x3ct
        0x45t
        -0x7dt
        -0x6t
        -0xft
        -0x8t
        -0x78t
        0x4ft
    .end array-data

    :array_22
    .array-data 1
        -0x59t
        -0x47t
        -0x3bt
        -0x53t
        -0x6ct
        -0x35t
        -0x29t
        -0x13t
        -0x59t
        -0x41t
        -0x2bt
        -0x55t
        -0x6bt
        -0x3ft
    .end array-data

    nop

    :array_23
    .array-data 1
        -0x78t
        -0x36t
        -0x4ft
        -0x3et
        -0x1at
        -0x56t
        -0x50t
        -0x78t
    .end array-data

    :array_24
    .array-data 1
        0x79t
        0x3ft
        -0x5ft
        -0x2t
        0x70t
        0x28t
        0x5t
        0x6et
        0x79t
        0x29t
        -0x53t
        -0x1bt
    .end array-data

    :array_25
    .array-data 1
        0x56t
        0x4ct
        -0x2bt
        -0x6ft
        0x2t
        0x49t
        0x62t
        0xbt
    .end array-data

    :array_26
    .array-data 1
        0x2et
        -0x21t
        -0x15t
        -0x24t
        0x6ct
        -0x5ft
        -0x4et
        -0x5ft
    .end array-data

    :array_27
    .array-data 1
        0x1t
        -0x4et
        -0x7bt
        -0x58t
        0x43t
        -0x3ct
        -0x36t
        -0x2bt
    .end array-data

    :array_28
    .array-data 1
        -0x60t
        0x5t
        0x5bt
        -0x1ft
        0x6ft
        0x11t
        -0x5t
        -0x29t
        -0x60t
        0x5t
        0x4bt
        -0x13t
        0x7ct
        0x2t
        -0x8t
    .end array-data

    :array_29
    .array-data 1
        -0x71t
        0x76t
        0x2ft
        -0x72t
        0x1dt
        0x70t
        -0x64t
        -0x4et
    .end array-data

    :array_2a
    .array-data 1
        0x29t
        0x1dt
        0x67t
        -0x62t
        0x15t
        -0xft
        -0x27t
    .end array-data

    :array_2b
    .array-data 1
        0x4et
        0x78t
        0x13t
        -0x35t
        0x60t
        -0x68t
        -0x43t
        0xdt
    .end array-data

    :array_2c
    .array-data 1
        0x77t
        0x42t
        0x2dt
        -0xbt
        -0xbt
    .end array-data

    nop

    :array_2d
    .array-data 1
        0x10t
        0x27t
        0x59t
        -0x44t
        -0x6ft
        0x25t
        0x53t
        -0x2t
    .end array-data

    :array_2e
    .array-data 1
        -0x74t
        -0x6dt
        0x5t
        -0x8t
        -0x55t
        -0x5at
        -0xet
        0x56t
        -0x7et
        -0x7at
        0x5t
        -0x2bt
        -0x5ft
        -0x45t
    .end array-data

    nop

    :array_2f
    .array-data 1
        -0x15t
        -0xat
        0x71t
        -0x44t
        -0x32t
        -0x2bt
        -0x6ft
        0x24t
    .end array-data

    :array_30
    .array-data 1
        -0x54t
        0xbt
        -0x7at
        0x1t
        0x3ft
        -0x46t
        -0x32t
        0x6t
        -0x62t
        0x11t
        -0x78t
        0x14t
        0x3bt
        -0x51t
        -0x6ft
        0x2ct
        -0x66t
        0xbt
        -0x41t
        0x1ct
        0x32t
        -0x58t
        -0x3at
        0x2et
        -0x4dt
        0x16t
        -0x66t
        0x7t
    .end array-data

    :array_31
    .array-data 1
        -0x1t
        0x7ft
        -0x17t
        0x73t
        0x5et
        -0x23t
        -0x55t
        0x4bt
    .end array-data

    :array_32
    .array-data 1
        0x6t
        -0x1t
        -0xdt
        0x5bt
        0x4t
        -0x1at
        -0x46t
    .end array-data

    :array_33
    .array-data 1
        0x75t
        -0x75t
        -0x64t
        0x29t
        0x65t
        -0x7ft
        -0x21t
        -0x61t
    .end array-data

    :array_34
    .array-data 1
        0x53t
        0x1et
        -0x29t
        -0x5dt
        0x37t
        -0x45t
        0x3ct
        -0x5at
        0x51t
        0x8t
    .end array-data

    nop

    :array_35
    .array-data 1
        0x34t
        0x7bt
        -0x5dt
        -0xbt
        0x58t
        -0x29t
        0x49t
        -0x35t
    .end array-data

    :array_36
    .array-data 1
        0x31t
        0x42t
        -0xft
        -0xft
        0x52t
        0x7t
        0x54t
    .end array-data

    :array_37
    .array-data 1
        0x56t
        0x27t
        -0x7bt
        -0x5bt
        0x2bt
        0x77t
        0x31t
        0x53t
    .end array-data

    :array_38
    .array-data 1
        -0x1dt
        0x58t
        -0x21t
        -0x49t
    .end array-data

    :array_39
    .array-data 1
        -0x69t
        0x21t
        -0x51t
        -0x2et
        -0x4ct
        -0x5et
        -0x28t
        -0x50t
    .end array-data

    :array_3a
    .array-data 1
        -0x72t
        0x61t
        0x35t
        -0x1ct
        0x2t
        -0x3t
        0x71t
        0x28t
        -0x7dt
        0x40t
        0x1dt
        -0x16t
        0x13t
        -0xet
        0x67t
        0x21t
        -0x7et
    .end array-data

    nop

    :array_3b
    .array-data 1
        -0x19t
        0x12t
        0x78t
        -0x75t
        0x77t
        -0x6dt
        0x5t
        0x4dt
    .end array-data

    :array_3c
    .array-data 1
        -0x25t
        -0x4t
        -0x51t
        0x3t
        0x11t
        -0x16t
        0x58t
        0x27t
    .end array-data

    :array_3d
    .array-data 1
        -0x44t
        -0x67t
        -0x25t
        0x50t
        0x65t
        -0x75t
        0x2ct
        0x42t
    .end array-data

    :array_3e
    .array-data 1
        -0x57t
        -0x19t
        0x46t
        0x2dt
        -0x2bt
    .end array-data

    nop

    :array_3f
    .array-data 1
        -0x26t
        -0x6dt
        0x27t
        0x59t
        -0x50t
        -0x22t
        0x61t
        0x2t
    .end array-data

    :array_40
    .array-data 1
        -0x4bt
        -0x28t
        -0x28t
        -0x2ct
        0x4bt
        -0x31t
        -0x57t
    .end array-data

    :array_41
    .array-data 1
        -0x2et
        -0x43t
        -0x54t
        -0x7ct
        0x2at
        -0x45t
        -0x3ft
        0x57t
    .end array-data

    :array_42
    .array-data 1
        -0x48t
        -0x6et
        0x3t
        0x35t
    .end array-data

    :array_43
    .array-data 1
        -0x38t
        -0xdt
        0x77t
        0x5dt
        -0x3dt
        -0x7ct
        0x5at
        0x35t
    .end array-data

    :array_44
    .array-data 1
        -0x5t
        -0xbt
        -0x5at
        -0x25t
    .end array-data

    :array_45
    .array-data 1
        -0x75t
        -0x6ct
        -0x2et
        -0x4dt
        -0x9t
        0x3dt
        -0x37t
        0x22t
    .end array-data

    :array_46
    .array-data 1
        -0x44t
        0x5at
        -0x71t
        0x54t
        0x78t
        -0x6et
        -0x4dt
        0x79t
        -0x4bt
        0x5et
        -0x69t
        0x4dt
        0x77t
        -0x6et
        -0x42t
    .end array-data

    :array_47
    .array-data 1
        -0x25t
        0x3ft
        -0x5t
        0x1dt
        0x16t
        -0x1at
        -0x2at
        0xbt
    .end array-data

    :array_48
    .array-data 1
        0x1t
        -0x8t
        0x50t
        -0x35t
        0x43t
        -0x68t
        -0xct
        0x5bt
        0x38t
        -0x9t
        0x50t
        -0x3at
    .end array-data

    :array_49
    .array-data 1
        0x68t
        -0x6at
        0x24t
        -0x52t
        0x31t
        -0xat
        -0x6bt
        0x37t
    .end array-data

    :array_4a
    .array-data 1
        0x39t
        0x55t
        -0x75t
        0x3et
        -0x4ct
        -0x4et
        0x53t
        -0x40t
        0x0t
        0x5at
        -0x75t
        0x33t
    .end array-data

    :array_4b
    .array-data 1
        0x50t
        0x3bt
        -0x1t
        0x5bt
        -0x3at
        -0x24t
        0x32t
        -0x54t
    .end array-data

    :array_4c
    .array-data 1
        -0x70t
        -0x2dt
        -0x61t
        -0x6ft
        0x37t
        -0x4bt
        -0x12t
        0x3ct
        -0x6dt
    .end array-data

    nop

    :array_4d
    .array-data 1
        -0x9t
        -0x4at
        -0x15t
        -0x29t
        0x44t
        -0x20t
        -0x65t
        0x55t
    .end array-data

    :array_4e
    .array-data 1
        -0x4at
        0x6et
        -0xbt
        -0x73t
        0x2ct
        -0x58t
    .end array-data

    nop

    :array_4f
    .array-data 1
        -0x30t
        0x1dt
        -0x60t
        -0x8t
        0x45t
        -0x34t
        0x71t
        0x4ct
    .end array-data

    :array_50
    .array-data 1
        0x49t
        0x3et
        0x3at
        -0x5ft
        -0xct
    .end array-data

    nop

    :array_51
    .array-data 1
        0x2et
        0x5bt
        0x4et
        -0x18t
        -0x70t
        0x2ct
        -0x63t
        -0x7bt
    .end array-data

    :array_52
    .array-data 1
        0x4et
        -0x7et
    .end array-data

    nop

    :array_53
    .array-data 1
        0x27t
        -0x1at
        0x23t
        -0x3ft
        -0x1t
        0x20t
        -0x7dt
        -0x4t
    .end array-data

    :array_54
    .array-data 1
        -0x2ft
        -0x78t
        0x7t
        -0x4et
        -0x2et
        0x40t
        0x2et
        -0x54t
        -0x2dt
        -0x7ft
    .end array-data

    nop

    :array_55
    .array-data 1
        -0x4at
        -0x13t
        0x73t
        -0xct
        -0x5ft
        0xct
        0x4ft
        -0x32t
    .end array-data

    :array_56
    .array-data 1
        -0x70t
        -0x4ft
        -0x7at
        0x46t
        0x76t
        -0x6t
        -0x18t
    .end array-data

    :array_57
    .array-data 1
        -0xat
        -0x3et
        -0x36t
        0x27t
        0x14t
        -0x61t
        -0x7ct
        0x64t
    .end array-data

    :array_58
    .array-data 1
        0x7ft
        0x0t
        -0x32t
        -0x1dt
        -0x4t
        0x1ct
        0x79t
        0x3bt
    .end array-data

    :array_59
    .array-data 1
        0x18t
        0x65t
        -0x46t
        -0x50t
        -0x78t
        0x7dt
        0xdt
        0x5et
    .end array-data

    :array_5a
    .array-data 1
        -0x44t
        -0x1bt
        0x54t
        0x4ct
        -0x5dt
    .end array-data

    nop

    :array_5b
    .array-data 1
        -0x31t
        -0x6ft
        0x35t
        0x38t
        -0x3at
        -0x1ft
        0x4at
        -0x4bt
    .end array-data

    :array_5c
    .array-data 1
        -0x54t
        0x12t
        -0x78t
        0x2t
        -0x79t
        -0x25t
        0x62t
        0x68t
        -0x4dt
        0x12t
    .end array-data

    nop

    :array_5d
    .array-data 1
        -0x3ft
        0x7dt
        -0x3t
        0x6ct
        -0xdt
        -0x42t
        0x6t
        0x37t
    .end array-data

    :array_5e
    .array-data 1
        -0x43t
        -0x74t
        -0x7bt
        -0x5t
        0x61t
        -0x22t
        -0x78t
    .end array-data

    :array_5f
    .array-data 1
        -0x30t
        -0x1dt
        -0x10t
        -0x6bt
        0x15t
        -0x45t
        -0x14t
        -0x47t
    .end array-data

    :array_60
    .array-data 1
        0x69t
        -0x5ct
        0x31t
        0x66t
        0x3dt
        -0x5at
        -0x17t
        -0x32t
        0x5bt
        -0x42t
        0x3ft
        0x73t
        0x39t
        -0x4dt
        -0x4at
        -0x1ct
        0x5ft
        -0x5ct
        0x8t
        0x7bt
        0x30t
        -0x4ct
        -0x1ft
        -0x1at
        0x49t
        -0x16t
        0x2et
        0x75t
        0x28t
        -0x57t
    .end array-data

    nop

    :array_61
    .array-data 1
        0x3at
        -0x30t
        0x5et
        0x14t
        0x5ct
        -0x3ft
        -0x74t
        -0x7dt
    .end array-data

    :array_62
    .array-data 1
        -0x16t
        0xet
        0x44t
        0x2t
        -0x44t
        0x6et
        0x16t
        0x13t
        -0x28t
        0x14t
        0x4at
        0x17t
        -0x48t
        0x7bt
        0x49t
        0x39t
        -0x24t
        0xet
        0x7dt
        0x1ft
        -0x4ft
        0x7ct
        0x1et
        0x3bt
        -0x36t
        0x40t
        0x42t
        0x1et
        -0x57t
        0x6ct
        0x1t
        0x30t
        -0x28t
        0x16t
        0x7bt
        0x11t
        -0x57t
        0x61t
    .end array-data

    nop

    :array_63
    .array-data 1
        -0x47t
        0x7at
        0x2bt
        0x70t
        -0x23t
        0x9t
        0x73t
        0x5et
    .end array-data
.end method

.method public static u(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lh7/k;->k:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_5

    .line 13
    .line 14
    :cond_0
    const/4 v3, 0x3

    .line 15
    new-array v4, v3, [B

    .line 16
    .line 17
    fill-array-data v4, :array_0

    .line 18
    .line 19
    .line 20
    const/16 v5, 0x8

    .line 21
    .line 22
    new-array v6, v5, [B

    .line 23
    .line 24
    fill-array-data v6, :array_1

    .line 25
    .line 26
    .line 27
    invoke-static {v4, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    goto/16 :goto_5

    .line 40
    .line 41
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    .line 42
    .line 43
    .line 44
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 45
    if-eqz v4, :cond_8

    .line 46
    .line 47
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_2

    .line 52
    .line 53
    goto/16 :goto_5

    .line 54
    .line 55
    :cond_2
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    :catch_0
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-eqz v6, :cond_8

    .line 68
    .line 69
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    check-cast v6, Landroid/hardware/usb/UsbDevice;

    .line 74
    .line 75
    if-eqz v6, :cond_3

    .line 76
    .line 77
    :try_start_1
    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    .line 78
    .line 79
    .line 80
    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    const/4 v8, 0x0

    .line 82
    move v9, v8

    .line 83
    :goto_1
    if-ge v9, v7, :cond_3

    .line 84
    .line 85
    :try_start_2
    invoke-virtual {v6, v9}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 86
    .line 87
    .line 88
    move-result-object v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 89
    if-eqz v10, :cond_7

    .line 90
    .line 91
    invoke-virtual {v10}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    .line 92
    .line 93
    .line 94
    move-result v11

    .line 95
    if-ne v11, v5, :cond_7

    .line 96
    .line 97
    invoke-virtual {v10}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    .line 98
    .line 99
    .line 100
    move-result v11

    .line 101
    const/4 v12, 0x6

    .line 102
    if-ne v11, v12, :cond_7

    .line 103
    .line 104
    invoke-virtual {v10}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    .line 105
    .line 106
    .line 107
    move-result v10

    .line 108
    const/16 v11, 0x50

    .line 109
    .line 110
    if-ne v10, v11, :cond_7

    .line 111
    .line 112
    :try_start_3
    invoke-virtual {v0, v6}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    .line 113
    .line 114
    .line 115
    move-result v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 116
    move/from16 v18, v7

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :catch_1
    move/from16 v18, v8

    .line 120
    .line 121
    :goto_2
    new-instance v13, Lh7/j;

    .line 122
    .line 123
    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    .line 124
    .line 125
    .line 126
    move-result v14

    .line 127
    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v15

    .line 131
    :try_start_4
    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    if-eqz v7, :cond_4

    .line 136
    .line 137
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v9

    .line 141
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 142
    .line 143
    .line 144
    move-result v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 145
    if-lez v9, :cond_4

    .line 146
    .line 147
    :goto_3
    move-object/from16 v16, v7

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :catch_2
    :cond_4
    :try_start_5
    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    if-eqz v7, :cond_5

    .line 155
    .line 156
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v9

    .line 160
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 161
    .line 162
    .line 163
    move-result v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 164
    if-lez v9, :cond_5

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :catch_3
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    new-array v9, v3, [B

    .line 173
    .line 174
    fill-array-data v9, :array_2

    .line 175
    .line 176
    .line 177
    new-array v10, v5, [B

    .line 178
    .line 179
    fill-array-data v10, :array_3

    .line 180
    .line 181
    .line 182
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v9

    .line 186
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    .line 190
    .line 191
    .line 192
    move-result v9

    .line 193
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    goto :goto_3

    .line 201
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .line 205
    .line 206
    new-array v9, v12, [B

    .line 207
    .line 208
    fill-array-data v9, :array_4

    .line 209
    .line 210
    .line 211
    new-array v10, v5, [B

    .line 212
    .line 213
    fill-array-data v10, :array_5

    .line 214
    .line 215
    .line 216
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v9

    .line 220
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    .line 224
    .line 225
    .line 226
    move-result v6

    .line 227
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    const/4 v6, 0x1

    .line 231
    new-array v6, v6, [B

    .line 232
    .line 233
    const/16 v9, -0x30

    .line 234
    .line 235
    aput-byte v9, v6, v8

    .line 236
    .line 237
    new-array v8, v5, [B

    .line 238
    .line 239
    fill-array-data v8, :array_6

    .line 240
    .line 241
    .line 242
    invoke-static {v6, v8, v7}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v17

    .line 246
    invoke-direct/range {v13 .. v18}, Lh7/j;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 247
    .line 248
    .line 249
    move-object/from16 v6, v17

    .line 250
    .line 251
    move/from16 v7, v18

    .line 252
    .line 253
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    new-instance v8, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .line 260
    .line 261
    const/16 v9, 0x12

    .line 262
    .line 263
    new-array v9, v9, [B

    .line 264
    .line 265
    fill-array-data v9, :array_7

    .line 266
    .line 267
    .line 268
    new-array v10, v5, [B

    .line 269
    .line 270
    fill-array-data v10, :array_8

    .line 271
    .line 272
    .line 273
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v9

    .line 277
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v9

    .line 284
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 285
    .line 286
    .line 287
    move-result v9

    .line 288
    if-lez v9, :cond_6

    .line 289
    .line 290
    invoke-static/range {v16 .. v16}, Lai/onnxruntime/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    move-result-object v9

    .line 294
    new-array v10, v3, [B

    .line 295
    .line 296
    fill-array-data v10, :array_9

    .line 297
    .line 298
    .line 299
    new-array v11, v5, [B

    .line 300
    .line 301
    fill-array-data v11, :array_a

    .line 302
    .line 303
    .line 304
    invoke-static {v10, v11, v9, v6}, Lcom/google/protobuf/q;->l([B[BLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v17

    .line 308
    move-object/from16 v6, v17

    .line 309
    .line 310
    :cond_6
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    const/16 v6, 0xc

    .line 314
    .line 315
    new-array v6, v6, [B

    .line 316
    .line 317
    fill-array-data v6, :array_b

    .line 318
    .line 319
    .line 320
    new-array v9, v5, [B

    .line 321
    .line 322
    fill-array-data v9, :array_c

    .line 323
    .line 324
    .line 325
    invoke-static {v6, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v6

    .line 329
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v6

    .line 339
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    .line 341
    .line 342
    goto/16 :goto_0

    .line 343
    .line 344
    :catch_4
    :cond_7
    add-int/lit8 v9, v9, 0x1

    .line 345
    .line 346
    goto/16 :goto_1

    .line 347
    .line 348
    :cond_8
    :goto_5
    return-object v2

    .line 349
    :catch_5
    move-exception v0

    .line 350
    const/16 v3, 0x14

    .line 351
    .line 352
    new-array v3, v3, [B

    .line 353
    .line 354
    fill-array-data v3, :array_d

    .line 355
    .line 356
    .line 357
    new-array v4, v5, [B

    .line 358
    .line 359
    fill-array-data v4, :array_e

    .line 360
    .line 361
    .line 362
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    .line 368
    .line 369
    return-object v2

    .line 370
    nop

    .line 371
    :array_0
    .array-data 1
        -0x57t
        -0x73t
        -0xft
    .end array-data

    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    :array_1
    .array-data 1
        -0x24t
        -0x2t
        -0x6dt
        -0x13t
        -0x33t
        0x5t
        0x6ct
        -0x1at
    .end array-data

    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    :array_2
    .array-data 1
        -0xft
        -0x36t
        0x6at
    .end array-data

    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    :array_3
    .array-data 1
        -0x5ct
        -0x67t
        0x28t
        -0x12t
        -0x51t
        -0x22t
        0x6bt
        -0x62t
    .end array-data

    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    :array_4
    .array-data 1
        0x23t
        -0x5bt
        0x1ct
        -0x1t
        0x35t
        0x65t
    .end array-data

    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    nop

    .line 407
    :array_5
    .array-data 1
        0x56t
        -0x2at
        0x7et
        -0x3bt
        0x1at
        0x4at
        0x18t
        -0x6ft
    .end array-data

    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    :array_6
    .array-data 1
        -0x1t
        -0x18t
        0x1ft
        0x7at
        -0x38t
        0x19t
        -0x7et
        -0xat
    .end array-data

    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    :array_7
    .array-data 1
        -0x40t
        0x5bt
        0x32t
        0x35t
        -0x67t
        0x75t
        -0x51t
        0x66t
        -0x6bt
        0x5bt
        0x24t
        0x7at
        -0x7at
        0x75t
        -0x45t
        0x70t
        -0x71t
        0x8t
    .end array-data

    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    nop

    .line 437
    :array_8
    .array-data 1
        -0x4bt
        0x28t
        0x50t
        0x15t
        -0xct
        0x14t
        -0x24t
        0x15t
    .end array-data

    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    :array_9
    .array-data 1
        0x7ct
        0x78t
        -0x62t
    .end array-data

    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    :array_a
    .array-data 1
        0x5ct
        0x55t
        -0x42t
        -0x5dt
        -0x4at
        -0x28t
        -0x46t
        -0x52t
    .end array-data

    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    :array_b
    .array-data 1
        -0x5dt
        0x3bt
        0x56t
        -0x45t
        0x70t
        -0x5ft
        -0x69t
        -0x5et
        -0x16t
        0x24t
        0x5dt
        -0xct
    .end array-data

    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    :array_c
    .array-data 1
        -0x7dt
        0x4bt
        0x33t
        -0x37t
        0x1dt
        -0x38t
        -0x1ct
        -0x2ft
    .end array-data

    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    :array_d
    .array-data 1
        0x55t
        0x6t
        -0x23t
        0x5ft
        0x24t
        -0x1t
        -0x35t
        -0x5t
        0x57t
        0x2ft
        -0x40t
        0x68t
        0x35t
        -0x57t
        -0x3ct
        -0x7t
        0x5bt
        0xft
        -0x34t
        0x7ft
    .end array-data

    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    :array_e
    .array-data 1
        0x32t
        0x63t
        -0x57t
        0x1bt
        0x41t
        -0x77t
        -0x5et
        -0x68t
    .end array-data
.end method


# virtual methods
.method public final e()Ljava/util/ArrayList;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lh7/k;->a:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v2

    .line 14
    :try_start_0
    iget-object v3, p0, Lh7/k;->c:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const/4 v5, 0x0

    .line 21
    :cond_0
    :goto_0
    if-ge v5, v4, :cond_1

    .line 22
    .line 23
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    add-int/lit8 v5, v5, 0x1

    .line 28
    .line 29
    check-cast v6, Lh7/i;

    .line 30
    .line 31
    iget-object v6, v6, Lh7/i;->a:Ljava/io/File;

    .line 32
    .line 33
    if-eqz v6, :cond_0

    .line 34
    .line 35
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-eqz v7, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    iget-object v3, p0, Lh7/k;->g:Landroid/content/Context;

    .line 52
    .line 53
    if-eqz v3, :cond_3

    .line 54
    .line 55
    invoke-static {v3}, Lh7/k;->j(Landroid/content/Context;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_3

    .line 68
    .line 69
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Ljava/io/File;

    .line 74
    .line 75
    if-eqz v4, :cond_2

    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-eqz v5, :cond_2

    .line 86
    .line 87
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    monitor-exit v2

    .line 92
    return-object v0

    .line 93
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    throw v0
.end method

.method public final f(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 1
    if-eqz p1, :cond_e

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz p2, :cond_2

    .line 19
    .line 20
    const/4 v3, 0x4

    .line 21
    new-array v3, v3, [B

    .line 22
    .line 23
    fill-array-data v3, :array_0

    .line 24
    .line 25
    .line 26
    new-array v4, v1, [B

    .line 27
    .line 28
    fill-array-data v4, :array_1

    .line 29
    .line 30
    .line 31
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    if-eqz p2, :cond_2

    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    new-instance v2, Ljava/io/File;

    .line 60
    .line 61
    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_0
    invoke-static {v0}, Lh7/k;->i(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    if-nez p2, :cond_3

    .line 69
    .line 70
    const/16 p2, 0x24

    .line 71
    .line 72
    new-array p2, p2, [B

    .line 73
    .line 74
    fill-array-data p2, :array_2

    .line 75
    .line 76
    .line 77
    new-array v3, v1, [B

    .line 78
    .line 79
    fill-array-data v3, :array_3

    .line 80
    .line 81
    .line 82
    invoke-static {p2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    if-eqz p2, :cond_4

    .line 91
    .line 92
    :cond_3
    invoke-static {p1}, Lh7/k;->u(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-virtual {p0, p1, p2}, Lh7/k;->r(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 97
    .line 98
    .line 99
    :cond_4
    invoke-static {p1}, Lh7/k;->t(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    new-instance v3, Ljava/util/HashSet;

    .line 104
    .line 105
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    const/4 v5, 0x0

    .line 113
    move v6, v5

    .line 114
    :cond_5
    :goto_1
    if-ge v6, v4, :cond_6

    .line 115
    .line 116
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    add-int/lit8 v6, v6, 0x1

    .line 121
    .line 122
    check-cast v7, Lh7/i;

    .line 123
    .line 124
    if-eqz v7, :cond_5

    .line 125
    .line 126
    iget-object v7, v7, Lh7/i;->a:Ljava/io/File;

    .line 127
    .line 128
    if-eqz v7, :cond_5

    .line 129
    .line 130
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_6
    const/16 v4, 0x23

    .line 139
    .line 140
    new-array v4, v4, [B

    .line 141
    .line 142
    fill-array-data v4, :array_4

    .line 143
    .line 144
    .line 145
    new-array v6, v1, [B

    .line 146
    .line 147
    fill-array-data v6, :array_5

    .line 148
    .line 149
    .line 150
    invoke-static {v4, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    if-eqz v4, :cond_7

    .line 159
    .line 160
    if-eqz v2, :cond_7

    .line 161
    .line 162
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    const/4 v4, 0x7

    .line 166
    new-array v4, v4, [B

    .line 167
    .line 168
    fill-array-data v4, :array_6

    .line 169
    .line 170
    .line 171
    new-array v6, v1, [B

    .line 172
    .line 173
    fill-array-data v6, :array_7

    .line 174
    .line 175
    .line 176
    invoke-static {v4, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    new-instance v6, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    const/16 v7, 0xa

    .line 186
    .line 187
    new-array v7, v7, [B

    .line 188
    .line 189
    fill-array-data v7, :array_8

    .line 190
    .line 191
    .line 192
    new-array v8, v1, [B

    .line 193
    .line 194
    fill-array-data v8, :array_9

    .line 195
    .line 196
    .line 197
    invoke-static {v7, v8, v6, v0}, Lcom/google/protobuf/q;->l([B[BLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    invoke-static {p2, v3, v2, v4, v6}, Lh7/k;->b(Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    goto/16 :goto_4

    .line 205
    .line 206
    :cond_7
    const/16 v3, 0x25

    .line 207
    .line 208
    new-array v3, v3, [B

    .line 209
    .line 210
    fill-array-data v3, :array_a

    .line 211
    .line 212
    .line 213
    new-array v4, v1, [B

    .line 214
    .line 215
    fill-array-data v4, :array_b

    .line 216
    .line 217
    .line 218
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    if-nez v3, :cond_8

    .line 227
    .line 228
    const/16 v3, 0x21

    .line 229
    .line 230
    new-array v3, v3, [B

    .line 231
    .line 232
    fill-array-data v3, :array_c

    .line 233
    .line 234
    .line 235
    new-array v4, v1, [B

    .line 236
    .line 237
    fill-array-data v4, :array_d

    .line 238
    .line 239
    .line 240
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    if-nez v3, :cond_8

    .line 249
    .line 250
    const/16 v3, 0x23

    .line 251
    .line 252
    new-array v3, v3, [B

    .line 253
    .line 254
    fill-array-data v3, :array_e

    .line 255
    .line 256
    .line 257
    new-array v4, v1, [B

    .line 258
    .line 259
    fill-array-data v4, :array_f

    .line 260
    .line 261
    .line 262
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    if-nez v3, :cond_8

    .line 271
    .line 272
    const/16 v3, 0x27

    .line 273
    .line 274
    new-array v3, v3, [B

    .line 275
    .line 276
    fill-array-data v3, :array_10

    .line 277
    .line 278
    .line 279
    new-array v4, v1, [B

    .line 280
    .line 281
    fill-array-data v4, :array_11

    .line 282
    .line 283
    .line 284
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v3

    .line 292
    if-eqz v3, :cond_c

    .line 293
    .line 294
    :cond_8
    if-eqz v2, :cond_c

    .line 295
    .line 296
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 305
    .line 306
    .line 307
    move-result v4

    .line 308
    add-int/lit8 v4, v4, -0x1

    .line 309
    .line 310
    :goto_2
    if-ltz v4, :cond_c

    .line 311
    .line 312
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v6

    .line 316
    check-cast v6, Lh7/i;

    .line 317
    .line 318
    if-eqz v6, :cond_b

    .line 319
    .line 320
    iget-object v6, v6, Lh7/i;->a:Ljava/io/File;

    .line 321
    .line 322
    if-nez v6, :cond_9

    .line 323
    .line 324
    goto :goto_3

    .line 325
    :cond_9
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v7

    .line 329
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v7

    .line 333
    if-nez v7, :cond_a

    .line 334
    .line 335
    if-eqz v2, :cond_b

    .line 336
    .line 337
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 338
    .line 339
    .line 340
    move-result v7

    .line 341
    if-lez v7, :cond_b

    .line 342
    .line 343
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v6

    .line 347
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v6

    .line 351
    if-eqz v6, :cond_b

    .line 352
    .line 353
    :cond_a
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    :cond_b
    :goto_3
    add-int/lit8 v4, v4, -0x1

    .line 357
    .line 358
    goto :goto_2

    .line 359
    :cond_c
    :goto_4
    new-instance v2, Landroidx/constraintlayout/core/utils/a;

    .line 360
    .line 361
    const/4 v3, 0x5

    .line 362
    invoke-direct {v2, v3}, Landroidx/constraintlayout/core/utils/a;-><init>(I)V

    .line 363
    .line 364
    .line 365
    invoke-static {p2, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {p0, p1, p2}, Lh7/k;->q(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 369
    .line 370
    .line 371
    invoke-static {v0}, Lh7/k;->i(Ljava/lang/String;)Z

    .line 372
    .line 373
    .line 374
    move-result p2

    .line 375
    if-nez p2, :cond_d

    .line 376
    .line 377
    const/16 p2, 0x24

    .line 378
    .line 379
    new-array p2, p2, [B

    .line 380
    .line 381
    fill-array-data p2, :array_12

    .line 382
    .line 383
    .line 384
    new-array v2, v1, [B

    .line 385
    .line 386
    fill-array-data v2, :array_13

    .line 387
    .line 388
    .line 389
    invoke-static {p2, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object p2

    .line 393
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    move-result p2

    .line 397
    if-nez p2, :cond_d

    .line 398
    .line 399
    const/16 p2, 0x24

    .line 400
    .line 401
    new-array p2, p2, [B

    .line 402
    .line 403
    fill-array-data p2, :array_14

    .line 404
    .line 405
    .line 406
    new-array v2, v1, [B

    .line 407
    .line 408
    fill-array-data v2, :array_15

    .line 409
    .line 410
    .line 411
    invoke-static {p2, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object p2

    .line 415
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result p2

    .line 419
    if-nez p2, :cond_d

    .line 420
    .line 421
    const/16 p2, 0x23

    .line 422
    .line 423
    new-array p2, p2, [B

    .line 424
    .line 425
    fill-array-data p2, :array_16

    .line 426
    .line 427
    .line 428
    new-array v1, v1, [B

    .line 429
    .line 430
    fill-array-data v1, :array_17

    .line 431
    .line 432
    .line 433
    invoke-static {p2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object p2

    .line 437
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result p2

    .line 441
    if-eqz p2, :cond_e

    .line 442
    .line 443
    :cond_d
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 444
    .line 445
    .line 446
    move-result-object p1

    .line 447
    sget-object p2, Lh7/k;->n:[J

    .line 448
    .line 449
    array-length v1, p2

    .line 450
    :goto_5
    if-ge v5, v1, :cond_e

    .line 451
    .line 452
    aget-wide v2, p2, v5

    .line 453
    .line 454
    new-instance v4, Lb1/n;

    .line 455
    .line 456
    const/4 v6, 0x6

    .line 457
    invoke-direct {v4, p0, v0, p1, v6}, Lb1/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 458
    .line 459
    .line 460
    iget-object v6, p0, Lh7/k;->b:Landroid/os/Handler;

    .line 461
    .line 462
    invoke-virtual {v6, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 463
    .line 464
    .line 465
    add-int/lit8 v5, v5, 0x1

    .line 466
    .line 467
    goto :goto_5

    .line 468
    :cond_e
    return-void

    .line 469
    :array_0
    .array-data 1
        0x8t
        -0x6et
        -0x7et
        0x78t
    .end array-data

    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    :array_1
    .array-data 1
        0x6et
        -0x5t
        -0x12t
        0x1dt
        -0x1ct
        -0x61t
        0x5ft
        0x6bt
    .end array-data

    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    :array_2
    .array-data 1
        0x6ct
        0xat
        -0x63t
        0x5et
        0x64t
        -0x4t
        0x33t
        -0x67t
        0x64t
        0xat
        -0x73t
        0x49t
        0x65t
        -0x1ft
        0x79t
        -0x2at
        0x6et
        0x10t
        -0x70t
        0x43t
        0x65t
        -0x45t
        0x15t
        -0x8t
        0x42t
        0x30t
        -0x5at
        0x6ft
        0x44t
        -0x28t
        0x7t
        -0x5t
        0x48t
        0x30t
        -0x44t
        0x68t
    .end array-data

    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    :array_3
    .array-data 1
        0xdt
        0x64t
        -0x7t
        0x2ct
        0xbt
        -0x6bt
        0x57t
        -0x49t
    .end array-data

    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    :array_4
    .array-data 1
        -0x34t
        0x5et
        -0x34t
        0x1bt
        0x49t
        -0x6ft
        -0x27t
        -0x3dt
        -0x3ct
        0x5et
        -0x24t
        0xct
        0x48t
        -0x74t
        -0x6dt
        -0x74t
        -0x32t
        0x44t
        -0x3ft
        0x6t
        0x48t
        -0x2at
        -0x10t
        -0x58t
        -0x17t
        0x79t
        -0x17t
        0x36t
        0x6bt
        -0x49t
        -0x18t
        -0x5dt
        -0x7t
        0x75t
        -0x14t
    .end array-data

    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    :array_5
    .array-data 1
        -0x53t
        0x30t
        -0x58t
        0x69t
        0x26t
        -0x8t
        -0x43t
        -0x13t
    .end array-data

    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    :array_6
    .array-data 1
        -0x4t
        -0x6et
        -0x5ct
        0x4bt
        0x51t
        0x67t
        -0x57t
    .end array-data

    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    :array_7
    .array-data 1
        -0x6ft
        -0x3t
        -0x2ft
        0x25t
        0x25t
        0x2t
        -0x33t
        -0x1ft
    .end array-data

    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    :array_8
    .array-data 1
        -0x1et
        0x68t
        -0x56t
        0x46t
        -0x59t
        0x4at
        0x14t
        -0x50t
        -0xct
        0x20t
    .end array-data

    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    nop

    .line 569
    :array_9
    .array-data 1
        -0x80t
        0x1at
        -0x3bt
        0x27t
        -0x3dt
        0x29t
        0x75t
        -0x3dt
    .end array-data

    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    :array_a
    .array-data 1
        -0x8t
        -0xct
        0x35t
        -0x2ct
        0x5t
        -0x78t
        0x1ft
        0x13t
        -0x10t
        -0xct
        0x25t
        -0x3dt
        0x4t
        -0x6bt
        0x55t
        0x5ct
        -0x6t
        -0x12t
        0x38t
        -0x37t
        0x4t
        -0x31t
        0x36t
        0x78t
        -0x23t
        -0x2dt
        0x10t
        -0x7t
        0x3ft
        -0x51t
        0x36t
        0x72t
        -0x34t
        -0x2ct
        0x5t
        -0x1dt
        0x2et
    .end array-data

    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    nop

    .line 601
    :array_b
    .array-data 1
        -0x67t
        -0x66t
        0x51t
        -0x5at
        0x6at
        -0x1ft
        0x7bt
        0x3dt
    .end array-data

    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    :array_c
    .array-data 1
        -0x4ct
        -0xat
        0x31t
        0x6et
        -0x3ct
        0x58t
        -0x7dt
        0x5et
        -0x44t
        -0xat
        0x21t
        0x79t
        -0x3bt
        0x45t
        -0x37t
        0x11t
        -0x4at
        -0x14t
        0x3ct
        0x73t
        -0x3bt
        0x1ft
        -0x56t
        0x35t
        -0x6ft
        -0x2ft
        0x14t
        0x43t
        -0x12t
        0x7bt
        -0x5et
        0x33t
        -0x7ft
    .end array-data

    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    nop

    .line 631
    :array_d
    .array-data 1
        -0x2bt
        -0x68t
        0x55t
        0x1ct
        -0x55t
        0x31t
        -0x19t
        0x70t
    .end array-data

    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    :array_e
    .array-data 1
        -0x7at
        -0x3ct
        -0x38t
        -0x3dt
        -0x71t
        0x5bt
        -0x6bt
        -0x41t
        -0x72t
        -0x3ct
        -0x28t
        -0x2ct
        -0x72t
        0x46t
        -0x21t
        -0x10t
        -0x7ct
        -0x22t
        -0x3bt
        -0x22t
        -0x72t
        0x1ct
        -0x44t
        -0x2ct
        -0x5dt
        -0x1dt
        -0x13t
        -0x12t
        -0x4et
        0x77t
        -0x44t
        -0x22t
        -0x4ft
        -0x11t
        -0x18t
    .end array-data

    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    :array_f
    .array-data 1
        -0x19t
        -0x56t
        -0x54t
        -0x4ft
        -0x20t
        0x32t
        -0xft
        -0x6ft
    .end array-data

    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    :array_10
    .array-data 1
        0x50t
        0x68t
        0x47t
        -0x58t
        -0x26t
        -0x14t
        -0x3et
        -0x20t
        0x58t
        0x68t
        0x57t
        -0x41t
        -0x25t
        -0xft
        -0x78t
        -0x51t
        0x52t
        0x72t
        0x4at
        -0x4bt
        -0x25t
        -0x55t
        -0x15t
        -0x75t
        0x75t
        0x4ft
        0x62t
        -0x7bt
        -0x9t
        -0x3ct
        -0x1et
        -0x6ft
        0x63t
        0x43t
        0x6et
        -0x6bt
        -0x1dt
        -0x3ct
        -0x16t
    .end array-data

    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    :array_11
    .array-data 1
        0x31t
        0x6t
        0x23t
        -0x26t
        -0x4bt
        -0x7bt
        -0x5at
        -0x32t
    .end array-data

    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    :array_12
    .array-data 1
        -0x62t
        -0x4et
        0x20t
        -0x12t
        -0x6bt
        0x54t
        -0x3bt
        -0x22t
        -0x6at
        -0x4et
        0x30t
        -0x7t
        -0x6ct
        0x49t
        -0x71t
        -0x6ft
        -0x64t
        -0x58t
        0x2dt
        -0xdt
        -0x6ct
        0x13t
        -0x1dt
        -0x41t
        -0x50t
        -0x78t
        0x1bt
        -0x21t
        -0x4bt
        0x70t
        -0xft
        -0x44t
        -0x46t
        -0x78t
        0x1t
        -0x28t
    .end array-data

    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    :array_13
    .array-data 1
        -0x1t
        -0x24t
        0x44t
        -0x64t
        -0x6t
        0x3dt
        -0x5ft
        -0x10t
    .end array-data

    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    :array_14
    .array-data 1
        -0x65t
        -0x74t
        -0x74t
        -0x55t
        0x73t
        -0x79t
        -0x3et
        0x12t
        -0x6dt
        -0x74t
        -0x64t
        -0x44t
        0x72t
        -0x66t
        -0x78t
        0x5dt
        -0x67t
        -0x6at
        -0x7ft
        -0x4at
        0x72t
        -0x40t
        -0x15t
        0x79t
        -0x42t
        -0x55t
        -0x57t
        -0x7at
        0x5ft
        -0x5at
        -0x1dt
        0x7ft
        -0x4ft
        -0x55t
        -0x5at
        -0x62t
    .end array-data

    .line 732
    .line 733
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
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    :array_15
    .array-data 1
        -0x6t
        -0x1et
        -0x18t
        -0x27t
        0x1ct
        -0x12t
        -0x5at
        0x3ct
    .end array-data

    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    :array_16
    .array-data 1
        0x72t
        -0x4bt
        -0x36t
        -0x3dt
        -0x49t
        -0x17t
        -0x13t
        0x5t
        0x7at
        -0x4bt
        -0x26t
        -0x2ct
        -0x4at
        -0xct
        -0x59t
        0x4at
        0x70t
        -0x51t
        -0x39t
        -0x22t
        -0x4at
        -0x52t
        -0x3ct
        0x6et
        0x57t
        -0x6et
        -0x11t
        -0x12t
        -0x6bt
        -0x31t
        -0x24t
        0x65t
        0x47t
        -0x62t
        -0x16t
    .end array-data

    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    :array_17
    .array-data 1
        0x13t
        -0x25t
        -0x52t
        -0x4ft
        -0x28t
        -0x80t
        -0x77t
        0x2bt
    .end array-data
.end method

.method public final o(Landroid/content/Context;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lh7/k;->u(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, p1, v0}, Lh7/k;->r(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lh7/k;->t(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, p1, v0}, Lh7/k;->q(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final p(Landroid/content/Context;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lh7/k;->h:Z

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/16 v2, 0x21

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    new-instance v0, Landroid/content/IntentFilter;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 13
    .line 14
    .line 15
    const/16 v4, 0x24

    .line 16
    .line 17
    new-array v4, v4, [B

    .line 18
    .line 19
    fill-array-data v4, :array_0

    .line 20
    .line 21
    .line 22
    new-array v5, v1, [B

    .line 23
    .line 24
    fill-array-data v5, :array_1

    .line 25
    .line 26
    .line 27
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/16 v4, 0x23

    .line 35
    .line 36
    new-array v4, v4, [B

    .line 37
    .line 38
    fill-array-data v4, :array_2

    .line 39
    .line 40
    .line 41
    new-array v5, v1, [B

    .line 42
    .line 43
    fill-array-data v5, :array_3

    .line 44
    .line 45
    .line 46
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/16 v4, 0x25

    .line 54
    .line 55
    new-array v4, v4, [B

    .line 56
    .line 57
    fill-array-data v4, :array_4

    .line 58
    .line 59
    .line 60
    new-array v5, v1, [B

    .line 61
    .line 62
    fill-array-data v5, :array_5

    .line 63
    .line 64
    .line 65
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-array v4, v2, [B

    .line 73
    .line 74
    fill-array-data v4, :array_6

    .line 75
    .line 76
    .line 77
    new-array v5, v1, [B

    .line 78
    .line 79
    fill-array-data v5, :array_7

    .line 80
    .line 81
    .line 82
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const/16 v4, 0x23

    .line 90
    .line 91
    new-array v4, v4, [B

    .line 92
    .line 93
    fill-array-data v4, :array_8

    .line 94
    .line 95
    .line 96
    new-array v5, v1, [B

    .line 97
    .line 98
    fill-array-data v5, :array_9

    .line 99
    .line 100
    .line 101
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const/16 v4, 0x27

    .line 109
    .line 110
    new-array v4, v4, [B

    .line 111
    .line 112
    fill-array-data v4, :array_a

    .line 113
    .line 114
    .line 115
    new-array v5, v1, [B

    .line 116
    .line 117
    fill-array-data v5, :array_b

    .line 118
    .line 119
    .line 120
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    const/4 v4, 0x4

    .line 128
    new-array v4, v4, [B

    .line 129
    .line 130
    fill-array-data v4, :array_c

    .line 131
    .line 132
    .line 133
    new-array v5, v1, [B

    .line 134
    .line 135
    fill-array-data v5, :array_d

    .line 136
    .line 137
    .line 138
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 146
    .line 147
    iget-object v5, p0, Lh7/k;->e:Lh7/h;

    .line 148
    .line 149
    if-lt v4, v2, :cond_0

    .line 150
    .line 151
    invoke-static {p1, v5, v0}, Lc5/h;->q(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {p1, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    .line 157
    .line 158
    :goto_0
    iput-boolean v3, p0, Lh7/k;->h:Z

    .line 159
    .line 160
    :cond_1
    iget-boolean v0, p0, Lh7/k;->i:Z

    .line 161
    .line 162
    if-nez v0, :cond_3

    .line 163
    .line 164
    new-instance v0, Landroid/content/IntentFilter;

    .line 165
    .line 166
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 167
    .line 168
    .line 169
    const/16 v4, 0x2f

    .line 170
    .line 171
    new-array v4, v4, [B

    .line 172
    .line 173
    fill-array-data v4, :array_e

    .line 174
    .line 175
    .line 176
    new-array v5, v1, [B

    .line 177
    .line 178
    fill-array-data v5, :array_f

    .line 179
    .line 180
    .line 181
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    const/16 v4, 0x2f

    .line 189
    .line 190
    new-array v4, v4, [B

    .line 191
    .line 192
    fill-array-data v4, :array_10

    .line 193
    .line 194
    .line 195
    new-array v5, v1, [B

    .line 196
    .line 197
    fill-array-data v5, :array_11

    .line 198
    .line 199
    .line 200
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    const/16 v4, 0x32

    .line 208
    .line 209
    new-array v5, v4, [B

    .line 210
    .line 211
    fill-array-data v5, :array_12

    .line 212
    .line 213
    .line 214
    new-array v6, v1, [B

    .line 215
    .line 216
    fill-array-data v6, :array_13

    .line 217
    .line 218
    .line 219
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    new-array v4, v4, [B

    .line 227
    .line 228
    fill-array-data v4, :array_14

    .line 229
    .line 230
    .line 231
    new-array v1, v1, [B

    .line 232
    .line 233
    fill-array-data v1, :array_15

    .line 234
    .line 235
    .line 236
    invoke-static {v4, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 244
    .line 245
    iget-object v4, p0, Lh7/k;->f:Lh7/h;

    .line 246
    .line 247
    if-lt v1, v2, :cond_2

    .line 248
    .line 249
    invoke-static {p1, v4, v0}, Lc5/h;->q(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 250
    .line 251
    .line 252
    goto :goto_1

    .line 253
    :cond_2
    invoke-virtual {p1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 254
    .line 255
    .line 256
    :goto_1
    iput-boolean v3, p0, Lh7/k;->i:Z

    .line 257
    .line 258
    :cond_3
    return-void

    .line 259
    :array_0
    .array-data 1
        0x14t
        -0x1bt
        -0x5at
        -0x1t
        -0x22t
        -0x28t
        0x15t
        0x5bt
        0x1ct
        -0x1bt
        -0x4at
        -0x18t
        -0x21t
        -0x3bt
        0x5ft
        0x14t
        0x16t
        -0x1t
        -0x55t
        -0x1et
        -0x21t
        -0x61t
        0x3ct
        0x30t
        0x31t
        -0x3et
        -0x7dt
        -0x2et
        -0xet
        -0x7t
        0x34t
        0x36t
        0x3et
        -0x3et
        -0x74t
        -0x36t
    .end array-data

    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    :array_1
    .array-data 1
        0x75t
        -0x75t
        -0x3et
        -0x73t
        -0x4ft
        -0x4ft
        0x71t
        0x75t
    .end array-data

    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    :array_2
    .array-data 1
        -0x4et
        0x13t
        0x7ct
        0x31t
        0x18t
        0x76t
        0x3ct
        -0x10t
        -0x46t
        0x13t
        0x6ct
        0x26t
        0x19t
        0x6bt
        0x76t
        -0x41t
        -0x50t
        0x9t
        0x71t
        0x2ct
        0x19t
        0x31t
        0x15t
        -0x65t
        -0x69t
        0x34t
        0x59t
        0x1ct
        0x3at
        0x50t
        0xdt
        -0x70t
        -0x79t
        0x38t
        0x5ct
    .end array-data

    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    :array_3
    .array-data 1
        -0x2dt
        0x7dt
        0x18t
        0x43t
        0x77t
        0x1ft
        0x58t
        -0x22t
    .end array-data

    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    :array_4
    .array-data 1
        0x66t
        -0x39t
        0xft
        0x29t
        -0x3et
        0x2ct
        -0x40t
        0x2et
        0x6et
        -0x39t
        0x1ft
        0x3et
        -0x3dt
        0x31t
        -0x76t
        0x61t
        0x64t
        -0x23t
        0x2t
        0x34t
        -0x3dt
        0x6bt
        -0x17t
        0x45t
        0x43t
        -0x20t
        0x2at
        0x4t
        -0x8t
        0xbt
        -0x17t
        0x4ft
        0x52t
        -0x19t
        0x3ft
        0x1et
        -0x17t
    .end array-data

    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
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
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    nop

    .line 343
    :array_5
    .array-data 1
        0x7t
        -0x57t
        0x6bt
        0x5bt
        -0x53t
        0x45t
        -0x5ct
        0x0t
    .end array-data

    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    :array_6
    .array-data 1
        -0x30t
        -0x9t
        -0x6ct
        0x48t
        -0x1ct
        0x7at
        0x33t
        -0x6at
        -0x28t
        -0x9t
        -0x7ct
        0x5ft
        -0x1bt
        0x67t
        0x79t
        -0x27t
        -0x2et
        -0x13t
        -0x67t
        0x55t
        -0x1bt
        0x3dt
        0x1at
        -0x3t
        -0xbt
        -0x30t
        -0x4ft
        0x65t
        -0x32t
        0x59t
        0x12t
        -0x5t
        -0x1bt
    .end array-data

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
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    nop

    .line 373
    :array_7
    .array-data 1
        -0x4ft
        -0x67t
        -0x10t
        0x3at
        -0x75t
        0x13t
        0x57t
        -0x48t
    .end array-data

    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    :array_8
    .array-data 1
        -0x20t
        -0x14t
        -0x57t
        -0x70t
        0x54t
        0x14t
        0x3at
        -0xct
        -0x18t
        -0x14t
        -0x47t
        -0x79t
        0x55t
        0x9t
        0x70t
        -0x45t
        -0x1et
        -0xat
        -0x5ct
        -0x73t
        0x55t
        0x53t
        0x13t
        -0x61t
        -0x3bt
        -0x35t
        -0x74t
        -0x43t
        0x69t
        0x38t
        0x13t
        -0x6bt
        -0x29t
        -0x39t
        -0x77t
    .end array-data

    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    :array_9
    .array-data 1
        -0x7ft
        -0x7et
        -0x33t
        -0x1et
        0x3bt
        0x7dt
        0x5et
        -0x26t
    .end array-data

    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    :array_a
    .array-data 1
        -0x37t
        0x4at
        -0x48t
        -0xdt
        0x47t
        0x63t
        -0x72t
        0x7bt
        -0x3ft
        0x4at
        -0x58t
        -0x1ct
        0x46t
        0x7et
        -0x3ct
        0x34t
        -0x35t
        0x50t
        -0x4bt
        -0x12t
        0x46t
        0x24t
        -0x59t
        0x10t
        -0x14t
        0x6dt
        -0x63t
        -0x22t
        0x6at
        0x4bt
        -0x52t
        0xat
        -0x6t
        0x61t
        -0x6ft
        -0x32t
        0x7et
        0x4bt
        -0x5at
    .end array-data

    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    :array_b
    .array-data 1
        -0x58t
        0x24t
        -0x24t
        -0x7ft
        0x28t
        0xat
        -0x16t
        0x55t
    .end array-data

    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    :array_c
    .array-data 1
        -0x4et
        0x4ct
        0x12t
        -0x48t
    .end array-data

    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    :array_d
    .array-data 1
        -0x2ct
        0x25t
        0x7et
        -0x23t
        -0x7at
        0x16t
        -0x5et
        -0x22t
    .end array-data

    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    :array_e
    .array-data 1
        0x6et
        0x1at
        0x27t
        0x11t
        0x7at
        -0x46t
        0x26t
        0x1ct
        0x67t
        0x15t
        0x31t
        0x7t
        0x62t
        -0x4et
        0x30t
        0x57t
        0x21t
        0x1t
        0x30t
        0x1t
        0x3bt
        -0x4et
        0x21t
        0x46t
        0x66t
        0x1bt
        0x2dt
        0x4dt
        0x40t
        -0x80t
        0x0t
        0x6dt
        0x4bt
        0x31t
        0x15t
        0x2at
        0x56t
        -0x6at
        0x1dt
        0x73t
        0x5bt
        0x20t
        0x2t
        0x20t
        0x5dt
        -0x6at
        0x6t
    .end array-data

    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    :array_f
    .array-data 1
        0xft
        0x74t
        0x43t
        0x63t
        0x15t
        -0x2dt
        0x42t
        0x32t
    .end array-data

    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    :array_10
    .array-data 1
        -0x4dt
        0x32t
        -0x1bt
        0x52t
        0x7dt
        0x6at
        -0x1dt
        -0x3bt
        -0x46t
        0x3dt
        -0xdt
        0x44t
        0x65t
        0x62t
        -0xbt
        -0x72t
        -0x4t
        0x29t
        -0xet
        0x42t
        0x3ct
        0x62t
        -0x1ct
        -0x61t
        -0x45t
        0x33t
        -0x11t
        0xet
        0x47t
        0x50t
        -0x3bt
        -0x4ct
        -0x6at
        0x19t
        -0x29t
        0x69t
        0x51t
        0x46t
        -0x28t
        -0x51t
        -0x69t
        0x8t
        -0x40t
        0x63t
        0x5at
        0x46t
        -0x3dt
    .end array-data

    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    :array_11
    .array-data 1
        -0x2et
        0x5ct
        -0x7ft
        0x20t
        0x12t
        0x3t
        -0x79t
        -0x15t
    .end array-data

    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    :array_12
    .array-data 1
        0x7t
        -0x1t
        0x47t
        0x4dt
        0x40t
        0x5t
        -0x44t
        -0x4at
        0xet
        -0x10t
        0x51t
        0x5bt
        0x58t
        0xdt
        -0x56t
        -0x3t
        0x48t
        -0x1ct
        0x50t
        0x5dt
        0x1t
        0xdt
        -0x45t
        -0x14t
        0xft
        -0x2t
        0x4dt
        0x11t
        0x7at
        0x3ft
        -0x66t
        -0x39t
        0x27t
        -0x2et
        0x60t
        0x7at
        0x7ct
        0x3ft
        -0x69t
        -0x36t
        0x3ft
        -0x32t
        0x62t
        0x6bt
        0x7bt
        0x2dt
        -0x65t
        -0x30t
        0x23t
        -0x2bt
    .end array-data

    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    nop

    .line 559
    :array_13
    .array-data 1
        0x66t
        -0x6ft
        0x23t
        0x3ft
        0x2ft
        0x6ct
        -0x28t
        -0x68t
    .end array-data

    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    :array_14
    .array-data 1
        0x34t
        0x30t
        0x9t
        -0x63t
        -0x62t
        0x56t
        -0x9t
        0x54t
        0x3dt
        0x3ft
        0x1ft
        -0x75t
        -0x7at
        0x5et
        -0x1ft
        0x1ft
        0x7bt
        0x2bt
        0x1et
        -0x73t
        -0x21t
        0x5et
        -0x10t
        0xet
        0x3ct
        0x31t
        0x3t
        -0x3ft
        -0x5ct
        0x6ct
        -0x2ft
        0x25t
        0x14t
        0x1dt
        0x2et
        -0x56t
        -0x5et
        0x6ct
        -0x24t
        0x28t
        0xct
        0x1t
        0x29t
        -0x56t
        -0x5bt
        0x7et
        -0x30t
        0x32t
        0x10t
        0x1at
    .end array-data

    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    nop

    .line 597
    :array_15
    .array-data 1
        0x55t
        0x5et
        0x6dt
        -0x11t
        -0xft
        0x3ft
        -0x6dt
        0x7at
    .end array-data
.end method

.method public final q(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lh7/k;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lh7/k;->g:Landroid/content/Context;

    .line 5
    .line 6
    iget-object p1, p0, Lh7/k;->c:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lh7/k;->c:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 14
    .line 15
    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x0

    .line 27
    :cond_0
    :goto_0
    if-ge v1, v0, :cond_3

    .line 28
    .line 29
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    check-cast v2, Lh7/i;

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    iget-object v2, v2, Lh7/i;->a:Ljava/io/File;

    .line 40
    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-lez v3, :cond_2

    .line 49
    .line 50
    const/16 v3, 0xa

    .line 51
    .line 52
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    sget-object v0, Lh7/k;->l:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p2, v0, p1}, Lu0/a;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    throw p1
.end method

.method public final r(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lh7/k;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lh7/k;->g:Landroid/content/Context;

    .line 5
    .line 6
    iget-object v1, p0, Lh7/k;->d:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lh7/k;->d:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 14
    .line 15
    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    const-string v0, ""

    .line 18
    .line 19
    if-eqz p1, :cond_4

    .line 20
    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x0

    .line 31
    :goto_0
    if-ge v2, v1, :cond_3

    .line 32
    .line 33
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    check-cast v3, Lh7/j;

    .line 40
    .line 41
    if-nez v3, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-lez v4, :cond_1

    .line 49
    .line 50
    const/16 v4, 0xa

    .line 51
    .line 52
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    :cond_1
    iget v4, v3, Lh7/j;->a:I

    .line 56
    .line 57
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const/16 v4, 0x7c

    .line 61
    .line 62
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v5, v3, Lh7/j;->b:Ljava/lang/String;

    .line 66
    .line 67
    if-nez v5, :cond_2

    .line 68
    .line 69
    move-object v5, v0

    .line 70
    :cond_2
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v5, v3, Lh7/j;->c:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-boolean v5, v3, Lh7/j;->d:Z

    .line 85
    .line 86
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object v3, v3, Lh7/j;->e:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    sget-object v0, Lh7/k;->m:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p2, v0, p1}, Lu0/a;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :cond_4
    return-void

    .line 112
    :catchall_0
    move-exception p1

    .line 113
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    throw p1
.end method

.method public final v(Landroid/content/Context;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object v0, p0, Lh7/k;->a:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iput-object p1, p0, Lh7/k;->g:Landroid/content/Context;

    .line 12
    .line 13
    iget v1, p0, Lh7/k;->j:I

    .line 14
    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    iput v1, p0, Lh7/k;->j:I

    .line 18
    .line 19
    iget-boolean v1, p0, Lh7/k;->h:Z

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-boolean v1, p0, Lh7/k;->i:Z

    .line 24
    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lh7/k;->p(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-virtual {p0, p1}, Lh7/k;->o(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p1
.end method

.method public final w()V
    .locals 4

    .line 1
    iget-object v0, p0, Lh7/k;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lh7/k;->j:I

    .line 5
    .line 6
    if-lez v1, :cond_0

    .line 7
    .line 8
    add-int/lit8 v1, v1, -0x1

    .line 9
    .line 10
    iput v1, p0, Lh7/k;->j:I

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    iget v1, p0, Lh7/k;->j:I

    .line 16
    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    iget-object v1, p0, Lh7/k;->g:Landroid/content/Context;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-boolean v2, p0, Lh7/k;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    :try_start_1
    iget-object v2, p0, Lh7/k;->e:Lh7/h;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .line 32
    .line 33
    :catch_0
    :try_start_2
    iput-boolean v3, p0, Lh7/k;->h:Z

    .line 34
    .line 35
    :cond_1
    iget-boolean v1, p0, Lh7/k;->i:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    :try_start_3
    iget-object v1, p0, Lh7/k;->g:Landroid/content/Context;

    .line 40
    .line 41
    iget-object v2, p0, Lh7/k;->f:Lh7/h;

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 44
    .line 45
    .line 46
    :catch_1
    :try_start_4
    iput-boolean v3, p0, Lh7/k;->i:Z

    .line 47
    .line 48
    :cond_2
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 51
    throw v1
.end method
