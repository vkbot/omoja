.class Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecodeUtil"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static handleFourBytes(BBBB[CI)V
    .registers 8

    .line 1
    invoke-static {p1}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_41

    .line 6
    .line 7
    shl-int/lit8 v0, p0, 0x1c

    .line 8
    .line 9
    add-int/lit8 v1, p1, 0x70

    .line 10
    .line 11
    add-int/2addr v1, v0

    .line 12
    shr-int/lit8 v0, v1, 0x1e

    .line 13
    .line 14
    if-nez v0, :cond_41

    .line 15
    .line 16
    invoke-static {p2}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_41

    .line 21
    .line 22
    invoke-static {p3}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_41

    .line 27
    .line 28
    and-int/lit8 p0, p0, 0x7

    .line 29
    .line 30
    shl-int/lit8 p0, p0, 0x12

    .line 31
    .line 32
    invoke-static {p1}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->trailingByteValue(B)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    shl-int/lit8 p1, p1, 0xc

    .line 37
    .line 38
    or-int/2addr p0, p1

    .line 39
    invoke-static {p2}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->trailingByteValue(B)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    shl-int/lit8 p1, p1, 0x6

    .line 44
    .line 45
    or-int/2addr p0, p1

    .line 46
    invoke-static {p3}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->trailingByteValue(B)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    or-int/2addr p0, p1

    .line 51
    invoke-static {p0}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->highSurrogate(I)C

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    aput-char p1, p4, p5

    .line 56
    .line 57
    add-int/lit8 p5, p5, 0x1

    .line 58
    .line 59
    invoke-static {p0}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->lowSurrogate(I)C

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    aput-char p0, p4, p5

    .line 64
    .line 65
    return-void

    .line 66
    :cond_41
    const-string p0, "Invalid UTF-8"

    .line 67
    .line 68
    invoke-static {p0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public static handleOneByte(B[CI)V
    .registers 3

    .line 1
    int-to-char p0, p0

    .line 2
    aput-char p0, p1, p2

    .line 3
    .line 4
    return-void
.end method

.method public static handleThreeBytes(BBB[CI)V
    .registers 7

    .line 1
    invoke-static {p1}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2e

    .line 6
    .line 7
    const/16 v0, -0x20

    .line 8
    .line 9
    const/16 v1, -0x60

    .line 10
    .line 11
    if-ne p0, v0, :cond_e

    .line 12
    .line 13
    if-lt p1, v1, :cond_2e

    .line 14
    .line 15
    :cond_e
    const/16 v0, -0x13

    .line 16
    .line 17
    if-ne p0, v0, :cond_14

    .line 18
    .line 19
    if-ge p1, v1, :cond_2e

    .line 20
    .line 21
    :cond_14
    invoke-static {p2}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2e

    .line 26
    .line 27
    and-int/lit8 p0, p0, 0xf

    .line 28
    .line 29
    shl-int/lit8 p0, p0, 0xc

    .line 30
    .line 31
    invoke-static {p1}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->trailingByteValue(B)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    shl-int/lit8 p1, p1, 0x6

    .line 36
    .line 37
    or-int/2addr p0, p1

    .line 38
    invoke-static {p2}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->trailingByteValue(B)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    or-int/2addr p0, p1

    .line 43
    int-to-char p0, p0

    .line 44
    aput-char p0, p3, p4

    .line 45
    .line 46
    return-void

    .line 47
    :cond_2e
    const-string p0, "Invalid UTF-8"

    .line 48
    .line 49
    invoke-static {p0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public static handleTwoBytes(BB[CI)V
    .registers 5

    .line 1
    const/16 v0, -0x3e

    .line 2
    .line 3
    if-lt p0, v0, :cond_1d

    .line 4
    .line 5
    invoke-static {p1}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_17

    .line 10
    .line 11
    and-int/lit8 p0, p0, 0x1f

    .line 12
    .line 13
    shl-int/lit8 p0, p0, 0x6

    .line 14
    .line 15
    invoke-static {p1}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->trailingByteValue(B)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    or-int/2addr p0, p1

    .line 20
    int-to-char p0, p0

    .line 21
    aput-char p0, p2, p3

    .line 22
    .line 23
    return-void

    .line 24
    :cond_17
    const-string p0, "Invalid UTF-8: Illegal trailing byte in 2 bytes utf"

    .line 25
    .line 26
    invoke-static {p0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1d
    const-string p0, "Invalid UTF-8: Illegal leading byte in 2 bytes utf"

    .line 31
    .line 32
    invoke-static {p0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private static highSurrogate(I)C
    .registers 2

    .line 1
    ushr-int/lit8 p0, p0, 0xa

    .line 2
    .line 3
    const v0, 0xd7c0

    .line 4
    .line 5
    .line 6
    add-int/2addr p0, v0

    .line 7
    int-to-char p0, p0

    .line 8
    return p0
.end method

.method private static isNotTrailingByte(B)Z
    .registers 2

    .line 1
    const/16 v0, -0x41

    .line 2
    .line 3
    if-le p0, v0, :cond_6

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_6
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public static isOneByte(B)Z
    .registers 1

    .line 1
    if-ltz p0, :cond_4

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_4
    const/4 p0, 0x0

    .line 6
    return p0
.end method

.method public static isThreeBytes(B)Z
    .registers 2

    .line 1
    const/16 v0, -0x10

    .line 2
    .line 3
    if-ge p0, v0, :cond_6

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_6
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public static isTwoBytes(B)Z
    .registers 2

    .line 1
    const/16 v0, -0x20

    .line 2
    .line 3
    if-ge p0, v0, :cond_6

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_6
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method private static lowSurrogate(I)C
    .registers 2

    .line 1
    and-int/lit16 p0, p0, 0x3ff

    .line 2
    .line 3
    const v0, 0xdc00

    .line 4
    .line 5
    .line 6
    add-int/2addr p0, v0

    .line 7
    int-to-char p0, p0

    .line 8
    return p0
.end method

.method private static trailingByteValue(B)I
    .registers 1

    .line 1
    and-int/lit8 p0, p0, 0x3f

    .line 2
    .line 3
    return p0
.end method
