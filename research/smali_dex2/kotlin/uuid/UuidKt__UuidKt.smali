.class Lkotlin/uuid/UuidKt__UuidKt;
.super Lkotlin/uuid/UuidKt__UuidJVMKt;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0001\u001a\u0014\u0010\u0004\u001a\u00020\u0005*\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\u001a,\u0010\u0008\u001a\u00020\t*\u00020\u00052\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007H\u0001\u001a\u0014\u0010\u000e\u001a\u00020\t*\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\u001a\u001c\u0010\u0010\u001a\u00020\t*\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0005H\u0000\u001a\u0010\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u000fH\u0001\u001a\u0010\u0010\u0014\u001a\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u000fH\u0001\u001a\u0019\u0010\u0016\u001a\u00020\u000f*\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u0007H\u0002\u00a2\u0006\u0002\u0008\u0018\u001a\u0019\u0010\u0016\u001a\u00020\u000f*\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0007H\u0002\u00a2\u0006\u0002\u0008\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "uuidFromRandomBytes",
        "Lkotlin/uuid/Uuid;",
        "randomBytes",
        "",
        "getLongAtCommonImpl",
        "",
        "index",
        "",
        "formatBytesIntoCommonImpl",
        "",
        "dst",
        "dstOffset",
        "startIndex",
        "endIndex",
        "checkHyphenAt",
        "",
        "setLongAtCommonImpl",
        "value",
        "uuidParseHexDashCommonImpl",
        "hexDashString",
        "uuidParseHexCommonImpl",
        "hexString",
        "truncateForErrorMessage",
        "maxLength",
        "truncateForErrorMessage$UuidKt__UuidKt",
        "maxSize",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x31
    xs = "kotlin/uuid/UuidKt"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nUuid.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Uuid.kt\nkotlin/uuid/UuidKt__UuidKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,648:1\n1#2:649\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lkotlin/uuid/UuidKt__UuidJVMKt;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$truncateForErrorMessage(Ljava/lang/String;I)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lkotlin/uuid/UuidKt__UuidKt;->truncateForErrorMessage$UuidKt__UuidKt(Ljava/lang/String;I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$truncateForErrorMessage([BI)Ljava/lang/String;
    .registers 2

    .line 6
    invoke-static {p0, p1}, Lkotlin/uuid/UuidKt__UuidKt;->truncateForErrorMessage$UuidKt__UuidKt([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final checkHyphenAt(Ljava/lang/String;I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x2d

    .line 9
    .line 10
    if-ne v0, v1, :cond_c

    .line 11
    .line 12
    return-void

    .line 13
    :cond_c
    const-string v0, "Expected \'-\' (hyphen) at index "

    .line 14
    .line 15
    const-string v1, ", but was \'"

    .line 16
    .line 17
    invoke-static {p1, v0, v1}, Lai/onnxruntime/a;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const/16 p0, 0x27

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method

.method public static final formatBytesIntoCommonImpl(J[BIII)V
    .registers 10
    .annotation build Lkotlin/uuid/ExperimentalUuidApi;
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    rsub-int/lit8 p4, p4, 0x7

    .line 5
    .line 6
    rsub-int/lit8 p5, p5, 0x8

    .line 7
    .line 8
    if-gt p5, p4, :cond_28

    .line 9
    .line 10
    :goto_9
    shl-int/lit8 v0, p4, 0x3

    .line 11
    .line 12
    shr-long v0, p0, v0

    .line 13
    .line 14
    const-wide/16 v2, 0xff

    .line 15
    .line 16
    and-long/2addr v0, v2

    .line 17
    long-to-int v0, v0

    .line 18
    invoke-static {}, Lkotlin/text/HexExtensionsKt;->getBYTE_TO_LOWER_CASE_HEX_DIGITS()[I

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    aget v0, v1, v0

    .line 23
    .line 24
    add-int/lit8 v1, p3, 0x1

    .line 25
    .line 26
    shr-int/lit8 v2, v0, 0x8

    .line 27
    .line 28
    int-to-byte v2, v2

    .line 29
    aput-byte v2, p2, p3

    .line 30
    .line 31
    add-int/lit8 p3, p3, 0x2

    .line 32
    .line 33
    int-to-byte v0, v0

    .line 34
    aput-byte v0, p2, v1

    .line 35
    .line 36
    if-eq p4, p5, :cond_28

    .line 37
    .line 38
    add-int/lit8 p4, p4, -0x1

    .line 39
    .line 40
    goto :goto_9

    .line 41
    :cond_28
    return-void
.end method

.method public static final getLongAtCommonImpl([BI)J
    .registers 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    aget-byte v0, p0, p1

    .line 5
    .line 6
    int-to-long v0, v0

    .line 7
    const-wide/16 v2, 0xff

    .line 8
    .line 9
    and-long/2addr v0, v2

    .line 10
    const/16 v4, 0x38

    .line 11
    .line 12
    shl-long/2addr v0, v4

    .line 13
    add-int/lit8 v4, p1, 0x1

    .line 14
    .line 15
    aget-byte v4, p0, v4

    .line 16
    .line 17
    int-to-long v4, v4

    .line 18
    and-long/2addr v4, v2

    .line 19
    const/16 v6, 0x30

    .line 20
    .line 21
    shl-long/2addr v4, v6

    .line 22
    or-long/2addr v0, v4

    .line 23
    add-int/lit8 v4, p1, 0x2

    .line 24
    .line 25
    aget-byte v4, p0, v4

    .line 26
    .line 27
    int-to-long v4, v4

    .line 28
    and-long/2addr v4, v2

    .line 29
    const/16 v6, 0x28

    .line 30
    .line 31
    shl-long/2addr v4, v6

    .line 32
    or-long/2addr v0, v4

    .line 33
    add-int/lit8 v4, p1, 0x3

    .line 34
    .line 35
    aget-byte v4, p0, v4

    .line 36
    .line 37
    int-to-long v4, v4

    .line 38
    and-long/2addr v4, v2

    .line 39
    const/16 v6, 0x20

    .line 40
    .line 41
    shl-long/2addr v4, v6

    .line 42
    or-long/2addr v0, v4

    .line 43
    add-int/lit8 v4, p1, 0x4

    .line 44
    .line 45
    aget-byte v4, p0, v4

    .line 46
    .line 47
    int-to-long v4, v4

    .line 48
    and-long/2addr v4, v2

    .line 49
    const/16 v6, 0x18

    .line 50
    .line 51
    shl-long/2addr v4, v6

    .line 52
    or-long/2addr v0, v4

    .line 53
    add-int/lit8 v4, p1, 0x5

    .line 54
    .line 55
    aget-byte v4, p0, v4

    .line 56
    .line 57
    int-to-long v4, v4

    .line 58
    and-long/2addr v4, v2

    .line 59
    const/16 v6, 0x10

    .line 60
    .line 61
    shl-long/2addr v4, v6

    .line 62
    or-long/2addr v0, v4

    .line 63
    add-int/lit8 v4, p1, 0x6

    .line 64
    .line 65
    aget-byte v4, p0, v4

    .line 66
    .line 67
    int-to-long v4, v4

    .line 68
    and-long/2addr v4, v2

    .line 69
    const/16 v6, 0x8

    .line 70
    .line 71
    shl-long/2addr v4, v6

    .line 72
    or-long/2addr v0, v4

    .line 73
    add-int/lit8 p1, p1, 0x7

    .line 74
    .line 75
    aget-byte p0, p0, p1

    .line 76
    .line 77
    int-to-long p0, p0

    .line 78
    and-long/2addr p0, v2

    .line 79
    or-long/2addr p0, v0

    .line 80
    return-wide p0
.end method

.method public static final setLongAtCommonImpl([BIJ)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x7

    .line 5
    :goto_4
    const/4 v1, -0x1

    .line 6
    if-ge v1, v0, :cond_15

    .line 7
    .line 8
    shl-int/lit8 v1, v0, 0x3

    .line 9
    .line 10
    add-int/lit8 v2, p1, 0x1

    .line 11
    .line 12
    shr-long v3, p2, v1

    .line 13
    .line 14
    long-to-int v1, v3

    .line 15
    int-to-byte v1, v1

    .line 16
    aput-byte v1, p0, p1

    .line 17
    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 19
    .line 20
    move p1, v2

    .line 21
    goto :goto_4

    .line 22
    :cond_15
    return-void
.end method

.method private static final truncateForErrorMessage$UuidKt__UuidKt(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gt v0, p1, :cond_7

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string p1, "..."

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method private static final truncateForErrorMessage$UuidKt__UuidKt([BI)Ljava/lang/String;
    .registers 2

    .line 20
    invoke-static {p1, p0}, Lkotlin/collections/ArraysKt;->y(I[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final uuidFromRandomBytes([B)Lkotlin/uuid/Uuid;
    .registers 3
    .annotation build Lkotlin/uuid/ExperimentalUuidApi;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x6

    .line 5
    aget-byte v1, p0, v0

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0xf

    .line 8
    .line 9
    int-to-byte v1, v1

    .line 10
    aput-byte v1, p0, v0

    .line 11
    .line 12
    or-int/lit8 v1, v1, 0x40

    .line 13
    .line 14
    int-to-byte v1, v1

    .line 15
    aput-byte v1, p0, v0

    .line 16
    .line 17
    const/16 v0, 0x8

    .line 18
    .line 19
    aget-byte v1, p0, v0

    .line 20
    .line 21
    and-int/lit8 v1, v1, 0x3f

    .line 22
    .line 23
    int-to-byte v1, v1

    .line 24
    aput-byte v1, p0, v0

    .line 25
    .line 26
    or-int/lit16 v1, v1, 0x80

    .line 27
    .line 28
    int-to-byte v1, v1

    .line 29
    aput-byte v1, p0, v0

    .line 30
    .line 31
    sget-object v0, Lkotlin/uuid/Uuid;->Companion:Lkotlin/uuid/Uuid$Companion;

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Lkotlin/uuid/Uuid$Companion;->fromByteArray([B)Lkotlin/uuid/Uuid;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public static final uuidParseHexCommonImpl(Ljava/lang/String;)Lkotlin/uuid/Uuid;
    .registers 10
    .annotation build Lkotlin/uuid/ExperimentalUuidApi;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v4, 0x4

    .line 5
    const/4 v5, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    const/16 v2, 0x10

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    move-object v0, p0

    .line 11
    invoke-static/range {v0 .. v5}, Lkotlin/text/HexExtensionsKt;->hexToLong$default(Ljava/lang/String;IILkotlin/text/HexFormat;ILjava/lang/Object;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    const/4 v7, 0x4

    .line 16
    const/4 v8, 0x0

    .line 17
    const/16 v4, 0x10

    .line 18
    .line 19
    const/16 v5, 0x20

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    move-object v3, v0

    .line 23
    invoke-static/range {v3 .. v8}, Lkotlin/text/HexExtensionsKt;->hexToLong$default(Ljava/lang/String;IILkotlin/text/HexFormat;ILjava/lang/Object;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    sget-object p0, Lkotlin/uuid/Uuid;->Companion:Lkotlin/uuid/Uuid$Companion;

    .line 28
    .line 29
    invoke-virtual {p0, v1, v2, v3, v4}, Lkotlin/uuid/Uuid$Companion;->fromLongs(JJ)Lkotlin/uuid/Uuid;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public static final uuidParseHexDashCommonImpl(Ljava/lang/String;)Lkotlin/uuid/Uuid;
    .registers 16
    .annotation build Lkotlin/uuid/ExperimentalUuidApi;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v4, 0x4

    .line 5
    const/4 v5, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    move-object v0, p0

    .line 11
    invoke-static/range {v0 .. v5}, Lkotlin/text/HexExtensionsKt;->hexToLong$default(Ljava/lang/String;IILkotlin/text/HexFormat;ILjava/lang/Object;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    move-object v3, v0

    .line 16
    const/16 p0, 0x8

    .line 17
    .line 18
    invoke-static {v3, p0}, Lkotlin/uuid/UuidKt__UuidKt;->checkHyphenAt(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    const/4 v7, 0x4

    .line 22
    const/4 v8, 0x0

    .line 23
    const/16 v4, 0x9

    .line 24
    .line 25
    const/16 v5, 0xd

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    invoke-static/range {v3 .. v8}, Lkotlin/text/HexExtensionsKt;->hexToLong$default(Ljava/lang/String;IILkotlin/text/HexFormat;ILjava/lang/Object;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v9

    .line 32
    const/16 p0, 0xd

    .line 33
    .line 34
    invoke-static {v3, p0}, Lkotlin/uuid/UuidKt__UuidKt;->checkHyphenAt(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    const/16 v4, 0xe

    .line 38
    .line 39
    const/16 v5, 0x12

    .line 40
    .line 41
    invoke-static/range {v3 .. v8}, Lkotlin/text/HexExtensionsKt;->hexToLong$default(Ljava/lang/String;IILkotlin/text/HexFormat;ILjava/lang/Object;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v11

    .line 45
    const/16 p0, 0x12

    .line 46
    .line 47
    invoke-static {v3, p0}, Lkotlin/uuid/UuidKt__UuidKt;->checkHyphenAt(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    const/16 v4, 0x13

    .line 51
    .line 52
    const/16 v5, 0x17

    .line 53
    .line 54
    invoke-static/range {v3 .. v8}, Lkotlin/text/HexExtensionsKt;->hexToLong$default(Ljava/lang/String;IILkotlin/text/HexFormat;ILjava/lang/Object;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v13

    .line 58
    const/16 p0, 0x17

    .line 59
    .line 60
    invoke-static {v3, p0}, Lkotlin/uuid/UuidKt__UuidKt;->checkHyphenAt(Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    const/16 v4, 0x18

    .line 64
    .line 65
    const/16 v5, 0x24

    .line 66
    .line 67
    invoke-static/range {v3 .. v8}, Lkotlin/text/HexExtensionsKt;->hexToLong$default(Ljava/lang/String;IILkotlin/text/HexFormat;ILjava/lang/Object;)J

    .line 68
    .line 69
    .line 70
    move-result-wide v3

    .line 71
    const/16 p0, 0x20

    .line 72
    .line 73
    shl-long v0, v1, p0

    .line 74
    .line 75
    const/16 p0, 0x10

    .line 76
    .line 77
    shl-long v5, v9, p0

    .line 78
    .line 79
    or-long/2addr v0, v5

    .line 80
    or-long/2addr v0, v11

    .line 81
    const/16 p0, 0x30

    .line 82
    .line 83
    shl-long v5, v13, p0

    .line 84
    .line 85
    or-long v2, v5, v3

    .line 86
    .line 87
    sget-object p0, Lkotlin/uuid/Uuid;->Companion:Lkotlin/uuid/Uuid$Companion;

    .line 88
    .line 89
    invoke-virtual {p0, v0, v1, v2, v3}, Lkotlin/uuid/Uuid$Companion;->fromLongs(JJ)Lkotlin/uuid/Uuid;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0
.end method
