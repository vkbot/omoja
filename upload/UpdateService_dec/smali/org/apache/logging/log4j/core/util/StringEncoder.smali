.class public final Lorg/apache/logging/log4j/core/util/StringEncoder;
.super Ljava/lang/Object;
.source "StringEncoder.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static encodeIsoChars(Ljava/lang/CharSequence;I[BII)I
    .locals 4
    .param p0, "charArray"    # Ljava/lang/CharSequence;
    .param p1, "charIndex"    # I
    .param p2, "byteArray"    # [B
    .param p3, "byteIndex"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10,
            0x0,
            0x10
        }
        names = {
            "charArray",
            "charIndex",
            "byteArray",
            "byteIndex",
            "length"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_1

    .line 75
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "charIndex":I
    .local v1, "charIndex":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 76
    .local p1, "c":C
    const/16 v2, 0xff

    if-le p1, v2, :cond_0

    .line 77
    move p1, v1

    goto :goto_1

    .line 79
    :cond_0
    add-int/lit8 v2, p3, 0x1

    .end local p3    # "byteIndex":I
    .local v2, "byteIndex":I
    int-to-byte v3, p1

    aput-byte v3, p2, p3

    .line 74
    .end local p1    # "c":C
    add-int/lit8 v0, v0, 0x1

    move p1, v1

    move p3, v2

    goto :goto_0

    .line 81
    .end local v1    # "charIndex":I
    .end local v2    # "byteIndex":I
    .local p1, "charIndex":I
    .restart local p3    # "byteIndex":I
    :cond_1
    :goto_1
    return v0
.end method

.method public static encodeSingleByteChars(Ljava/lang/CharSequence;)[B
    .locals 3
    .param p0, "s"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "s"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 57
    .local v0, "length":I
    new-array v1, v0, [B

    .line 58
    .local v1, "result":[B
    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lorg/apache/logging/log4j/core/util/StringEncoder;->encodeString(Ljava/lang/CharSequence;II[B)I

    .line 59
    return-object v1
.end method

.method public static encodeString(Ljava/lang/CharSequence;II[B)I
    .locals 7
    .param p0, "charArray"    # Ljava/lang/CharSequence;
    .param p1, "charOffset"    # I
    .param p2, "charLength"    # I
    .param p3, "byteArray"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x10
        }
        names = {
            "charArray",
            "charOffset",
            "charLength",
            "byteArray"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "byteOffset":I
    array-length v1, p3

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 94
    .local v1, "length":I
    add-int v2, p1, v1

    .line 95
    .local v2, "charDoneIndex":I
    :goto_0
    if-ge p1, v2, :cond_3

    .line 96
    invoke-static {p0, p1, p3, v0, v1}, Lorg/apache/logging/log4j/core/util/StringEncoder;->encodeIsoChars(Ljava/lang/CharSequence;I[BII)I

    move-result v3

    .line 97
    .local v3, "done":I
    add-int/2addr p1, v3

    .line 98
    add-int/2addr v0, v3

    .line 99
    if-eq v3, v1, :cond_2

    .line 100
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "charOffset":I
    .local v4, "charOffset":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 101
    .local p1, "c":C
    invoke-static {p1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_1

    if-ge v4, v2, :cond_1

    .line 102
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 103
    array-length v5, p3

    if-le p2, v5, :cond_0

    .line 104
    add-int/lit8 v2, v2, 0x1

    .line 105
    add-int/lit8 p2, p2, -0x1

    .line 107
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 109
    :cond_1
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "byteOffset":I
    .local v5, "byteOffset":I
    const/16 v6, 0x3f

    aput-byte v6, p3, v0

    .line 110
    sub-int v0, v2, v4

    array-length v6, p3

    sub-int/2addr v6, v5

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v0

    move p1, v4

    move v0, v5

    .line 112
    .end local v3    # "done":I
    .end local v4    # "charOffset":I
    .end local v5    # "byteOffset":I
    .restart local v0    # "byteOffset":I
    .local p1, "charOffset":I
    :cond_2
    goto :goto_0

    .line 113
    :cond_3
    return v0
.end method

.method public static toBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "str",
            "charset"
        }
    .end annotation

    .line 39
    if-eqz p0, :cond_1

    .line 40
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0

    .line 42
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
