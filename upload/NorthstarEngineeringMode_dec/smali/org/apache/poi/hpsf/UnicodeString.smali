.class public Lorg/apache/poi/hpsf/UnicodeString;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final LOG:La5/d;


# instance fields
.field private _value:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hpsf/UnicodeString;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/UnicodeString;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hpsf/UnicodeString;->_value:[B

    return-object p0
.end method

.method public read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 5

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    int-to-long v2, v1

    invoke-static {}, Lorg/apache/poi/hpsf/CodePageString;->getMaxRecordLength()I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hpsf/UnicodeString;->_value:[B

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->getReadIndex()I

    move-result v0

    iget-object v2, p0, Lorg/apache/poi/hpsf/UnicodeString;->_value:[B

    invoke-virtual {p1, v2}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readFully([B)V

    iget-object p0, p0, Lorg/apache/poi/hpsf/UnicodeString;->_value:[B

    add-int/lit8 v2, v1, -0x2

    aget-byte v2, p0, v2

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    aget-byte p0, p0, v1

    if-nez p0, :cond_1

    invoke-static {p1}, Lorg/apache/poi/hpsf/TypedPropertyValue;->skipPadding(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    return-void

    :cond_1
    const-string p0, "UnicodeString started at offset #"

    const-string p1, " is not NULL-terminated"

    invoke-static {p0, v0, p1}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;

    invoke-direct {p1, p0}, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setJavaValue(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u0000"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x4b0

    invoke-static {p1, v0}, Lorg/apache/poi/util/CodePageUtil;->getBytesInCodePage(Ljava/lang/String;I)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hpsf/UnicodeString;->_value:[B

    return-void
.end method

.method public toJavaString()Ljava/lang/String;
    .locals 4

    iget-object p0, p0, Lorg/apache/poi/hpsf/UnicodeString;->_value:[B

    array-length v0, p0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    shr-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/apache/poi/util/StringUtil;->getFromUnicodeLE([BII)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    sget-object v0, Lorg/apache/poi/hpsf/UnicodeString;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    const-string v1, "String terminator (\\0) for UnicodeString property value not found. Continue without trimming and hope for the best."

    invoke-interface {v0, v1}, La5/b;->f(Ljava/lang/String;)V

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_2

    sget-object v2, Lorg/apache/poi/hpsf/UnicodeString;->LOG:La5/d;

    invoke-interface {v2}, La5/d;->g()La5/b;

    move-result-object v2

    const-string v3, "String terminator (\\0) for UnicodeString property value occured before the end of string. Trimming and hope for the best."

    invoke-interface {v2, v3}, La5/b;->f(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write(Ljava/io/OutputStream;)I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hpsf/UnicodeString;->_value:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    invoke-static {v0, v1, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/apache/poi/hpsf/UnicodeString;->_value:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p0, p0, Lorg/apache/poi/hpsf/UnicodeString;->_value:[B

    array-length p0, p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method
