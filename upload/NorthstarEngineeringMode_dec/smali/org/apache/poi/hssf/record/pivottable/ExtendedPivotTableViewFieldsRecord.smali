.class public final Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field private static final STRING_NOT_PRESENT_LEN:I = 0xffff

.field public static final sid:S = 0x100s


# instance fields
.field private _citmShow:I

.field private _grbit1:I

.field private _grbit2:I

.field private _isxdiShow:I

.field private _isxdiSort:I

.field private _reserved1:I

.field private _reserved2:I

.field private _subtotalName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_grbit1:I

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_grbit2:I

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_citmShow:I

    .line 14
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_isxdiSort:I

    .line 15
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_isxdiShow:I

    .line 16
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 17
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 18
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_reserved1:I

    .line 19
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_reserved2:I

    const v1, 0xffff

    if-eq v0, v1, :cond_0

    .line 20
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUnicodeLEString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_subtotalName:Ljava/lang/String;

    :cond_0
    return-void

    .line 21
    :cond_1
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected remaining size ("

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

    :cond_2
    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_reserved1:I

    iput p1, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_reserved2:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_subtotalName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 2
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_grbit1:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_grbit1:I

    .line 3
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_grbit2:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_grbit2:I

    .line 4
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_citmShow:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_citmShow:I

    .line 5
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_isxdiSort:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_isxdiSort:I

    .line 6
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_isxdiShow:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_isxdiShow:I

    .line 7
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_reserved1:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_reserved1:I

    .line 8
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_reserved2:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_reserved2:I

    .line 9
    iget-object p1, p1, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_subtotalName:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_subtotalName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->lambda$getGenericProperties$4()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->lambda$getGenericProperties$5()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->lambda$getGenericProperties$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_grbit1:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_grbit2:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_citmShow:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_isxdiSort:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$4()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_isxdiShow:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$5()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_subtotalName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->copy()Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->copy()Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->copy()Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;-><init>(Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;)V

    return-object v0
.end method

.method public getDataSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_subtotalName:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    :goto_0
    add-int/lit8 p0, p0, 0x14

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "grbit1"

    new-instance v1, Lorg/apache/poi/hssf/record/pivottable/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/pivottable/d;-><init>(Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;I)V

    const-string v3, "grbit2"

    new-instance v4, Lorg/apache/poi/hssf/record/pivottable/e;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/hssf/record/pivottable/e;-><init>(Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;I)V

    const-string v5, "citmShow"

    new-instance v6, Lorg/apache/poi/hssf/record/pivottable/f;

    invoke-direct {v6, p0, v2}, Lorg/apache/poi/hssf/record/pivottable/f;-><init>(Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;I)V

    const-string v7, "isxdiSort"

    new-instance v8, Lorg/apache/poi/hssf/record/pivottable/d;

    const/4 v2, 0x1

    invoke-direct {v8, p0, v2}, Lorg/apache/poi/hssf/record/pivottable/d;-><init>(Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;I)V

    const-string v9, "isxdiShow"

    new-instance v10, Lorg/apache/poi/hssf/record/pivottable/e;

    invoke-direct {v10, p0, v2}, Lorg/apache/poi/hssf/record/pivottable/e;-><init>(Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;I)V

    const-string/jumbo v11, "subtotalName"

    new-instance v12, Lorg/apache/poi/hssf/record/pivottable/f;

    invoke-direct {v12, p0, v2}, Lorg/apache/poi/hssf/record/pivottable/f;-><init>(Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;I)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    invoke-static/range {v0 .. v11}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->EXTENDED_PIVOT_TABLE_VIEW_FIELDS:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x100

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_grbit1:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_grbit2:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_citmShow:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_isxdiSort:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_isxdiShow:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_subtotalName:Ljava/lang/String;

    if-nez v0, :cond_0

    const v0, 0xffff

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    :goto_0
    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_reserved1:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_reserved2:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;->_subtotalName:Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-static {p0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    :cond_1
    return-void
.end method
