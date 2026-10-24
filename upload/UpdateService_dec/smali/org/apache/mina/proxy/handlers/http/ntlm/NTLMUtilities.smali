.class public Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;
.super Ljava/lang/Object;
.source "NTLMUtilities.java"

# interfaces
.implements Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMConstants;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static final createType1Message(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[B)[B
    .locals 7
    .param p0, "workStation"    # Ljava/lang/String;
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "customFlags"    # Ljava/lang/Integer;
    .param p3, "osVersion"    # [B

    .line 186
    if-eqz p3, :cond_1

    array-length v0, p3

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "osVersion parameter should be a 8 byte wide array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_1
    :goto_0
    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    .line 194
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit16 v0, v0, 0x2000

    or-int/lit16 v0, v0, 0x1000

    goto :goto_1

    :cond_2
    const/16 v0, 0x3003

    .line 197
    .local v0, "flags":I
    :goto_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 200
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v2, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->NTLM_SIGNATURE:[B

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 201
    const/4 v2, 0x1

    invoke-static {v2}, Lorg/apache/mina/proxy/utils/ByteUtilities;->writeInt(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 202
    invoke-static {v0}, Lorg/apache/mina/proxy/utils/ByteUtilities;->writeInt(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 204
    invoke-static {p1}, Lorg/apache/mina/proxy/utils/ByteUtilities;->getOEMStringAsByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 205
    .local v2, "domainData":[B
    invoke-static {p0}, Lorg/apache/mina/proxy/utils/ByteUtilities;->getOEMStringAsByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 207
    .local v3, "workStationData":[B
    if-eqz p3, :cond_3

    const/16 v4, 0x28

    goto :goto_2

    :cond_3
    const/16 v4, 0x20

    .line 208
    .local v4, "pos":I
    :goto_2
    array-length v5, v2

    int-to-short v5, v5

    array-length v6, v3

    add-int/2addr v6, v4

    invoke-static {v5, v6}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->writeSecurityBuffer(SI)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 209
    array-length v5, v3

    int-to-short v5, v5

    invoke-static {v5, v4}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->writeSecurityBuffer(SI)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 211
    if-eqz p3, :cond_4

    .line 212
    invoke-virtual {v1, p3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 216
    :cond_4
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 217
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 219
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 220
    .local v5, "msg":[B
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v2    # "domainData":[B
    .end local v3    # "workStationData":[B
    .end local v4    # "pos":I
    nop

    .line 225
    return-object v5

    .line 221
    .end local v5    # "msg":[B
    :catch_0
    move-exception v2

    .line 222
    .local v2, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    return-object v3

    .line 191
    .end local v0    # "flags":I
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "workStation and domain must be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final createType3Message(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[B)[B
    .locals 19
    .param p0, "user"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # [B
    .param p3, "target"    # Ljava/lang/String;
    .param p4, "workstation"    # Ljava/lang/String;
    .param p5, "serverFlags"    # Ljava/lang/Integer;
    .param p6, "osVersion"    # [B

    .line 420
    move-object/from16 v1, p2

    move-object/from16 v2, p6

    if-eqz v1, :cond_5

    array-length v0, v1

    const/16 v3, 0x8

    if-ne v0, v3, :cond_5

    .line 424
    if-eqz v2, :cond_1

    array-length v0, v2

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 425
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "osVersion should be a 8 byte wide array"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_1
    :goto_0
    if-eqz p5, :cond_2

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_2
    const/16 v0, 0x3003

    :goto_1
    move v4, v0

    .line 430
    .local v4, "flags":I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v5, v0

    .line 433
    .local v5, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->NTLM_SIGNATURE:[B

    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 434
    const/4 v0, 0x3

    invoke-static {v0}, Lorg/apache/mina/proxy/utils/ByteUtilities;->writeInt(I)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 436
    invoke-static/range {p1 .. p2}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->getLMResponse(Ljava/lang/String;[B)[B

    move-result-object v6

    .line 437
    .local v6, "dataLMResponse":[B
    invoke-static/range {p1 .. p2}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->getNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object v7

    .line 439
    .local v7, "dataNTLMResponse":[B
    const/4 v8, 0x1

    invoke-static {v4, v8}, Lorg/apache/mina/proxy/utils/ByteUtilities;->isFlagSet(II)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 440
    .local v9, "useUnicode":Z
    move-object/from16 v10, p3

    :try_start_1
    invoke-static {v10, v9}, Lorg/apache/mina/proxy/utils/ByteUtilities;->encodeString(Ljava/lang/String;Z)[B

    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 441
    .local v11, "targetName":[B
    move-object/from16 v12, p0

    :try_start_2
    invoke-static {v12, v9}, Lorg/apache/mina/proxy/utils/ByteUtilities;->encodeString(Ljava/lang/String;Z)[B

    move-result-object v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 442
    .local v13, "userName":[B
    move-object/from16 v14, p4

    :try_start_3
    invoke-static {v14, v9}, Lorg/apache/mina/proxy/utils/ByteUtilities;->encodeString(Ljava/lang/String;Z)[B

    move-result-object v15

    .line 444
    .local v15, "workstationName":[B
    if-eqz v2, :cond_3

    const/16 v16, 0x48

    goto :goto_2

    :cond_3
    const/16 v16, 0x40

    :goto_2
    move/from16 v17, v16

    .line 445
    .local v17, "pos":I
    array-length v0, v11

    move/from16 v8, v17

    .end local v17    # "pos":I
    .local v8, "pos":I
    add-int v17, v8, v0

    array-length v0, v13

    add-int v17, v17, v0

    array-length v0, v15

    add-int v0, v17, v0

    .line 446
    .local v0, "responsePos":I
    array-length v3, v6

    int-to-short v3, v3

    invoke-static {v5, v3, v0}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->writeSecurityBufferAndUpdatePointer(Ljava/io/ByteArrayOutputStream;SI)I

    move-result v3

    move v0, v3

    .line 447
    array-length v3, v7

    int-to-short v3, v3

    invoke-static {v5, v3, v0}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->writeSecurityBufferAndUpdatePointer(Ljava/io/ByteArrayOutputStream;SI)I

    .line 448
    array-length v3, v11

    int-to-short v3, v3

    invoke-static {v5, v3, v8}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->writeSecurityBufferAndUpdatePointer(Ljava/io/ByteArrayOutputStream;SI)I

    move-result v3

    .line 449
    .end local v8    # "pos":I
    .local v3, "pos":I
    array-length v8, v13

    int-to-short v8, v8

    invoke-static {v5, v8, v3}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->writeSecurityBufferAndUpdatePointer(Ljava/io/ByteArrayOutputStream;SI)I

    move-result v8

    move v3, v8

    .line 450
    array-length v8, v15

    int-to-short v8, v8

    invoke-static {v5, v8, v3}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->writeSecurityBufferAndUpdatePointer(Ljava/io/ByteArrayOutputStream;SI)I

    .line 464
    const/16 v8, 0x8

    new-array v8, v8, [B

    const/16 v17, 0x0

    aput-byte v17, v8, v17

    const/16 v18, 0x1

    aput-byte v17, v8, v18

    const/16 v18, 0x2

    aput-byte v17, v8, v18

    const/16 v16, 0x3

    aput-byte v17, v8, v16

    const/16 v16, 0x4

    const/16 v18, -0x66

    aput-byte v18, v8, v16

    const/16 v16, 0x5

    aput-byte v17, v8, v16

    const/16 v16, 0x6

    aput-byte v17, v8, v16

    const/16 v16, 0x7

    aput-byte v17, v8, v16

    invoke-virtual {v5, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 466
    invoke-static {v4}, Lorg/apache/mina/proxy/utils/ByteUtilities;->writeInt(I)[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 468
    if-eqz v2, :cond_4

    .line 469
    invoke-virtual {v5, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 473
    :cond_4
    invoke-virtual {v5, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 474
    invoke-virtual {v5, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 475
    invoke-virtual {v5, v15}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 477
    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 478
    invoke-virtual {v5, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 480
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 481
    .local v8, "msg":[B
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 485
    .end local v0    # "responsePos":I
    .end local v3    # "pos":I
    .end local v6    # "dataLMResponse":[B
    .end local v7    # "dataNTLMResponse":[B
    .end local v9    # "useUnicode":Z
    .end local v11    # "targetName":[B
    .end local v13    # "userName":[B
    .end local v15    # "workstationName":[B
    nop

    .line 487
    return-object v8

    .line 482
    .end local v8    # "msg":[B
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v12, p0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v10, p3

    :goto_3
    move-object/from16 v14, p4

    .line 483
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 484
    const/4 v3, 0x0

    return-object v3

    .line 420
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "flags":I
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_5
    move-object/from16 v12, p0

    move-object/from16 v10, p3

    move-object/from16 v14, p4

    .line 421
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "challenge[] should be a 8 byte wide array"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final extractChallengeFromType2Message([B)[B
    .locals 4
    .param p0, "msg"    # [B

    .line 252
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 253
    .local v1, "challenge":[B
    const/16 v2, 0x18

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    return-object v1
.end method

.method public static final extractFlagsFromType2Message([B)I
    .locals 4
    .param p0, "msg"    # [B

    .line 265
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 267
    .local v1, "flagsBytes":[B
    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    invoke-static {v1, v3, v0}, Lorg/apache/mina/proxy/utils/ByteUtilities;->changeWordEndianess([BII)V

    .line 270
    invoke-static {v1}, Lorg/apache/mina/proxy/utils/ByteUtilities;->makeIntFromByte4([B)I

    move-result v0

    return v0
.end method

.method public static final extractTargetInfoFromType2Message([BLjava/lang/Integer;)[B
    .locals 3
    .param p0, "msg"    # [B
    .param p1, "msgFlags"    # Ljava/lang/Integer;

    .line 330
    if-nez p1, :cond_0

    invoke-static {p0}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->extractFlagsFromType2Message([B)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 332
    .local v0, "flags":I
    :goto_0
    const/high16 v1, 0x800000

    invoke-static {v0, v1}, Lorg/apache/mina/proxy/utils/ByteUtilities;->isFlagSet(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 333
    const/4 v1, 0x0

    return-object v1

    .line 336
    :cond_1
    const/16 v1, 0x28

    .line 338
    .local v1, "pos":I
    invoke-static {p0, v1}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->readSecurityBufferTarget([BI)[B

    move-result-object v2

    return-object v2
.end method

.method public static final extractTargetNameFromType2Message([BLjava/lang/Integer;)Ljava/lang/String;
    .locals 4
    .param p0, "msg"    # [B
    .param p1, "msgFlags"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 309
    const/16 v0, 0xc

    invoke-static {p0, v0}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->readSecurityBufferTarget([BI)[B

    move-result-object v0

    .line 312
    .local v0, "targetName":[B
    if-nez p1, :cond_0

    invoke-static {p0}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->extractFlagsFromType2Message([B)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 314
    .local v1, "flags":I
    :goto_0
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/apache/mina/proxy/utils/ByteUtilities;->isFlagSet(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-16LE"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v2

    .line 318
    :cond_1
    new-instance v2, Ljava/lang/String;

    const-string v3, "ASCII"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v2
.end method

.method public static final getOsVersion()[B
    .locals 11

    .line 108
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "os":Ljava/lang/String;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WINDOWS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 114
    :cond_0
    const/16 v1, 0x8

    new-array v2, v1, [B

    .line 120
    .local v2, "osVer":[B
    const/4 v3, 0x3

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "cmd /C ver"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 123
    .local v5, "pr":Ljava/lang/Process;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .local v6, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    .line 128
    :cond_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 129
    .local v7, "line":Ljava/lang/String;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_1

    .line 130
    :cond_2
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 133
    .end local v6    # "reader":Ljava/io/BufferedReader;
    if-eqz v7, :cond_5

    .line 140
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v8, "version"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 142
    .local v6, "pos":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_4

    .line 147
    add-int/2addr v6, v1

    .line 148
    const/16 v1, 0x5d

    invoke-virtual {v7, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v7, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 149
    .end local v7    # "line":Ljava/lang/String;
    .local v1, "line":Ljava/lang/String;
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v8, "."

    invoke-direct {v7, v1, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .local v7, "tk":Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v8

    if-ne v8, v3, :cond_3

    .line 156
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v8

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v9

    .line 157
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v10

    .line 156
    invoke-static {v8, v9, v10, v2, v4}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->writeOSVersion(BBS[BI)V

    .line 166
    .end local v1    # "line":Ljava/lang/String;
    .end local v5    # "pr":Ljava/lang/Process;
    .end local v6    # "pos":I
    .end local v7    # "tk":Ljava/util/StringTokenizer;
    goto :goto_1

    .line 153
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v5    # "pr":Ljava/lang/Process;
    .restart local v6    # "pos":I
    .restart local v7    # "tk":Ljava/util/StringTokenizer;
    :cond_3
    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8}, Ljava/lang/Exception;-><init>()V

    .end local v0    # "os":Ljava/lang/String;
    .end local v2    # "osVer":[B
    throw v8

    .line 144
    .end local v1    # "line":Ljava/lang/String;
    .restart local v0    # "os":Ljava/lang/String;
    .restart local v2    # "osVer":[B
    .local v7, "line":Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .end local v0    # "os":Ljava/lang/String;
    .end local v2    # "osVer":[B
    throw v1

    .line 135
    .end local v6    # "pos":I
    .restart local v0    # "os":Ljava/lang/String;
    .restart local v2    # "osVer":[B
    :cond_5
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .end local v0    # "os":Ljava/lang/String;
    .end local v2    # "osVer":[B
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 123
    .end local v7    # "line":Ljava/lang/String;
    .restart local v0    # "os":Ljava/lang/String;
    .restart local v2    # "osVer":[B
    .local v6, "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v1

    .end local v0    # "os":Ljava/lang/String;
    .end local v2    # "osVer":[B
    .end local v5    # "pr":Ljava/lang/Process;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 130
    .restart local v0    # "os":Ljava/lang/String;
    .restart local v2    # "osVer":[B
    .restart local v5    # "pr":Ljava/lang/Process;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v8

    :try_start_5
    invoke-virtual {v1, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "os":Ljava/lang/String;
    .end local v2    # "osVer":[B
    :goto_0
    throw v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 158
    .end local v5    # "pr":Ljava/lang/Process;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "os":Ljava/lang/String;
    .restart local v2    # "osVer":[B
    :catch_0
    move-exception v1

    .line 160
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_6
    const-string v5, "os.version"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 161
    .local v5, "version":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v5, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    invoke-static {v6, v3, v4, v2, v4}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->writeOSVersion(BBS[BI)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 165
    .end local v5    # "version":Ljava/lang/String;
    nop

    .line 168
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1
    return-object v2

    .line 163
    .restart local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 164
    .local v3, "ex2":Ljava/lang/Exception;
    sget-object v4, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->DEFAULT_OS_VERSION:[B

    return-object v4

    .line 111
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "osVer":[B
    .end local v3    # "ex2":Ljava/lang/Exception;
    :cond_6
    :goto_2
    sget-object v1, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->DEFAULT_OS_VERSION:[B

    return-object v1
.end method

.method public static final printTargetInformationBlockFromType2Message([BLjava/lang/Integer;Ljava/io/PrintWriter;)V
    .locals 8
    .param p0, "msg"    # [B
    .param p1, "msgFlags"    # Ljava/lang/Integer;
    .param p2, "out"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 354
    if-nez p1, :cond_0

    invoke-static {p0}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->extractFlagsFromType2Message([B)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 356
    .local v0, "flags":I
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->extractTargetInfoFromType2Message([BLjava/lang/Integer;)[B

    move-result-object v1

    .line 358
    .local v1, "infoBlock":[B
    if-nez v1, :cond_1

    .line 359
    const-string v2, "No target information block found !"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 361
    :cond_1
    const/4 v2, 0x0

    .line 363
    .local v2, "pos":I
    :goto_1
    aget-byte v3, v1, v2

    if-eqz v3, :cond_8

    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---\nType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 366
    aget-byte v3, v1, v2

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v3, v4, :cond_6

    if-eq v3, v5, :cond_5

    const/4 v6, 0x3

    if-eq v3, v6, :cond_4

    const/4 v6, 0x4

    if-eq v3, v6, :cond_3

    const/4 v6, 0x5

    if-eq v3, v6, :cond_2

    goto :goto_2

    .line 380
    :cond_2
    const-string v3, "Parent DNS domain name"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 377
    :cond_3
    const-string v3, "DNS domain name"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    goto :goto_2

    .line 374
    :cond_4
    const-string v3, "Fully qualified DNS hostname"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    goto :goto_2

    .line 371
    :cond_5
    const-string v3, "Domain name"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    goto :goto_2

    .line 368
    :cond_6
    const-string v3, "Server name"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    nop

    .line 384
    :goto_2
    new-array v3, v5, [B

    .line 385
    .local v3, "len":[B
    add-int/lit8 v6, v2, 0x2

    const/4 v7, 0x0

    invoke-static {v1, v6, v3, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 386
    invoke-static {v3, v7, v5}, Lorg/apache/mina/proxy/utils/ByteUtilities;->changeByteEndianess([BII)V

    .line 388
    invoke-static {v3, v7}, Lorg/apache/mina/proxy/utils/ByteUtilities;->makeIntFromByte2([BI)I

    move-result v5

    .line 389
    .local v5, "length":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    const-string v6, "Data: "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 392
    invoke-static {v0, v4}, Lorg/apache/mina/proxy/utils/ByteUtilities;->isFlagSet(II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 393
    new-instance v4, Ljava/lang/String;

    add-int/lit8 v6, v2, 0x4

    const-string v7, "UTF-16LE"

    invoke-direct {v4, v1, v6, v5, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 395
    :cond_7
    new-instance v4, Ljava/lang/String;

    add-int/lit8 v6, v2, 0x4

    const-string v7, "ASCII"

    invoke-direct {v4, v1, v6, v5, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 398
    :goto_3
    add-int/lit8 v4, v5, 0x4

    add-int/2addr v2, v4

    .line 399
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 400
    .end local v3    # "len":[B
    .end local v5    # "length":I
    goto/16 :goto_1

    .line 402
    .end local v2    # "pos":I
    :cond_8
    :goto_4
    return-void
.end method

.method public static final readSecurityBufferTarget([BI)[B
    .locals 5
    .param p0, "msg"    # [B
    .param p1, "securityBufferOffset"    # I

    .line 282
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 284
    .local v1, "securityBuffer":[B
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    invoke-static {v1, v2, v0}, Lorg/apache/mina/proxy/utils/ByteUtilities;->changeWordEndianess([BII)V

    .line 286
    invoke-static {v1}, Lorg/apache/mina/proxy/utils/ByteUtilities;->makeIntFromByte2([B)I

    move-result v0

    .line 287
    .local v0, "length":I
    const/4 v3, 0x4

    invoke-static {v1, v3}, Lorg/apache/mina/proxy/utils/ByteUtilities;->makeIntFromByte4([BI)I

    move-result v3

    .line 289
    .local v3, "offset":I
    new-array v4, v0, [B

    .line 290
    .local v4, "secBufValue":[B
    invoke-static {p0, v3, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    return-object v4
.end method

.method public static final writeOSVersion(BBS[BI)V
    .locals 2
    .param p0, "majorVersion"    # B
    .param p1, "minorVersion"    # B
    .param p2, "buildNumber"    # S
    .param p3, "b"    # [B
    .param p4, "offset"    # I

    .line 90
    aput-byte p0, p3, p4

    .line 91
    add-int/lit8 v0, p4, 0x1

    aput-byte p1, p3, v0

    .line 92
    add-int/lit8 v0, p4, 0x2

    int-to-byte v1, p2

    aput-byte v1, p3, v0

    .line 93
    add-int/lit8 v0, p4, 0x3

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 94
    add-int/lit8 v0, p4, 0x4

    const/4 v1, 0x0

    aput-byte v1, p3, v0

    .line 95
    add-int/lit8 v0, p4, 0x5

    aput-byte v1, p3, v0

    .line 96
    add-int/lit8 v0, p4, 0x6

    aput-byte v1, p3, v0

    .line 97
    add-int/lit8 v0, p4, 0x7

    const/16 v1, 0xf

    aput-byte v1, p3, v0

    .line 98
    return-void
.end method

.method public static final writeSecurityBuffer(SSI[BI)V
    .locals 1
    .param p0, "length"    # S
    .param p1, "allocated"    # S
    .param p2, "bufferOffset"    # I
    .param p3, "b"    # [B
    .param p4, "offset"    # I

    .line 72
    invoke-static {p0, p3, p4}, Lorg/apache/mina/proxy/utils/ByteUtilities;->writeShort(S[BI)[B

    .line 73
    add-int/lit8 v0, p4, 0x2

    invoke-static {p1, p3, v0}, Lorg/apache/mina/proxy/utils/ByteUtilities;->writeShort(S[BI)[B

    .line 74
    add-int/lit8 v0, p4, 0x4

    invoke-static {p2, p3, v0}, Lorg/apache/mina/proxy/utils/ByteUtilities;->writeInt(I[BI)[B

    .line 75
    return-void
.end method

.method public static final writeSecurityBuffer(SI)[B
    .locals 2
    .param p0, "length"    # S
    .param p1, "bufferOffset"    # I

    .line 50
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 51
    .local v0, "b":[B
    const/4 v1, 0x0

    invoke-static {p0, p0, p1, v0, v1}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->writeSecurityBuffer(SSI[BI)V

    .line 53
    return-object v0
.end method

.method public static final writeSecurityBufferAndUpdatePointer(Ljava/io/ByteArrayOutputStream;SI)I
    .locals 1
    .param p0, "baos"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "len"    # S
    .param p2, "pointer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    invoke-static {p1, p2}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->writeSecurityBuffer(SI)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 242
    add-int v0, p2, p1

    return v0
.end method
