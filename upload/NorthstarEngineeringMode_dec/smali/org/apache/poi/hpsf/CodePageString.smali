.class public Lorg/apache/poi/hpsf/CodePageString;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0x186a0

.field private static final LOG:La5/d;

.field private static MAX_RECORD_LENGTH:I = 0x186a0


# instance fields
.field private _value:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hpsf/CodePageString;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/CodePageString;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/hpsf/CodePageString;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/hpsf/CodePageString;->MAX_RECORD_LENGTH:I

    return-void
.end method


# virtual methods
.method public getJavaValue(I)Ljava/lang/String;
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x4e4

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hpsf/CodePageString;->_value:[B

    invoke-static {p0, p1}, Lorg/apache/poi/util/CodePageUtil;->getStringFromCodePage([BI)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    sget-object p1, Lorg/apache/poi/hpsf/CodePageString;->LOG:La5/d;

    invoke-interface {p1}, La5/d;->g()La5/b;

    move-result-object p1

    const-string v0, "String terminator (\\0) for CodePageString property value not found. Continue without trimming and hope for the best."

    invoke-interface {p1, v0}, La5/b;->f(Ljava/lang/String;)V

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_2

    sget-object v0, Lorg/apache/poi/hpsf/CodePageString;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->e()La5/b;

    move-result-object v0

    const-string v2, "String terminator (\\0) for CodePageString property value occurred before the end of string. Trimming and hope for the best."

    invoke-interface {v0, v2}, La5/b;->f(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hpsf/CodePageString;->_value:[B

    array-length p0, p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 5

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->getReadIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result v1

    int-to-long v2, v1

    sget v4, Lorg/apache/poi/hpsf/CodePageString;->MAX_RECORD_LENGTH:I

    invoke-static {v2, v3, v4}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hpsf/CodePageString;->_value:[B

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v2}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readFully([B)V

    iget-object p0, p0, Lorg/apache/poi/hpsf/CodePageString;->_value:[B

    add-int/lit8 v1, v1, -0x1

    aget-byte p0, p0, v1

    if-eqz p0, :cond_1

    sget-object p0, Lorg/apache/poi/hpsf/CodePageString;->LOG:La5/d;

    invoke-interface {p0}, La5/d;->g()La5/b;

    move-result-object p0

    invoke-static {v0}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CodePageString started at offset #{} is not NULL-terminated"

    invoke-interface {p0, v0, v1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-static {p1}, Lorg/apache/poi/hpsf/TypedPropertyValue;->skipPadding(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    return-void
.end method

.method public setJavaValue(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 p2, 0x4e4

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u0000"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/apache/poi/util/CodePageUtil;->getBytesInCodePage(Ljava/lang/String;I)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hpsf/CodePageString;->_value:[B

    return-void
.end method

.method public write(Ljava/io/OutputStream;)I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hpsf/CodePageString;->_value:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-static {v0, v1, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/apache/poi/hpsf/CodePageString;->_value:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p0, p0, Lorg/apache/poi/hpsf/CodePageString;->_value:[B

    array-length p0, p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method
