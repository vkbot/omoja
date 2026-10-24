.class public final Lorg/apache/poi/ss/formula/OperationEvaluationContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final UDF:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# instance fields
.field private final _bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

.field private final _columnIndex:I

.field private _isInArrayContext:Z

.field private final _isSingleValue:Z

.field private final _rowIndex:I

.field private final _sheetIndex:I

.field private final _tracker:Lorg/apache/poi/ss/formula/EvaluationTracker;

.field private final _workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/formula/UserDefinedFunction;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    sput-object v0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->UDF:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationWorkbook;IIILorg/apache/poi/ss/formula/EvaluationTracker;)V
    .locals 8

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationWorkbook;IIILorg/apache/poi/ss/formula/EvaluationTracker;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationWorkbook;IIILorg/apache/poi/ss/formula/EvaluationTracker;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    iput-object p2, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    iput p3, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_sheetIndex:I

    iput p4, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_rowIndex:I

    iput p5, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_columnIndex:I

    iput-object p6, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_tracker:Lorg/apache/poi/ss/formula/EvaluationTracker;

    iput-boolean p7, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_isSingleValue:Z

    return-void
.end method

.method public static applyR1C1Reference(Lorg/apache/poi/ss/util/CellReference;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellReference;
    .locals 7

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x43

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v1, :cond_6

    if-le v0, v1, :cond_6

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "]"

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eqz v3, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v3, v1

    :goto_0
    move v1, v6

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v5

    goto :goto_0

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :cond_3
    :goto_2
    if-ltz v1, :cond_4

    sub-int/2addr v1, v2

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result p1

    add-int v1, p1, v3

    :goto_3
    if-ltz v6, :cond_5

    sub-int/2addr v6, v2

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result p0

    add-int v6, p0, v5

    :goto_4
    new-instance p0, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {p0, v1, v6}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, " is not a valid R1C1 reference"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static classifyCellReference(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/util/CellReference$NameType;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object p0, Lorg/apache/poi/ss/util/CellReference$NameType;->BAD_CELL_OR_NAMED_RANGE:Lorg/apache/poi/ss/util/CellReference$NameType;

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/CellReference;->classifyCellReference(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/util/CellReference$NameType;

    move-result-object p0

    return-object p0
.end method

.method private convertObjectEval(Ljava/lang/Object;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    if-eqz p1, :cond_4

    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_0

    new-instance p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    instance-of p0, p1, Ljava/lang/Double;

    if-eqz p0, :cond_1

    new-instance p0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p0

    :cond_1
    instance-of p0, p1, Ljava/lang/Boolean;

    if-eqz p0, :cond_2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/BoolEval;->valueOf(Z)Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of p0, p1, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    if-eqz p0, :cond_3

    check-cast p1, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->getErrorCode()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->valueOf(I)Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected constant class ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Array item cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createExternSheetRefEvaluator(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/formula/SheetRefEvaluator;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .line 22
    invoke-virtual {v1, p1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getOtherWorkbookEvaluator(Ljava/lang/String;)Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez p2, :cond_1

    iget p2, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_sheetIndex:I

    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {p1, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getSheetIndex(Ljava/lang/String;)I

    move-result p2

    :goto_1
    if-gez p2, :cond_2

    return-object v0

    .line 24
    :cond_2
    new-instance v0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    iget-object p0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_tracker:Lorg/apache/poi/ss/formula/EvaluationTracker;

    invoke-direct {v0, p1, p0, p2}, Lorg/apache/poi/ss/formula/SheetRefEvaluator;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationTracker;I)V

    :catch_0
    return-object v0

    .line 25
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sheetName must not be null if workbookName is provided"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getExternalNameXEval(Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;Ljava/lang/String;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 8

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-virtual {v0, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getOtherWorkbookEvaluator(Ljava/lang/String;)Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;->getIx()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    invoke-virtual {v2, p2, p1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationName;->hasFormula()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationName;->getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p2

    array-length p2, p2

    if-gt p2, v0, :cond_3

    new-instance p2, Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    iget-object v7, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_tracker:Lorg/apache/poi/ss/formula/EvaluationTracker;

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationWorkbook;IIILorg/apache/poi/ss/formula/EvaluationTracker;)V

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationName;->getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    instance-of p1, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    if-eqz p1, :cond_0

    check-cast p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    invoke-virtual {p2, p0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRef3DEval(Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of p1, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    if-eqz p1, :cond_1

    check-cast p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    invoke-virtual {p2, p0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRef3DEval(Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of p1, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    if-eqz p1, :cond_2

    check-cast p0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    invoke-virtual {p2, p0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getArea3DEval(Lorg/apache/poi/ss/formula/ptg/Area3DPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of p1, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    if-eqz p1, :cond_4

    check-cast p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    invoke-virtual {p2, p0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getArea3DEval(Lorg/apache/poi/ss/formula/ptg/Area3DPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Complex name formulas not supported yet"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0
.end method

.method private getLocalNameXEval(Lorg/apache/poi/ss/formula/ptg/NameXPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    .line 7
    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->resolveNameXText(Lorg/apache/poi/ss/formula/ptg/NameXPtg;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x21

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    .line 11
    invoke-interface {p0, v1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v0, v1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    .line 12
    invoke-interface {p0, p1, v1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 13
    new-instance p1, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;

    invoke-direct {p1, p0}, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;-><init>(Lorg/apache/poi/ss/formula/EvaluationName;)V

    return-object p1

    .line 14
    :cond_1
    new-instance p0, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private getLocalNameXEval(Lorg/apache/poi/ss/formula/ptg/NameXPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getSheetName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 3
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getNameName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    .line 4
    invoke-interface {p0, p1, v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5
    new-instance p1, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;

    invoke-direct {p1, p0}, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;-><init>(Lorg/apache/poi/ss/formula/EvaluationName;)V

    return-object p1

    .line 6
    :cond_1
    new-instance p0, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private static getR1C1CellType(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellReference$NameType;
    .locals 2

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x52

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x43

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne p0, v1, :cond_0

    sget-object p0, Lorg/apache/poi/ss/util/CellReference$NameType;->ROW:Lorg/apache/poi/ss/util/CellReference$NameType;

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/poi/ss/util/CellReference$NameType;->CELL:Lorg/apache/poi/ss/util/CellReference$NameType;

    return-object p0

    :cond_1
    if-ne p0, v1, :cond_2

    sget-object p0, Lorg/apache/poi/ss/util/CellReference$NameType;->BAD_CELL_OR_NAMED_RANGE:Lorg/apache/poi/ss/util/CellReference$NameType;

    return-object p0

    :cond_2
    sget-object p0, Lorg/apache/poi/ss/util/CellReference$NameType;->COLUMN:Lorg/apache/poi/ss/util/CellReference$NameType;

    return-object p0
.end method

.method private static parseColRef(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private static parseRowRef(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/ss/util/CellReference;->convertColStringToIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public createExternSheetRefEvaluator(I)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    .line 4
    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getExternalSheet(I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->createExternSheetRefEvaluator(Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object p0

    return-object p0
.end method

.method public createExternSheetRefEvaluator(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getExternalSheet(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->createExternSheetRefEvaluator(Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object p0

    return-object p0
.end method

.method public createExternSheetRefEvaluator(Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getWorkbookName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getWorkbookName()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .line 8
    invoke-virtual {v3, v2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getOtherWorkbookEvaluator(Ljava/lang/String;)Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    move-result-object v3
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getSheetName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getSheetIndex(Ljava/lang/String;)I

    move-result v4

    .line 10
    instance-of v5, p1, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;

    if-eqz v5, :cond_1

    .line 11
    move-object v5, p1

    check-cast v5, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;->getLastSheetName()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-virtual {v3, v5}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getSheetIndex(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v1

    :goto_0
    if-ltz v4, :cond_2

    goto :goto_3

    .line 13
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid sheet name \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getSheetName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' in bool \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 14
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    :goto_1
    iget-object v3, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    if-nez p1, :cond_4

    move v4, v0

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    .line 15
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getSheetName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v2

    move v4, v2

    .line 16
    :goto_2
    instance-of v2, p1, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;

    if-eqz v2, :cond_5

    .line 17
    check-cast p1, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;->getLastSheetName()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    .line 18
    invoke-interface {v2, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v5

    goto :goto_3

    :cond_5
    move v5, v1

    :goto_3
    if-ne v5, v1, :cond_6

    move v5, v4

    :cond_6
    sub-int p1, v5, v4

    add-int/lit8 p1, p1, 0x1

    .line 19
    new-array v1, p1, [Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    :goto_4
    if-ge v0, p1, :cond_7

    add-int v2, v0, v4

    .line 20
    new-instance v6, Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    iget-object v7, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_tracker:Lorg/apache/poi/ss/formula/EvaluationTracker;

    invoke-direct {v6, v3, v7, v2}, Lorg/apache/poi/ss/formula/SheetRefEvaluator;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationTracker;I)V

    aput-object v6, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 21
    :cond_7
    new-instance p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    invoke-direct {p0, v4, v5, v1}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;-><init>(II[Lorg/apache/poi/ss/formula/SheetRefEvaluator;)V

    return-object p0
.end method

.method public createExternSheetRefEvaluator(Lorg/apache/poi/ss/formula/ExternSheetReferenceToken;)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;
    .locals 0

    .line 1
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/ExternSheetReferenceToken;->getExternSheetIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->createExternSheetRefEvaluator(I)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object p0

    return-object p0
.end method

.method public findUserDefinedFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->findUserDefinedFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    move-result-object p0

    return-object p0
.end method

.method public getArea3DEval(Lorg/apache/poi/ss/formula/ptg/Area3DPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getExternSheetIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->createExternSheetRefEvaluator(I)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object v6

    .line 2
    new-instance p0, Lorg/apache/poi/ss/formula/LazyAreaEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstRow()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstColumn()I

    move-result v3

    .line 3
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastRow()I

    move-result v4

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastColumn()I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/formula/LazyAreaEval;-><init>(IIIILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object p0
.end method

.method public getArea3DEval(Lorg/apache/poi/ss/formula/ptg/Area3DPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 9

    .line 4
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getSheetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getLastSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getExternalWorkbookNumber()I

    move-result v2

    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->createExternSheetRefEvaluator(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object v8

    .line 6
    new-instance p0, Lorg/apache/poi/ss/formula/LazyAreaEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstRow()I

    move-result v4

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstColumn()I

    move-result v5

    .line 7
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastRow()I

    move-result v6

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastColumn()I

    move-result v7

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lorg/apache/poi/ss/formula/LazyAreaEval;-><init>(IIIILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object p0
.end method

.method public getAreaEval(IIII)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRefEvaluatorForCurrentSheet()Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object v5

    new-instance p0, Lorg/apache/poi/ss/formula/LazyAreaEval;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/formula/LazyAreaEval;-><init>(IIIILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object p0
.end method

.method public getAreaValueEval(IIII[[Ljava/lang/Object;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 9

    array-length v0, p5

    const/4 v1, 0x0

    aget-object v2, p5, v1

    array-length v2, v2

    mul-int/2addr v0, v2

    new-array v7, v0, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    array-length v0, p5

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p5, v2

    move v5, v1

    :goto_1
    aget-object v6, p5, v1

    array-length v6, v6

    if-ge v5, v6, :cond_0

    add-int/lit8 v6, v3, 0x1

    aget-object v8, v4, v5

    invoke-direct {p0, v8}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->convertObjectEval(Ljava/lang/Object;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v8

    aput-object v8, v7, v3

    add-int/lit8 v5, v5, 0x1

    move v3, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/poi/ss/formula/CacheAreaEval;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v2 .. v7}, Lorg/apache/poi/ss/formula/CacheAreaEval;-><init>(IIII[Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    return-object p0
.end method

.method public getColumnIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_columnIndex:I

    return p0
.end method

.method public getDynamicReference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct/range {p0 .. p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->createExternSheetRefEvaluator(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    :cond_0
    new-instance v4, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    iget v5, v0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_sheetIndex:I

    invoke-direct {v4, v5, v3}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;-><init>(ILorg/apache/poi/ss/formula/SheetRefEvaluator;)V

    iget-object v3, v0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v3}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object v3

    if-eqz p5, :cond_1

    invoke-static {v1, v3}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->classifyCellReference(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/util/CellReference$NameType;

    move-result-object v5

    goto :goto_0

    :cond_1
    invoke-static/range {p3 .. p3}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getR1C1CellType(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellReference$NameType;

    move-result-object v5

    :goto_0
    sget-object v6, Lorg/apache/poi/ss/formula/OperationEvaluationContext$1;->$SwitchMap$org$apache$poi$ss$util$CellReference$NameType:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v6, v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_19

    const/4 v9, 0x2

    if-eq v7, v9, :cond_16

    const-string v7, "\'."

    const-string v10, "Unexpected reference classification of \'"

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x3

    if-nez v2, :cond_c

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v6, v2

    const-string v5, "]"

    const-string v6, "["

    if-eq v2, v13, :cond_8

    if-eq v2, v12, :cond_4

    if-ne v2, v11, :cond_3

    if-eqz p5, :cond_2

    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v2, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v0

    invoke-direct {v2, v3, v0}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-static {v2, v1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->applyR1C1Reference(Lorg/apache/poi/ss/util/CellReference;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    :goto_1
    new-instance v1, Lorg/apache/poi/ss/formula/LazyRefEval;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v0

    invoke-direct {v1, v2, v0, v4}, Lorg/apache/poi/ss/formula/LazyRefEval;-><init>(IILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v10, v1, v7}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-eqz p5, :cond_5

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    :cond_5
    :try_start_0
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x52

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/2addr v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v8

    invoke-virtual {v1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v0, v8

    :goto_2
    new-instance v1, Lorg/apache/poi/ss/formula/LazyAreaEval;

    const/4 v2, 0x0

    invoke-virtual {v3}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v3

    move-object/from16 p0, v1

    move/from16 p1, v0

    move/from16 p2, v2

    move/from16 p3, v0

    move/from16 p4, v3

    move-object/from16 p5, v4

    invoke-direct/range {p0 .. p5}, Lorg/apache/poi/ss/formula/LazyAreaEval;-><init>(IIIILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object v1

    :cond_7
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    :cond_8
    if-eqz p5, :cond_9

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    :cond_9
    :try_start_1
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x43

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/2addr v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v8

    invoke-virtual {v1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_3

    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v0, v8

    :goto_3
    new-instance v1, Lorg/apache/poi/ss/formula/LazyAreaEval;

    const/4 v2, 0x0

    invoke-virtual {v3}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v3

    move-object/from16 p0, v1

    move/from16 p1, v2

    move/from16 p2, v0

    move/from16 p3, v3

    move/from16 p4, v0

    move-object/from16 p5, v4

    invoke-direct/range {p0 .. p5}, Lorg/apache/poi/ss/formula/LazyAreaEval;-><init>(IIIILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object v1

    :cond_b
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    :cond_c
    if-eqz p5, :cond_d

    invoke-static {v2, v3}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->classifyCellReference(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/util/CellReference$NameType;

    move-result-object v14

    goto :goto_4

    :cond_d
    invoke-static/range {p4 .. p4}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getR1C1CellType(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellReference$NameType;

    move-result-object v14

    :goto_4
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aget v15, v6, v15

    if-eq v15, v8, :cond_15

    if-eq v15, v9, :cond_14

    if-eq v14, v5, :cond_e

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    :cond_e
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    const/4 v6, 0x0

    if-eq v5, v13, :cond_13

    if-eq v5, v12, :cond_12

    if-ne v5, v11, :cond_11

    if-eqz p5, :cond_f

    new-instance v3, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v3, v1}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_f
    new-instance v3, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v6

    invoke-direct {v3, v5, v6}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-static {v3, v1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->applyR1C1Reference(Lorg/apache/poi/ss/util/CellReference;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellReference;

    move-result-object v3

    :goto_5
    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v1

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v3

    if-eqz p5, :cond_10

    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v0, v2}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_10
    new-instance v5, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v0

    invoke-direct {v5, v6, v0}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-static {v5, v2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->applyR1C1Reference(Lorg/apache/poi/ss/util/CellReference;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    :goto_6
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v0

    goto :goto_7

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v10, v1, v7}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    invoke-virtual {v3}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v0

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->parseColRef(Ljava/lang/String;)I

    move-result v1

    invoke-static/range {p4 .. p4}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->parseColRef(Ljava/lang/String;)I

    move-result v2

    move v3, v6

    goto :goto_7

    :cond_13
    invoke-virtual {v3}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v0

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->parseRowRef(Ljava/lang/String;)I

    move-result v1

    invoke-static/range {p4 .. p4}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->parseRowRef(Ljava/lang/String;)I

    move-result v2

    move v3, v1

    move v1, v6

    move/from16 v16, v2

    move v2, v0

    move/from16 v0, v16

    :goto_7
    new-instance v5, Lorg/apache/poi/ss/formula/LazyAreaEval;

    move-object/from16 p0, v5

    move/from16 p1, v1

    move/from16 p2, v3

    move/from16 p3, v2

    move/from16 p4, v0

    move-object/from16 p5, v4

    invoke-direct/range {p0 .. p5}, Lorg/apache/poi/ss/formula/LazyAreaEval;-><init>(IIIILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object v5

    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot evaluate \'"

    const-string v3, "\'. Indirect evaluation of defined names not supported yet"

    invoke-static {v2, v1, v3}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    :cond_16
    iget-object v2, v0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    iget v3, v0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_sheetIndex:I

    invoke-interface {v2, v1, v3}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object v2

    const-string v3, "Specified name \'"

    if-eqz v2, :cond_18

    invoke-interface {v2}, Lorg/apache/poi/ss/formula/EvaluationName;->isRange()Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v1, v0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-interface {v2}, Lorg/apache/poi/ss/formula/EvaluationName;->getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateNameFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "\' is not a range as expected."

    invoke-static {v3, v1, v2}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "\' is not found in the workbook (sheetIndex="

    invoke-static {v3, v1, v4}, Landroidx/activity/result/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_sheetIndex:I

    const-string v3, ")."

    invoke-static {v1, v0, v3}, La4/a;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_19
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0
.end method

.method public getNameXEval(Lorg/apache/poi/ss/formula/ptg/NameXPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->getSheetRefIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getExternalSheet(I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getWorkbookName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getWorkbookName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    .line 4
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->getSheetRefIndex()I

    move-result v2

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->getNameIndex()I

    move-result p1

    .line 6
    invoke-interface {v1, v2, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getExternalName(II)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;

    move-result-object p1

    .line 7
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getExternalNameXEval(Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;Ljava/lang/String;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getLocalNameXEval(Lorg/apache/poi/ss/formula/ptg/NameXPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method

.method public getNameXEval(Lorg/apache/poi/ss/formula/ptg/NameXPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getSheetName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getExternalWorkbookNumber()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getExternalSheet(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getWorkbookName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getWorkbookName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getNameName()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getSheetName()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getExternalWorkbookNumber()I

    move-result p1

    .line 15
    invoke-interface {v1, v2, v3, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getExternalName(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;

    move-result-object p1

    .line 16
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getExternalNameXEval(Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;Ljava/lang/String;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    .line 17
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getLocalNameXEval(Lorg/apache/poi/ss/formula/ptg/NameXPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method

.method public getRef3DEval(Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->getExternSheetIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->createExternSheetRefEvaluator(I)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object p0

    .line 2
    new-instance v0, Lorg/apache/poi/ss/formula/LazyRefEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getRow()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getColumn()I

    move-result p1

    invoke-direct {v0, v1, p1, p0}, Lorg/apache/poi/ss/formula/LazyRefEval;-><init>(IILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object v0
.end method

.method public getRef3DEval(Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3

    .line 3
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getSheetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getLastSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getExternalWorkbookNumber()I

    move-result v2

    .line 4
    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->createExternSheetRefEvaluator(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object p0

    .line 5
    new-instance v0, Lorg/apache/poi/ss/formula/LazyRefEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getRow()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getColumn()I

    move-result p1

    invoke-direct {v0, v1, p1, p0}, Lorg/apache/poi/ss/formula/LazyRefEval;-><init>(IILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object v0
.end method

.method public getRefEval(II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRefEvaluatorForCurrentSheet()Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/ss/formula/LazyRefEval;

    invoke-direct {v0, p1, p2, p0}, Lorg/apache/poi/ss/formula/LazyRefEval;-><init>(IILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object v0
.end method

.method public getRefEvaluatorForCurrentSheet()Lorg/apache/poi/ss/formula/SheetRangeEvaluator;
    .locals 4

    new-instance v0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    iget-object v2, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_tracker:Lorg/apache/poi/ss/formula/EvaluationTracker;

    iget v3, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_sheetIndex:I

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/ss/formula/SheetRefEvaluator;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationTracker;I)V

    new-instance v1, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    iget p0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_sheetIndex:I

    invoke-direct {v1, p0, v0}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;-><init>(ILorg/apache/poi/ss/formula/SheetRefEvaluator;)V

    return-object v1
.end method

.method public getRowIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_rowIndex:I

    return p0
.end method

.method public getSheetIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_sheetIndex:I

    return p0
.end method

.method public getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    return-object p0
.end method

.method public isArraymode()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_isInArrayContext:Z

    return p0
.end method

.method public isSingleValue()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_isSingleValue:Z

    return p0
.end method

.method public setArrayMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_isInArrayContext:Z

    return-void
.end method
