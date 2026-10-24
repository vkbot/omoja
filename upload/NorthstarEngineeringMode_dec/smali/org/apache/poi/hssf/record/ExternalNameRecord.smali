.class public final Lorg/apache/poi/hssf/record/ExternalNameRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field private static final OPTION_FLAGS:[I

.field private static final OPTION_NAMES:[Ljava/lang/String;

.field private static final OPT_AUTOMATIC_LINK:I = 0x2

.field private static final OPT_BUILTIN_NAME:I = 0x1

.field private static final OPT_ICONIFIED_PICTURE_LINK:I = 0x8000

.field private static final OPT_OLE_LINK:I = 0x10

.field private static final OPT_PICTURE_LINK:I = 0x4

.field private static final OPT_STD_DOCUMENT_NAME:I = 0x8

.field public static final sid:S = 0x23s


# instance fields
.field private _ddeValues:[Ljava/lang/Object;

.field private _nColumns:I

.field private _nRows:I

.field private field_1_option_flag:S

.field private field_2_ixals:S

.field private field_3_not_used:S

.field private field_4_name:Ljava/lang/String;

.field private field_5_name_definition:Lorg/apache/poi/ss/formula/Formula;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->OPTION_FLAGS:[I

    const-string v1, "BUILTIN_NAME"

    const-string v2, "AUTOMATIC_LINK"

    const-string v3, "PICTURE_LINK"

    const-string v4, "STD_DOCUMENT_NAME"

    const-string v5, "OLE_LINK"

    const-string v6, "ICONIFIED_PICTURE_LINK"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->OPTION_NAMES:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x8000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_2_ixals:S

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/ExternalNameRecord;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget-short v0, p1, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_1_option_flag:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_1_option_flag:S

    .line 4
    iget-short v0, p1, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_2_ixals:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_2_ixals:S

    .line 5
    iget-short v0, p1, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_3_not_used:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_3_not_used:S

    .line 6
    iget-object v0, p1, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_4_name:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_4_name:Ljava/lang/String;

    .line 7
    iget-object v0, p1, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_5_name_definition:Lorg/apache/poi/ss/formula/Formula;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->copy()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_5_name_definition:Lorg/apache/poi/ss/formula/Formula;

    .line 8
    iget-object v0, p1, Lorg/apache/poi/hssf/record/ExternalNameRecord;->_ddeValues:[Ljava/lang/Object;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    :goto_1
    iput-object v1, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->_ddeValues:[Ljava/lang/Object;

    .line 9
    iget v0, p1, Lorg/apache/poi/hssf/record/ExternalNameRecord;->_nColumns:I

    iput v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->_nColumns:I

    .line 10
    iget p1, p1, Lorg/apache/poi/hssf/record/ExternalNameRecord;->_nRows:I

    iput p1, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->_nRows:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3

    .line 11
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_1_option_flag:S

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_2_ixals:S

    .line 14
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_3_not_used:S

    .line 15
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    .line 16
    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->readUnicodeString(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_4_name:Ljava/lang/String;

    .line 17
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExternalNameRecord;->isOLELink()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExternalNameRecord;->isStdDocumentNameIdentifier()Z

    move-result v0

    if-nez v0, :cond_1

    .line 18
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExternalNameRecord;->isAutomaticLink()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v0

    if-lez v0, :cond_1

    .line 20
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 21
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int v2, v1, v0

    .line 22
    invoke-static {p1, v2}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->parse(Lorg/apache/poi/util/LittleEndianInput;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->_ddeValues:[Ljava/lang/Object;

    iput v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->_nColumns:I

    iput v1, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->_nRows:I

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 24
    invoke-static {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_5_name_definition:Lorg/apache/poi/ss/formula/Formula;

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lorg/apache/poi/hssf/record/ExternalNameRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/ExternalNameRecord;)Ljava/lang/Number;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/ExternalNameRecord;->lambda$getGenericProperties$0()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Number;
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_1_option_flag:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExternalNameRecord;->copy()Lorg/apache/poi/hssf/record/ExternalNameRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/ExternalNameRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/ExternalNameRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ExternalNameRecord;-><init>(Lorg/apache/poi/hssf/record/ExternalNameRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExternalNameRecord;->copy()Lorg/apache/poi/hssf/record/ExternalNameRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExternalNameRecord;->copy()Lorg/apache/poi/hssf/record/ExternalNameRecord;

    move-result-object p0

    return-object p0
.end method

.method public getDataSize()I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_4_name:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/poi/util/StringUtil;->getEncodedSize(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v0, 0x5

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExternalNameRecord;->isOLELink()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExternalNameRecord;->isStdDocumentNameIdentifier()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExternalNameRecord;->isAutomaticLink()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->_ddeValues:[Ljava/lang/Object;

    if-eqz p0, :cond_1

    add-int/lit8 v0, v0, 0x8

    invoke-static {p0}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->getEncodedSize([Ljava/lang/Object;)I

    move-result p0

    add-int v1, p0, v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_5_name_definition:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/Formula;->getEncodedSize()I

    move-result p0

    add-int/2addr v1, p0

    :cond_1
    :goto_0
    return v1
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string/jumbo v0, "options"

    new-instance v1, Lorg/apache/poi/hssf/record/n0;

    const/16 v2, 0xf

    invoke-direct {v1, v2, p0}, Lorg/apache/poi/hssf/record/n0;-><init>(ILjava/lang/Object;)V

    sget-object v2, Lorg/apache/poi/hssf/record/ExternalNameRecord;->OPTION_FLAGS:[I

    sget-object v3, Lorg/apache/poi/hssf/record/ExternalNameRecord;->OPTION_NAMES:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v1

    const-string v2, "ix"

    new-instance v3, Lorg/apache/poi/hssf/record/o0;

    const/16 v4, 0x12

    invoke-direct {v3, p0, v4}, Lorg/apache/poi/hssf/record/o0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string v4, "name"

    new-instance v5, Lorg/apache/poi/hssf/record/p0;

    const/16 v6, 0x18

    invoke-direct {v5, p0, v6}, Lorg/apache/poi/hssf/record/p0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string v6, "nameDefinition"

    iget-object p0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_5_name_definition:Lorg/apache/poi/ss/formula/Formula;

    if-nez p0, :cond_0

    new-instance p0, Lorg/apache/poi/hssf/record/y0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v7, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lorg/apache/poi/hssf/record/o0;

    const/16 v8, 0x13

    invoke-direct {v7, p0, v8}, Lorg/apache/poi/hssf/record/o0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    :goto_0
    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExternalNameRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->EXTERNAL_NAME:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getIx()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_2_ixals:S

    return p0
.end method

.method public getParsedExpression()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_5_name_definition:Lorg/apache/poi/ss/formula/Formula;

    invoke-static {p0}, Lorg/apache/poi/ss/formula/Formula;->getTokens(Lorg/apache/poi/ss/formula/Formula;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x23

    return p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_4_name:Ljava/lang/String;

    return-object p0
.end method

.method public isAutomaticLink()Z
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_1_option_flag:S

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBuiltInName()Z
    .locals 1

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_1_option_flag:S

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIconifiedPictureLink()Z
    .locals 1

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_1_option_flag:S

    const v0, 0x8000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOLELink()Z
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_1_option_flag:S

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPicureLink()Z
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_1_option_flag:S

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStdDocumentNameIdentifier()Z
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_1_option_flag:S

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_1_option_flag:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_2_ixals:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_3_not_used:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_4_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_4_name:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->writeUnicodeStringFlagAndData(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExternalNameRecord;->isOLELink()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExternalNameRecord;->isStdDocumentNameIdentifier()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExternalNameRecord;->isAutomaticLink()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->_ddeValues:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->_nColumns:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->_nRows:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->_ddeValues:[Ljava/lang/Object;

    invoke-static {p1, p0}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->encode(Lorg/apache/poi/util/LittleEndianOutput;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_5_name_definition:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/Formula;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setIx(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_2_ixals:S

    return-void
.end method

.method public setParsedExpression([Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_5_name_definition:Lorg/apache/poi/ss/formula/Formula;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_4_name:Ljava/lang/String;

    return-void
.end method
