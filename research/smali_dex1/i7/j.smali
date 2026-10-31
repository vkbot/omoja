.class public final Li7/j;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final e:Ljava/lang/String;

.field public static f:Ljava/lang/Boolean;

.field public static g:Landroid/location/Location;

.field public static final h:Ljava/util/ArrayList;


# instance fields
.field public final b:Lcom/example/navistart/LocServ;

.field public final c:I

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_30

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v2, v1, [B

    .line 11
    .line 12
    fill-array-data v2, :array_3c

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    const/16 v0, 0xd

    .line 19
    .line 20
    new-array v0, v0, [B

    .line 21
    .line 22
    fill-array-data v0, :array_44

    .line 23
    .line 24
    .line 25
    new-array v1, v1, [B

    .line 26
    .line 27
    fill-array-data v1, :array_50

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Li7/j;->e:Ljava/lang/String;

    .line 35
    .line 36
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 37
    .line 38
    sput-object v0, Li7/j;->f:Ljava/lang/Boolean;

    .line 39
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    sput-object v0, Li7/j;->h:Ljava/util/ArrayList;

    .line 46
    .line 47
    return-void

    .line 48
    nop

    .line 49
    :array_30
    .array-data 1
        0x3at
        -0x4t
        0x5bt
        -0x3t
        0x2bt
        -0x24t
        -0x61t
        -0x7et
        0x2at
        -0x11t
        0x4et
        -0x6t
        0x63t
        -0x2ft
        -0x62t
    .end array-data

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    :array_3c
    .array-data 1
        0x4et
        -0x72t
        0x3at
        -0x65t
        0x4dt
        -0x4bt
        -0x4t
        -0x23t
    .end array-data

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    :array_44
    .array-data 1
        -0x6t
        0x3at
        -0x4t
        0x76t
        0x27t
        -0x70t
        -0x32t
        -0x14t
        -0x25t
        0x28t
        -0x5t
        0x78t
        0x5t
    .end array-data

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    nop

    .line 81
    :array_50
    .array-data 1
        -0x42t
        0x5bt
        -0x78t
        0x17t
        0x77t
        -0x1et
        -0x5ft
        -0x71t
    .end array-data
.end method

.method public constructor <init>(Lcom/example/navistart/LocServ;)V
    .registers 5

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_22

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v1, v1, [B

    .line 11
    .line 12
    fill-array-data v1, :array_2e

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 22
    .line 23
    .line 24
    const/16 v0, 0x1770

    .line 25
    .line 26
    iput v0, p0, Li7/j;->c:I

    .line 27
    .line 28
    const/16 v0, 0x7d0

    .line 29
    .line 30
    iput v0, p0, Li7/j;->d:I

    .line 31
    .line 32
    iput-object p1, p0, Li7/j;->b:Lcom/example/navistart/LocServ;

    .line 33
    .line 34
    return-void

    .line 35
    :array_22
    .array-data 1
        -0x38t
        -0x1at
        0x3t
        0x51t
        0x4at
        -0x60t
        0x44t
        0x70t
        -0x28t
        -0xbt
        0x16t
        0x56t
        0x2t
        -0x53t
        0x45t
    .end array-data

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    :array_2e
    .array-data 1
        -0x44t
        -0x6ct
        0x62t
        0x37t
        0x2ct
        -0x37t
        0x27t
        0x2ft
    .end array-data
.end method

.method public static b(Li7/j;Ljava/lang/String;)V
    .registers 20

    .line 1
    sget-object v1, Li7/j;->e:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const/16 v3, 0x8

    .line 8
    .line 9
    :try_start_8
    new-instance v4, Ljava/io/BufferedReader;

    .line 10
    .line 11
    new-instance v0, Ljava/io/FileReader;

    .line 12
    .line 13
    move-object/from16 v5, p1

    .line 14
    .line 15
    invoke-direct {v0, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_130
    .catchall {:try_start_8 .. :try_end_14} :catchall_12e

    .line 19
    .line 20
    .line 21
    :try_start_14
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 25
    .line 26
    .line 27
    const/16 v0, 0x17

    .line 28
    .line 29
    new-array v0, v0, [B

    .line 30
    .line 31
    fill-array-data v0, :array_16a

    .line 32
    .line 33
    .line 34
    new-array v5, v3, [B

    .line 35
    .line 36
    fill-array-data v5, :array_17a

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/16 v0, 0x84

    .line 47
    .line 48
    new-array v0, v0, [B

    .line 49
    .line 50
    fill-array-data v0, :array_182

    .line 51
    .line 52
    .line 53
    new-array v5, v3, [B

    .line 54
    .line 55
    fill-array-data v5, :array_1c8

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :cond_3d
    :goto_3d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    if-eqz v5, :cond_f1

    .line 67
    .line 68
    const/4 v6, 0x2

    .line 69
    new-array v7, v6, [B

    .line 70
    .line 71
    fill-array-data v7, :array_1d0

    .line 72
    .line 73
    .line 74
    new-array v8, v3, [B

    .line 75
    .line 76
    fill-array-data v8, :array_1d6

    .line 77
    .line 78
    .line 79
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    const/4 v7, 0x0

    .line 88
    aget-object v5, v5, v7

    .line 89
    .line 90
    new-array v8, v6, [B

    .line 91
    .line 92
    fill-array-data v8, :array_1de

    .line 93
    .line 94
    .line 95
    new-array v9, v3, [B

    .line 96
    .line 97
    fill-array-data v9, :array_1e4

    .line 98
    .line 99
    .line 100
    invoke-static {v8, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    const-string v9, ""

    .line 105
    .line 106
    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    const/4 v8, 0x1

    .line 111
    new-array v9, v8, [B

    .line 112
    .line 113
    const/16 v10, 0x10

    .line 114
    .line 115
    aput-byte v10, v9, v7

    .line 116
    .line 117
    new-array v10, v3, [B

    .line 118
    .line 119
    fill-array-data v10, :array_1ec

    .line 120
    .line 121
    .line 122
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    array-length v9, v5

    .line 131
    const/16 v10, 0x9

    .line 132
    .line 133
    if-ne v9, v10, :cond_3d

    .line 134
    .line 135
    aget-object v7, v5, v7

    .line 136
    .line 137
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    move-result v7

    .line 141
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    aget-object v7, v5, v8

    .line 146
    .line 147
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 148
    .line 149
    .line 150
    move-result-wide v7

    .line 151
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 152
    .line 153
    .line 154
    move-result-object v10

    .line 155
    aget-object v6, v5, v6

    .line 156
    .line 157
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 158
    .line 159
    .line 160
    move-result-wide v6

    .line 161
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 162
    .line 163
    .line 164
    move-result-object v11

    .line 165
    const/4 v6, 0x3

    .line 166
    aget-object v6, v5, v6

    .line 167
    .line 168
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    move-result v6

    .line 172
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v12

    .line 176
    const/4 v6, 0x4

    .line 177
    aget-object v6, v5, v6

    .line 178
    .line 179
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object v13

    .line 187
    const/4 v6, 0x5

    .line 188
    aget-object v6, v5, v6

    .line 189
    .line 190
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v14

    .line 198
    const/4 v6, 0x6

    .line 199
    aget-object v6, v5, v6

    .line 200
    .line 201
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object v15

    .line 209
    const/4 v6, 0x7

    .line 210
    aget-object v6, v5, v6

    .line 211
    .line 212
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 217
    .line 218
    .line 219
    move-result-object v16

    .line 220
    aget-object v5, v5, v3

    .line 221
    .line 222
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    .line 228
    .line 229
    move-result-object v17

    .line 230
    filled-new-array/range {v9 .. v17}, [Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    invoke-virtual {v2, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    goto/16 :goto_3d

    .line 238
    .line 239
    :catchall_ee
    move-exception v0

    .line 240
    move-object v5, v0

    .line 241
    goto :goto_132

    .line 242
    :cond_f1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 243
    .line 244
    .line 245
    const/16 v0, 0x48

    .line 246
    .line 247
    new-array v0, v0, [B

    .line 248
    .line 249
    fill-array-data v0, :array_1f4

    .line 250
    .line 251
    .line 252
    new-array v5, v3, [B

    .line 253
    .line 254
    fill-array-data v5, :array_21c

    .line 255
    .line 256
    .line 257
    invoke-static {v0, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .line 263
    .line 264
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    const/16 v5, 0x12

    .line 269
    .line 270
    new-array v5, v5, [B

    .line 271
    .line 272
    fill-array-data v5, :array_224

    .line 273
    .line 274
    .line 275
    new-array v6, v3, [B

    .line 276
    .line 277
    fill-array-data v6, :array_232

    .line 278
    .line 279
    .line 280
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    new-instance v6, Ljava/util/Date;

    .line 285
    .line 286
    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    .line 290
    .line 291
    .line 292
    move-result-wide v6

    .line 293
    invoke-virtual {v0, v5, v6, v7}, Lu0/a;->saveLong(Ljava/lang/String;J)V
    :try_end_127
    .catchall {:try_start_14 .. :try_end_127} :catchall_ee

    .line 294
    .line 295
    .line 296
    :try_start_127
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_12a} :catch_130
    .catchall {:try_start_127 .. :try_end_12a} :catchall_12e

    .line 297
    .line 298
    .line 299
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 300
    .line 301
    .line 302
    return-void

    .line 303
    :catchall_12e
    move-exception v0

    .line 304
    goto :goto_165

    .line 305
    :catch_130
    move-exception v0

    .line 306
    goto :goto_13b

    .line 307
    :goto_132
    :try_start_132
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_135
    .catchall {:try_start_132 .. :try_end_135} :catchall_136

    .line 308
    .line 309
    .line 310
    goto :goto_13a

    .line 311
    :catchall_136
    move-exception v0

    .line 312
    :try_start_137
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 313
    .line 314
    .line 315
    :goto_13a
    throw v5
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_13b} :catch_130
    .catchall {:try_start_137 .. :try_end_13b} :catchall_12e

    .line 316
    :goto_13b
    :try_start_13b
    new-instance v4, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .line 320
    .line 321
    const/16 v5, 0x27

    .line 322
    .line 323
    new-array v5, v5, [B

    .line 324
    .line 325
    fill-array-data v5, :array_23a

    .line 326
    .line 327
    .line 328
    new-array v3, v3, [B

    .line 329
    .line 330
    fill-array-data v3, :array_252

    .line 331
    .line 332
    .line 333
    invoke-static {v5, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_161
    .catchall {:try_start_13b .. :try_end_161} :catchall_12e

    .line 352
    .line 353
    .line 354
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 355
    .line 356
    .line 357
    return-void

    .line 358
    :goto_165
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 359
    .line 360
    .line 361
    throw v0

    .line 362
    nop

    .line 363
    :array_16a
    .array-data 1
        0x61t
        -0xat
        -0x2ft
        0x29t
        -0x56t
        0x5et
        0x54t
        -0x69t
        0x77t
        -0x4t
        -0x30t
        0x4ct
        -0x56t
        0x69t
        0x15t
        -0x49t
        0x43t
        -0x26t
        -0x2t
        0x28t
        -0x61t
        0x6ft
        0x15t
    .end array-data

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
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    :array_17a
    .array-data 1
        0x25t
        -0x4dt
        -0x63t
        0x6ct
        -0x2t
        0x1bt
        0x74t
        -0x2ft
    .end array-data

    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    :array_182
    .array-data 1
        0x66t
        -0x71t
        0x6ct
        -0x19t
        -0x7dt
        -0xdt
        0x63t
        -0x70t
        0x7dt
        -0x1ft
        0x6dt
        -0x19t
        -0x7ft
        -0x15t
        0x2t
        -0x64t
        0x6at
        -0x1ft
        0x76t
        -0x14t
        -0x7bt
        -0x18t
        0x63t
        -0x75t
        0x5dt
        -0x60t
        0x59t
        -0x3ct
        -0x48t
        -0x3ct
        0x7t
        -0x42t
        0x5bt
        -0x60t
        0x1ft
        -0x76t
        -0x68t
        -0x1dt
        0x1bt
        -0xdt
        0xft
        -0x67t
        0x13t
        -0x7et
        -0x78t
        -0x75t
        0x63t
        -0x75t
        0x76t
        -0x6ft
        0x7at
        -0x72t
        -0xft
        -0xct
        0x13t
        -0x66t
        0x6at
        -0x7bt
        0x13t
        -0x7et
        -0x6bt
        -0x12t
        0x11t
        -0x75t
        0x76t
        -0x6ft
        0x7at
        -0x72t
        -0xft
        -0x1dt
        0xat
        -0x73t
        0x6at
        -0x7et
        0x6bt
        -0x15t
        -0x62t
        -0x17t
        0x6ft
        -0x1t
        0x6bt
        -0x78t
        0x6ct
        -0xat
        -0x70t
        -0x17t
        0x0t
        -0x66t
        0x3t
        -0x1ft
        0x7et
        -0x14t
        -0x6at
        -0x15t
        0x6t
        -0xat
        0xft
        -0x69t
        0x7et
        -0x12t
        -0x7ct
        -0x1et
        0x10t
        -0x1t
        0x7t
        -0x2t
        0x13t
        -0x7et
        -0x12t
        -0x75t
        0x63t
        -0x20t
        0x3t
        -0x1ft
        0x0t
        -0x72t
        -0xft
        -0x68t
        0x6ft
        -0x1t
        0x10t
        -0x13t
        0x1ft
        -0x63t
        -0x3t
        -0x79t
        0x7ct
        -0xdt
        0xft
        -0x2t
        0x16t
        -0x67t
    .end array-data

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
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
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
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    :array_1c8
    .array-data 1
        0x2ft
        -0x3ft
        0x3ft
        -0x5et
        -0x2ft
        -0x59t
        0x43t
        -0x21t
    .end array-data

    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    :array_1d0
    .array-data 1
        -0x3dt
        -0x21t
    .end array-data

    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    nop

    .line 471
    :array_1d6
    .array-data 1
        -0x14t
        -0x10t
        0x6t
        0x4at
        -0x33t
        -0x1ct
        -0x61t
        -0x51t
    .end array-data

    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    :array_1de
    .array-data 1
        0x4ft
        -0x29t
    .end array-data

    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    nop

    .line 485
    :array_1e4
    .array-data 1
        0x13t
        -0x5ct
        0xbt
        -0x44t
        0x6t
        -0x5t
        0x3ct
        0x69t
    .end array-data

    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    :array_1ec
    .array-data 1
        0x3ct
        -0x1ct
        0x71t
        -0x20t
        -0x3ft
        -0x41t
        -0x33t
        -0x11t
    .end array-data

    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    :array_1f4
    .array-data 1
        0x73t
        -0x44t
        0x54t
        0x0t
        0x78t
        -0x71t
        0x25t
        -0x41t
        0x72t
        -0x5dt
        0x54t
        0x5t
        -0x78t
        -0x1dt
        0x76t
        -0x2dt
        0x22t
        -0x8t
        0x3bt
        0x60t
        0x1dt
        -0x1dt
        0x7dt
        -0x2et
        0x1et
        -0x8t
        0x3at
        -0x70t
        0x79t
        -0x4dt
        0x25t
        -0x44t
        0x72t
        -0x53t
        0x55t
        0x30t
        0x78t
        -0x7et
        0x25t
        -0x41t
        0x73t
        -0x63t
        0x54t
        0xdt
        0x79t
        -0x47t
        -0x2bt
        -0x2et
        0x11t
        0x8t
        0x54t
        0x1t
        0x78t
        -0x7et
        0x25t
        -0x4bt
        0x72t
        -0x55t
        -0x5ct
        0x60t
        0x1ct
        -0x1et
        0x45t
        -0x2et
        0x1et
        -0x8t
        0x39t
        0x61t
        0x23t
        -0x1dt
        0x70t
        0x2ct
    .end array-data

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
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    :array_21c
    .array-data 1
        -0x5dt
        0x28t
        -0x7ct
        -0x50t
        -0x58t
        0x32t
        -0xbt
        0x2t
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
        0x7et
        -0x77t
        -0x66t
        -0x17t
        -0x66t
        -0x58t
        -0x7dt
        0x44t
        0x4et
        -0x73t
        -0x51t
        -0x6t
        -0x52t
        -0x44t
        -0x7at
        0x57t
        0x7et
        -0x56t
    .end array-data

    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    nop

    .line 563
    :array_232
    .array-data 1
        0x3at
        -0x18t
        -0x12t
        -0x78t
        -0x31t
        -0x28t
        -0x19t
        0x25t
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
        0x61t
        0x5bt
        0x5ct
        0x1at
        0x73t
        0x68t
        0x33t
        -0x63t
        0x61t
        0x7ft
        0x5dt
        0x22t
        -0x7dt
        0x0t
        0x54t
        -0x4t
        0x1t
        0x15t
        0x32t
        0x42t
        0x1bt
        0x1t
        0x62t
        -0x4t
        0x9t
        -0x1bt
        0x5dt
        0x20t
        -0x7dt
        0x0t
        0x52t
        -0x4t
        0x1t
        0x15t
        0x3at
        0x43t
        0x20t
        -0x16t
        -0x3dt
    .end array-data

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
    :array_252
    .array-data 1
        -0x4ft
        -0x3bt
        -0x73t
        -0x6et
        -0x5dt
        -0x30t
        -0x1dt
        0x2ct
    .end array-data
.end method

.method public static c(Li7/j;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/util/zip/ZipInputStream;

    .line 5
    .line 6
    new-instance v0, Ljava/io/FileInputStream;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 12
    .line 13
    .line 14
    :cond_d
    :goto_d
    :try_start_d
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_64

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_d

    .line 25
    .line 26
    new-instance p1, Ljava/io/FileOutputStream;

    .line 27
    .line 28
    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_59

    .line 29
    .line 30
    .line 31
    const/16 v0, 0x400

    .line 32
    .line 33
    :try_start_20
    new-array v0, v0, [B

    .line 34
    .line 35
    :goto_22
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-lez v1, :cond_2f

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_2d

    .line 43
    .line 44
    .line 45
    goto :goto_22

    .line 46
    :catchall_2d
    move-exception p2

    .line 47
    goto :goto_5b

    .line 48
    :cond_2f
    :try_start_2f
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 49
    .line 50
    .line 51
    sget-object p1, Li7/j;->e:Ljava/lang/String;

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const/16 v1, 0x1b

    .line 59
    .line 60
    new-array v1, v1, [B

    .line 61
    .line 62
    fill-array-data v1, :array_72

    .line 63
    .line 64
    .line 65
    const/16 v2, 0x8

    .line 66
    .line 67
    new-array v2, v2, [B

    .line 68
    .line 69
    fill-array-data v2, :array_84

    .line 70
    .line 71
    .line 72
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_2f .. :try_end_58} :catchall_59

    .line 87
    .line 88
    .line 89
    goto :goto_d

    .line 90
    :catchall_59
    move-exception p1

    .line 91
    goto :goto_68

    .line 92
    :goto_5b
    :try_start_5b
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5f

    .line 93
    .line 94
    .line 95
    goto :goto_63

    .line 96
    :catchall_5f
    move-exception p1

    .line 97
    :try_start_60
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    :goto_63
    throw p2
    :try_end_64
    .catchall {:try_start_60 .. :try_end_64} :catchall_59

    .line 101
    :cond_64
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->close()V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :goto_68
    :try_start_68
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6c

    .line 106
    .line 107
    .line 108
    goto :goto_70

    .line 109
    :catchall_6c
    move-exception p0

    .line 110
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    :goto_70
    throw p1

    .line 114
    nop

    .line 115
    :array_72
    .array-data 1
        0x0t
        -0x10t
        -0x11t
        -0x69t
        0x7at
        0x1t
        -0x49t
        0x65t
        -0x10t
        -0x7ct
        -0x79t
        -0x9t
        0x1dt
        0x68t
        -0x2bt
        0xet
        0x6bt
        -0x7ct
        -0x76t
        -0xat
        0x2dt
        0x68t
        -0x2et
        0xet
        0x6dt
        0x6et
        0x1ft
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
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    :array_84
    .array-data 1
        -0x30t
        0x54t
        0x3ft
        0x27t
        -0x56t
        -0x48t
        0x67t
        -0x22t
    .end array-data
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    .line 1
    const/16 v0, 0xb2

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_16

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v1, v1, [B

    .line 11
    .line 12
    fill-array-data v1, :array_74

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :array_16
    .array-data 1
        -0x7et
        0x46t
        0x37t
        0xdt
        -0x41t
        -0xct
        -0x61t
        0xbt
        -0x80t
        0x56t
        0x3et
        0x9t
        -0x35t
        -0x8t
        -0x7t
        0x7ft
        -0x71t
        0x5bt
        0x26t
        0x6ct
        -0x52t
        -0x17t
        -0xat
        0xct
        -0x6bt
        0x47t
        0x52t
        0x18t
        -0x67t
        -0x30t
        -0x27t
        0x39t
        -0x58t
        0x77t
        0x36t
        0x2dt
        -0x61t
        -0x30t
        -0x61t
        0x77t
        -0x78t
        0x50t
        0x2at
        0x6ct
        -0x5et
        -0x1t
        -0x15t
        0x1at
        -0x7at
        0x51t
        0x20t
        0x6ct
        -0x45t
        -0x1dt
        -0xat
        0x12t
        -0x80t
        0x46t
        0x2bt
        0x6ct
        -0x60t
        -0xct
        -0x1at
        0x73t
        -0x1ft
        0x4ct
        0x52t
        0x1et
        -0x52t
        -0x10t
        -0xdt
        0x73t
        -0x1ft
        0x4dt
        0x52t
        0x1et
        -0x52t
        -0x10t
        -0xdt
        0x73t
        -0x1ft
        0x40t
        0x2bt
        0x1ct
        -0x52t
        -0x6ft
        -0xat
        0x11t
        -0x6bt
        0x51t
        0x35t
        0x9t
        -0x47t
        -0x63t
        -0x61t
        0xct
        -0x6ft
        0x51t
        0x37t
        0x8t
        -0x35t
        -0x8t
        -0xft
        0xbt
        -0x7ct
        0x53t
        0x37t
        0x1et
        -0x39t
        -0x6ft
        -0x5t
        0x16t
        -0x6dt
        0x40t
        0x2bt
        0x1ct
        -0x52t
        -0x6ft
        -0xat
        0x11t
        -0x6bt
        0x51t
        0x35t
        0x9t
        -0x47t
        -0x63t
        -0x61t
        0x1bt
        -0x78t
        0x46t
        0x37t
        0xft
        -0x41t
        -0x8t
        -0x10t
        0x11t
        -0x1ft
        0x5dt
        0x3ct
        0x18t
        -0x52t
        -0xat
        -0x6t
        0xdt
        -0x13t
        0x34t
        0x36t
        0x5t
        -0x48t
        -0x1bt
        -0x2t
        0x11t
        -0x7et
        0x51t
        0x52t
        0x5t
        -0x5bt
        -0x1bt
        -0x6t
        0x18t
        -0x7ct
        0x46t
        0x5et
        0x6ct
        -0x56t
        -0x1t
        -0x8t
        0x13t
        -0x7ct
        0x34t
        0x3bt
        0x2t
        -0x41t
        -0xct
        -0x8t
        0x1at
        -0x6dt
        0x3dt
    .end array-data

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
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
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
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
    nop

    .line 117
    :array_74
    .array-data 1
        -0x3ft
        0x14t
        0x72t
        0x4ct
        -0x15t
        -0x4ft
        -0x41t
        0x5ft
    .end array-data
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .line 1
    const/16 p2, 0x20

    .line 2
    .line 3
    new-array p2, p2, [B

    .line 4
    .line 5
    fill-array-data p2, :array_1a

    .line 6
    .line 7
    .line 8
    const/16 p3, 0x8

    .line 9
    .line 10
    new-array p3, p3, [B

    .line 11
    .line 12
    fill-array-data p3, :array_2e

    .line 13
    .line 14
    .line 15
    invoke-static {p2, p3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Li7/j;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :array_1a
    .array-data 1
        0x61t
        -0x26t
        -0x5ct
        -0x3dt
        -0x52t
        -0x3et
        0x63t
        -0x7ct
        0x69t
        -0x33t
        -0x35t
        -0x26t
        -0x38t
        -0x4at
        0x67t
        -0x62t
        0x6ct
        -0x25t
        -0x41t
        -0x40t
        -0x52t
        -0x3et
        0x50t
        -0x59t
        0x43t
        -0x12t
        -0x7et
        -0x10t
        -0x36t
        -0x9t
        0x56t
        -0x59t
    .end array-data

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    :array_2e
    .array-data 1
        0x25t
        -0x78t
        -0x15t
        -0x6dt
        -0x72t
        -0x6at
        0x22t
        -0x3at
    .end array-data
.end method
