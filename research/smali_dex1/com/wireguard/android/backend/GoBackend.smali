.class public final Lcom/wireguard/android/backend/GoBackend;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wireguard/android/backend/GoBackend$VpnService;
    }
.end annotation


# static fields
.field public static e:Landroid/support/v4/media/h;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lf7/c;

.field public c:Lr5/c;

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Landroid/support/v4/media/h;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1}, Landroid/support/v4/media/h;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/wireguard/android/backend/GoBackend;->e:Landroid/support/v4/media/h;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/wireguard/android/backend/GoBackend;->d:I

    .line 6
    .line 7
    const-string v0, "wg-go"

    .line 8
    .line 9
    :try_start_8
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_8 .. :try_end_b} :catch_c

    .line 10
    .line 11
    .line 12
    goto :goto_31

    .line 13
    :catch_c
    move-exception v0

    .line 14
    const-string v1, "Failed to load library normally, so attempting to extract from apk"

    .line 15
    .line 16
    const-string v2, "WireGuard/SharedLibraryLoader"

    .line 17
    .line 18
    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    :try_start_15
    const-string v3, "lib"

    .line 23
    .line 24
    const-string v4, ".so"

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {p1, v1}, Le7/a;->a(Landroid/content/Context;Ljava/io/File;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_39

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2e} :catch_36
    .catchall {:try_start_15 .. :try_end_2e} :catchall_34

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 48
    .line 49
    .line 50
    :goto_31
    iput-object p1, p0, Lcom/wireguard/android/backend/GoBackend;->a:Landroid/content/Context;

    .line 51
    .line 52
    return-void

    .line 53
    :catchall_34
    move-exception p1

    .line 54
    goto :goto_53

    .line 55
    :catch_36
    move-exception p1

    .line 56
    move-object v0, p1

    .line 57
    goto :goto_3f

    .line 58
    :cond_39
    if-eqz v1, :cond_47

    .line 59
    .line 60
    :goto_3b
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 61
    .line 62
    .line 63
    goto :goto_47

    .line 64
    :goto_3f
    :try_start_3f
    const-string p1, "Failed to load library apk:/wg-go"

    .line 65
    .line 66
    invoke-static {v2, p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_34

    .line 67
    .line 68
    .line 69
    if-eqz v1, :cond_47

    .line 70
    .line 71
    goto :goto_3b

    .line 72
    :cond_47
    :goto_47
    instance-of p1, v0, Ljava/lang/RuntimeException;

    .line 73
    .line 74
    if-eqz p1, :cond_4e

    .line 75
    .line 76
    check-cast v0, Ljava/lang/RuntimeException;

    .line 77
    .line 78
    throw v0

    .line 79
    :cond_4e
    invoke-static {v0}, Ln0/b;->w(Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    const/4 p1, 0x0

    .line 83
    throw p1

    .line 84
    :goto_53
    if-eqz v1, :cond_58

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 87
    .line 88
    .line 89
    :cond_58
    throw p1
.end method

.method public static bridge synthetic a(I)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/wireguard/android/backend/GoBackend;->wgTurnOff(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static native wgGetConfig(I)Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method private static native wgGetSocketV4(I)I
.end method

.method private static native wgGetSocketV6(I)I
.end method

.method private static native wgTurnOff(I)V
.end method

.method private static native wgTurnOn(Ljava/lang/String;ILjava/lang/String;)I
.end method

.method private static native wgVersion()Ljava/lang/String;
.end method


# virtual methods
.method public final b(Lr5/c;)Lcom/bumptech/glide/f;
    .registers 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lcom/bumptech/glide/f;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, v2}, Lcom/bumptech/glide/f;-><init>(I)V

    .line 7
    .line 8
    .line 9
    iget-object v2, v0, Lcom/wireguard/android/backend/GoBackend;->c:Lr5/c;

    .line 10
    .line 11
    move-object/from16 v3, p1

    .line 12
    .line 13
    if-ne v3, v2, :cond_150

    .line 14
    .line 15
    iget v2, v0, Lcom/wireguard/android/backend/GoBackend;->d:I

    .line 16
    .line 17
    const/4 v3, -0x1

    .line 18
    if-ne v2, v3, :cond_15

    .line 19
    .line 20
    goto/16 :goto_150

    .line 21
    .line 22
    :cond_15
    invoke-static {v2}, Lcom/wireguard/android/backend/GoBackend;->wgGetConfig(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-nez v2, :cond_1d

    .line 27
    .line 28
    goto/16 :goto_150

    .line 29
    .line 30
    :cond_1d
    const-string v3, "\\n"

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    array-length v3, v2

    .line 37
    const/4 v8, 0x0

    .line 38
    const/4 v9, 0x0

    .line 39
    const-wide/16 v11, 0x0

    .line 40
    .line 41
    const-wide/16 v13, 0x0

    .line 42
    .line 43
    const-wide/16 v15, 0x0

    .line 44
    .line 45
    :goto_2c
    iget-object v10, v1, Lcom/bumptech/glide/f;->a:Ljava/util/HashMap;

    .line 46
    .line 47
    if-ge v8, v3, :cond_142

    .line 48
    .line 49
    aget-object v4, v2, v8

    .line 50
    .line 51
    const-string v5, "public_key="

    .line 52
    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_da

    .line 58
    .line 59
    if-eqz v9, :cond_48

    .line 60
    .line 61
    move-object v5, v10

    .line 62
    new-instance v10, Ld7/c;

    .line 63
    .line 64
    invoke-direct/range {v10 .. v16}, Ld7/c;-><init>(JJJ)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 71
    .line 72
    .line 73
    :cond_48
    const/16 v5, 0xb

    .line 74
    .line 75
    :try_start_4a
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    array-length v5, v4

    .line 84
    const/16 v9, 0x40

    .line 85
    .line 86
    if-ne v5, v9, :cond_d2

    .line 87
    .line 88
    const/16 v5, 0x20

    .line 89
    .line 90
    new-array v9, v5, [B

    .line 91
    .line 92
    const/4 v10, 0x0

    .line 93
    const/4 v11, 0x0

    .line 94
    :goto_5d
    if-ge v10, v5, :cond_bc

    .line 95
    .line 96
    mul-int/lit8 v12, v10, 0x2

    .line 97
    .line 98
    aget-char v13, v4, v12

    .line 99
    .line 100
    xor-int/lit8 v14, v13, 0x30

    .line 101
    .line 102
    add-int/lit8 v15, v14, -0xa

    .line 103
    .line 104
    ushr-int/lit8 v5, v15, 0x8

    .line 105
    .line 106
    and-int/lit16 v5, v5, 0xff

    .line 107
    .line 108
    and-int/lit8 v13, v13, -0x21

    .line 109
    .line 110
    add-int/lit8 v17, v13, -0x37

    .line 111
    .line 112
    add-int/lit8 v18, v13, -0x41

    .line 113
    .line 114
    add-int/lit8 v13, v13, -0x47

    .line 115
    .line 116
    xor-int v13, v18, v13

    .line 117
    .line 118
    ushr-int/lit8 v6, v13, 0x8

    .line 119
    .line 120
    and-int/lit16 v6, v6, 0xff

    .line 121
    .line 122
    or-int v7, v15, v13

    .line 123
    .line 124
    ushr-int/lit8 v7, v7, 0x8

    .line 125
    .line 126
    and-int/lit16 v7, v7, 0xff

    .line 127
    .line 128
    add-int/lit8 v7, v7, -0x1

    .line 129
    .line 130
    ushr-int/lit8 v7, v7, 0x8

    .line 131
    .line 132
    or-int/2addr v7, v11

    .line 133
    and-int/2addr v5, v14

    .line 134
    and-int v6, v6, v17

    .line 135
    .line 136
    or-int/2addr v5, v6

    .line 137
    mul-int/lit8 v5, v5, 0x10

    .line 138
    .line 139
    add-int/lit8 v12, v12, 0x1

    .line 140
    .line 141
    aget-char v6, v4, v12

    .line 142
    .line 143
    xor-int/lit8 v11, v6, 0x30

    .line 144
    .line 145
    add-int/lit8 v12, v11, -0xa

    .line 146
    .line 147
    ushr-int/lit8 v13, v12, 0x8

    .line 148
    .line 149
    and-int/lit16 v13, v13, 0xff

    .line 150
    .line 151
    and-int/lit8 v6, v6, -0x21

    .line 152
    .line 153
    add-int/lit8 v14, v6, -0x37

    .line 154
    .line 155
    add-int/lit8 v15, v6, -0x41

    .line 156
    .line 157
    add-int/lit8 v6, v6, -0x47

    .line 158
    .line 159
    xor-int/2addr v6, v15

    .line 160
    ushr-int/lit8 v15, v6, 0x8

    .line 161
    .line 162
    and-int/lit16 v15, v15, 0xff

    .line 163
    .line 164
    or-int/2addr v6, v12

    .line 165
    ushr-int/lit8 v6, v6, 0x8

    .line 166
    .line 167
    and-int/lit16 v6, v6, 0xff

    .line 168
    .line 169
    add-int/lit8 v6, v6, -0x1

    .line 170
    .line 171
    ushr-int/lit8 v6, v6, 0x8

    .line 172
    .line 173
    or-int/2addr v6, v7

    .line 174
    and-int v7, v13, v11

    .line 175
    .line 176
    and-int v11, v15, v14

    .line 177
    .line 178
    or-int/2addr v7, v11

    .line 179
    or-int/2addr v5, v7

    .line 180
    int-to-byte v5, v5

    .line 181
    aput-byte v5, v9, v10

    .line 182
    .line 183
    add-int/lit8 v10, v10, 0x1

    .line 184
    .line 185
    move v11, v6

    .line 186
    const/16 v5, 0x20

    .line 187
    .line 188
    goto :goto_5d

    .line 189
    :cond_bc
    if-nez v11, :cond_cc

    .line 190
    .line 191
    new-instance v4, Lg7/b;

    .line 192
    .line 193
    invoke-direct {v4, v9}, Lg7/b;-><init>([B)V

    .line 194
    .line 195
    .line 196
    move-object v9, v4

    .line 197
    :goto_c4
    const-wide/16 v11, 0x0

    .line 198
    .line 199
    const-wide/16 v13, 0x0

    .line 200
    .line 201
    :catch_c8
    const-wide/16 v15, 0x0

    .line 202
    .line 203
    goto/16 :goto_13e

    .line 204
    .line 205
    :cond_cc
    new-instance v4, Lg7/c;

    .line 206
    .line 207
    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    .line 208
    .line 209
    .line 210
    throw v4

    .line 211
    :cond_d2
    new-instance v4, Lg7/c;

    .line 212
    .line 213
    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    .line 214
    .line 215
    .line 216
    throw v4
    :try_end_d8
    .catch Lg7/c; {:try_start_4a .. :try_end_d8} :catch_d8

    .line 217
    :catch_d8
    const/4 v9, 0x0

    .line 218
    goto :goto_c4

    .line 219
    :cond_da
    const-string v5, "rx_bytes="

    .line 220
    .line 221
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 222
    .line 223
    .line 224
    move-result v5

    .line 225
    const/16 v6, 0x9

    .line 226
    .line 227
    if-eqz v5, :cond_f3

    .line 228
    .line 229
    if-nez v9, :cond_e7

    .line 230
    .line 231
    goto :goto_13e

    .line 232
    :cond_e7
    :try_start_e7
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 237
    .line 238
    .line 239
    move-result-wide v11
    :try_end_ef
    .catch Ljava/lang/NumberFormatException; {:try_start_e7 .. :try_end_ef} :catch_f0

    .line 240
    goto :goto_13e

    .line 241
    :catch_f0
    const-wide/16 v11, 0x0

    .line 242
    .line 243
    goto :goto_13e

    .line 244
    :cond_f3
    const-string v5, "tx_bytes="

    .line 245
    .line 246
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 247
    .line 248
    .line 249
    move-result v5

    .line 250
    if-eqz v5, :cond_10a

    .line 251
    .line 252
    if-nez v9, :cond_fe

    .line 253
    .line 254
    goto :goto_13e

    .line 255
    :cond_fe
    :try_start_fe
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 260
    .line 261
    .line 262
    move-result-wide v13
    :try_end_106
    .catch Ljava/lang/NumberFormatException; {:try_start_fe .. :try_end_106} :catch_107

    .line 263
    goto :goto_13e

    .line 264
    :catch_107
    const-wide/16 v13, 0x0

    .line 265
    .line 266
    goto :goto_13e

    .line 267
    :cond_10a
    const-string v5, "last_handshake_time_sec="

    .line 268
    .line 269
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 270
    .line 271
    .line 272
    move-result v5

    .line 273
    if-eqz v5, :cond_124

    .line 274
    .line 275
    if-nez v9, :cond_115

    .line 276
    .line 277
    goto :goto_13e

    .line 278
    :cond_115
    const/16 v5, 0x18

    .line 279
    .line 280
    :try_start_117
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 285
    .line 286
    .line 287
    move-result-wide v4
    :try_end_11f
    .catch Ljava/lang/NumberFormatException; {:try_start_117 .. :try_end_11f} :catch_c8

    .line 288
    const-wide/16 v6, 0x3e8

    .line 289
    .line 290
    mul-long/2addr v4, v6

    .line 291
    add-long/2addr v15, v4

    .line 292
    goto :goto_13e

    .line 293
    :cond_124
    const-string v5, "last_handshake_time_nsec="

    .line 294
    .line 295
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 296
    .line 297
    .line 298
    move-result v5

    .line 299
    if-eqz v5, :cond_13e

    .line 300
    .line 301
    if-nez v9, :cond_12f

    .line 302
    .line 303
    goto :goto_13e

    .line 304
    :cond_12f
    const/16 v5, 0x19

    .line 305
    .line 306
    :try_start_131
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 311
    .line 312
    .line 313
    move-result-wide v4

    .line 314
    const-wide/32 v6, 0xf4240

    .line 315
    .line 316
    .line 317
    div-long/2addr v4, v6
    :try_end_13d
    .catch Ljava/lang/NumberFormatException; {:try_start_131 .. :try_end_13d} :catch_c8

    .line 318
    add-long/2addr v15, v4

    .line 319
    :cond_13e
    :goto_13e
    add-int/lit8 v8, v8, 0x1

    .line 320
    .line 321
    goto/16 :goto_2c

    .line 322
    .line 323
    :cond_142
    move-object v5, v10

    .line 324
    if-eqz v9, :cond_150

    .line 325
    .line 326
    new-instance v10, Ld7/c;

    .line 327
    .line 328
    invoke-direct/range {v10 .. v16}, Ld7/c;-><init>(JJJ)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 335
    .line 336
    .line 337
    :cond_150
    :goto_150
    return-object v1
.end method

.method public final c(ILf7/c;Lr5/c;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/wireguard/android/backend/GoBackend;->c:Lr5/c;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x3

    .line 5
    if-ne v0, p3, :cond_8

    .line 6
    .line 7
    move v3, v2

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    move v3, v1

    .line 10
    :goto_9
    const/4 v4, 0x2

    .line 11
    if-ne p1, v4, :cond_11

    .line 12
    .line 13
    if-ne v3, v2, :cond_10

    .line 14
    .line 15
    move p1, v1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    move p1, v2

    .line 18
    :cond_11
    :goto_11
    if-ne p1, v3, :cond_1a

    .line 19
    .line 20
    if-ne p3, v0, :cond_1a

    .line 21
    .line 22
    iget-object v3, p0, Lcom/wireguard/android/backend/GoBackend;->b:Lf7/c;

    .line 23
    .line 24
    if-ne p2, v3, :cond_1a

    .line 25
    .line 26
    goto :goto_36

    .line 27
    :cond_1a
    const/4 v3, 0x0

    .line 28
    if-ne p1, v2, :cond_2f

    .line 29
    .line 30
    iget-object v4, p0, Lcom/wireguard/android/backend/GoBackend;->b:Lf7/c;

    .line 31
    .line 32
    if-eqz v0, :cond_24

    .line 33
    .line 34
    invoke-virtual {p0, v1, v3, v0}, Lcom/wireguard/android/backend/GoBackend;->d(ILf7/c;Lr5/c;)V

    .line 35
    .line 36
    .line 37
    :cond_24
    :try_start_24
    invoke-virtual {p0, p1, p2, p3}, Lcom/wireguard/android/backend/GoBackend;->d(ILf7/c;Lr5/c;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_28

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catch_28
    move-exception p1

    .line 42
    if-eqz v0, :cond_2e

    .line 43
    .line 44
    invoke-virtual {p0, v2, v4, v0}, Lcom/wireguard/android/backend/GoBackend;->d(ILf7/c;Lr5/c;)V

    .line 45
    .line 46
    .line 47
    :cond_2e
    throw p1

    .line 48
    :cond_2f
    if-ne p1, v1, :cond_36

    .line 49
    .line 50
    if-ne p3, v0, :cond_36

    .line 51
    .line 52
    invoke-virtual {p0, v1, v3, p3}, Lcom/wireguard/android/backend/GoBackend;->d(ILf7/c;Lr5/c;)V

    .line 53
    .line 54
    .line 55
    :cond_36
    :goto_36
    return-void
.end method

.method public final d(ILf7/c;Lr5/c;)V
    .registers 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v5, "Bringing tunnel "

    .line 12
    .line 13
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lr5/c;->i()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v5, 0x20

    .line 27
    .line 28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const/4 v5, 0x1

    .line 32
    if-eq v0, v5, :cond_30

    .line 33
    .line 34
    const/4 v5, 0x2

    .line 35
    if-eq v0, v5, :cond_2d

    .line 36
    .line 37
    const/4 v5, 0x3

    .line 38
    if-eq v0, v5, :cond_2a

    .line 39
    .line 40
    const-string v5, "null"

    .line 41
    .line 42
    goto :goto_32

    .line 43
    :cond_2a
    const-string v5, "UP"

    .line 44
    .line 45
    goto :goto_32

    .line 46
    :cond_2d
    const-string v5, "TOGGLE"

    .line 47
    .line 48
    goto :goto_32

    .line 49
    :cond_30
    const-string v5, "DOWN"

    .line 50
    .line 51
    :goto_32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    const-string v5, "WireGuard/GoBackend"

    .line 59
    .line 60
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    const/4 v4, 0x3

    .line 64
    const/4 v6, -0x1

    .line 65
    const/4 v7, 0x0

    .line 66
    if-ne v0, v4, :cond_30d

    .line 67
    .line 68
    if-eqz v2, :cond_304

    .line 69
    .line 70
    iget-object v8, v2, Lf7/c;->b:Ljava/util/List;

    .line 71
    .line 72
    iget-object v9, v2, Lf7/c;->a:Lf7/h;

    .line 73
    .line 74
    iget-object v10, v1, Lcom/wireguard/android/backend/GoBackend;->a:Landroid/content/Context;

    .line 75
    .line 76
    invoke-static {v10}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    move-result-object v11

    .line 80
    if-nez v11, :cond_2fb

    .line 81
    .line 82
    sget-object v11, Lcom/wireguard/android/backend/GoBackend;->e:Landroid/support/v4/media/h;

    .line 83
    .line 84
    iget-object v11, v11, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v11, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 87
    .line 88
    invoke-virtual {v11}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result v11

    .line 92
    if-eqz v11, :cond_6c

    .line 93
    .line 94
    const-string v11, "Requesting to start VpnService"

    .line 95
    .line 96
    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    new-instance v11, Landroid/content/Intent;

    .line 100
    .line 101
    const-class v12, Lcom/wireguard/android/backend/GoBackend$VpnService;

    .line 102
    .line 103
    invoke-direct {v11, v10, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v10, v11}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 107
    .line 108
    .line 109
    :cond_6c
    :try_start_6c
    sget-object v10, Lcom/wireguard/android/backend/GoBackend;->e:Landroid/support/v4/media/h;

    .line 110
    .line 111
    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 112
    .line 113
    iget-object v10, v10, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v10, Ljava/util/concurrent/FutureTask;

    .line 116
    .line 117
    const-wide/16 v12, 0x2

    .line 118
    .line 119
    invoke-virtual {v10, v12, v13, v11}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    check-cast v10, Lcom/wireguard/android/backend/GoBackend$VpnService;
    :try_end_7c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6c .. :try_end_7c} :catch_2ee

    .line 124
    .line 125
    iput-object v1, v10, Lcom/wireguard/android/backend/GoBackend$VpnService;->b:Lcom/wireguard/android/backend/GoBackend;

    .line 126
    .line 127
    iget v11, v1, Lcom/wireguard/android/backend/GoBackend;->d:I

    .line 128
    .line 129
    if-eq v11, v6, :cond_88

    .line 130
    .line 131
    const-string v0, "Tunnel already up"

    .line 132
    .line 133
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_88
    const/4 v6, 0x0

    .line 138
    :goto_89
    const/16 v11, 0xa

    .line 139
    .line 140
    if-ge v6, v11, :cond_e0

    .line 141
    .line 142
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object v12

    .line 146
    :cond_91
    :goto_91
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result v13

    .line 150
    if-eqz v13, :cond_e0

    .line 151
    .line 152
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v13

    .line 156
    check-cast v13, Lf7/j;

    .line 157
    .line 158
    iget-object v13, v13, Lf7/j;->b:Ljava/util/Optional;

    .line 159
    .line 160
    invoke-virtual {v13, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v13

    .line 164
    check-cast v13, Lf7/e;

    .line 165
    .line 166
    if-nez v13, :cond_a8

    .line 167
    .line 168
    goto :goto_91

    .line 169
    :cond_a8
    iget-object v14, v13, Lf7/e;->a:Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v13}, Lf7/e;->a()Ljava/util/Optional;

    .line 172
    .line 173
    .line 174
    move-result-object v13

    .line 175
    invoke-virtual {v13, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v13

    .line 179
    if-nez v13, :cond_91

    .line 180
    .line 181
    const/16 v11, 0x9

    .line 182
    .line 183
    if-ge v6, v11, :cond_d6

    .line 184
    .line 185
    new-instance v11, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    const-string v12, "DNS host \""

    .line 188
    .line 189
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v12, "\" failed to resolve; trying again"

    .line 196
    .line 197
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v11

    .line 204
    invoke-static {v5, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    const-wide/16 v11, 0x3e8

    .line 208
    .line 209
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V

    .line 210
    .line 211
    .line 212
    add-int/lit8 v6, v6, 0x1

    .line 213
    .line 214
    goto :goto_89

    .line 215
    :cond_d6
    new-instance v0, Ld7/a;

    .line 216
    .line 217
    filled-new-array {v14}, [Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-direct {v0, v2}, Ld7/a;-><init>([Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    throw v0

    .line 225
    :cond_e0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    const-string v12, "private_key="

    .line 234
    .line 235
    invoke-static {v12}, Lai/onnxruntime/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    move-result-object v12

    .line 239
    iget-object v13, v9, Lf7/h;->f:Landroid/support/v4/media/h;

    .line 240
    .line 241
    iget-object v13, v13, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 242
    .line 243
    check-cast v13, Lg7/b;

    .line 244
    .line 245
    invoke-virtual {v13}, Lg7/b;->e()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v13

    .line 249
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    iget-object v13, v9, Lf7/h;->g:Ljava/util/Optional;

    .line 256
    .line 257
    new-instance v14, Lf7/g;

    .line 258
    .line 259
    const/4 v15, 0x1

    .line 260
    invoke-direct {v14, v12, v15}, Lf7/g;-><init>(Ljava/lang/StringBuilder;I)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v13, v14}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v12

    .line 270
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    const-string v12, "replace_peers=true\n"

    .line 274
    .line 275
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 279
    .line 280
    .line 281
    move-result-object v12

    .line 282
    :goto_119
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 283
    .line 284
    .line 285
    move-result v13

    .line 286
    if-eqz v13, :cond_193

    .line 287
    .line 288
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v13

    .line 292
    check-cast v13, Lf7/j;

    .line 293
    .line 294
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    .line 296
    .line 297
    new-instance v14, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .line 301
    .line 302
    const-string v15, "public_key="

    .line 303
    .line 304
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    iget-object v15, v13, Lf7/j;->e:Lg7/b;

    .line 308
    .line 309
    invoke-virtual {v15}, Lg7/b;->e()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v15

    .line 313
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    iget-object v15, v13, Lf7/j;->a:Ljava/util/Set;

    .line 320
    .line 321
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 322
    .line 323
    .line 324
    move-result-object v15

    .line 325
    :goto_144
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 326
    .line 327
    .line 328
    move-result v16

    .line 329
    if-eqz v16, :cond_15f

    .line 330
    .line 331
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v16

    .line 335
    move-object/from16 v4, v16

    .line 336
    .line 337
    check-cast v4, Lf7/f;

    .line 338
    .line 339
    const-string v7, "allowed_ip="

    .line 340
    .line 341
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    const/4 v7, 0x0

    .line 351
    goto :goto_144

    .line 352
    :cond_15f
    iget-object v4, v13, Lf7/j;->b:Ljava/util/Optional;

    .line 353
    .line 354
    new-instance v7, Lai/onnxruntime/d;

    .line 355
    .line 356
    const/4 v15, 0x2

    .line 357
    invoke-direct {v7, v15}, Lai/onnxruntime/d;-><init>(I)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v4, v7}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 361
    .line 362
    .line 363
    move-result-object v4

    .line 364
    new-instance v7, Lf7/g;

    .line 365
    .line 366
    const/4 v15, 0x3

    .line 367
    invoke-direct {v7, v14, v15}, Lf7/g;-><init>(Ljava/lang/StringBuilder;I)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v4, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 371
    .line 372
    .line 373
    iget-object v4, v13, Lf7/j;->c:Ljava/util/Optional;

    .line 374
    .line 375
    new-instance v7, Lf7/g;

    .line 376
    .line 377
    const/4 v15, 0x4

    .line 378
    invoke-direct {v7, v14, v15}, Lf7/g;-><init>(Ljava/lang/StringBuilder;I)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v4, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 382
    .line 383
    .line 384
    iget-object v4, v13, Lf7/j;->d:Ljava/util/Optional;

    .line 385
    .line 386
    new-instance v7, Lf7/g;

    .line 387
    .line 388
    const/4 v13, 0x5

    .line 389
    invoke-direct {v7, v14, v13}, Lf7/g;-><init>(Ljava/lang/StringBuilder;I)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v4, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v4

    .line 399
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    const/4 v7, 0x0

    .line 403
    goto :goto_119

    .line 404
    :cond_193
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v4

    .line 408
    new-instance v6, Landroid/net/VpnService$Builder;

    .line 409
    .line 410
    invoke-direct {v6, v10}, Landroid/net/VpnService$Builder;-><init>(Landroid/net/VpnService;)V

    .line 411
    .line 412
    .line 413
    invoke-static {}, Lr5/c;->i()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v7

    .line 417
    invoke-virtual {v6, v7}, Landroid/net/VpnService$Builder;->setSession(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 418
    .line 419
    .line 420
    iget-object v7, v9, Lf7/h;->d:Ljava/util/Set;

    .line 421
    .line 422
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 423
    .line 424
    .line 425
    move-result-object v7

    .line 426
    :goto_1a9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 427
    .line 428
    .line 429
    move-result v11

    .line 430
    if-eqz v11, :cond_1b9

    .line 431
    .line 432
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v11

    .line 436
    check-cast v11, Ljava/lang/String;

    .line 437
    .line 438
    invoke-virtual {v6, v11}, Landroid/net/VpnService$Builder;->addDisallowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 439
    .line 440
    .line 441
    goto :goto_1a9

    .line 442
    :cond_1b9
    iget-object v7, v9, Lf7/h;->e:Ljava/util/Set;

    .line 443
    .line 444
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 445
    .line 446
    .line 447
    move-result-object v7

    .line 448
    :goto_1bf
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 449
    .line 450
    .line 451
    move-result v11

    .line 452
    if-eqz v11, :cond_1cf

    .line 453
    .line 454
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v11

    .line 458
    check-cast v11, Ljava/lang/String;

    .line 459
    .line 460
    invoke-virtual {v6, v11}, Landroid/net/VpnService$Builder;->addAllowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 461
    .line 462
    .line 463
    goto :goto_1bf

    .line 464
    :cond_1cf
    iget-object v7, v9, Lf7/h;->a:Ljava/util/Set;

    .line 465
    .line 466
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 467
    .line 468
    .line 469
    move-result-object v7

    .line 470
    :goto_1d5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 471
    .line 472
    .line 473
    move-result v11

    .line 474
    if-eqz v11, :cond_1e9

    .line 475
    .line 476
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v11

    .line 480
    check-cast v11, Lf7/f;

    .line 481
    .line 482
    iget-object v12, v11, Lf7/f;->a:Ljava/net/InetAddress;

    .line 483
    .line 484
    iget v11, v11, Lf7/f;->b:I

    .line 485
    .line 486
    invoke-virtual {v6, v12, v11}, Landroid/net/VpnService$Builder;->addAddress(Ljava/net/InetAddress;I)Landroid/net/VpnService$Builder;

    .line 487
    .line 488
    .line 489
    goto :goto_1d5

    .line 490
    :cond_1e9
    iget-object v7, v9, Lf7/h;->b:Ljava/util/Set;

    .line 491
    .line 492
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 493
    .line 494
    .line 495
    move-result-object v7

    .line 496
    :goto_1ef
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 497
    .line 498
    .line 499
    move-result v11

    .line 500
    if-eqz v11, :cond_203

    .line 501
    .line 502
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v11

    .line 506
    check-cast v11, Ljava/net/InetAddress;

    .line 507
    .line 508
    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v11

    .line 512
    invoke-virtual {v6, v11}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 513
    .line 514
    .line 515
    goto :goto_1ef

    .line 516
    :cond_203
    iget-object v7, v9, Lf7/h;->c:Ljava/util/Set;

    .line 517
    .line 518
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 519
    .line 520
    .line 521
    move-result-object v7

    .line 522
    :goto_209
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 523
    .line 524
    .line 525
    move-result v11

    .line 526
    if-eqz v11, :cond_219

    .line 527
    .line 528
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object v11

    .line 532
    check-cast v11, Ljava/lang/String;

    .line 533
    .line 534
    invoke-virtual {v6, v11}, Landroid/net/VpnService$Builder;->addSearchDomain(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 535
    .line 536
    .line 537
    goto :goto_209

    .line 538
    :cond_219
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 539
    .line 540
    .line 541
    move-result-object v7

    .line 542
    const/4 v11, 0x0

    .line 543
    :cond_21e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 544
    .line 545
    .line 546
    move-result v12

    .line 547
    const/4 v13, 0x1

    .line 548
    if-eqz v12, :cond_248

    .line 549
    .line 550
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object v12

    .line 554
    check-cast v12, Lf7/j;

    .line 555
    .line 556
    iget-object v12, v12, Lf7/j;->a:Ljava/util/Set;

    .line 557
    .line 558
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 559
    .line 560
    .line 561
    move-result-object v12

    .line 562
    :goto_231
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 563
    .line 564
    .line 565
    move-result v14

    .line 566
    if-eqz v14, :cond_21e

    .line 567
    .line 568
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object v14

    .line 572
    check-cast v14, Lf7/f;

    .line 573
    .line 574
    iget v15, v14, Lf7/f;->b:I

    .line 575
    .line 576
    if-nez v15, :cond_242

    .line 577
    .line 578
    move v11, v13

    .line 579
    :cond_242
    iget-object v14, v14, Lf7/f;->a:Ljava/net/InetAddress;

    .line 580
    .line 581
    invoke-virtual {v6, v14, v15}, Landroid/net/VpnService$Builder;->addRoute(Ljava/net/InetAddress;I)Landroid/net/VpnService$Builder;

    .line 582
    .line 583
    .line 584
    goto :goto_231

    .line 585
    :cond_248
    if-eqz v11, :cond_250

    .line 586
    .line 587
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 588
    .line 589
    .line 590
    move-result v7

    .line 591
    if-eq v7, v13, :cond_25a

    .line 592
    .line 593
    :cond_250
    sget v7, Landroid/system/OsConstants;->AF_INET:I

    .line 594
    .line 595
    invoke-virtual {v6, v7}, Landroid/net/VpnService$Builder;->allowFamily(I)Landroid/net/VpnService$Builder;

    .line 596
    .line 597
    .line 598
    sget v7, Landroid/system/OsConstants;->AF_INET6:I

    .line 599
    .line 600
    invoke-virtual {v6, v7}, Landroid/net/VpnService$Builder;->allowFamily(I)Landroid/net/VpnService$Builder;

    .line 601
    .line 602
    .line 603
    :cond_25a
    iget-object v7, v9, Lf7/h;->h:Ljava/util/Optional;

    .line 604
    .line 605
    const/16 v8, 0x500

    .line 606
    .line 607
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 608
    .line 609
    .line 610
    move-result-object v8

    .line 611
    invoke-virtual {v7, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object v7

    .line 615
    check-cast v7, Ljava/lang/Integer;

    .line 616
    .line 617
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 618
    .line 619
    .line 620
    move-result v7

    .line 621
    invoke-virtual {v6, v7}, Landroid/net/VpnService$Builder;->setMtu(I)Landroid/net/VpnService$Builder;

    .line 622
    .line 623
    .line 624
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 625
    .line 626
    const/16 v8, 0x1d

    .line 627
    .line 628
    if-lt v7, v8, :cond_278

    .line 629
    .line 630
    invoke-static {v6}, Landroidx/transition/d;->k(Landroid/net/VpnService$Builder;)V

    .line 631
    .line 632
    .line 633
    :cond_278
    const/4 v7, 0x0

    .line 634
    invoke-virtual {v10, v7}, Landroid/net/VpnService;->setUnderlyingNetworks([Landroid/net/Network;)Z

    .line 635
    .line 636
    .line 637
    invoke-virtual {v6, v13}, Landroid/net/VpnService$Builder;->setBlocking(Z)Landroid/net/VpnService$Builder;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v6}, Landroid/net/VpnService$Builder;->establish()Landroid/os/ParcelFileDescriptor;

    .line 641
    .line 642
    .line 643
    move-result-object v6

    .line 644
    if-eqz v6, :cond_2da

    .line 645
    .line 646
    :try_start_285
    new-instance v7, Ljava/lang/StringBuilder;

    .line 647
    .line 648
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 649
    .line 650
    .line 651
    const-string v8, "Go backend "

    .line 652
    .line 653
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    invoke-static {}, Lcom/wireguard/android/backend/GoBackend;->wgVersion()Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v8

    .line 660
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    .line 662
    .line 663
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v7

    .line 667
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    .line 669
    .line 670
    invoke-static {}, Lr5/c;->i()Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v5

    .line 674
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 675
    .line 676
    .line 677
    move-result v7

    .line 678
    invoke-static {v5, v7, v4}, Lcom/wireguard/android/backend/GoBackend;->wgTurnOn(Ljava/lang/String;ILjava/lang/String;)I

    .line 679
    .line 680
    .line 681
    move-result v4

    .line 682
    iput v4, v1, Lcom/wireguard/android/backend/GoBackend;->d:I
    :try_end_2ab
    .catchall {:try_start_285 .. :try_end_2ab} :catchall_2d7

    .line 683
    .line 684
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 685
    .line 686
    .line 687
    iget v4, v1, Lcom/wireguard/android/backend/GoBackend;->d:I

    .line 688
    .line 689
    if-ltz v4, :cond_2c7

    .line 690
    .line 691
    iput-object v3, v1, Lcom/wireguard/android/backend/GoBackend;->c:Lr5/c;

    .line 692
    .line 693
    iput-object v2, v1, Lcom/wireguard/android/backend/GoBackend;->b:Lf7/c;

    .line 694
    .line 695
    invoke-static {v4}, Lcom/wireguard/android/backend/GoBackend;->wgGetSocketV4(I)I

    .line 696
    .line 697
    .line 698
    move-result v2

    .line 699
    invoke-virtual {v10, v2}, Landroid/net/VpnService;->protect(I)Z

    .line 700
    .line 701
    .line 702
    iget v2, v1, Lcom/wireguard/android/backend/GoBackend;->d:I

    .line 703
    .line 704
    invoke-static {v2}, Lcom/wireguard/android/backend/GoBackend;->wgGetSocketV6(I)I

    .line 705
    .line 706
    .line 707
    move-result v2

    .line 708
    invoke-virtual {v10, v2}, Landroid/net/VpnService;->protect(I)Z

    .line 709
    .line 710
    .line 711
    goto :goto_334

    .line 712
    :cond_2c7
    new-instance v0, Ld7/a;

    .line 713
    .line 714
    iget v2, v1, Lcom/wireguard/android/backend/GoBackend;->d:I

    .line 715
    .line 716
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 717
    .line 718
    .line 719
    move-result-object v2

    .line 720
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 721
    .line 722
    .line 723
    move-result-object v2

    .line 724
    invoke-direct {v0, v2}, Ld7/a;-><init>([Ljava/lang/Object;)V

    .line 725
    .line 726
    .line 727
    throw v0

    .line 728
    :catchall_2d7
    move-exception v0

    .line 729
    move-object v2, v0

    .line 730
    goto :goto_2e3

    .line 731
    :cond_2da
    :try_start_2da
    new-instance v0, Ld7/a;

    .line 732
    .line 733
    const/4 v2, 0x0

    .line 734
    new-array v2, v2, [Ljava/lang/Object;

    .line 735
    .line 736
    invoke-direct {v0, v2}, Ld7/a;-><init>([Ljava/lang/Object;)V

    .line 737
    .line 738
    .line 739
    throw v0
    :try_end_2e3
    .catchall {:try_start_2da .. :try_end_2e3} :catchall_2d7

    .line 740
    :goto_2e3
    if-eqz v6, :cond_2ed

    .line 741
    .line 742
    :try_start_2e5
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2e8
    .catchall {:try_start_2e5 .. :try_end_2e8} :catchall_2e9

    .line 743
    .line 744
    .line 745
    goto :goto_2ed

    .line 746
    :catchall_2e9
    move-exception v0

    .line 747
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 748
    .line 749
    .line 750
    :cond_2ed
    :goto_2ed
    throw v2

    .line 751
    :catch_2ee
    move-exception v0

    .line 752
    new-instance v2, Ld7/a;

    .line 753
    .line 754
    const/4 v3, 0x0

    .line 755
    new-array v3, v3, [Ljava/lang/Object;

    .line 756
    .line 757
    invoke-direct {v2, v3}, Ld7/a;-><init>([Ljava/lang/Object;)V

    .line 758
    .line 759
    .line 760
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 761
    .line 762
    .line 763
    throw v2

    .line 764
    :cond_2fb
    const/4 v3, 0x0

    .line 765
    new-instance v0, Ld7/a;

    .line 766
    .line 767
    new-array v2, v3, [Ljava/lang/Object;

    .line 768
    .line 769
    invoke-direct {v0, v2}, Ld7/a;-><init>([Ljava/lang/Object;)V

    .line 770
    .line 771
    .line 772
    throw v0

    .line 773
    :cond_304
    const/4 v3, 0x0

    .line 774
    new-instance v0, Ld7/a;

    .line 775
    .line 776
    new-array v2, v3, [Ljava/lang/Object;

    .line 777
    .line 778
    invoke-direct {v0, v2}, Ld7/a;-><init>([Ljava/lang/Object;)V

    .line 779
    .line 780
    .line 781
    throw v0

    .line 782
    :cond_30d
    iget v2, v1, Lcom/wireguard/android/backend/GoBackend;->d:I

    .line 783
    .line 784
    if-ne v2, v6, :cond_317

    .line 785
    .line 786
    const-string v0, "Tunnel already down"

    .line 787
    .line 788
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    .line 790
    .line 791
    return-void

    .line 792
    :cond_317
    const/4 v7, 0x0

    .line 793
    iput-object v7, v1, Lcom/wireguard/android/backend/GoBackend;->c:Lr5/c;

    .line 794
    .line 795
    iput v6, v1, Lcom/wireguard/android/backend/GoBackend;->d:I

    .line 796
    .line 797
    iput-object v7, v1, Lcom/wireguard/android/backend/GoBackend;->b:Lf7/c;

    .line 798
    .line 799
    invoke-static {v2}, Lcom/wireguard/android/backend/GoBackend;->wgTurnOff(I)V

    .line 800
    .line 801
    .line 802
    :try_start_321
    sget-object v2, Lcom/wireguard/android/backend/GoBackend;->e:Landroid/support/v4/media/h;

    .line 803
    .line 804
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 805
    .line 806
    iget-object v2, v2, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 807
    .line 808
    check-cast v2, Ljava/util/concurrent/FutureTask;

    .line 809
    .line 810
    const-wide/16 v5, 0x0

    .line 811
    .line 812
    invoke-virtual {v2, v5, v6, v4}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 813
    .line 814
    .line 815
    move-result-object v2

    .line 816
    check-cast v2, Lcom/wireguard/android/backend/GoBackend$VpnService;

    .line 817
    .line 818
    invoke-virtual {v2}, Landroid/app/Service;->stopSelf()V
    :try_end_334
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_321 .. :try_end_334} :catch_334

    .line 819
    .line 820
    .line 821
    :catch_334
    :goto_334
    invoke-virtual {v3, v0}, Lr5/c;->l(I)V

    .line 822
    .line 823
    .line 824
    return-void
.end method
