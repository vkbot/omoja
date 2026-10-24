.class public final Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hssf/record/common/SharedFeature;


# static fields
.field private static final CHECK_CALCULATION_ERRORS:Lorg/apache/poi/util/BitField;

.field private static final CHECK_DATETIME_FORMATS:Lorg/apache/poi/util/BitField;

.field private static final CHECK_EMPTY_CELL_REF:Lorg/apache/poi/util/BitField;

.field private static final CHECK_INCONSISTENT_FORMULAS:Lorg/apache/poi/util/BitField;

.field private static final CHECK_INCONSISTENT_RANGES:Lorg/apache/poi/util/BitField;

.field private static final CHECK_NUMBERS_AS_TEXT:Lorg/apache/poi/util/BitField;

.field private static final CHECK_UNPROTECTED_FORMULAS:Lorg/apache/poi/util/BitField;

.field private static final PERFORM_DATA_VALIDATION:Lorg/apache/poi/util/BitField;


# instance fields
.field private errorCheck:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_CALCULATION_ERRORS:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_EMPTY_CELL_REF:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_NUMBERS_AS_TEXT:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_INCONSISTENT_RANGES:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_INCONSISTENT_FORMULAS:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_DATETIME_FORMATS:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x40

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_UNPROTECTED_FORMULAS:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x80

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->PERFORM_DATA_VALIDATION:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget p1, p1, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    iput p1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    return-void
.end method


# virtual methods
.method public _getRawErrorCheckValue()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    return p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;-><init>(Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/common/SharedFeature;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->copy()Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;

    move-result-object p0

    return-object p0
.end method

.method public getCheckCalculationErrors()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_CALCULATION_ERRORS:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getCheckDateTimeFormats()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_DATETIME_FORMATS:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getCheckEmptyCellRef()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_EMPTY_CELL_REF:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getCheckInconsistentFormulas()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_INCONSISTENT_FORMULAS:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getCheckInconsistentRanges()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_INCONSISTENT_RANGES:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getCheckNumbersAsText()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_NUMBERS_AS_TEXT:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getCheckUnprotectedFormulas()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_UNPROTECTED_FORMULAS:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getDataSize()I
    .locals 0

    const/4 p0, 0x4

    return p0
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

    new-instance v0, Lorg/apache/poi/ddf/b;

    const/16 v1, 0x10

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/ddf/b;-><init>(ILjava/lang/Object;)V

    const/16 p0, 0x8

    new-array p0, p0, [Lorg/apache/poi/util/BitField;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_CALCULATION_ERRORS:Lorg/apache/poi/util/BitField;

    aput-object v2, p0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_EMPTY_CELL_REF:Lorg/apache/poi/util/BitField;

    aput-object v2, p0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_NUMBERS_AS_TEXT:Lorg/apache/poi/util/BitField;

    aput-object v2, p0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_INCONSISTENT_RANGES:Lorg/apache/poi/util/BitField;

    aput-object v2, p0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_INCONSISTENT_FORMULAS:Lorg/apache/poi/util/BitField;

    aput-object v2, p0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_DATETIME_FORMATS:Lorg/apache/poi/util/BitField;

    aput-object v2, p0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_UNPROTECTED_FORMULAS:Lorg/apache/poi/util/BitField;

    aput-object v2, p0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->PERFORM_DATA_VALIDATION:Lorg/apache/poi/util/BitField;

    aput-object v2, p0, v1

    const-string v3, "CHECK_CALCULATION_ERRORS"

    const-string v4, "CHECK_EMPTY_CELL_REF"

    const-string v5, "CHECK_NUMBERS_AS_TEXT"

    const-string v6, "CHECK_INCONSISTENT_RANGES"

    const-string v7, "CHECK_INCONSISTENT_FORMULAS"

    const-string v8, "CHECK_DATETIME_FORMATS"

    const-string v9, "CHECK_UNPROTECTED_FORMULAS"

    const-string v10, "PERFORM_DATA_VALIDATION"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[Lorg/apache/poi/util/BitField;[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object p0

    const-string v0, "errorCheck"

    invoke-static {v0, p0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getPerformDataValidation()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->PERFORM_DATA_VALIDATION:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    return-void
.end method

.method public setCheckCalculationErrors(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_CALCULATION_ERRORS:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    return-void
.end method

.method public setCheckDateTimeFormats(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_DATETIME_FORMATS:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    return-void
.end method

.method public setCheckEmptyCellRef(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_EMPTY_CELL_REF:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    return-void
.end method

.method public setCheckInconsistentFormulas(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_INCONSISTENT_FORMULAS:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    return-void
.end method

.method public setCheckInconsistentRanges(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_INCONSISTENT_RANGES:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    return-void
.end method

.method public setCheckNumbersAsText(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_NUMBERS_AS_TEXT:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    return-void
.end method

.method public setCheckUnprotectedFormulas(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_UNPROTECTED_FORMULAS:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    return-void
.end method

.method public setPerformDataValidation(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->PERFORM_DATA_VALIDATION:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
