.class public final Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0xa

.field private static final STRING_NOT_PRESENT_LEN:I = 0xffff

.field public static final sid:S = 0xb1s


# instance fields
.field private final _cItm:I

.field private final _cSub:I

.field private final _grbitSub:I

.field private _name:Ljava/lang/String;

.field private final _sxaxis:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_sxaxis:I

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_cSub:I

    .line 10
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_grbitSub:I

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_cItm:I

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    const v1, 0xffff

    if-eq v0, v1, :cond_1

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUnicodeLEString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_name:Ljava/lang/String;

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readCompressedUnicode(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_name:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 2
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_sxaxis:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_sxaxis:I

    .line 3
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_cSub:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_cSub:I

    .line 4
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_grbitSub:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_grbitSub:I

    .line 5
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_cItm:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_cItm:I

    .line 6
    iget-object p1, p1, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_name:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_name:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->lambda$getGenericProperties$4()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->lambda$getGenericProperties$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_sxaxis:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_cSub:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_grbitSub:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_cItm:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$4()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_name:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->copy()Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->copy()Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->copy()Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;-><init>(Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;)V

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/16 p0, 0xa

    return p0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_name:Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    mul-int/2addr v0, p0

    add-int/lit8 v0, v0, 0xb

    return v0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string/jumbo v0, "sxaxis"

    new-instance v1, Lorg/apache/poi/hssf/record/pivottable/n;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/pivottable/n;-><init>(Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;I)V

    const-string v3, "cSub"

    new-instance v4, Lorg/apache/poi/hssf/record/pivottable/o;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/hssf/record/pivottable/o;-><init>(Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;I)V

    const-string v5, "grbitSub"

    new-instance v6, Lorg/apache/poi/hssf/record/pivottable/i;

    const/4 v2, 0x1

    invoke-direct {v6, p0, v2}, Lorg/apache/poi/hssf/record/pivottable/i;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string v7, "cItm"

    new-instance v8, Lorg/apache/poi/hssf/record/pivottable/n;

    invoke-direct {v8, p0, v2}, Lorg/apache/poi/hssf/record/pivottable/n;-><init>(Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;I)V

    const-string v9, "name"

    new-instance v10, Lorg/apache/poi/hssf/record/pivottable/o;

    invoke-direct {v10, p0, v2}, Lorg/apache/poi/hssf/record/pivottable/o;-><init>(Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;I)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    invoke-static/range {v0 .. v9}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->VIEW_FIELDS:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0xb1

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_sxaxis:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_cSub:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_grbitSub:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_cItm:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_name:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-static {p1, p0}, Lorg/apache/poi/util/StringUtil;->writeUnicodeString(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const p0, 0xffff

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    :goto_0
    return-void
.end method
