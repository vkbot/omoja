.class public final Lorg/apache/poi/hssf/record/OldFormulaRecord;
.super Lorg/apache/poi/hssf/record/OldCellRecord;
.source "SourceFile"


# static fields
.field public static final biff2_sid:S = 0x6s

.field public static final biff3_sid:S = 0x206s

.field public static final biff4_sid:S = 0x406s

.field public static final biff5_sid:S = 0x6s


# instance fields
.field private field_4_value:D

.field private field_5_options:S

.field private field_6_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

.field private specialCachedValue:Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->getSid()S

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/OldCellRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;Z)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldCellRecord;->isBiff2()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->field_4_value:D

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->create(J)Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->field_4_value:D

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldCellRecord;->isBiff2()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->field_5_options:S

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->field_5_options:S

    :goto_2
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v1

    invoke-static {v0, p1, v1}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;I)Lorg/apache/poi/ss/formula/Formula;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->field_6_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/OldFormulaRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/OldFormulaRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/hssf/record/OldCellRecord;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCachedBooleanValue()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->getBooleanValue()Z

    move-result p0

    return p0
.end method

.method public getCachedErrorValue()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->getErrorValue()I

    move-result p0

    return p0
.end method

.method public getCachedResultType()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;

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

    iget-object p0, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;

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

    iget-object p0, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->field_6_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

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

    const-string v0, "base"

    new-instance v1, Lorg/apache/poi/hssf/record/q2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/q2;-><init>(Lorg/apache/poi/hssf/record/OldFormulaRecord;I)V

    const-string/jumbo v2, "options"

    new-instance v3, Lorg/apache/poi/hssf/record/q1;

    const/16 v4, 0x8

    invoke-direct {v3, p0, v4}, Lorg/apache/poi/hssf/record/q1;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string v4, "formula"

    new-instance v5, Lorg/apache/poi/hssf/record/m2;

    const/4 v6, 0x2

    invoke-direct {v5, v6, p0}, Lorg/apache/poi/hssf/record/m2;-><init>(ILjava/lang/Object;)V

    const-string/jumbo v6, "value"

    new-instance v7, Lorg/apache/poi/hssf/record/q2;

    const/4 v8, 0x1

    invoke-direct {v7, p0, v8}, Lorg/apache/poi/hssf/record/q2;-><init>(Lorg/apache/poi/hssf/record/OldFormulaRecord;I)V

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldFormulaRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

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

    iget-short p0, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->field_5_options:S

    return p0
.end method

.method public getParsedExpression()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->field_6_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0
.end method

.method public getValue()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->field_4_value:D

    return-wide v0
.end method
