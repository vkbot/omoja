.class public final Lorg/apache/poi/hssf/record/ArrayRecord;
.super Lorg/apache/poi/hssf/record/SharedValueRecordBase;
.source "SourceFile"


# static fields
.field private static final OPT_ALWAYS_RECALCULATE:I = 0x1

.field private static final OPT_CALCULATE_ON_OPEN:I = 0x2

.field public static final sid:S = 0x221s


# instance fields
.field private _field3notUsed:I

.field private _formula:Lorg/apache/poi/ss/formula/Formula;

.field private _options:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/ArrayRecord;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/SharedValueRecordBase;-><init>(Lorg/apache/poi/hssf/record/SharedValueRecordBase;)V

    .line 2
    iget v0, p1, Lorg/apache/poi/hssf/record/ArrayRecord;->_options:I

    iput v0, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_options:I

    .line 3
    iget v0, p1, Lorg/apache/poi/hssf/record/ArrayRecord;->_field3notUsed:I

    iput v0, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_field3notUsed:I

    .line 4
    iget-object p1, p1, Lorg/apache/poi/hssf/record/ArrayRecord;->_formula:Lorg/apache/poi/ss/formula/Formula;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/Formula;->copy()Lorg/apache/poi/ss/formula/Formula;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_formula:Lorg/apache/poi/ss/formula/Formula;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2

    .line 5
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/SharedValueRecordBase;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    .line 6
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_options:I

    .line 7
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_field3notUsed:I

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v1

    .line 10
    invoke-static {v0, p1, v1}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;I)Lorg/apache/poi/ss/formula/Formula;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_formula:Lorg/apache/poi/ss/formula/Formula;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/Formula;Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;)V
    .locals 0

    .line 11
    invoke-direct {p0, p2}, Lorg/apache/poi/hssf/record/SharedValueRecordBase;-><init>(Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;)V

    const/4 p2, 0x0

    iput p2, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_options:I

    iput p2, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_field3notUsed:I

    iput-object p1, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_formula:Lorg/apache/poi/ss/formula/Formula;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/ArrayRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/ArrayRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/ArrayRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/ArrayRecord;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hssf/record/ArrayRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/ArrayRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_options:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_field3notUsed:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_formula:Lorg/apache/poi/ss/formula/Formula;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ArrayRecord;->copy()Lorg/apache/poi/hssf/record/ArrayRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/ArrayRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/ArrayRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ArrayRecord;-><init>(Lorg/apache/poi/hssf/record/ArrayRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ArrayRecord;->copy()Lorg/apache/poi/hssf/record/ArrayRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ArrayRecord;->copy()Lorg/apache/poi/hssf/record/ArrayRecord;

    move-result-object p0

    return-object p0
.end method

.method public getExtraDataSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_formula:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/Formula;->getEncodedSize()I

    move-result p0

    add-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public getFormulaTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_formula:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0
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

    const-string/jumbo v0, "range"

    new-instance v1, Lorg/apache/poi/hssf/record/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/b;-><init>(Lorg/apache/poi/hssf/record/ArrayRecord;I)V

    const-string/jumbo v2, "options"

    new-instance v3, Lorg/apache/poi/hssf/record/o0;

    const/4 v4, 0x5

    invoke-direct {v3, p0, v4}, Lorg/apache/poi/hssf/record/o0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string v4, "notUsed"

    new-instance v5, Lorg/apache/poi/hssf/record/p0;

    const/4 v6, 0x4

    invoke-direct {v5, p0, v6}, Lorg/apache/poi/hssf/record/p0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string v6, "formula"

    new-instance v7, Lorg/apache/poi/hssf/record/b;

    const/4 v8, 0x1

    invoke-direct {v7, p0, v8}, Lorg/apache/poi/hssf/record/b;-><init>(Lorg/apache/poi/hssf/record/ArrayRecord;I)V

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ArrayRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->ARRAY:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x221

    return p0
.end method

.method public isAlwaysRecalculate()Z
    .locals 1

    iget p0, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_options:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCalculateOnOpen()Z
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_options:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public serializeExtraData(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_options:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_field3notUsed:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/ArrayRecord;->_formula:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/Formula;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    return-void
.end method
