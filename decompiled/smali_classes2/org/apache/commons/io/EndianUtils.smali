.class public Lorg/apache/commons/io/EndianUtils;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static read(Ljava/io/InputStream;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, -0x1

    .line 6
    if-eq v0, p0, :cond_0

    .line 7
    .line 8
    return p0

    .line 9
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    .line 10
    .line 11
    const-string v0, "Unexpected EOF reached"

    .line 12
    .line 13
    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p0
.end method

.method public static readSwappedDouble(Ljava/io/InputStream;)D
    .locals 2

    .line 10
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->readSwappedLong(Ljava/io/InputStream;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static readSwappedDouble([BI)D
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/io/EndianUtils;->readSwappedLong([BI)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    return-wide p0
.end method

.method public static readSwappedFloat(Ljava/io/InputStream;)F
    .locals 0

    .line 10
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->readSwappedInteger(Ljava/io/InputStream;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static readSwappedFloat([BI)F
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/io/EndianUtils;->readSwappedInteger([BI)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static readSwappedInteger(Ljava/io/InputStream;)I
    .locals 3

    .line 37
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v0

    .line 38
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v1

    .line 39
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v2

    .line 40
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result p0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    add-int/2addr v0, p0

    return v0
.end method

.method public static readSwappedInteger([BI)I
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/EndianUtils;->validateByteArrayOffset([BII)V

    .line 3
    .line 4
    .line 5
    aget-byte v0, p0, p1

    .line 6
    .line 7
    and-int/lit16 v0, v0, 0xff

    .line 8
    .line 9
    add-int/lit8 v1, p1, 0x1

    .line 10
    .line 11
    aget-byte v1, p0, v1

    .line 12
    .line 13
    and-int/lit16 v1, v1, 0xff

    .line 14
    .line 15
    shl-int/lit8 v1, v1, 0x8

    .line 16
    .line 17
    add-int/2addr v0, v1

    .line 18
    add-int/lit8 v1, p1, 0x2

    .line 19
    .line 20
    aget-byte v1, p0, v1

    .line 21
    .line 22
    and-int/lit16 v1, v1, 0xff

    .line 23
    .line 24
    shl-int/lit8 v1, v1, 0x10

    .line 25
    .line 26
    add-int/2addr v0, v1

    .line 27
    add-int/lit8 p1, p1, 0x3

    .line 28
    .line 29
    aget-byte p0, p0, p1

    .line 30
    .line 31
    and-int/lit16 p0, p0, 0xff

    .line 32
    .line 33
    shl-int/lit8 p0, p0, 0x18

    .line 34
    .line 35
    add-int/2addr v0, p0

    .line 36
    return v0
.end method

.method public static readSwappedLong(Ljava/io/InputStream;)J
    .locals 5

    const/16 v0, 0x8

    .line 29
    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 30
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 31
    :cond_0
    invoke-static {v1, v2}, Lorg/apache/commons/io/EndianUtils;->readSwappedLong([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static readSwappedLong([BI)J
    .locals 4

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/EndianUtils;->validateByteArrayOffset([BII)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lorg/apache/commons/io/EndianUtils;->readSwappedInteger([BI)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    int-to-long v0, v0

    .line 11
    add-int/lit8 p1, p1, 0x4

    .line 12
    .line 13
    invoke-static {p0, p1}, Lorg/apache/commons/io/EndianUtils;->readSwappedInteger([BI)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    int-to-long p0, p0

    .line 18
    const/16 v2, 0x20

    .line 19
    .line 20
    shl-long/2addr p0, v2

    .line 21
    const-wide v2, 0xffffffffL

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    and-long/2addr v0, v2

    .line 27
    add-long/2addr p0, v0

    .line 28
    return-wide p0
.end method

.method public static readSwappedShort(Ljava/io/InputStream;)S
    .locals 1

    .line 20
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    add-int/2addr v0, p0

    int-to-short p0, v0

    return p0
.end method

.method public static readSwappedShort([BI)S
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/EndianUtils;->validateByteArrayOffset([BII)V

    .line 3
    .line 4
    .line 5
    aget-byte v0, p0, p1

    .line 6
    .line 7
    and-int/lit16 v0, v0, 0xff

    .line 8
    .line 9
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    aget-byte p0, p0, p1

    .line 12
    .line 13
    and-int/lit16 p0, p0, 0xff

    .line 14
    .line 15
    shl-int/lit8 p0, p0, 0x8

    .line 16
    .line 17
    add-int/2addr v0, p0

    .line 18
    int-to-short p0, v0

    .line 19
    return p0
.end method

.method public static readSwappedUnsignedInteger(Ljava/io/InputStream;)J
    .locals 6

    .line 46
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v0

    .line 47
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v1

    .line 48
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v2

    .line 49
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result p0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    int-to-long v0, v0

    and-int/lit16 p0, p0, 0xff

    int-to-long v2, p0

    const/16 p0, 0x18

    shl-long/2addr v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public static readSwappedUnsignedInteger([BI)J
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/EndianUtils;->validateByteArrayOffset([BII)V

    .line 3
    .line 4
    .line 5
    aget-byte v0, p0, p1

    .line 6
    .line 7
    and-int/lit16 v0, v0, 0xff

    .line 8
    .line 9
    add-int/lit8 v1, p1, 0x1

    .line 10
    .line 11
    aget-byte v1, p0, v1

    .line 12
    .line 13
    and-int/lit16 v1, v1, 0xff

    .line 14
    .line 15
    shl-int/lit8 v1, v1, 0x8

    .line 16
    .line 17
    add-int/2addr v0, v1

    .line 18
    add-int/lit8 v1, p1, 0x2

    .line 19
    .line 20
    aget-byte v1, p0, v1

    .line 21
    .line 22
    and-int/lit16 v1, v1, 0xff

    .line 23
    .line 24
    shl-int/lit8 v1, v1, 0x10

    .line 25
    .line 26
    add-int/2addr v0, v1

    .line 27
    int-to-long v0, v0

    .line 28
    add-int/lit8 p1, p1, 0x3

    .line 29
    .line 30
    aget-byte p0, p0, p1

    .line 31
    .line 32
    and-int/lit16 p0, p0, 0xff

    .line 33
    .line 34
    int-to-long p0, p0

    .line 35
    const/16 v2, 0x18

    .line 36
    .line 37
    shl-long/2addr p0, v2

    .line 38
    const-wide v2, 0xffffffffL

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    and-long/2addr v0, v2

    .line 44
    add-long/2addr p0, v0

    .line 45
    return-wide p0
.end method

.method public static readSwappedUnsignedShort(Ljava/io/InputStream;)I
    .locals 1

    .line 19
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v0

    .line 20
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result p0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    add-int/2addr v0, p0

    return v0
.end method

.method public static readSwappedUnsignedShort([BI)I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/EndianUtils;->validateByteArrayOffset([BII)V

    .line 3
    .line 4
    .line 5
    aget-byte v0, p0, p1

    .line 6
    .line 7
    and-int/lit16 v0, v0, 0xff

    .line 8
    .line 9
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    aget-byte p0, p0, p1

    .line 12
    .line 13
    and-int/lit16 p0, p0, 0xff

    .line 14
    .line 15
    shl-int/lit8 p0, p0, 0x8

    .line 16
    .line 17
    add-int/2addr v0, p0

    .line 18
    return v0
.end method

.method public static swapDouble(D)D
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    invoke-static {p0, p1}, Lorg/apache/commons/io/EndianUtils;->swapLong(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    return-wide p0
.end method

.method public static swapFloat(F)F
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->swapInteger(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static swapInteger(I)I
    .locals 2

    .line 1
    and-int/lit16 v0, p0, 0xff

    .line 2
    .line 3
    shl-int/lit8 v0, v0, 0x18

    .line 4
    .line 5
    shr-int/lit8 v1, p0, 0x8

    .line 6
    .line 7
    and-int/lit16 v1, v1, 0xff

    .line 8
    .line 9
    shl-int/lit8 v1, v1, 0x10

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    shr-int/lit8 v1, p0, 0x10

    .line 13
    .line 14
    and-int/lit16 v1, v1, 0xff

    .line 15
    .line 16
    shl-int/lit8 v1, v1, 0x8

    .line 17
    .line 18
    add-int/2addr v0, v1

    .line 19
    shr-int/lit8 p0, p0, 0x18

    .line 20
    .line 21
    and-int/lit16 p0, p0, 0xff

    .line 22
    .line 23
    add-int/2addr v0, p0

    .line 24
    return v0
.end method

.method public static swapLong(J)J
    .locals 13

    .line 1
    const-wide/16 v0, 0xff

    .line 2
    .line 3
    and-long v2, p0, v0

    .line 4
    .line 5
    const/16 v4, 0x38

    .line 6
    .line 7
    shl-long/2addr v2, v4

    .line 8
    const/16 v5, 0x8

    .line 9
    .line 10
    shr-long v6, p0, v5

    .line 11
    .line 12
    and-long/2addr v6, v0

    .line 13
    const/16 v8, 0x30

    .line 14
    .line 15
    shl-long/2addr v6, v8

    .line 16
    add-long/2addr v2, v6

    .line 17
    const/16 v6, 0x10

    .line 18
    .line 19
    shr-long v9, p0, v6

    .line 20
    .line 21
    and-long/2addr v9, v0

    .line 22
    const/16 v7, 0x28

    .line 23
    .line 24
    shl-long/2addr v9, v7

    .line 25
    add-long/2addr v2, v9

    .line 26
    const/16 v9, 0x18

    .line 27
    .line 28
    shr-long v10, p0, v9

    .line 29
    .line 30
    and-long/2addr v10, v0

    .line 31
    const/16 v12, 0x20

    .line 32
    .line 33
    shl-long/2addr v10, v12

    .line 34
    add-long/2addr v2, v10

    .line 35
    shr-long v10, p0, v12

    .line 36
    .line 37
    and-long/2addr v10, v0

    .line 38
    shl-long v9, v10, v9

    .line 39
    .line 40
    add-long/2addr v2, v9

    .line 41
    shr-long v9, p0, v7

    .line 42
    .line 43
    and-long/2addr v9, v0

    .line 44
    shl-long v6, v9, v6

    .line 45
    .line 46
    add-long/2addr v2, v6

    .line 47
    shr-long v6, p0, v8

    .line 48
    .line 49
    and-long/2addr v6, v0

    .line 50
    shl-long v5, v6, v5

    .line 51
    .line 52
    add-long/2addr v2, v5

    .line 53
    shr-long/2addr p0, v4

    .line 54
    and-long/2addr p0, v0

    .line 55
    add-long/2addr v2, p0

    .line 56
    return-wide v2
.end method

.method public static swapShort(S)S
    .locals 1

    .line 1
    and-int/lit16 v0, p0, 0xff

    .line 2
    .line 3
    shl-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    shr-int/lit8 p0, p0, 0x8

    .line 6
    .line 7
    and-int/lit16 p0, p0, 0xff

    .line 8
    .line 9
    add-int/2addr v0, p0

    .line 10
    int-to-short p0, v0

    .line 11
    return p0
.end method

.method private static validateByteArrayOffset([BII)V
    .locals 2

    .line 1
    array-length v0, p0

    .line 2
    add-int/2addr p1, p2

    .line 3
    if-lt v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    array-length p0, p0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v1, "Data only has "

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p0, "bytes, needed "

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p0, "bytes."

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p2
.end method

.method public static writeSwappedDouble(Ljava/io/OutputStream;D)V
    .locals 0

    .line 9
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/EndianUtils;->writeSwappedLong(Ljava/io/OutputStream;J)V

    return-void
.end method

.method public static writeSwappedDouble([BID)V
    .locals 0

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 2
    .line 3
    .line 4
    move-result-wide p2

    .line 5
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/io/EndianUtils;->writeSwappedLong([BIJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static writeSwappedFloat(Ljava/io/OutputStream;F)V
    .locals 0

    .line 9
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-static {p0, p1}, Lorg/apache/commons/io/EndianUtils;->writeSwappedInteger(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public static writeSwappedFloat([BIF)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/EndianUtils;->writeSwappedInteger([BII)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static writeSwappedInteger(Ljava/io/OutputStream;I)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    .line 38
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 39
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 40
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 41
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeSwappedInteger([BII)V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/EndianUtils;->validateByteArrayOffset([BII)V

    .line 3
    .line 4
    .line 5
    and-int/lit16 v0, p2, 0xff

    .line 6
    .line 7
    int-to-byte v0, v0

    .line 8
    aput-byte v0, p0, p1

    .line 9
    .line 10
    add-int/lit8 v0, p1, 0x1

    .line 11
    .line 12
    shr-int/lit8 v1, p2, 0x8

    .line 13
    .line 14
    and-int/lit16 v1, v1, 0xff

    .line 15
    .line 16
    int-to-byte v1, v1

    .line 17
    aput-byte v1, p0, v0

    .line 18
    .line 19
    add-int/lit8 v0, p1, 0x2

    .line 20
    .line 21
    shr-int/lit8 v1, p2, 0x10

    .line 22
    .line 23
    and-int/lit16 v1, v1, 0xff

    .line 24
    .line 25
    int-to-byte v1, v1

    .line 26
    aput-byte v1, p0, v0

    .line 27
    .line 28
    add-int/lit8 p1, p1, 0x3

    .line 29
    .line 30
    shr-int/lit8 p2, p2, 0x18

    .line 31
    .line 32
    and-int/lit16 p2, p2, 0xff

    .line 33
    .line 34
    int-to-byte p2, p2

    .line 35
    aput-byte p2, p0, p1

    .line 36
    .line 37
    return-void
.end method

.method public static writeSwappedLong(Ljava/io/OutputStream;J)V
    .locals 4

    const-wide/16 v0, 0xff

    and-long v2, p1, v0

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 89
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    const/16 v2, 0x8

    shr-long v2, p1, v2

    and-long/2addr v2, v0

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 90
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    const/16 v2, 0x10

    shr-long v2, p1, v2

    and-long/2addr v2, v0

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 91
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    const/16 v2, 0x18

    shr-long v2, p1, v2

    and-long/2addr v2, v0

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 92
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    const/16 v2, 0x20

    shr-long v2, p1, v2

    and-long/2addr v2, v0

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 93
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    const/16 v2, 0x28

    shr-long v2, p1, v2

    and-long/2addr v2, v0

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 94
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    const/16 v2, 0x30

    shr-long v2, p1, v2

    and-long/2addr v2, v0

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 95
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    const/16 v2, 0x38

    shr-long/2addr p1, v2

    and-long/2addr p1, v0

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 96
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeSwappedLong([BIJ)V
    .locals 6

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/EndianUtils;->validateByteArrayOffset([BII)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0xff

    .line 7
    .line 8
    and-long v3, p2, v1

    .line 9
    .line 10
    long-to-int v3, v3

    .line 11
    int-to-byte v3, v3

    .line 12
    aput-byte v3, p0, p1

    .line 13
    .line 14
    add-int/lit8 v3, p1, 0x1

    .line 15
    .line 16
    shr-long v4, p2, v0

    .line 17
    .line 18
    and-long/2addr v4, v1

    .line 19
    long-to-int v0, v4

    .line 20
    int-to-byte v0, v0

    .line 21
    aput-byte v0, p0, v3

    .line 22
    .line 23
    add-int/lit8 v0, p1, 0x2

    .line 24
    .line 25
    const/16 v3, 0x10

    .line 26
    .line 27
    shr-long v3, p2, v3

    .line 28
    .line 29
    and-long/2addr v3, v1

    .line 30
    long-to-int v3, v3

    .line 31
    int-to-byte v3, v3

    .line 32
    aput-byte v3, p0, v0

    .line 33
    .line 34
    add-int/lit8 v0, p1, 0x3

    .line 35
    .line 36
    const/16 v3, 0x18

    .line 37
    .line 38
    shr-long v3, p2, v3

    .line 39
    .line 40
    and-long/2addr v3, v1

    .line 41
    long-to-int v3, v3

    .line 42
    int-to-byte v3, v3

    .line 43
    aput-byte v3, p0, v0

    .line 44
    .line 45
    add-int/lit8 v0, p1, 0x4

    .line 46
    .line 47
    const/16 v3, 0x20

    .line 48
    .line 49
    shr-long v3, p2, v3

    .line 50
    .line 51
    and-long/2addr v3, v1

    .line 52
    long-to-int v3, v3

    .line 53
    int-to-byte v3, v3

    .line 54
    aput-byte v3, p0, v0

    .line 55
    .line 56
    add-int/lit8 v0, p1, 0x5

    .line 57
    .line 58
    const/16 v3, 0x28

    .line 59
    .line 60
    shr-long v3, p2, v3

    .line 61
    .line 62
    and-long/2addr v3, v1

    .line 63
    long-to-int v3, v3

    .line 64
    int-to-byte v3, v3

    .line 65
    aput-byte v3, p0, v0

    .line 66
    .line 67
    add-int/lit8 v0, p1, 0x6

    .line 68
    .line 69
    const/16 v3, 0x30

    .line 70
    .line 71
    shr-long v3, p2, v3

    .line 72
    .line 73
    and-long/2addr v3, v1

    .line 74
    long-to-int v3, v3

    .line 75
    int-to-byte v3, v3

    .line 76
    aput-byte v3, p0, v0

    .line 77
    .line 78
    add-int/lit8 p1, p1, 0x7

    .line 79
    .line 80
    const/16 v0, 0x38

    .line 81
    .line 82
    shr-long/2addr p2, v0

    .line 83
    and-long/2addr p2, v1

    .line 84
    long-to-int p2, p2

    .line 85
    int-to-byte p2, p2

    .line 86
    aput-byte p2, p0, p1

    .line 87
    .line 88
    return-void
.end method

.method public static writeSwappedShort(Ljava/io/OutputStream;S)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    .line 20
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 21
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeSwappedShort([BIS)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/EndianUtils;->validateByteArrayOffset([BII)V

    .line 3
    .line 4
    .line 5
    and-int/lit16 v0, p2, 0xff

    .line 6
    .line 7
    int-to-byte v0, v0

    .line 8
    aput-byte v0, p0, p1

    .line 9
    .line 10
    add-int/lit8 p1, p1, 0x1

    .line 11
    .line 12
    shr-int/lit8 p2, p2, 0x8

    .line 13
    .line 14
    and-int/lit16 p2, p2, 0xff

    .line 15
    .line 16
    int-to-byte p2, p2

    .line 17
    aput-byte p2, p0, p1

    .line 18
    .line 19
    return-void
.end method
