.class public Lorg/apache/commons/net/util/Base64;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final CHUNK_SEPARATOR:[B

.field static final CHUNK_SIZE:I = 0x4c

.field private static final DECODE_TABLE:[B

.field private static final PAD:B = 0x3dt


# instance fields
.field private final lineLength:I

.field private final lineSeparator:[B

.field private final urlSafe:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/apache/commons/net/util/Base64;->CHUNK_SEPARATOR:[B

    .line 8
    .line 9
    const/16 v0, 0x7b

    .line 10
    .line 11
    new-array v0, v0, [B

    .line 12
    .line 13
    fill-array-data v0, :array_1

    .line 14
    .line 15
    .line 16
    sput-object v0, Lorg/apache/commons/net/util/Base64;->DECODE_TABLE:[B

    .line 17
    .line 18
    return-void

    .line 19
    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    nop

    .line 25
    :array_1
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        0x3et
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0}, Lorg/apache/commons/net/util/Base64;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 58
    sget-object v0, Lorg/apache/commons/net/util/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/util/Base64;-><init>(I[B)V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/util/Base64;-><init>(I[BZ)V

    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    if-eqz p3, :cond_1

    .line 8
    .line 9
    :cond_0
    sget-object p2, Lorg/apache/commons/net/util/NetConstants;->EMPTY_BTYE_ARRAY:[B

    .line 10
    .line 11
    move p1, v0

    .line 12
    :cond_1
    if-lez p1, :cond_2

    .line 13
    .line 14
    div-int/lit8 p1, p1, 0x4

    .line 15
    .line 16
    mul-int/lit8 p1, p1, 0x4

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_2
    move p1, v0

    .line 20
    :goto_0
    iput p1, p0, Lorg/apache/commons/net/util/Base64;->lineLength:I

    .line 21
    .line 22
    array-length p1, p2

    .line 23
    new-array p1, p1, [B

    .line 24
    .line 25
    iput-object p1, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    .line 26
    .line 27
    array-length v1, p2

    .line 28
    invoke-static {p2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    .line 30
    .line 31
    invoke-static {p2}, Lorg/apache/commons/net/util/Base64;->containsBase64Byte([B)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_3

    .line 36
    .line 37
    iput-boolean p3, p0, Lorg/apache/commons/net/util/Base64;->urlSafe:Z

    .line 38
    .line 39
    return-void

    .line 40
    :cond_3
    invoke-static {p2}, Lorg/apache/commons/net/util/Base64;->newStringUtf8([B)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string p2, "lineSeperator must not contain base64 characters: ["

    .line 45
    .line 46
    const-string p3, "]"

    .line 47
    .line 48
    invoke-static {p2, p1, p3}, Lai/onnxruntime/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 p1, 0x0

    .line 56
    throw p1
.end method

.method public constructor <init>(Z)V
    .locals 2

    const/16 v0, 0x4c

    .line 57
    sget-object v1, Lorg/apache/commons/net/util/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/net/util/Base64;-><init>(I[BZ)V

    return-void
.end method

.method private static containsBase64Byte([B)Z
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget-byte v3, p0, v2

    .line 7
    .line 8
    invoke-static {v3}, Lorg/apache/commons/net/util/Base64;->isBase64(B)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    return v1
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 1

    .line 17
    invoke-static {}, Lorg/apache/commons/net/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/commons/io/filefilter/f;->u(Ljava/util/Base64$Decoder;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeBase64([B)[B
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->isEmpty([B)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-static {}, Lorg/apache/commons/net/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0, p0}, Lorg/apache/commons/io/filefilter/f;->v(Ljava/util/Base64$Decoder;[B)[B

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static decodeInteger([B)Ljava/math/BigInteger;
    .locals 2

    .line 1
    new-instance v0, Ljava/math/BigInteger;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->decodeBase64([B)[B

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method private static encode([BI[BZ)[B
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->isEmpty([B)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    if-lez p1, :cond_1

    .line 9
    .line 10
    invoke-static {p0, p1, p2}, Lorg/apache/commons/net/util/Base64;->encodeBase64Chunked([BI[B)[B

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_1
    if-eqz p3, :cond_2

    .line 16
    .line 17
    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->encodeBase64URLSafe([B)[B

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_2
    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->encodeBase64([B)[B

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public static encodeBase64([B)[B
    .locals 1

    .line 79
    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lorg/apache/commons/net/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/commons/io/filefilter/f;->w(Ljava/util/Base64$Encoder;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64([BZ)[B
    .locals 0

    if-eqz p1, :cond_0

    .line 77
    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->encodeBase64Chunked([B)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    invoke-static {p0, p1, p1}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64([BZZ)[B
    .locals 1

    const v0, 0x7fffffff

    .line 78
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZZI)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64([BZZI)[B
    .locals 4

    .line 1
    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->isEmpty([B)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    if-eqz p1, :cond_1

    .line 9
    .line 10
    const/16 v0, 0x4c

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-eqz p1, :cond_2

    .line 15
    .line 16
    sget-object v1, Lorg/apache/commons/net/util/Base64;->CHUNK_SEPARATOR:[B

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_2
    sget-object v1, Lorg/apache/commons/net/util/NetConstants;->EMPTY_BTYE_ARRAY:[B

    .line 20
    .line 21
    :goto_1
    invoke-static {p0, v0, v1}, Lorg/apache/commons/net/util/Base64;->getEncodeLength([BI[B)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    int-to-long v2, p3

    .line 26
    cmp-long v2, v0, v2

    .line 27
    .line 28
    if-gtz v2, :cond_5

    .line 29
    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->encodeBase64Chunked([B)[B

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_3
    if-eqz p2, :cond_4

    .line 38
    .line 39
    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->encodeBase64URLSafe([B)[B

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->encodeBase64([B)[B

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string p2, "Input array too big, the output array would be bigger ("

    .line 54
    .line 55
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p2, ") than the specified maxium size of "

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p0
.end method

.method public static encodeBase64Chunked([B)[B
    .locals 2

    const/16 v0, 0x4c

    .line 26
    sget-object v1, Lorg/apache/commons/net/util/Base64;->CHUNK_SEPARATOR:[B

    invoke-static {p0, v0, v1}, Lorg/apache/commons/net/util/Base64;->encodeBase64Chunked([BI[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static encodeBase64Chunked([BI[B)[B
    .locals 2

    .line 1
    invoke-static {p0, p1, p2}, Lorg/apache/commons/net/util/Base64;->getEncodeLength([BI[B)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-array v1, v0, [B

    .line 10
    .line 11
    invoke-static {p1, p2}, Lorg/apache/commons/net/util/Base64;->getMimeEncoder(I[B)Ljava/util/Base64$Encoder;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1, p0, v1}, Lorg/apache/commons/io/filefilter/f;->t(Ljava/util/Base64$Encoder;[B[B)V

    .line 16
    .line 17
    .line 18
    array-length p0, p2

    .line 19
    sub-int/2addr v0, p0

    .line 20
    array-length p0, p2

    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-static {p2, p1, v1, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    .line 24
    .line 25
    return-object v1
.end method

.method public static encodeBase64String([B)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lorg/apache/commons/net/util/Base64;->getMimeEncoder()Ljava/util/Base64$Encoder;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1, p0}, Lorg/apache/commons/io/filefilter/f;->d(Ljava/util/Base64$Encoder;[B)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p0, "\r\n"

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public static encodeBase64String([BZ)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-static {p0, p1}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZ)[B

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->newStringUtf8([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64StringUnChunked([B)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/commons/net/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p0}, Lorg/apache/commons/io/filefilter/f;->d(Ljava/util/Base64$Encoder;[B)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static encodeBase64URLSafe([B)[B
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/commons/net/util/Base64;->getUrlEncoder()Ljava/util/Base64$Encoder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/apache/commons/io/filefilter/f;->r(Ljava/util/Base64$Encoder;)Ljava/util/Base64$Encoder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0, p0}, Lorg/apache/commons/io/filefilter/f;->w(Ljava/util/Base64$Encoder;[B)[B

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static encodeBase64URLSafeString([B)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/commons/net/util/Base64;->getUrlEncoder()Ljava/util/Base64$Encoder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/apache/commons/io/filefilter/f;->r(Ljava/util/Base64$Encoder;)Ljava/util/Base64$Encoder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0, p0}, Lorg/apache/commons/io/filefilter/f;->d(Ljava/util/Base64$Encoder;[B)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static encodeInteger(Ljava/math/BigInteger;)[B
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->toIntegerBytes(Ljava/math/BigInteger;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {p0, v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZ)[B

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static getDecoder()Ljava/util/Base64$Decoder;
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/commons/io/filefilter/f;->p()Ljava/util/Base64$Decoder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static getEncodeLength([BI[B)J
    .locals 8

    .line 1
    div-int/lit8 p1, p1, 0x4

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x4

    .line 4
    .line 5
    array-length p0, p0

    .line 6
    mul-int/lit8 p0, p0, 0x4

    .line 7
    .line 8
    div-int/lit8 p0, p0, 0x3

    .line 9
    .line 10
    int-to-long v0, p0

    .line 11
    const-wide/16 v2, 0x4

    .line 12
    .line 13
    rem-long v4, v0, v2

    .line 14
    .line 15
    const-wide/16 v6, 0x0

    .line 16
    .line 17
    cmp-long p0, v4, v6

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    sub-long/2addr v2, v4

    .line 22
    add-long/2addr v0, v2

    .line 23
    :cond_0
    if-lez p1, :cond_3

    .line 24
    .line 25
    int-to-long p0, p1

    .line 26
    rem-long v2, v0, p0

    .line 27
    .line 28
    cmp-long v2, v2, v6

    .line 29
    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v2, 0x0

    .line 35
    :goto_0
    div-long p0, v0, p0

    .line 36
    .line 37
    array-length v3, p2

    .line 38
    int-to-long v3, v3

    .line 39
    mul-long/2addr p0, v3

    .line 40
    add-long/2addr p0, v0

    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    array-length p2, p2

    .line 44
    int-to-long v0, p2

    .line 45
    add-long/2addr p0, v0

    .line 46
    :cond_2
    return-wide p0

    .line 47
    :cond_3
    return-wide v0
.end method

.method private static getEncoder()Ljava/util/Base64$Encoder;
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/commons/io/filefilter/f;->q()Ljava/util/Base64$Encoder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static getMimeEncoder()Ljava/util/Base64$Encoder;
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/commons/io/filefilter/f;->A()Ljava/util/Base64$Encoder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static getMimeEncoder(I[B)Ljava/util/Base64$Encoder;
    .locals 0

    .line 6
    invoke-static {p0, p1}, Lorg/apache/commons/net/util/a;->p(I[B)Ljava/util/Base64$Encoder;

    move-result-object p0

    return-object p0
.end method

.method private static getUrlEncoder()Ljava/util/Base64$Encoder;
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/commons/io/filefilter/f;->y()Ljava/util/Base64$Encoder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static isArrayByteBase64([B)Z
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget-byte v3, p0, v2

    .line 7
    .line 8
    invoke-static {v3}, Lorg/apache/commons/net/util/Base64;->isBase64(B)Z

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    invoke-static {v3}, Lorg/apache/commons/net/util/Base64;->isWhiteSpace(B)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    return v1

    .line 21
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public static isBase64(B)Z
    .locals 2

    .line 1
    const/16 v0, 0x3d

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    if-ltz p0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lorg/apache/commons/net/util/Base64;->DECODE_TABLE:[B

    .line 8
    .line 9
    array-length v1, v0

    .line 10
    if-ge p0, v1, :cond_0

    .line 11
    .line 12
    aget-byte p0, v0, p0

    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    if-eq p0, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method private static isEmpty([B)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    array-length p0, p0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 10
    return p0
.end method

.method private static isWhiteSpace(B)Z
    .locals 1

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0xd

    .line 10
    .line 11
    if-eq p0, v0, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x20

    .line 14
    .line 15
    if-eq p0, v0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x1

    .line 20
    return p0
.end method

.method private static newStringUtf8([B)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method private static toIntegerBytes(Ljava/math/BigInteger;)[B
    .locals 5

    .line 1
    const-string v0, "bigInt"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    add-int/lit8 v0, v0, 0x7

    .line 11
    .line 12
    shr-int/lit8 v0, v0, 0x3

    .line 13
    .line 14
    shl-int/lit8 v0, v0, 0x3

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    rem-int/lit8 v2, v2, 0x8

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    div-int/lit8 v2, v2, 0x8

    .line 34
    .line 35
    add-int/2addr v2, v3

    .line 36
    div-int/lit8 v4, v0, 0x8

    .line 37
    .line 38
    if-ne v2, v4, :cond_0

    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_0
    array-length v2, v1

    .line 42
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    rem-int/lit8 p0, p0, 0x8

    .line 47
    .line 48
    if-nez p0, :cond_1

    .line 49
    .line 50
    add-int/lit8 v2, v2, -0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 v3, 0x0

    .line 54
    :goto_0
    div-int/lit8 v0, v0, 0x8

    .line 55
    .line 56
    sub-int p0, v0, v2

    .line 57
    .line 58
    new-array v0, v0, [B

    .line 59
    .line 60
    invoke-static {v1, v3, v0, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    .line 62
    .line 63
    return-object v0
.end method


# virtual methods
.method public decode(Ljava/lang/String;)[B
    .locals 1

    .line 17
    invoke-static {}, Lorg/apache/commons/net/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/io/filefilter/f;->u(Ljava/util/Base64$Decoder;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public decode([B)[B
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/apache/commons/net/util/Base64;->isEmpty([B)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    invoke-static {}, Lorg/apache/commons/net/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0, p1}, Lorg/apache/commons/io/filefilter/f;->v(Ljava/util/Base64$Decoder;[B)[B

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public encode([B)[B
    .locals 3

    .line 27
    iget v0, p0, Lorg/apache/commons/net/util/Base64;->lineLength:I

    iget-object v1, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    invoke-virtual {p0}, Lorg/apache/commons/net/util/Base64;->isUrlSafe()Z

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lorg/apache/commons/net/util/Base64;->encode([BI[BZ)[B

    move-result-object p1

    return-object p1
.end method

.method public encodeToString([B)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/util/Base64;->encode([B)[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lorg/apache/commons/net/util/Base64;->newStringUtf8([B)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final finalize()V
    .locals 0

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public getLineLength()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/net/util/Base64;->lineLength:I

    .line 2
    .line 3
    return v0
.end method

.method public getLineSeparator()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    .line 2
    .line 3
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [B

    .line 8
    .line 9
    return-object v0
.end method

.method public isUrlSafe()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/net/util/Base64;->urlSafe:Z

    .line 2
    .line 3
    return v0
.end method
