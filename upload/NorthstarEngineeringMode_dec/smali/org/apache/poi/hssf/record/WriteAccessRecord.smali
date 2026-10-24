.class public final Lorg/apache/poi/hssf/record/WriteAccessRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field private static final DATA_SIZE:I = 0x70

.field private static final PADDING:[B

.field private static final PAD_CHAR:B = 0x20t

.field private static final STRING_SIZE:I = 0x6d

.field private static final UTF16FLAG:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x5cs


# instance fields
.field private field_1_username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WriteAccessRecord;->UTF16FLAG:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x6d

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/poi/hssf/record/WriteAccessRecord;->PADDING:[B

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    const-string v0, ""

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/WriteAccessRecord;->setUsername(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 9

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 6
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    const/16 v1, 0x70

    if-gt v0, v1, :cond_6

    .line 7
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0x6d

    if-gt v0, v5, :cond_2

    and-int/lit16 v6, v2, 0xfe

    if-eqz v6, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v1

    int-to-long v6, v1

    invoke-static {v6, v7, v5}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v1

    .line 10
    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([B)V

    sget-object p1, Lorg/apache/poi/hssf/record/WriteAccessRecord;->UTF16FLAG:Lorg/apache/poi/util/BitField;

    .line 11
    invoke-virtual {p1, v2}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_1

    mul-int/2addr v0, v3

    .line 12
    array-length p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 13
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    goto :goto_2

    .line 14
    :cond_1
    array-length p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 15
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    goto :goto_2

    .line 16
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->isEncrypted()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 17
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1, v5}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v1

    .line 18
    array-length v0, v1

    invoke-virtual {p1, v1, v4, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readPlain([BII)V

    .line 19
    array-length p1, v1

    :goto_1
    if-lez p1, :cond_3

    add-int/lit8 v0, p1, -0x1

    .line 20
    aget-byte v0, v1, v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_3

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 21
    :cond_3
    array-length v0, v1

    const/4 v2, 0x1

    if-le v0, v2, :cond_4

    aget-byte v0, v1, v2

    if-nez v0, :cond_4

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    goto :goto_2

    :cond_4
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    goto :goto_2

    .line 22
    :cond_5
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v5

    add-int/lit8 v6, v5, 0x3

    int-to-long v7, v6

    .line 23
    invoke-static {v7, v8, v1}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v1

    .line 24
    invoke-static {v1, v4, v0}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    .line 25
    invoke-static {v1, v3, v2}, Lorg/apache/poi/util/LittleEndian;->putByte([BII)V

    const/4 v0, 0x3

    .line 26
    invoke-virtual {p1, v1, v0, v5}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([BII)V

    .line 27
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move p1, v6

    .line 28
    :goto_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v4, p1, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 29
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/WriteAccessRecord;->setUsername(Ljava/lang/String;)V

    return-void

    .line 30
    :cond_6
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected data size (112) but got ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/WriteAccessRecord;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 4
    iget-object p1, p1, Lorg/apache/poi/hssf/record/WriteAccessRecord;->field_1_username:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/WriteAccessRecord;->field_1_username:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WriteAccessRecord;->copy()Lorg/apache/poi/hssf/record/WriteAccessRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WriteAccessRecord;->copy()Lorg/apache/poi/hssf/record/WriteAccessRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WriteAccessRecord;->copy()Lorg/apache/poi/hssf/record/WriteAccessRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/WriteAccessRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/WriteAccessRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/WriteAccessRecord;-><init>(Lorg/apache/poi/hssf/record/WriteAccessRecord;)V

    return-object v0
.end method

.method public getDataSize()I
    .locals 0

    const/16 p0, 0x70

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/hssf/record/u1;

    const/16 v1, 0x1d

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hssf/record/u1;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string/jumbo p0, "username"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WriteAccessRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->WRITE_ACCESS:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x5c

    return p0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/WriteAccessRecord;->field_1_username:Ljava/lang/String;

    return-object p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WriteAccessRecord;->getUsername()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    sget-object v1, Lorg/apache/poi/hssf/record/WriteAccessRecord;->PADDING:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0, v1, v2}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;[BI)V

    goto :goto_0

    :cond_0
    invoke-static {p0, v1, v2}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;[BI)V

    :goto_0
    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    mul-int/2addr v1, v0

    const/16 v0, 0x6d

    if-gt v1, v0, :cond_1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/WriteAccessRecord;->field_1_username:Ljava/lang/String;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Name is too long: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
