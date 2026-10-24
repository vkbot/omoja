.class public final Lorg/apache/poi/hssf/record/HyperlinkRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field private static final FILE_TAIL:[B

.field static final HLINK_ABS:I = 0x2

.field static final HLINK_LABEL:I = 0x14

.field static final HLINK_PLACE:I = 0x8

.field private static final HLINK_TARGET_FRAME:I = 0x80

.field private static final HLINK_UNC_PATH:I = 0x100

.field static final HLINK_URL:I = 0x1

.field private static final LOG:La5/d;

.field private static final TAIL_SIZE:I

.field private static final URL_TAIL:[B

.field public static final sid:S = 0x1b8s


# instance fields
.field private _address:Ljava/lang/String;

.field private _fileOpts:I

.field private _guid:Lorg/apache/poi/hpsf/ClassID;

.field private _label:Ljava/lang/String;

.field private _linkOpts:I

.field private _moniker:Lorg/apache/poi/hpsf/ClassID;

.field private _range:Lorg/apache/poi/ss/util/CellRangeAddress;

.field private _shortFilename:Ljava/lang/String;

.field private _targetFrame:Ljava/lang/String;

.field private _textMark:Ljava/lang/String;

.field private _uninterpretedTail:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->LOG:La5/d;

    const-string v0, "79 58 81 F4  3B 1D 7F 48   AF 2C 82 5D  C4 85 27 63   00 00 00 00  A5 AB 00 00"

    invoke-static {v0}, Lorg/apache/poi/util/HexRead;->readFromString(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->URL_TAIL:[B

    const-string v0, "FF FF AD DE  00 00 00 00   00 00 00 00  00 00 00 00   00 00 00 00  00 00 00 00"

    invoke-static {v0}, Lorg/apache/poi/util/HexRead;->readFromString(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->FILE_TAIL:[B

    array-length v0, v0

    sput v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->TAIL_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/HyperlinkRecord;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget-object v0, p1, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->copy()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 4
    iget-object v0, p1, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_guid:Lorg/apache/poi/hpsf/ClassID;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/ClassID;->copy()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_guid:Lorg/apache/poi/hpsf/ClassID;

    .line 5
    iget v0, p1, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_fileOpts:I

    iput v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_fileOpts:I

    .line 6
    iget v0, p1, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    iput v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    .line 7
    iget-object v0, p1, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_label:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_label:Ljava/lang/String;

    .line 8
    iget-object v0, p1, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_targetFrame:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_targetFrame:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_moniker:Lorg/apache/poi/hpsf/ClassID;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/ClassID;->copy()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_moniker:Lorg/apache/poi/hpsf/ClassID;

    .line 10
    iget-object v0, p1, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_shortFilename:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_shortFilename:Ljava/lang/String;

    .line 11
    iget-object v0, p1, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    .line 12
    iget-object v0, p1, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_textMark:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_textMark:Ljava/lang/String;

    .line 13
    iget-object p1, p1, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_uninterpretedTail:[B

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [B

    :goto_3
    iput-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_uninterpretedTail:[B

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 4

    .line 14
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 15
    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 16
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    invoke-direct {v0, p1}, Lorg/apache/poi/hpsf/ClassID;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_guid:Lorg/apache/poi/hpsf/ClassID;

    .line 17
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 18
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v0, v0, 0x14

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    .line 20
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUnicodeLEString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_label:Ljava/lang/String;

    :cond_0
    iget v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    .line 22
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUnicodeLEString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_targetFrame:Ljava/lang/String;

    :cond_1
    iget v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2

    iput-object v3, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_moniker:Lorg/apache/poi/hpsf/ClassID;

    .line 23
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    .line 24
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUnicodeLEString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    :cond_2
    iget v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_7

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_7

    .line 25
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    invoke-direct {v0, p1}, Lorg/apache/poi/hpsf/ClassID;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_moniker:Lorg/apache/poi/hpsf/ClassID;

    .line 26
    sget-object v2, Lorg/apache/poi/hpsf/ClassIDPredefined;->URL_MONIKER:Lorg/apache/poi/hpsf/ClassIDPredefined;

    invoke-virtual {v2, v0}, Lorg/apache/poi/hpsf/ClassIDPredefined;->equals(Lorg/apache/poi/hpsf/ClassID;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    .line 28
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 29
    div-int/2addr v0, v1

    .line 30
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUnicodeLEString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    sget v2, Lorg/apache/poi/hssf/record/HyperlinkRecord;->TAIL_SIZE:I

    sub-int/2addr v0, v2

    .line 31
    div-int/2addr v0, v1

    .line 32
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUnicodeLEString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    sget-object v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->URL_TAIL:[B

    .line 33
    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->readTail([BLorg/apache/poi/util/LittleEndianInput;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_uninterpretedTail:[B

    goto :goto_0

    .line 34
    :cond_4
    sget-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->FILE_MONIKER:Lorg/apache/poi/hpsf/ClassIDPredefined;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_moniker:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v0, v2}, Lorg/apache/poi/hpsf/ClassIDPredefined;->equals(Lorg/apache/poi/hpsf/ClassID;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 35
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_fileOpts:I

    .line 36
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    .line 37
    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_shortFilename:Ljava/lang/String;

    sget-object v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->FILE_TAIL:[B

    .line 38
    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->readTail([BLorg/apache/poi/util/LittleEndianInput;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_uninterpretedTail:[B

    .line 39
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    if-lez v0, :cond_5

    .line 40
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    .line 41
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    .line 42
    div-int/2addr v0, v1

    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iput-object v3, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    goto :goto_0

    .line 43
    :cond_6
    sget-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->STD_MONIKER:Lorg/apache/poi/hpsf/ClassIDPredefined;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_moniker:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hpsf/ClassIDPredefined;->equals(Lorg/apache/poi/hpsf/ClassID;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 44
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_fileOpts:I

    .line 45
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    .line 46
    invoke-static {}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getMaxRecordLength()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v0

    .line 47
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([B)V

    .line 48
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lorg/apache/poi/util/StringUtil;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    :cond_7
    :goto_0
    iget v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    .line 49
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    .line 50
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUnicodeLEString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_textMark:Ljava/lang/String;

    .line 51
    :cond_8
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result p0

    if-lez p0, :cond_9

    sget-object p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->LOG:La5/d;

    .line 52
    invoke-interface {p0}, La5/d;->g()La5/b;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    invoke-static {v0}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Hyperlink data remains: {} : {}"

    invoke-interface {p0, v0, v1, p1}, La5/b;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    return-void

    .line 53
    :cond_a
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    const-string p1, "Stream Version must be 0x2 but found "

    .line 54
    invoke-static {p1, v0}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/HyperlinkRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static appendNullTerm(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "\u0000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/HyperlinkRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static cleanString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 7

    new-instance v0, Lorg/apache/poi/hssf/record/t1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hssf/record/t1;-><init>(Lorg/apache/poi/hssf/record/HyperlinkRecord;I)V

    const/4 p0, 0x6

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    const-string v1, "URL"

    const-string v2, "ABS"

    const-string v3, "PLACE"

    const-string v4, "LABEL"

    const-string v5, "TARGET_FRAME"

    const-string v6, "UNC_PATH"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x8
        0x14
        0x80
        0x100
    .end array-data
.end method

.method private static readTail([BLorg/apache/poi/util/LittleEndianInput;)[B
    .locals 0

    sget p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->TAIL_SIZE:I

    new-array p0, p0, [B

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    return-object p0
.end method

.method private static writeTail([BLorg/apache/poi/util/LittleEndianOutput;)V
    .locals 0

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->copy()Lorg/apache/poi/hssf/record/HyperlinkRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/HyperlinkRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;-><init>(Lorg/apache/poi/hssf/record/HyperlinkRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->copy()Lorg/apache/poi/hssf/record/HyperlinkRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->copy()Lorg/apache/poi/hssf/record/HyperlinkRecord;

    move-result-object p0

    return-object p0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->FILE_MONIKER:Lorg/apache/poi/hpsf/ClassIDPredefined;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_moniker:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hpsf/ClassIDPredefined;->equals(Lorg/apache/poi/hpsf/ClassID;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_shortFilename:Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    iget-object p0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_textMark:Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDataSize()I
    .locals 4

    iget v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v0, v0, 0x14

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x24

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    :goto_0
    iget v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_targetFrame:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_2

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_5

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_5

    add-int/lit8 v1, v0, 0x10

    sget-object v2, Lorg/apache/poi/hpsf/ClassIDPredefined;->URL_MONIKER:Lorg/apache/poi/hpsf/ClassIDPredefined;

    iget-object v3, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_moniker:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v2, v3}, Lorg/apache/poi/hpsf/ClassIDPredefined;->equals(Lorg/apache/poi/hpsf/ClassID;)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x14

    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_uninterpretedTail:[B

    if-eqz v1, :cond_5

    sget v1, Lorg/apache/poi/hssf/record/HyperlinkRecord;->TAIL_SIZE:I

    :goto_1
    add-int/2addr v0, v1

    goto :goto_2

    :cond_3
    sget-object v2, Lorg/apache/poi/hpsf/ClassIDPredefined;->FILE_MONIKER:Lorg/apache/poi/hpsf/ClassIDPredefined;

    iget-object v3, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_moniker:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v2, v3}, Lorg/apache/poi/hpsf/ClassIDPredefined;->equals(Lorg/apache/poi/hpsf/ClassID;)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v0, v0, 0x16

    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_shortFilename:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    sget v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->TAIL_SIZE:I

    add-int/2addr v1, v0

    add-int/lit8 v0, v1, 0x4

    iget-object v2, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    if-eqz v2, :cond_5

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_4
    move v0, v1

    :cond_5
    :goto_2
    iget v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_6

    add-int/lit8 v0, v0, 0x4

    iget-object p0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_textMark:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    :cond_6
    return v0
.end method

.method public getFileOptions()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_fileOpts:I

    return p0
.end method

.method public getFirstColumn()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result p0

    return p0
.end method

.method public getFirstRow()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result p0

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string/jumbo v1, "range"

    new-instance v2, Lorg/apache/poi/hssf/record/r1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lorg/apache/poi/hssf/record/r1;-><init>(Lorg/apache/poi/hssf/record/HyperlinkRecord;I)V

    const-string v4, "guid"

    new-instance v5, Lorg/apache/poi/hssf/record/s1;

    invoke-direct {v5, v0, v3}, Lorg/apache/poi/hssf/record/s1;-><init>(Lorg/apache/poi/hssf/record/HyperlinkRecord;I)V

    const-string v6, "linkOpts"

    new-instance v7, Lorg/apache/poi/hssf/record/t1;

    invoke-direct {v7, v0, v3}, Lorg/apache/poi/hssf/record/t1;-><init>(Lorg/apache/poi/hssf/record/HyperlinkRecord;I)V

    const-string v8, "label"

    new-instance v9, Lorg/apache/poi/hssf/record/r1;

    const/4 v3, 0x1

    invoke-direct {v9, v0, v3}, Lorg/apache/poi/hssf/record/r1;-><init>(Lorg/apache/poi/hssf/record/HyperlinkRecord;I)V

    const-string/jumbo v10, "targetFrame"

    new-instance v11, Lorg/apache/poi/hssf/record/s1;

    invoke-direct {v11, v0, v3}, Lorg/apache/poi/hssf/record/s1;-><init>(Lorg/apache/poi/hssf/record/HyperlinkRecord;I)V

    const-string v12, "moniker"

    new-instance v13, Lorg/apache/poi/hssf/record/t1;

    invoke-direct {v13, v0, v3}, Lorg/apache/poi/hssf/record/t1;-><init>(Lorg/apache/poi/hssf/record/HyperlinkRecord;I)V

    const-string/jumbo v14, "textMark"

    new-instance v15, Lorg/apache/poi/hssf/record/r1;

    const/4 v3, 0x2

    invoke-direct {v15, v0, v3}, Lorg/apache/poi/hssf/record/r1;-><init>(Lorg/apache/poi/hssf/record/HyperlinkRecord;I)V

    const-string v16, "address"

    move-object/from16 v17, v15

    new-instance v15, Lorg/apache/poi/hssf/record/s1;

    invoke-direct {v15, v0, v3}, Lorg/apache/poi/hssf/record/s1;-><init>(Lorg/apache/poi/hssf/record/HyperlinkRecord;I)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    move-object v11, v13

    move-object v12, v14

    move-object/from16 v13, v17

    move-object/from16 v14, v16

    invoke-static/range {v0 .. v15}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->HYPERLINK:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getGuid()Lorg/apache/poi/hpsf/ClassID;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_guid:Lorg/apache/poi/hpsf/ClassID;

    return-object p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_label:Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLabelOptions()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getLastColumn()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result p0

    return p0
.end method

.method public getLastRow()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result p0

    return p0
.end method

.method public getLinkOptions()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    return p0
.end method

.method public getMoniker()Lorg/apache/poi/hpsf/ClassID;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_moniker:Lorg/apache/poi/hpsf/ClassID;

    return-object p0
.end method

.method public getShortFilename()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_shortFilename:Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x1b8

    return p0
.end method

.method public getTargetFrame()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_targetFrame:Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextMark()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_textMark:Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isDocumentLink()Z
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 p0, p0, 0x8

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFileLink()Z
    .locals 1

    iget p0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v0, p0, 0x1

    if-lez v0, :cond_0

    and-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUrlLink()Z
    .locals 1

    iget p0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v0, p0, 0x1

    if-lez v0, :cond_0

    and-int/lit8 p0, p0, 0x2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public newDocumentLink()V
    .locals 2

    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    sget-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->STD_MONIKER:Lorg/apache/poi/hpsf/ClassIDPredefined;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/ClassIDPredefined;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_guid:Lorg/apache/poi/hpsf/ClassID;

    const/16 v0, 0x1c

    iput v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setLabel(Ljava/lang/String;)V

    sget-object v1, Lorg/apache/poi/hpsf/ClassIDPredefined;->FILE_MONIKER:Lorg/apache/poi/hpsf/ClassIDPredefined;

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/ClassIDPredefined;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_moniker:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setAddress(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setTextMark(Ljava/lang/String;)V

    return-void
.end method

.method public newFileLink()V
    .locals 2

    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    sget-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->STD_MONIKER:Lorg/apache/poi/hpsf/ClassIDPredefined;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/ClassIDPredefined;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_guid:Lorg/apache/poi/hpsf/ClassID;

    const/16 v0, 0x15

    iput v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    iput v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_fileOpts:I

    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setLabel(Ljava/lang/String;)V

    sget-object v1, Lorg/apache/poi/hpsf/ClassIDPredefined;->FILE_MONIKER:Lorg/apache/poi/hpsf/ClassIDPredefined;

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/ClassIDPredefined;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_moniker:Lorg/apache/poi/hpsf/ClassID;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setAddress(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setShortFilename(Ljava/lang/String;)V

    sget-object v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->FILE_TAIL:[B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_uninterpretedTail:[B

    return-void
.end method

.method public newUrlLink()V
    .locals 2

    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    sget-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->STD_MONIKER:Lorg/apache/poi/hpsf/ClassIDPredefined;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/ClassIDPredefined;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_guid:Lorg/apache/poi/hpsf/ClassID;

    const/16 v0, 0x17

    iput v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setLabel(Ljava/lang/String;)V

    sget-object v1, Lorg/apache/poi/hpsf/ClassIDPredefined;->URL_MONIKER:Lorg/apache/poi/hpsf/ClassIDPredefined;

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/ClassIDPredefined;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_moniker:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setAddress(Ljava/lang/String;)V

    sget-object v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->URL_TAIL:[B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_uninterpretedTail:[B

    return-void
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_guid:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/ClassID;->write(Lorg/apache/poi/util/LittleEndianOutput;)V

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v1, v1, 0x14

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_label:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_label:Ljava/lang/String;

    invoke-static {v1, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    :cond_0
    iget v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_targetFrame:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_targetFrame:Ljava/lang/String;

    invoke-static {v1, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    :cond_1
    iget v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_2

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    invoke-static {v1, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    :cond_2
    iget v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_6

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_moniker:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hpsf/ClassID;->write(Lorg/apache/poi/util/LittleEndianOutput;)V

    sget-object v1, Lorg/apache/poi/hpsf/ClassIDPredefined;->URL_MONIKER:Lorg/apache/poi/hpsf/ClassIDPredefined;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_moniker:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v1, v2}, Lorg/apache/poi/hpsf/ClassIDPredefined;->equals(Lorg/apache/poi/hpsf/ClassID;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_uninterpretedTail:[B

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/2addr v1, v0

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/2addr v1, v0

    sget v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->TAIL_SIZE:I

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_uninterpretedTail:[B

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->writeTail([BLorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_0

    :cond_4
    sget-object v1, Lorg/apache/poi/hpsf/ClassIDPredefined;->FILE_MONIKER:Lorg/apache/poi/hpsf/ClassIDPredefined;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_moniker:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v1, v2}, Lorg/apache/poi/hpsf/ClassIDPredefined;->equals(Lorg/apache/poi/hpsf/ClassID;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_fileOpts:I

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_shortFilename:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_shortFilename:Ljava/lang/String;

    invoke-static {v1, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_uninterpretedTail:[B

    invoke-static {v1, p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->writeTail([BLorg/apache/poi/util/LittleEndianOutput;)V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    if-nez v1, :cond_5

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/2addr v1, v0

    add-int/lit8 v0, v1, 0x6

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    :cond_6
    :goto_0
    iget v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_textMark:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_textMark:Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    :cond_7
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->FILE_MONIKER:Lorg/apache/poi/hpsf/ClassIDPredefined;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_moniker:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hpsf/ClassIDPredefined;->equals(Lorg/apache/poi/hpsf/ClassID;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->appendNullTerm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_shortFilename:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->appendNullTerm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_textMark:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->appendNullTerm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setFirstColumn(I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->setFirstColumn(I)V

    return-void
.end method

.method public setFirstRow(I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->setFirstRow(I)V

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->appendNullTerm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_label:Ljava/lang/String;

    return-void
.end method

.method public setLastColumn(I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->setLastColumn(I)V

    return-void
.end method

.method public setLastRow(I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->setLastRow(I)V

    return-void
.end method

.method public setShortFilename(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->appendNullTerm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_shortFilename:Ljava/lang/String;

    return-void
.end method

.method public setTextMark(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->appendNullTerm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_textMark:Ljava/lang/String;

    return-void
.end method
