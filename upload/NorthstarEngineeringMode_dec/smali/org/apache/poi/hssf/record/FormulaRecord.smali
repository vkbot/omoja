.class public final Lorg/apache/poi/hssf/record/FormulaRecord;
.super Lorg/apache/poi/hssf/record/CellRecord;
.source "SourceFile"


# static fields
.field private static final FIXED_SIZE:I = 0xe

.field private static final alwaysCalc:Lorg/apache/poi/util/BitField;

.field private static final calcOnLoad:Lorg/apache/poi/util/BitField;

.field private static final sharedFormula:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x6s


# instance fields
.field private field_4_value:D

.field private field_5_options:S

.field private field_6_zero:I

.field private field_8_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

.field private specialCachedValue:Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/FormulaRecord;->alwaysCalc:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/FormulaRecord;->calcOnLoad:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/FormulaRecord;->sharedFormula:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CellRecord;-><init>()V

    sget-object v0, Lorg/apache/poi/ss/formula/ptg/Ptg;->EMPTY_PTG_ARRAY:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 2
    invoke-static {v0}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_8_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/FormulaRecord;)V
    .locals 3

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/CellRecord;-><init>(Lorg/apache/poi/hssf/record/CellRecord;)V

    .line 4
    iget-wide v0, p1, Lorg/apache/poi/hssf/record/FormulaRecord;->field_4_value:D

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_4_value:D

    .line 5
    iget-short v0, p1, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    .line 6
    iget v0, p1, Lorg/apache/poi/hssf/record/FormulaRecord;->field_6_zero:I

    iput v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_6_zero:I

    .line 7
    iget-object v0, p1, Lorg/apache/poi/hssf/record/FormulaRecord;->field_8_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/ss/formula/Formula;

    iget-object v2, p1, Lorg/apache/poi/hssf/record/FormulaRecord;->field_8_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    invoke-direct {v0, v2}, Lorg/apache/poi/ss/formula/Formula;-><init>(Lorg/apache/poi/ss/formula/Formula;)V

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_8_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    .line 8
    iget-object p1, p1, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;

    invoke-direct {v1, p1}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;-><init>(Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;)V

    :goto_1
    iput-object v1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3

    .line 9
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/CellRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 10
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readLong()J

    move-result-wide v0

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v2

    iput-short v2, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    .line 12
    invoke-static {v0, v1}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->create(J)Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;

    if-nez v2, :cond_0

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_4_value:D

    .line 14
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_6_zero:I

    .line 15
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    .line 16
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v1

    .line 17
    invoke-static {v0, p1, v1}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;I)Lorg/apache/poi/ss/formula/Formula;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_8_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/FormulaRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FormulaRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/FormulaRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FormulaRecord;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hssf/record/FormulaRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FormulaRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/hssf/record/CellRecord;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_6_zero:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_4_value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord;->copy()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/CellRecord;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord;->copy()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/FormulaRecord;
    .locals 1

    .line 5
    new-instance v0, Lorg/apache/poi/hssf/record/FormulaRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FormulaRecord;-><init>(Lorg/apache/poi/hssf/record/FormulaRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord;->copy()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord;->copy()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object p0

    return-object p0
.end method

.method public getCachedBooleanValue()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->getBooleanValue()Z

    move-result p0

    return p0
.end method

.method public getCachedErrorValue()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->getErrorValue()I

    move-result p0

    return p0
.end method

.method public getCachedResultType()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "6.0.0"
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/CellType;->getCode()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->getValueType()I

    move-result p0

    return p0
.end method

.method public getCachedResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->getValueTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p0

    return-object p0
.end method

.method public getFormula()Lorg/apache/poi/ss/formula/Formula;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_8_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    return-object p0
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

    const-string v1, "base"

    new-instance v2, Lorg/apache/poi/hssf/record/i1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lorg/apache/poi/hssf/record/i1;-><init>(Lorg/apache/poi/hssf/record/FormulaRecord;I)V

    const-string/jumbo v4, "options"

    new-instance v5, Lorg/apache/poi/hssf/record/j1;

    invoke-direct {v5, v0, v3}, Lorg/apache/poi/hssf/record/j1;-><init>(Lorg/apache/poi/hssf/record/FormulaRecord;I)V

    const-string v6, "alwaysCalc"

    new-instance v7, Lorg/apache/poi/hssf/record/k1;

    invoke-direct {v7, v0, v3}, Lorg/apache/poi/hssf/record/k1;-><init>(Lorg/apache/poi/hssf/record/FormulaRecord;I)V

    const-string v8, "calcOnLoad"

    new-instance v9, Lorg/apache/poi/hssf/record/i1;

    const/4 v3, 0x1

    invoke-direct {v9, v0, v3}, Lorg/apache/poi/hssf/record/i1;-><init>(Lorg/apache/poi/hssf/record/FormulaRecord;I)V

    const-string/jumbo v10, "shared"

    new-instance v11, Lorg/apache/poi/hssf/record/j1;

    invoke-direct {v11, v0, v3}, Lorg/apache/poi/hssf/record/j1;-><init>(Lorg/apache/poi/hssf/record/FormulaRecord;I)V

    const-string/jumbo v12, "zero"

    new-instance v13, Lorg/apache/poi/hssf/record/k1;

    invoke-direct {v13, v0, v3}, Lorg/apache/poi/hssf/record/k1;-><init>(Lorg/apache/poi/hssf/record/FormulaRecord;I)V

    const-string/jumbo v14, "value"

    new-instance v15, Lorg/apache/poi/hssf/record/i1;

    const/4 v3, 0x2

    invoke-direct {v15, v0, v3}, Lorg/apache/poi/hssf/record/i1;-><init>(Lorg/apache/poi/hssf/record/FormulaRecord;I)V

    const-string v16, "formula"

    move-object/from16 v17, v15

    new-instance v15, Lorg/apache/poi/hssf/record/j1;

    invoke-direct {v15, v0, v3}, Lorg/apache/poi/hssf/record/j1;-><init>(Lorg/apache/poi/hssf/record/FormulaRecord;I)V

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
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->FORMULA:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getOptions()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    return p0
.end method

.method public getParsedExpression()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_8_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 0

    const-string p0, "FORMULA"

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public getValue()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_4_value:D

    return-wide v0
.end method

.method public getValueDataSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_8_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/Formula;->getEncodedSize()I

    move-result p0

    add-int/lit8 p0, p0, 0xe

    return p0
.end method

.method public hasCachedResultString()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->getTypeCode()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAlwaysCalc()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/FormulaRecord;->alwaysCalc:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isCalcOnLoad()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/FormulaRecord;->calcOnLoad:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isSharedFormula()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/FormulaRecord;->sharedFormula:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public serializeValue(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_4_value:D

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getOptions()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_6_zero:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_8_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/Formula;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    return-void
.end method

.method public setAlwaysCalc(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/FormulaRecord;->alwaysCalc:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    return-void
.end method

.method public setCachedResultBoolean(Z)V
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->createCachedBoolean(Z)Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;

    return-void
.end method

.method public setCachedResultErrorCode(I)V
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->createCachedErrorCode(I)Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;

    return-void
.end method

.method public setCachedResultTypeEmptyString()V
    .locals 1

    invoke-static {}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->createCachedEmptyValue()Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;

    return-void
.end method

.method public setCachedResultTypeString()V
    .locals 1

    invoke-static {}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->createForString()Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;

    return-void
.end method

.method public setCalcOnLoad(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/FormulaRecord;->calcOnLoad:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    return-void
.end method

.method public setOptions(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    return-void
.end method

.method public setParsedExpression([Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_8_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    return-void
.end method

.method public setSharedFormula(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/FormulaRecord;->sharedFormula:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    return-void
.end method

.method public setValue(D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_4_value:D

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;

    return-void
.end method
