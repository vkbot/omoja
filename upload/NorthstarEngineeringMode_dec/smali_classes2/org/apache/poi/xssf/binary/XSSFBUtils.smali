.class public Lorg/apache/poi/xssf/binary/XSSFBUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static castToInt(J)I
    .locals 3

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    long-to-int p0, p0

    return p0

    :cond_0
    new-instance v0, Lorg/apache/poi/ooxml/POIXMLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "val ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ") can\'t be cast to int"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToShort(I)S
    .locals 3

    const/16 v0, 0x7fff

    if-ge p0, v0, :cond_0

    const/16 v0, -0x8000

    if-le p0, v0, :cond_0

    int-to-short p0, p0

    return p0

    :cond_0
    new-instance v0, Lorg/apache/poi/ooxml/POIXMLException;

    const-string v1, "val ("

    const-string v2, ") can\'t be cast to short"

    invoke-static {v1, p0, v2}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static get24BitInt([BI)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 p1, p1, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    shl-int/lit8 p1, v0, 0x8

    add-int/2addr p0, p1

    add-int/2addr p0, v1

    return p0
.end method

.method public static readXLNullableWideString([BILjava/lang/StringBuilder;)I
    .locals 4

    invoke-static {p0, p1}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    const-wide v2, 0xffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-gtz v2, :cond_2

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 p1, p1, 0x4

    add-int v1, p1, v0

    array-length v2, p0

    if-gt v1, v2, :cond_1

    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x4

    return v0

    :cond_1
    new-instance p2, Lorg/apache/poi/xssf/binary/XSSFBParseException;

    const-string v1, "trying to read beyond data length: offset="

    const-string v2, ", numBytes="

    const-string v3, ", data.length="

    invoke-static {v1, p1, v2, v0, v3}, Landroidx/activity/result/a;->i(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/apache/poi/xssf/binary/XSSFBParseException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p0, Lorg/apache/poi/xssf/binary/XSSFBParseException;

    const-string p1, "too many chars to read"

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lorg/apache/poi/xssf/binary/XSSFBParseException;

    const-string p1, "too few chars to read"

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readXLWideString([BILjava/lang/StringBuilder;)I
    .locals 4

    invoke-static {p0, p1}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    const-wide v2, 0xffffffffL

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 p1, p1, 0x4

    add-int v1, p1, v0

    array-length v2, p0

    if-gt v1, v2, :cond_0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x4

    return v0

    :cond_0
    new-instance p0, Lorg/apache/poi/xssf/binary/XSSFBParseException;

    const-string p1, "trying to read beyond data length"

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/poi/xssf/binary/XSSFBParseException;

    const-string p1, "too many chars to read"

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/apache/poi/xssf/binary/XSSFBParseException;

    const-string p1, "too few chars to read"

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
