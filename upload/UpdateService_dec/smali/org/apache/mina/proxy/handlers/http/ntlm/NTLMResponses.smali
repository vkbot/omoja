.class public Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;
.super Ljava/lang/Object;
.source "NTLMResponses.java"


# static fields
.field public static final LM_HASH_MAGIC_CONSTANT:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->LM_HASH_MAGIC_CONSTANT:[B

    return-void

    :array_0
    .array-data 1
        0x4bt
        0x47t
        0x53t
        0x21t
        0x40t
        0x23t
        0x24t
        0x25t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method private static createBlob([B[BJ)[B
    .locals 9
    .param p0, "targetInformation"    # [B
    .param p1, "clientNonce"    # [B
    .param p2, "time"    # J

    .line 299
    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    .line 300
    .local v1, "blobSignature":[B
    new-array v2, v0, [B

    fill-array-data v2, :array_1

    .line 301
    .local v2, "reserved":[B
    new-array v3, v0, [B

    fill-array-data v3, :array_2

    .line 302
    .local v3, "unknown1":[B
    new-array v0, v0, [B

    fill-array-data v0, :array_3

    .line 303
    .local v0, "unknown2":[B
    const-wide v4, 0xa9730b66800L

    add-long/2addr p2, v4

    .line 304
    const-wide/16 v4, 0x2710

    mul-long/2addr p2, v4

    .line 306
    const/16 v4, 0x8

    new-array v5, v4, [B

    .line 308
    .local v5, "timestamp":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_0

    .line 309
    long-to-int v7, p2

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 310
    ushr-long/2addr p2, v4

    .line 308
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 313
    .end local v6    # "i":I
    :cond_0
    array-length v4, v1

    array-length v6, v2

    add-int/2addr v4, v6

    array-length v6, v5

    add-int/2addr v4, v6

    array-length v6, p1

    add-int/2addr v4, v6

    array-length v6, v3

    add-int/2addr v4, v6

    array-length v6, p0

    add-int/2addr v4, v6

    array-length v6, v0

    add-int/2addr v4, v6

    new-array v4, v4, [B

    .line 315
    .local v4, "blob":[B
    const/4 v6, 0x0

    .line 316
    .local v6, "offset":I
    array-length v7, v1

    const/4 v8, 0x0

    invoke-static {v1, v8, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    array-length v7, v1

    add-int/2addr v6, v7

    .line 318
    array-length v7, v2

    invoke-static {v2, v8, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    array-length v7, v2

    add-int/2addr v6, v7

    .line 320
    array-length v7, v5

    invoke-static {v5, v8, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 321
    array-length v7, v5

    add-int/2addr v6, v7

    .line 322
    array-length v7, p1

    invoke-static {p1, v8, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    array-length v7, p1

    add-int/2addr v6, v7

    .line 324
    array-length v7, v3

    invoke-static {v3, v8, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    array-length v7, v3

    add-int/2addr v6, v7

    .line 326
    array-length v7, p0

    invoke-static {p0, v8, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    array-length v7, p0

    add-int/2addr v6, v7

    .line 328
    array-length v7, v0

    invoke-static {v0, v8, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    return-object v4

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static createDESKey([BI)Ljava/security/Key;
    .locals 11
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I

    .line 381
    const/4 v0, 0x7

    new-array v1, v0, [B

    .line 382
    .local v1, "keyBytes":[B
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 383
    const/16 v3, 0x8

    new-array v3, v3, [B

    .line 384
    .local v3, "material":[B
    aget-byte v4, v1, v2

    aput-byte v4, v3, v2

    .line 385
    aget-byte v2, v1, v2

    shl-int/2addr v2, v0

    const/4 v4, 0x1

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    ushr-int/2addr v5, v4

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    .line 386
    aget-byte v2, v1, v4

    const/4 v5, 0x6

    shl-int/2addr v2, v5

    const/4 v6, 0x2

    aget-byte v7, v1, v6

    and-int/lit16 v7, v7, 0xff

    ushr-int/2addr v7, v6

    or-int/2addr v2, v7

    int-to-byte v2, v2

    aput-byte v2, v3, v6

    .line 387
    aget-byte v2, v1, v6

    const/4 v7, 0x5

    shl-int/2addr v2, v7

    const/4 v8, 0x3

    aget-byte v9, v1, v8

    and-int/lit16 v9, v9, 0xff

    ushr-int/2addr v9, v8

    or-int/2addr v2, v9

    int-to-byte v2, v2

    aput-byte v2, v3, v8

    .line 388
    aget-byte v2, v1, v8

    const/4 v9, 0x4

    shl-int/2addr v2, v9

    aget-byte v10, v1, v9

    and-int/lit16 v10, v10, 0xff

    ushr-int/2addr v10, v9

    or-int/2addr v2, v10

    int-to-byte v2, v2

    aput-byte v2, v3, v9

    .line 389
    aget-byte v2, v1, v9

    shl-int/2addr v2, v8

    aget-byte v8, v1, v7

    and-int/lit16 v8, v8, 0xff

    ushr-int/2addr v8, v7

    or-int/2addr v2, v8

    int-to-byte v2, v2

    aput-byte v2, v3, v7

    .line 390
    aget-byte v2, v1, v7

    shl-int/2addr v2, v6

    aget-byte v6, v1, v5

    and-int/lit16 v6, v6, 0xff

    ushr-int/2addr v6, v5

    or-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, v3, v5

    .line 391
    aget-byte v2, v1, v5

    shl-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v3, v0

    .line 392
    invoke-static {v3}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->oddParity([B)V

    .line 394
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "DES"

    invoke-direct {v0, v3, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static getLMResponse(Ljava/lang/String;[B)[B
    .locals 2
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    invoke-static {p0}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->lmHash(Ljava/lang/String;)[B

    move-result-object v0

    .line 64
    .local v0, "lmHash":[B
    invoke-static {v0, p1}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->lmResponse([B[B)[B

    move-result-object v1

    return-object v1
.end method

.method public static getLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B
    .locals 2
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "challenge"    # [B
    .param p4, "clientNonce"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 147
    invoke-static {p0, p1, p2}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->ntlmv2Hash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 148
    .local v0, "ntlmv2Hash":[B
    invoke-static {v0, p4, p3}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->lmv2Response([B[B[B)[B

    move-result-object v1

    return-object v1
.end method

.method public static getNTLM2SessionResponse(Ljava/lang/String;[B[B)[B
    .locals 6
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "challenge"    # [B
    .param p2, "clientNonce"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 166
    invoke-static {p0}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->ntlmHash(Ljava/lang/String;)[B

    move-result-object v0

    .line 167
    .local v0, "ntlmHash":[B
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 168
    .local v1, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 169
    invoke-virtual {v1, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 170
    const/16 v2, 0x8

    new-array v3, v2, [B

    .line 171
    .local v3, "sessionHash":[B
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    invoke-static {v0, v3}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->lmResponse([B[B)[B

    move-result-object v2

    return-object v2
.end method

.method public static getNTLMResponse(Ljava/lang/String;[B)[B
    .locals 2
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    invoke-static {p0}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->ntlmHash(Ljava/lang/String;)[B

    move-result-object v0

    .line 80
    .local v0, "ntlmHash":[B
    invoke-static {v0, p1}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->lmResponse([B[B)[B

    move-result-object v1

    return-object v1
.end method

.method public static getNTLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B)[B
    .locals 8
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "targetInformation"    # [B
    .param p4, "challenge"    # [B
    .param p5, "clientNonce"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    nop

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 102
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->getNTLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[BJ)[B

    move-result-object v0

    return-object v0
.end method

.method public static getNTLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[BJ)[B
    .locals 3
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "targetInformation"    # [B
    .param p4, "challenge"    # [B
    .param p5, "clientNonce"    # [B
    .param p6, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    invoke-static {p0, p1, p2}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->ntlmv2Hash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 126
    .local v0, "ntlmv2Hash":[B
    invoke-static {p3, p5, p6, p7}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->createBlob([B[BJ)[B

    move-result-object v1

    .line 128
    .local v1, "blob":[B
    invoke-static {v0, v1, p4}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->lmv2Response([B[B[B)[B

    move-result-object v2

    return-object v2
.end method

.method public static hmacMD5([B[B)[B
    .locals 8
    .param p0, "data"    # [B
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 344
    const/16 v0, 0x40

    new-array v1, v0, [B

    .line 345
    .local v1, "ipad":[B
    new-array v2, v0, [B

    .line 348
    .local v2, "opad":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 349
    array-length v4, p1

    const/16 v5, 0x5c

    const/16 v6, 0x36

    if-ge v3, v4, :cond_0

    .line 350
    aget-byte v4, p1, v3

    xor-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 351
    aget-byte v4, p1, v3

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    goto :goto_1

    .line 353
    :cond_0
    aput-byte v6, v1, v3

    .line 354
    aput-byte v5, v2, v3

    .line 348
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 358
    .end local v3    # "i":I
    :cond_1
    array-length v3, p0

    add-int/2addr v3, v0

    new-array v3, v3, [B

    .line 359
    .local v3, "content":[B
    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    array-length v5, p0

    invoke-static {p0, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 362
    .local v5, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v5, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    .line 363
    .local v6, "digestedData":[B
    array-length v7, v6

    add-int/2addr v7, v0

    new-array v3, v7, [B

    .line 364
    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    array-length v7, v6

    invoke-static {v6, v4, v3, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 367
    invoke-virtual {v5, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method private static lmHash(Ljava/lang/String;)[B
    .locals 11
    .param p0, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 185
    .local v0, "oemPassword":[B
    array-length v1, v0

    const/16 v2, 0xe

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 186
    .local v1, "length":I
    new-array v2, v2, [B

    .line 187
    .local v2, "keyBytes":[B
    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    invoke-static {v2, v3}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->createDESKey([BI)Ljava/security/Key;

    move-result-object v4

    .line 189
    .local v4, "lowKey":Ljava/security/Key;
    const/4 v5, 0x7

    invoke-static {v2, v5}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->createDESKey([BI)Ljava/security/Key;

    move-result-object v5

    .line 190
    .local v5, "highKey":Ljava/security/Key;
    const-string v6, "DES/ECB/NoPadding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 191
    .local v6, "des":Ljavax/crypto/Cipher;
    const/4 v7, 0x1

    invoke-virtual {v6, v7, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 192
    sget-object v8, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->LM_HASH_MAGIC_CONSTANT:[B

    invoke-virtual {v6, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v8

    .line 193
    .local v8, "lowHash":[B
    invoke-virtual {v6, v7, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 194
    sget-object v7, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->LM_HASH_MAGIC_CONSTANT:[B

    invoke-virtual {v6, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    .line 195
    .local v7, "highHash":[B
    const/16 v9, 0x10

    new-array v9, v9, [B

    .line 196
    .local v9, "lmHash":[B
    const/16 v10, 0x8

    invoke-static {v8, v3, v9, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    invoke-static {v7, v3, v9, v10, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    return-object v9
.end method

.method private static lmResponse([B[B)[B
    .locals 12
    .param p0, "hash"    # [B
    .param p1, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 244
    const/16 v0, 0x15

    new-array v0, v0, [B

    .line 245
    .local v0, "keyBytes":[B
    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    invoke-static {v0, v1}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->createDESKey([BI)Ljava/security/Key;

    move-result-object v3

    .line 247
    .local v3, "lowKey":Ljava/security/Key;
    const/4 v4, 0x7

    invoke-static {v0, v4}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->createDESKey([BI)Ljava/security/Key;

    move-result-object v4

    .line 248
    .local v4, "middleKey":Ljava/security/Key;
    const/16 v5, 0xe

    invoke-static {v0, v5}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->createDESKey([BI)Ljava/security/Key;

    move-result-object v5

    .line 249
    .local v5, "highKey":Ljava/security/Key;
    const-string v6, "DES/ECB/NoPadding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 250
    .local v6, "des":Ljavax/crypto/Cipher;
    const/4 v7, 0x1

    invoke-virtual {v6, v7, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 251
    invoke-virtual {v6, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v8

    .line 252
    .local v8, "lowResponse":[B
    invoke-virtual {v6, v7, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 253
    invoke-virtual {v6, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v9

    .line 254
    .local v9, "middleResponse":[B
    invoke-virtual {v6, v7, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 255
    invoke-virtual {v6, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    .line 256
    .local v7, "highResponse":[B
    const/16 v10, 0x18

    new-array v10, v10, [B

    .line 257
    .local v10, "lmResponse":[B
    const/16 v11, 0x8

    invoke-static {v8, v1, v10, v1, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    invoke-static {v9, v1, v10, v11, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    invoke-static {v7, v1, v10, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    return-object v10
.end method

.method private static lmv2Response([B[B[B)[B
    .locals 6
    .param p0, "hash"    # [B
    .param p1, "clientData"    # [B
    .param p2, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 276
    array-length v0, p2

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 277
    .local v0, "data":[B
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    array-length v1, p2

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    invoke-static {v0, p0}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->hmacMD5([B[B)[B

    move-result-object v1

    .line 280
    .local v1, "mac":[B
    array-length v3, v1

    array-length v4, p1

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 281
    .local v3, "lmv2Response":[B
    array-length v4, v1

    invoke-static {v1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    array-length v4, v1

    array-length v5, p1

    invoke-static {p1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    return-object v3
.end method

.method private static ntlmHash(Ljava/lang/String;)[B
    .locals 3
    .param p0, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 211
    const-string v0, "UnicodeLittleUnmarked"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 212
    .local v0, "unicodePassword":[B
    const-string v1, "MD4"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 214
    .local v1, "md4":Ljava/security/MessageDigest;
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    return-object v2
.end method

.method private static ntlmv2Hash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 228
    invoke-static {p2}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->ntlmHash(Ljava/lang/String;)[B

    move-result-object v0

    .line 229
    .local v0, "ntlmHash":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "identity":Ljava/lang/String;
    const-string v2, "UnicodeLittleUnmarked"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v0}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->hmacMD5([B[B)[B

    move-result-object v2

    return-object v2
.end method

.method private static oddParity([B)V
    .locals 5
    .param p0, "bytes"    # [B

    .line 404
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 405
    aget-byte v1, p0, v0

    .line 406
    .local v1, "b":B
    ushr-int/lit8 v2, v1, 0x7

    ushr-int/lit8 v3, v1, 0x6

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v1, 0x4

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v1, 0x3

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v1, 0x2

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v1, 0x1

    xor-int/2addr v2, v3

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 408
    .local v2, "needsParity":Z
    :goto_1
    if-eqz v2, :cond_1

    .line 409
    aget-byte v4, p0, v0

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    goto :goto_2

    .line 411
    :cond_1
    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, -0x2

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    .line 404
    .end local v1    # "b":B
    .end local v2    # "needsParity":Z
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 414
    .end local v0    # "i":I
    :cond_2
    return-void
.end method
