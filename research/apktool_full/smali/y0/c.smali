.class public abstract Ly0/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final a:Ljava/security/SecureRandom;

.field public static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ly0/c;->a:Ljava/security/SecureRandom;

    .line 7
    .line 8
    const/16 v0, 0x18

    .line 9
    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    fill-array-data v0, :array_0

    .line 13
    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    new-array v1, v1, [B

    .line 18
    .line 19
    fill-array-data v1, :array_1

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Ly0/c;->b:[B

    .line 33
    .line 34
    return-void

    .line 35
    :array_0
    .array-data 1
        0x5bt
        0x6ct
        -0x4ct
        0x7bt
        -0x5at
        0x1bt
        0x2bt
        -0x3et
        0x58t
        0x6at
        -0x5ct
        0x7bt
        -0x59t
        0x7t
        0x23t
        -0x36t
        0x42t
        0x7ft
        -0x51t
        0x76t
        -0x59t
        0xat
        0x34t
        -0x4at
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
    .line 48
    .line 49
    .line 50
    .line 51
    :array_1
    .array-data 1
        0x11t
        0x2ft
        -0x20t
        0x24t
        -0xdt
        0x55t
        0x62t
        -0x7ct
    .end array-data
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p0, p1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    sget-object v1, Ly0/c;->a:Ljava/security/SecureRandom;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    sget-object v2, Ly0/c;->b:[B

    .line 10
    .line 11
    const/16 v3, 0x4e20

    .line 12
    .line 13
    const/16 v4, 0x100

    .line 14
    .line 15
    invoke-direct {v1, p0, v2, v3, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 16
    .line 17
    .line 18
    const/16 p0, 0x14

    .line 19
    .line 20
    new-array p0, p0, [B

    .line 21
    .line 22
    fill-array-data p0, :array_0

    .line 23
    .line 24
    .line 25
    new-array v2, v0, [B

    .line 26
    .line 27
    fill-array-data v2, :array_1

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {v1}, Ljavax/crypto/spec/PBEKeySpec;->clearPassword()V

    .line 47
    .line 48
    .line 49
    const/16 v1, 0xa

    .line 50
    .line 51
    new-array v2, v1, [B

    .line 52
    .line 53
    fill-array-data v2, :array_2

    .line 54
    .line 55
    .line 56
    new-array v3, v0, [B

    .line 57
    .line 58
    fill-array-data v3, :array_3

    .line 59
    .line 60
    .line 61
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    .line 70
    .line 71
    new-array v1, v1, [B

    .line 72
    .line 73
    fill-array-data v1, :array_4

    .line 74
    .line 75
    .line 76
    new-array v4, v0, [B

    .line 77
    .line 78
    fill-array-data v4, :array_5

    .line 79
    .line 80
    .line 81
    invoke-static {v1, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-direct {v3, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 89
    .line 90
    .line 91
    new-instance p0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const/4 v1, 0x5

    .line 97
    new-array v1, v1, [B

    .line 98
    .line 99
    fill-array-data v1, :array_6

    .line 100
    .line 101
    .line 102
    new-array v3, v0, [B

    .line 103
    .line 104
    fill-array-data v3, :array_7

    .line 105
    .line 106
    .line 107
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const/4 p1, 0x1

    .line 118
    new-array p1, p1, [B

    .line 119
    .line 120
    const/4 v1, 0x0

    .line 121
    const/16 v3, 0x58

    .line 122
    .line 123
    aput-byte v3, p1, v1

    .line 124
    .line 125
    new-array v1, v0, [B

    .line 126
    .line 127
    fill-array-data v1, :array_8

    .line 128
    .line 129
    .line 130
    invoke-static {p1, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const/4 p1, 0x1

    .line 141
    new-array p1, p1, [B

    .line 142
    .line 143
    const/4 p2, 0x0

    .line 144
    const/16 v1, 0x39

    .line 145
    .line 146
    aput-byte v1, p1, p2

    .line 147
    .line 148
    new-array p2, v0, [B

    .line 149
    .line 150
    fill-array-data p2, :array_9

    .line 151
    .line 152
    .line 153
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 168
    .line 169
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-virtual {v2, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    const/4 p1, 0x2

    .line 178
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    return-object p0

    .line 183
    :catch_0
    move-exception p0

    .line 184
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 185
    .line 186
    const/16 p2, 0x29

    .line 187
    .line 188
    new-array p2, p2, [B

    .line 189
    .line 190
    fill-array-data p2, :array_a

    .line 191
    .line 192
    .line 193
    new-array p3, v0, [B

    .line 194
    .line 195
    fill-array-data p3, :array_b

    .line 196
    .line 197
    .line 198
    invoke-static {p2, p3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    .line 204
    .line 205
    throw p1

    .line 206
    nop

    .line 207
    :array_0
    .array-data 1
        0xdt
        -0x39t
        0x51t
        -0x5bt
        -0x45t
        0x74t
        -0x3ft
        0x6dt
        0x29t
        -0x13t
        0x52t
        -0x74t
        -0x64t
        0x25t
        -0x3bt
        0x4ct
        0x1ct
        -0x49t
        0x2ft
        -0x29t
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
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    :array_1
    .array-data 1
        0x5dt
        -0x7bt
        0x1at
        -0x1ft
        -0x3t
        0x46t
        -0x6at
        0x4t
    .end array-data

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    :array_2
    .array-data 1
        0x5ct
        -0x75t
        0xdt
        -0x15t
        0x76t
        0x4bt
        0x23t
        -0x7ft
        0x21t
        -0x30t
    .end array-data

    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    nop

    .line 239
    :array_3
    .array-data 1
        0x14t
        -0x1at
        0x6ct
        -0x78t
        0x25t
        0x3t
        0x62t
        -0x4dt
    .end array-data

    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    :array_4
    .array-data 1
        0x6ft
        -0x7bt
        -0x4et
        0x2bt
        -0x7ft
        0x1bt
        -0x7ct
        -0x30t
        0x12t
        -0x22t
    .end array-data

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    nop

    .line 257
    :array_5
    .array-data 1
        0x27t
        -0x18t
        -0x2dt
        0x48t
        -0x2et
        0x53t
        -0x3bt
        -0x1et
    .end array-data

    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    :array_6
    .array-data 1
        -0x15t
        0x28t
        -0x40t
        0x66t
        -0x5bt
    .end array-data

    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    nop

    .line 273
    :array_7
    .array-data 1
        -0x5ft
        0x6bt
        -0x6ct
        0x54t
        -0x27t
        -0x1dt
        0x3t
        0x7t
    .end array-data

    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    :array_8
    .array-data 1
        0x24t
        0xet
        0x60t
        0x4at
        0x27t
        -0x2at
        -0x9t
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
    :array_9
    .array-data 1
        0x45t
        -0x48t
        0x9t
        0x63t
        0x15t
        0xet
        -0x30t
        0x19t
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
        0x71t
        0x4dt
        -0x59t
        -0xct
        -0x1dt
        -0x8t
        -0x4t
        -0xbt
        0x53t
        0x40t
        -0x56t
        -0x11t
        -0x20t
        -0x13t
        -0x58t
        -0xdt
        0x12t
        0x58t
        -0x45t
        -0x5t
        -0x1et
        -0x1t
        -0x54t
        -0x7t
        0x40t
        0x58t
        -0x17t
        -0x5t
        -0x7t
        -0x8t
        -0x4ct
        -0xdt
        0x5ct
        0x58t
        -0x60t
        -0x7t
        -0x13t
        -0x8t
        -0x4bt
        -0x7t
        0x5ct
    .end array-data

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
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    nop

    .line 323
    :array_b
    .array-data 1
        0x32t
        0x2ct
        -0x37t
        -0x66t
        -0x74t
        -0x74t
        -0x24t
        -0x6at
    .end array-data
.end method
