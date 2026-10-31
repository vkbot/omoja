.class public Lorg/apache/commons/io/ByteOrderMark;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final UTF_16BE:Lorg/apache/commons/io/ByteOrderMark;

.field public static final UTF_16LE:Lorg/apache/commons/io/ByteOrderMark;

.field public static final UTF_32BE:Lorg/apache/commons/io/ByteOrderMark;

.field public static final UTF_32LE:Lorg/apache/commons/io/ByteOrderMark;

.field public static final UTF_8:Lorg/apache/commons/io/ByteOrderMark;

.field public static final UTF_BOM:C = '\ufeff'

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final bytes:[I

.field private final charsetName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lorg/apache/commons/io/ByteOrderMark;

    .line 2
    .line 3
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/16 v2, 0xbb

    .line 10
    .line 11
    const/16 v3, 0xbf

    .line 12
    .line 13
    const/16 v4, 0xef

    .line 14
    .line 15
    filled-new-array {v4, v2, v3}, [I

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lorg/apache/commons/io/ByteOrderMark;->UTF_8:Lorg/apache/commons/io/ByteOrderMark;

    .line 23
    .line 24
    new-instance v0, Lorg/apache/commons/io/ByteOrderMark;

    .line 25
    .line 26
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const/16 v2, 0xfe

    .line 33
    .line 34
    const/16 v3, 0xff

    .line 35
    .line 36
    filled-new-array {v2, v3}, [I

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-direct {v0, v1, v4}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lorg/apache/commons/io/ByteOrderMark;->UTF_16BE:Lorg/apache/commons/io/ByteOrderMark;

    .line 44
    .line 45
    new-instance v0, Lorg/apache/commons/io/ByteOrderMark;

    .line 46
    .line 47
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    filled-new-array {v3, v2}, [I

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-direct {v0, v1, v4}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    .line 58
    .line 59
    .line 60
    sput-object v0, Lorg/apache/commons/io/ByteOrderMark;->UTF_16LE:Lorg/apache/commons/io/ByteOrderMark;

    .line 61
    .line 62
    new-instance v0, Lorg/apache/commons/io/ByteOrderMark;

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    filled-new-array {v1, v1, v2, v3}, [I

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    const-string v5, "UTF-32BE"

    .line 70
    .line 71
    invoke-direct {v0, v5, v4}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    .line 72
    .line 73
    .line 74
    sput-object v0, Lorg/apache/commons/io/ByteOrderMark;->UTF_32BE:Lorg/apache/commons/io/ByteOrderMark;

    .line 75
    .line 76
    new-instance v0, Lorg/apache/commons/io/ByteOrderMark;

    .line 77
    .line 78
    const-string v4, "UTF-32LE"

    .line 79
    .line 80
    filled-new-array {v3, v2, v1, v1}, [I

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-direct {v0, v4, v1}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    .line 85
    .line 86
    .line 87
    sput-object v0, Lorg/apache/commons/io/ByteOrderMark;->UTF_32LE:Lorg/apache/commons/io/ByteOrderMark;

    .line 88
    .line 89
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "charsetName"

    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    const-string v0, "bytes"

    .line 10
    .line 11
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_28

    .line 19
    .line 20
    array-length v0, p2

    .line 21
    if-eqz v0, :cond_21

    .line 22
    .line 23
    iput-object p1, p0, Lorg/apache/commons/io/ByteOrderMark;->charsetName:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, [I

    .line 30
    .line 31
    iput-object p1, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    .line 32
    .line 33
    return-void

    .line 34
    :cond_21
    const-string p1, "No bytes specified"

    .line 35
    .line 36
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    throw p1

    .line 41
    :cond_28
    const-string p1, "No charsetName specified"

    .line 42
    .line 43
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    instance-of v0, p1, Lorg/apache/commons/io/ByteOrderMark;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 5
    .line 6
    return v1

    .line 7
    :cond_6
    check-cast p1, Lorg/apache/commons/io/ByteOrderMark;

    .line 8
    .line 9
    iget-object v0, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    .line 10
    .line 11
    array-length v0, v0

    .line 12
    invoke-virtual {p1}, Lorg/apache/commons/io/ByteOrderMark;->length()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eq v0, v2, :cond_12

    .line 17
    .line 18
    return v1

    .line 19
    :cond_12
    move v0, v1

    .line 20
    :goto_13
    iget-object v2, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    .line 21
    .line 22
    array-length v3, v2

    .line 23
    if-ge v0, v3, :cond_24

    .line 24
    .line 25
    aget v2, v2, v0

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lorg/apache/commons/io/ByteOrderMark;->get(I)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eq v2, v3, :cond_21

    .line 32
    .line 33
    return v1

    .line 34
    :cond_21
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    goto :goto_13

    .line 37
    :cond_24
    const/4 p1, 0x1

    .line 38
    return p1
.end method

.method public get(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    .line 2
    .line 3
    aget p1, v0, p1

    .line 4
    .line 5
    return p1
.end method

.method public getBytes()[B
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->byteArray(I)[B

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_8
    iget-object v2, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    .line 10
    .line 11
    array-length v3, v2

    .line 12
    if-ge v1, v3, :cond_15

    .line 13
    .line 14
    aget v2, v2, v1

    .line 15
    .line 16
    int-to-byte v2, v2

    .line 17
    aput-byte v2, v0, v1

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_8

    .line 22
    :cond_15
    return-object v0
.end method

.method public getCharsetName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/ByteOrderMark;->charsetName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRawBytes()[I
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .registers 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    .line 10
    .line 11
    array-length v2, v1

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_c
    if-ge v3, v2, :cond_14

    .line 14
    .line 15
    aget v4, v1, v3

    .line 16
    .line 17
    add-int/2addr v0, v4

    .line 18
    add-int/lit8 v3, v3, 0x1

    .line 19
    .line 20
    goto :goto_c

    .line 21
    :cond_14
    return v0
.end method

.method public length()I
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public matches([I)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, p1, :cond_6

    .line 5
    .line 6
    return v1

    .line 7
    :cond_6
    const/4 v2, 0x0

    .line 8
    if-nez p1, :cond_a

    .line 9
    .line 10
    return v2

    .line 11
    :cond_a
    array-length v0, v0

    .line 12
    array-length v3, p1

    .line 13
    if-ge v3, v0, :cond_f

    .line 14
    .line 15
    return v2

    .line 16
    :cond_f
    move v3, v2

    .line 17
    :goto_10
    if-ge v3, v0, :cond_1e

    .line 18
    .line 19
    iget-object v4, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    .line 20
    .line 21
    aget v4, v4, v3

    .line 22
    .line 23
    aget v5, p1, v3

    .line 24
    .line 25
    if-eq v4, v5, :cond_1b

    .line 26
    .line 27
    return v2

    .line 28
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_10

    .line 31
    :cond_1e
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x5b

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lorg/apache/commons/io/ByteOrderMark;->charsetName:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ": "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    :goto_20
    iget-object v2, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    .line 34
    .line 35
    array-length v2, v2

    .line 36
    if-ge v1, v2, :cond_47

    .line 37
    .line 38
    if-lez v1, :cond_2c

    .line 39
    .line 40
    const-string v2, ","

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    :cond_2c
    const-string v2, "0x"

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    .line 51
    .line 52
    aget v2, v2, v1

    .line 53
    .line 54
    and-int/lit16 v2, v2, 0xff

    .line 55
    .line 56
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    add-int/lit8 v1, v1, 0x1

    .line 70
    .line 71
    goto :goto_20

    .line 72
    :cond_47
    const/16 v1, 0x5d

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    return-object v0
.end method
