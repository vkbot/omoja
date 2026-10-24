.class public Lorg/apache/mina/proxy/utils/ByteUtilities;
.super Ljava/lang/Object;
.source "ByteUtilities.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static asByteArray(Ljava/lang/String;)[B
    .locals 4
    .param p0, "hex"    # Ljava/lang/String;

    .line 273
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 274
    .local v0, "bts":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 275
    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static asHex([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B

    .line 237
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/mina/proxy/utils/ByteUtilities;->asHex([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static asHex([BLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B
    .param p1, "separator"    # Ljava/lang/String;

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 251
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "code":Ljava/lang/String;
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    .line 253
    const/16 v3, 0x30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    if-eqz p1, :cond_1

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 259
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .end local v2    # "code":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 263
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final changeByteEndianess([BII)V
    .locals 3
    .param p0, "b"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 182
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 183
    aget-byte v1, p0, v0

    .line 184
    .local v1, "tmp":B
    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    aput-byte v2, p0, v0

    .line 185
    add-int/lit8 v2, v0, 0x1

    aput-byte v1, p0, v2

    .line 182
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 187
    .end local v0    # "i":I
    .end local v1    # "tmp":B
    :cond_0
    return-void
.end method

.method public static final changeWordEndianess([BII)V
    .locals 4
    .param p0, "b"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 159
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 160
    aget-byte v1, p0, v0

    .line 161
    .local v1, "tmp":B
    add-int/lit8 v2, v0, 0x3

    aget-byte v2, p0, v2

    aput-byte v2, p0, v0

    .line 162
    add-int/lit8 v2, v0, 0x3

    aput-byte v1, p0, v2

    .line 163
    add-int/lit8 v2, v0, 0x1

    aget-byte v1, p0, v2

    .line 164
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, p0, v3

    aput-byte v3, p0, v2

    .line 165
    add-int/lit8 v2, v0, 0x2

    aput-byte v1, p0, v2

    .line 159
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 167
    .end local v0    # "i":I
    .end local v1    # "tmp":B
    :cond_0
    return-void
.end method

.method public static final encodeString(Ljava/lang/String;Z)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "useUnicode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 223
    if-eqz p1, :cond_0

    .line 224
    invoke-static {p0}, Lorg/apache/mina/proxy/utils/ByteUtilities;->getUTFStringAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 227
    :cond_0
    invoke-static {p0}, Lorg/apache/mina/proxy/utils/ByteUtilities;->getOEMStringAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static final getOEMStringAsByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 198
    const-string v0, "ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static final getUTFStringAsByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 209
    const-string v0, "UTF-16LE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static intToNetworkByteOrder(I[BII)V
    .locals 3
    .param p0, "num"    # I
    .param p1, "buf"    # [B
    .param p2, "start"    # I
    .param p3, "count"    # I

    .line 82
    const/4 v0, 0x4

    if-gt p3, v0, :cond_1

    .line 86
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 87
    add-int v1, p2, v0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 88
    ushr-int/lit8 p0, p0, 0x8

    .line 86
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 90
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 83
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot handle more than 4 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static intToNetworkByteOrder(II)[B
    .locals 2
    .param p0, "num"    # I
    .param p1, "count"    # I

    .line 65
    new-array v0, p1, [B

    .line 66
    .local v0, "buf":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/mina/proxy/utils/ByteUtilities;->intToNetworkByteOrder(I[BII)V

    .line 68
    return-object v0
.end method

.method public static final isFlagSet(II)Z
    .locals 1
    .param p0, "flagSet"    # I
    .param p1, "testFlag"    # I

    .line 332
    and-int v0, p0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final makeIntFromByte2([B)I
    .locals 1
    .param p0, "b"    # [B

    .line 309
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/mina/proxy/utils/ByteUtilities;->makeIntFromByte2([BI)I

    move-result v0

    return v0
.end method

.method public static final makeIntFromByte2([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "offset"    # I

    .line 320
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static final makeIntFromByte4([B)I
    .locals 1
    .param p0, "b"    # [B

    .line 288
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/mina/proxy/utils/ByteUtilities;->makeIntFromByte4([BI)I

    move-result v0

    return v0
.end method

.method public static final makeIntFromByte4([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "offset"    # I

    .line 299
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static networkByteOrderToInt([BII)I
    .locals 3
    .param p0, "buf"    # [B
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 43
    const/4 v0, 0x4

    if-gt p2, v0, :cond_1

    .line 47
    const/4 v0, 0x0

    .line 49
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 50
    shl-int/lit8 v0, v0, 0x8

    .line 51
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    .end local v1    # "i":I
    :cond_0
    return v0

    .line 44
    .end local v0    # "result":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot handle more than 4 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final writeInt(I)[B
    .locals 2
    .param p0, "v"    # I

    .line 125
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/mina/proxy/utils/ByteUtilities;->writeInt(I[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static final writeInt(I[BI)[B
    .locals 2
    .param p0, "v"    # I
    .param p1, "b"    # [B
    .param p2, "offset"    # I

    .line 138
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 139
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 140
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 141
    add-int/lit8 v0, p2, 0x3

    shr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 143
    return-object p1
.end method

.method public static final writeShort(S)[B
    .locals 2
    .param p0, "v"    # S

    .line 99
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/mina/proxy/utils/ByteUtilities;->writeShort(S[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static final writeShort(S[BI)[B
    .locals 2
    .param p0, "v"    # S
    .param p1, "b"    # [B
    .param p2, "offset"    # I

    .line 112
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 113
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 115
    return-object p1
.end method
