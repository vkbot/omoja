.class public Lorg/apache/poi/hpsf/ClipboardData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0x5f5e100

.field private static final LOG:La5/d;

.field private static MAX_RECORD_LENGTH:I = 0x5f5e100


# instance fields
.field private _format:I

.field private _value:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hpsf/ClipboardData;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/ClipboardData;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/hpsf/ClipboardData;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/hpsf/ClipboardData;->MAX_RECORD_LENGTH:I

    return-void
.end method


# virtual methods
.method public getValue()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hpsf/ClipboardData;->_value:[B

    return-object p0
.end method

.method public read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 6

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->getReadIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x4

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    sget-object p1, Lorg/apache/poi/hpsf/ClipboardData;->LOG:La5/d;

    invoke-interface {p1}, La5/d;->g()La5/b;

    move-result-object p1

    invoke-static {v0}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ClipboardData at offset {} size less than 4 bytes (doesn\'t even have format field!). Setting to format == 0 and hope for the best"

    invoke-interface {p1, v0, v1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/poi/hpsf/ClipboardData;->_format:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/poi/hpsf/ClipboardData;->_value:[B

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hpsf/ClipboardData;->_format:I

    sub-long/2addr v1, v3

    sget v0, Lorg/apache/poi/hpsf/ClipboardData;->MAX_RECORD_LENGTH:I

    invoke-static {v1, v2, v0}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hpsf/ClipboardData;->_value:[B

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readFully([B)V

    return-void
.end method

.method public setValue([B)V
    .locals 0

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/apache/poi/hpsf/ClipboardData;->_value:[B

    return-void
.end method

.method public toByteArray()[B
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/hpsf/ClipboardData;->_value:[B

    array-length v1, v0

    const/16 v2, 0x8

    add-int/2addr v1, v2

    new-array v1, v1, [B

    array-length v0, v0

    const/4 v3, 0x4

    add-int/2addr v0, v3

    const/4 v4, 0x0

    invoke-static {v1, v4, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    iget v0, p0, Lorg/apache/poi/hpsf/ClipboardData;->_format:I

    invoke-static {v1, v3, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    iget-object p0, p0, Lorg/apache/poi/hpsf/ClipboardData;->_value:[B

    array-length v0, p0

    invoke-static {p0, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
