.class public final Lorg/apache/poi/ss/formula/WorkbookEvaluator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final EVAL_LOG:La5/d;

.field private static final LOG:La5/d;


# instance fields
.field private _cache:Lorg/apache/poi/ss/formula/EvaluationCache;

.field private _collaboratingWorkbookEnvironment:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

.field private final _evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

.field private _ignoreMissingWorkbooks:Z

.field private final _sheetIndexesByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final _sheetIndexesBySheet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/formula/EvaluationSheet;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final _stabilityClassifier:Lorg/apache/poi/ss/formula/IStabilityClassifier;

.field private final _udfFinder:Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;

.field private final _workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

.field private _workbookIx:I

.field private dbgEvaluationOutputForNextEval:Z

.field private dbgEvaluationOutputIndent:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->LOG:La5/d;

    :try_start_0
    sget-object v0, La5/c;->b:Le5/j;

    invoke-interface {v0}, Le5/j;->a()Ld5/b;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, La5/c;->a:Lf5/d;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "{} Using SimpleLogger"

    invoke-virtual {v1, v0, v2}, Le5/a;->d(Ljava/io/Serializable;Ljava/lang/String;)V

    sget-object v0, Ld5/b;->j:Ld5/b;

    :goto_0
    const-string v1, "POI.FormulaEval"

    invoke-virtual {v0, v1}, Ld5/b;->a(Ljava/lang/String;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->EVAL_LOG:La5/d;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/EvaluationWorkbook;Lorg/apache/poi/ss/formula/IEvaluationListener;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    iput-object p1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    iput-object p2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    .line 3
    new-instance v0, Lorg/apache/poi/ss/formula/EvaluationCache;

    invoke-direct {v0, p2}, Lorg/apache/poi/ss/formula/EvaluationCache;-><init>(Lorg/apache/poi/ss/formula/IEvaluationListener;)V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    .line 4
    new-instance p2, Ljava/util/IdentityHashMap;

    invoke-direct {p2}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_sheetIndexesBySheet:Ljava/util/Map;

    .line 5
    new-instance p2, Ljava/util/IdentityHashMap;

    invoke-direct {p2}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_sheetIndexesByName:Ljava/util/Map;

    .line 6
    sget-object p2, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->EMPTY:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    iput-object p2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_collaboratingWorkbookEnvironment:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    const/4 p2, 0x0

    iput p2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbookIx:I

    iput-object p3, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_stabilityClassifier:Lorg/apache/poi/ss/formula/IStabilityClassifier;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getUDFFinder()Lorg/apache/poi/ss/formula/udf/UDFFinder;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;

    :goto_0
    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    .line 8
    invoke-virtual {p1, p4}, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->add(Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    :cond_1
    iput-object p1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_udfFinder:Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/EvaluationWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;-><init>(Lorg/apache/poi/ss/formula/EvaluationWorkbook;Lorg/apache/poi/ss/formula/IEvaluationListener;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lorg/apache/poi/ss/formula/OperationEvaluationContext;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Lc5/e;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->lambda$evaluateFormula$1(Ljava/lang/String;Lorg/apache/poi/ss/formula/OperationEvaluationContext;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Lc5/e;

    move-result-object p0

    return-object p0
.end method

.method private addExceptionInfo(Lorg/apache/poi/ss/formula/eval/NotImplementedException;III)Lorg/apache/poi/ss/formula/eval/NotImplementedException;
    .locals 7

    const-string v0, "Error evaluating cell "

    :try_start_0
    iget-object p0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {p0, p2}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v2

    new-instance p0, Lorg/apache/poi/ss/util/CellReference;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p3

    move v4, p4

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    invoke-direct {p2, p0, p1}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/eval/NotImplementedException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    sget-object p2, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->LOG:La5/d;

    invoke-interface {p2}, La5/d;->h()La5/b;

    move-result-object p2

    invoke-interface {p2, p0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p0

    const-string p2, "Can\'t add exception info"

    invoke-interface {p0, p2}, La5/b;->f(Ljava/lang/String;)V

    return-object p1
.end method

.method private adjustRegionRelativeReference([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddressBase;)Z
    .locals 9

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    invoke-virtual {p3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result p2

    invoke-virtual {p3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result p3

    sub-int/2addr p2, p3

    array-length p3, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p3, :cond_4

    aget-object v3, p1, v1

    instance-of v4, v3, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;

    if-eqz v4, :cond_3

    check-cast v3, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;

    iget-object v4, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v4}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->isRowRelative()Z

    move-result v5

    const-string v6, " was requested."

    const-string v7, " files can only have "

    const/4 v8, 0x1

    if-eqz v5, :cond_1

    if-lez v0, :cond_1

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getRow()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v4}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxRows()I

    move-result v5

    if-gt v2, v5, :cond_0

    invoke-virtual {v3, v2}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->setRow(I)V

    move v2, v8

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxRows()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " rows, but row "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->isColRelative()Z

    move-result v5

    if-eqz v5, :cond_3

    if-lez p2, :cond_3

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getColumn()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v4}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxColumns()I

    move-result v5

    if-gt v2, v5, :cond_2

    invoke-virtual {v3, v2}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->setColumn(I)V

    move v2, v8

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxColumns()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " columns, but column "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return v2
.end method

.method public static synthetic b(Lorg/apache/poi/ss/formula/WorkbookEvaluator;IIILorg/apache/poi/ss/formula/eval/ValueEval;)Lc5/e;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->lambda$evaluateAny$0(IIILorg/apache/poi/ss/formula/eval/ValueEval;)Lc5/e;

    move-result-object p0

    return-object p0
.end method

.method private static countTokensToBeSkipped([Lorg/apache/poi/ss/formula/ptg/Ptg;II)I
    .locals 2

    move v0, p1

    :goto_0
    if-eqz p2, :cond_2

    add-int/lit8 v0, v0, 0x1

    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v1

    sub-int/2addr p2, v1

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Bad skip distance (wrong token size calculation)."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Skip distance too far (ran out of formula tokens)."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    sub-int/2addr v0, p1

    return v0
.end method

.method public static dereferenceResult(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    .line 11
    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    sget-object p1, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne p0, p1, :cond_0

    .line 13
    sget-object p0, Lorg/apache/poi/ss/formula/eval/NumberEval;->ZERO:Lorg/apache/poi/ss/formula/eval/NumberEval;

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0
.end method

.method private static dereferenceResult(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getSheetIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheet(I)Lorg/apache/poi/ss/formula/EvaluationSheet;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/apache/poi/ss/formula/EvaluationSheet;->getCell(II)Lorg/apache/poi/ss/formula/EvaluationCell;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationCell;->isPartOfArrayFormulaGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz v1, :cond_0

    .line 5
    check-cast p0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    invoke-static {p0, v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getElementFromArray(Lorg/apache/poi/ss/formula/eval/AreaEval;Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result p1

    invoke-static {p0, v0, p1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dereferenceResult(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    .line 7
    :goto_0
    sget-object p1, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne p0, p1, :cond_1

    .line 8
    sget-object p0, Lorg/apache/poi/ss/formula/eval/NumberEval;->ZERO:Lorg/apache/poi/ss/formula/eval/NumberEval;

    :cond_1
    return-object p0

    .line 9
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "OperationEvaluationContext ec.getWorkbook() is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "OperationEvaluationContext ec is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private evaluate(Ljava/lang/String;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddressBase;Lorg/apache/poi/ss/formula/FormulaType;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 10

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v5

    .line 14
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v1

    invoke-static {p1, v0, p4, v5, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->adjustRegionRelativeReference([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddressBase;)Z

    .line 16
    new-instance p3, Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v6

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v7

    new-instance v8, Lorg/apache/poi/ss/formula/EvaluationTracker;

    iget-object p2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    invoke-direct {v8, p2}, Lorg/apache/poi/ss/formula/EvaluationTracker;-><init>(Lorg/apache/poi/ss/formula/EvaluationCache;)V

    invoke-virtual {p4}, Lorg/apache/poi/ss/formula/FormulaType;->isSingleValue()Z

    move-result v9

    move-object v2, p3

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationWorkbook;IIILorg/apache/poi/ss/formula/EvaluationTracker;Z)V

    .line 17
    invoke-virtual {p0, p1, p3}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateNameFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    .line 18
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Sheet name is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private evaluateAny(Lorg/apache/poi/ss/formula/EvaluationCell;IIILorg/apache/poi/ss/formula/EvaluationTracker;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    const-string v14, "Unexpected cell type \'"

    iget-object v0, v8, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_stabilityClassifier:Lorg/apache/poi/ss/formula/IStabilityClassifier;

    if-eqz v0, :cond_1

    invoke-interface {v0, v10, v11, v12}, Lorg/apache/poi/ss/formula/IStabilityClassifier;->isCellFinal(III)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v9, :cond_2

    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq v1, v2, :cond_3

    :cond_2
    move v4, v10

    move v5, v11

    goto/16 :goto_a

    :cond_3
    iget-object v1, v8, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    invoke-virtual {v1, v9}, Lorg/apache/poi/ss/formula/EvaluationCache;->getOrCreateFormulaCellEntry(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    move-result-object v7

    if-nez v0, :cond_4

    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->isInputSensitive()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {v13, v7}, Lorg/apache/poi/ss/formula/EvaluationTracker;->acceptFormulaDependency(Lorg/apache/poi/ss/formula/CellCacheEntry;)V

    :cond_5
    iget-object v0, v8, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/CellCacheEntry;->getValue()Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    if-nez v1, :cond_e

    invoke-virtual {v13, v7}, Lorg/apache/poi/ss/formula/EvaluationTracker;->startEvaluate(Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->CIRCULAR_REF_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    :cond_6
    :try_start_0
    iget-object v1, v8, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v1, v9}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getFormulaTokens(Lorg/apache/poi/ss/formula/EvaluationCell;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v6

    new-instance v5, Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    iget-object v3, v8, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/NotImplementedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, v5

    move-object/from16 v2, p0

    move/from16 v4, p2

    move-object v15, v5

    move/from16 v5, p3

    move-object v10, v6

    move/from16 v6, p4

    move-object v11, v7

    move-object/from16 v7, p5

    :try_start_1
    invoke-direct/range {v1 .. v7}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationWorkbook;IIILorg/apache/poi/ss/formula/EvaluationTracker;)V

    if-nez v0, :cond_7

    invoke-virtual {v8, v15, v10}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateFormula(Lorg/apache/poi/ss/formula/OperationEvaluationContext;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    goto :goto_4

    :catchall_0
    move-exception v0

    :goto_2
    move-object v1, v11

    goto/16 :goto_9

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    :goto_3
    move/from16 v4, p2

    move/from16 v5, p3

    move-object v1, v11

    goto/16 :goto_8

    :cond_7
    invoke-interface {v0, v9, v11}, Lorg/apache/poi/ss/formula/IEvaluationListener;->onStartEvaluate(Lorg/apache/poi/ss/formula/EvaluationCell;Lorg/apache/poi/ss/formula/IEvaluationListener$ICacheEntry;)V

    invoke-virtual {v8, v15, v10}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateFormula(Lorg/apache/poi/ss/formula/OperationEvaluationContext;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    invoke-interface {v0, v11, v1}, Lorg/apache/poi/ss/formula/IEvaluationListener;->onEndEvaluate(Lorg/apache/poi/ss/formula/IEvaluationListener$ICacheEntry;Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    move-object v0, v1

    :goto_4
    invoke-virtual {v13, v0}, Lorg/apache/poi/ss/formula/EvaluationTracker;->updateCacheResult(Lorg/apache/poi/ss/formula/eval/ValueEval;)V
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/NotImplementedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    invoke-virtual {v13, v11}, Lorg/apache/poi/ss/formula/EvaluationTracker;->endEvaluate(Lorg/apache/poi/ss/formula/CellCacheEntry;)V

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    move-object v11, v7

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v11, v7

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v11, v7

    goto :goto_3

    :goto_6
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException;

    if-eqz v1, :cond_d

    iget-boolean v1, v8, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_ignoreMissingWorkbooks:Z

    if-eqz v1, :cond_d

    sget-object v1, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->LOG:La5/d;

    invoke-interface {v1}, La5/d;->f()La5/b;

    move-result-object v1

    const-string v2, "{} - Continuing with cached value!"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCachedFormulaResultType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getErrorCellValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->valueOf(I)Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v0

    goto :goto_5

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getBooleanCellValue()Z

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/BoolEval;->valueOf(Z)Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-result-object v0

    goto :goto_5

    :cond_a
    sget-object v0, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    goto :goto_5

    :cond_b
    new-instance v0, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getStringCellValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_c
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getNumericCellValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    :goto_7
    sget-object v1, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->LOG:La5/d;

    invoke-interface {v1}, La5/d;->e()La5/b;

    move-result-object v7

    new-instance v9, Lorg/apache/poi/ss/formula/f;

    move-object v1, v9

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/formula/f;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;IIILorg/apache/poi/ss/formula/eval/ValueEval;)V

    invoke-interface {v7, v9}, La5/b;->e(Lg5/a0;)V

    return-object v0

    :cond_d
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_8
    :try_start_4
    invoke-direct {v8, v0, v4, v5, v12}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->addExceptionInfo(Lorg/apache/poi/ss/formula/eval/NotImplementedException;III)Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    :goto_9
    invoke-virtual {v13, v1}, Lorg/apache/poi/ss/formula/EvaluationTracker;->endEvaluate(Lorg/apache/poi/ss/formula/CellCacheEntry;)V

    throw v0

    :cond_e
    move-object v1, v7

    move v4, v10

    move v5, v11

    if-eqz v0, :cond_f

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/CellCacheEntry;->getValue()Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    invoke-interface {v0, v4, v5, v12, v2}, Lorg/apache/poi/ss/formula/IEvaluationListener;->onCacheHit(IIILorg/apache/poi/ss/formula/eval/ValueEval;)V

    :cond_f
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/CellCacheEntry;->getValue()Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    :goto_a
    invoke-static/range {p1 .. p1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getValueFromNonFormulaCell(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v9

    if-eqz v0, :cond_10

    iget-object v2, v8, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    iget v3, v8, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbookIx:I

    move-object/from16 v1, p5

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object v7, v9

    invoke-virtual/range {v1 .. v7}, Lorg/apache/poi/ss/formula/EvaluationTracker;->acceptPlainValueDependency(Lorg/apache/poi/ss/formula/EvaluationWorkbook;IIIILorg/apache/poi/ss/formula/eval/ValueEval;)V

    :cond_10
    return-object v9
.end method

.method private getEvalForNameRecord(Lorg/apache/poi/ss/formula/EvaluationName;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationName;->isFunctionName()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationName;->getNameText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationName;->hasFormula()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationName;->getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateNameFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Don\'t know how to evaluate name \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationName;->getNameText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getEvalForPtg(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6

    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/NamePtg;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/NamePtg;

    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getName(Lorg/apache/poi/ss/formula/ptg/NamePtg;)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getEvalForNameRecord(Lorg/apache/poi/ss/formula/EvaluationName;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    invoke-virtual {p2, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getNameXEval(Lorg/apache/poi/ss/formula/ptg/NameXPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->processNameEval(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/NameXPxg;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/NameXPxg;

    invoke-virtual {p2, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getNameXEval(Lorg/apache/poi/ss/formula/ptg/NameXPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->processNameEval(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of p0, p1, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    if-eqz p0, :cond_3

    new-instance p0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/IntPtg;->getValue()I

    move-result p1

    int-to-double p1, p1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p0

    :cond_3
    instance-of p0, p1, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    if-eqz p0, :cond_4

    new-instance p0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;->getValue()D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p0

    :cond_4
    instance-of p0, p1, Lorg/apache/poi/ss/formula/ptg/StringPtg;

    if-eqz p0, :cond_5

    new-instance p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/StringPtg;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/StringPtg;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_5
    instance-of p0, p1, Lorg/apache/poi/ss/formula/ptg/BoolPtg;

    if-eqz p0, :cond_6

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/BoolPtg;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/BoolPtg;->getValue()Z

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/BoolEval;->valueOf(Z)Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-result-object p0

    return-object p0

    :cond_6
    instance-of p0, p1, Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    if-eqz p0, :cond_7

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->getErrorCode()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->valueOf(I)Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0

    :cond_7
    instance-of p0, p1, Lorg/apache/poi/ss/formula/ptg/MissingArgPtg;

    if-eqz p0, :cond_8

    sget-object p0, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    return-object p0

    :cond_8
    instance-of p0, p1, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;

    if-nez p0, :cond_13

    instance-of p0, p1, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;

    if-nez p0, :cond_13

    instance-of p0, p1, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;

    if-nez p0, :cond_13

    instance-of p0, p1, Lorg/apache/poi/ss/formula/ptg/DeletedRef3DPtg;

    if-eqz p0, :cond_9

    goto/16 :goto_0

    :cond_9
    instance-of p0, p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    if-eqz p0, :cond_a

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    invoke-virtual {p2, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRef3DEval(Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    :cond_a
    instance-of p0, p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    if-eqz p0, :cond_b

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    invoke-virtual {p2, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRef3DEval(Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    :cond_b
    instance-of p0, p1, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    if-eqz p0, :cond_c

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    invoke-virtual {p2, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getArea3DEval(Lorg/apache/poi/ss/formula/ptg/Area3DPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    :cond_c
    instance-of p0, p1, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    if-eqz p0, :cond_d

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    invoke-virtual {p2, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getArea3DEval(Lorg/apache/poi/ss/formula/ptg/Area3DPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    :cond_d
    instance-of p0, p1, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    if-eqz p0, :cond_e

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getRow()I

    move-result p0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getColumn()I

    move-result p1

    invoke-virtual {p2, p0, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRefEval(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    :cond_e
    instance-of p0, p1, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    if-eqz p0, :cond_f

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstRow()I

    move-result p0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstColumn()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastRow()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastColumn()I

    move-result p1

    invoke-virtual {p2, p0, v0, v1, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getAreaEval(IIII)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    :cond_f
    instance-of p0, p1, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;

    if-eqz p0, :cond_10

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->getRowCount()I

    move-result p0

    add-int/lit8 v3, p0, -0x1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->getColumnCount()I

    move-result p0

    add-int/lit8 v4, p0, -0x1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->getTokenArrayValues()[[Ljava/lang/Object;

    move-result-object v5

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getAreaValueEval(IIII[[Ljava/lang/Object;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    :cond_10
    instance-of p0, p1, Lorg/apache/poi/ss/formula/ptg/UnknownPtg;

    if-nez p0, :cond_12

    instance-of p0, p1, Lorg/apache/poi/ss/formula/ptg/ExpPtg;

    if-eqz p0, :cond_11

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ExpPtg currently not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected ptg class ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "UnknownPtg not allowed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    :goto_0
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0
.end method

.method public static getNotSupportedFunctionNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    invoke-static {}, Lorg/apache/poi/ss/formula/eval/FunctionEval;->getNotSupportedFunctionNames()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->getNotSupportedFunctionNames()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationSheet;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_sheetIndexesBySheet:Ljava/util/Map;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    .line 2
    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationSheet;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_sheetIndexesBySheet:Ljava/util/Map;

    .line 4
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Specified sheet from a different book"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getSupportedFunctionNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    invoke-static {}, Lorg/apache/poi/ss/formula/eval/FunctionEval;->getSupportedFunctionNames()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->getSupportedFunctionNames()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static getValueFromNonFormulaCell(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/formula/WorkbookEvaluator$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getErrorCellValue()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->valueOf(I)Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected cell type ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getBooleanCellValue()Z

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/BoolEval;->valueOf(Z)Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object p0, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    return-object p0

    :cond_4
    new-instance v0, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getStringCellValue()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_5
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getNumericCellValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v0
.end method

.method private synthetic lambda$evaluateAny$0(IIILorg/apache/poi/ss/formula/eval/ValueEval;)Lc5/e;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getSheetName(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {p1, p2, p3}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    new-instance p2, Lc5/o;

    const-string p3, "Evaluated "

    const-string v0, "!"

    invoke-static {p3, p0, v0}, Landroidx/activity/result/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lc5/o;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method private static synthetic lambda$evaluateFormula$1(Ljava/lang/String;Lorg/apache/poi/ss/formula/OperationEvaluationContext;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Lc5/e;
    .locals 2

    const-string v0, "- evaluateFormula(\'"

    invoke-static {p0, v0}, Landroidx/activity/result/a;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRefEvaluatorForCurrentSheet()Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getSheetNameRange()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\Qorg.apache.poi.ss.formula.ptg.\\E"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lc5/o;

    invoke-direct {p1, p0}, Lc5/o;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private processNameEval(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;->getName()Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getEvalForNameRecord(Lorg/apache/poi/ss/formula/EvaluationName;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static registerFunction(Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->registerFunction(Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    return-void
.end method

.method public static registerFunction(Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/Function;)V
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/eval/FunctionEval;->registerFunction(Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/Function;)V

    return-void
.end method


# virtual methods
.method public attachToEnvironment(Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;Lorg/apache/poi/ss/formula/EvaluationCache;I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_collaboratingWorkbookEnvironment:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    iput-object p2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    iput p3, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbookIx:I

    return-void
.end method

.method public clearAllCachedResultValues()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/EvaluationCache;->clear()V

    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_sheetIndexesBySheet:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->clearAllCachedResultValues()V

    return-void
.end method

.method public detachFromEnvironment()V
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->EMPTY:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    iput-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_collaboratingWorkbookEnvironment:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    new-instance v0, Lorg/apache/poi/ss/formula/EvaluationCache;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/EvaluationCache;-><init>(Lorg/apache/poi/ss/formula/IEvaluationListener;)V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbookIx:I

    return-void
.end method

.method public evaluate(Ljava/lang/String;Lorg/apache/poi/ss/util/CellReference;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 10

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, -0x1

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v0

    :goto_1
    if-nez p2, :cond_2

    move v9, v1

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    move v9, v2

    :goto_2
    if-nez p2, :cond_3

    :goto_3
    move v7, v1

    goto :goto_4

    .line 6
    :cond_3
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v1

    goto :goto_3

    .line 7
    :goto_4
    new-instance p2, Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .line 8
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object v4

    new-instance v8, Lorg/apache/poi/ss/formula/EvaluationTracker;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    invoke-direct {v8, v1}, Lorg/apache/poi/ss/formula/EvaluationTracker;-><init>(Lorg/apache/poi/ss/formula/EvaluationCache;)V

    move-object v2, p2

    move-object v3, p0

    move v5, v0

    move v6, v9

    invoke-direct/range {v2 .. v8}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationWorkbook;IIILorg/apache/poi/ss/formula/EvaluationTracker;)V

    .line 9
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    sget-object v2, Lorg/apache/poi/ss/formula/FormulaType;->CELL:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-static {p1, v1, v2, v0, v9}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateNameFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method

.method public evaluate(Ljava/lang/String;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddressBase;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1

    .line 11
    sget-object v0, Lorg/apache/poi/ss/formula/FormulaType;->CELL:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluate(Ljava/lang/String;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddressBase;Lorg/apache/poi/ss/formula/FormulaType;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method

.method public evaluate(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7

    .line 1
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getSheet()Lorg/apache/poi/ss/formula/EvaluationSheet;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationSheet;)I

    move-result v3

    .line 2
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getRowIndex()I

    move-result v4

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getColumnIndex()I

    move-result v5

    new-instance v6, Lorg/apache/poi/ss/formula/EvaluationTracker;

    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    invoke-direct {v6, v0}, Lorg/apache/poi/ss/formula/EvaluationTracker;-><init>(Lorg/apache/poi/ss/formula/EvaluationCache;)V

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateAny(Lorg/apache/poi/ss/formula/EvaluationCell;IIILorg/apache/poi/ss/formula/EvaluationTracker;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method

.method public evaluateFormula(Lorg/apache/poi/ss/formula/OperationEvaluationContext;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 16
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-boolean v0, v1, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputForNextEval:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iput v4, v1, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    iput-boolean v4, v1, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputForNextEval:Z

    :cond_0
    iget v0, v1, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    const/4 v5, 0x0

    if-lez v0, :cond_1

    const/16 v6, 0x64

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const-string v6, "                                                                                                    "

    invoke-virtual {v6, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->EVAL_LOG:La5/d;

    invoke-interface {v6}, La5/d;->g()La5/b;

    move-result-object v6

    new-instance v7, Lorg/apache/poi/ss/formula/g;

    invoke-direct {v7, v0, v2, v5, v3}, Lorg/apache/poi/ss/formula/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {v6, v7}, La5/b;->e(Lg5/a0;)V

    iget v6, v1, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    add-int/2addr v6, v4

    iput v6, v1, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    :goto_0
    move-object v12, v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    goto :goto_0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getSheetIndex()I

    move-result v6

    invoke-interface {v0, v6}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheet(I)Lorg/apache/poi/ss/formula/EvaluationSheet;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v7

    invoke-interface {v0, v6, v7}, Lorg/apache/poi/ss/formula/EvaluationSheet;->getCell(II)Lorg/apache/poi/ss/formula/EvaluationCell;

    move-result-object v13

    new-instance v14, Ljava/util/Stack;

    invoke-direct {v14}, Ljava/util/Stack;-><init>()V

    array-length v15, v3

    move v11, v5

    :goto_2
    if-ge v11, v15, :cond_17

    aget-object v0, v3, v11

    iget v6, v1, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    if-lez v6, :cond_2

    sget-object v6, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->EVAL_LOG:La5/d;

    invoke-interface {v6}, La5/d;->f()La5/b;

    move-result-object v6

    const-string v7, "{}  * ptg {}: {}, stack: {}"

    invoke-static {v11}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v8, v12

    move-object v10, v0

    move v5, v11

    move-object v11, v14

    invoke-interface/range {v6 .. v11}, La5/b;->g(Ljava/lang/String;Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;Ljava/io/Serializable;)V

    goto :goto_3

    :cond_2
    move v5, v11

    :goto_3
    instance-of v6, v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    if-eqz v6, :cond_b

    move-object v6, v0

    check-cast v6, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isSum()Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v0, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->SUM:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    :cond_3
    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isOptimizedChoose()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v14}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/ValueEval;

    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getJumpTable()[I

    move-result-object v7

    array-length v8, v7

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v10

    invoke-static {v0, v9, v10}, Lorg/apache/poi/ss/formula/functions/Choose;->evaluateFirstArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v0

    if-lt v0, v4, :cond_5

    if-le v0, v8, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, -0x1

    aget v0, v7, v0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_5
    :goto_4
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-virtual {v14, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getChooseFuncOffset()I

    move-result v0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :goto_5
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getChooseFuncOffset()I

    move-result v0

    :goto_6
    add-int/lit8 v0, v0, 0x4

    :goto_7
    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x2

    sub-int/2addr v0, v8

    invoke-static {v3, v5, v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->countTokensToBeSkipped([Lorg/apache/poi/ss/formula/ptg/Ptg;II)I

    move-result v0

    add-int v11, v5, v0

    :cond_6
    :goto_8
    const/4 v6, 0x0

    goto/16 :goto_f

    :cond_7
    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isOptimizedIf()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v13}, Lorg/apache/poi/ss/formula/EvaluationCell;->isPartOfArrayFormulaGroup()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v14}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/ValueEval;

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v8

    invoke-static {v0, v7, v8}, Lorg/apache/poi/ss/formula/functions/IfFunc;->evaluateFirstArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Z

    move-result v7
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v7, :cond_8

    move v11, v5

    goto :goto_8

    :cond_8
    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getData()S

    move-result v6

    invoke-static {v3, v5, v6}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->countTokensToBeSkipped([Lorg/apache/poi/ss/formula/ptg/Ptg;II)I

    move-result v6

    add-int v11, v5, v6

    add-int/lit8 v5, v11, 0x1

    aget-object v5, v3, v5

    aget-object v6, v3, v11

    instance-of v6, v6, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    if-eqz v6, :cond_6

    instance-of v6, v5, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    if-eqz v6, :cond_6

    check-cast v5, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getFunctionIndex()S

    move-result v5

    if-ne v5, v4, :cond_6

    invoke-virtual {v14, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/ss/formula/eval/BoolEval;->FALSE:Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-virtual {v14, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getData()S

    move-result v0

    invoke-static {v3, v5, v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->countTokensToBeSkipped([Lorg/apache/poi/ss/formula/ptg/Ptg;II)I

    move-result v0

    add-int v11, v5, v0

    aget-object v0, v3, v11

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getData()S

    move-result v0

    add-int/2addr v0, v4

    invoke-static {v3, v11, v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->countTokensToBeSkipped([Lorg/apache/poi/ss/formula/ptg/Ptg;II)I

    move-result v0

    add-int/2addr v11, v0

    goto :goto_8

    :cond_9
    :goto_9
    const/4 v6, 0x0

    goto/16 :goto_e

    :cond_a
    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isSkip()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v13}, Lorg/apache/poi/ss/formula/EvaluationCell;->isPartOfArrayFormulaGroup()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getData()S

    move-result v0

    add-int/2addr v0, v4

    invoke-static {v3, v5, v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->countTokensToBeSkipped([Lorg/apache/poi/ss/formula/ptg/Ptg;II)I

    move-result v0

    add-int v11, v5, v0

    invoke-virtual {v14}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    sget-object v5, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    if-ne v0, v5, :cond_6

    invoke-virtual {v14}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    invoke-virtual {v14, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    :cond_b
    instance-of v6, v0, Lorg/apache/poi/ss/formula/ptg/ControlPtg;

    if-eqz v6, :cond_c

    goto :goto_9

    :cond_c
    instance-of v6, v0, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;

    if-nez v6, :cond_9

    instance-of v6, v0, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;

    if-eqz v6, :cond_d

    goto :goto_9

    :cond_d
    instance-of v6, v0, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;

    if-eqz v6, :cond_e

    goto :goto_9

    :cond_e
    instance-of v6, v0, Lorg/apache/poi/ss/formula/ptg/UnionPtg;

    if-eqz v6, :cond_f

    invoke-virtual {v14}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/ValueEval;

    invoke-virtual {v14}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/ss/formula/eval/ValueEval;

    new-instance v7, Lorg/apache/poi/ss/formula/eval/RefListEval;

    invoke-direct {v7, v6, v0}, Lorg/apache/poi/ss/formula/eval/RefListEval;-><init>(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    invoke-virtual {v14, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_f
    instance-of v6, v0, Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    if-eqz v6, :cond_14

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/OperationPtg;->getNumberOfOperands()I

    move-result v6

    new-array v7, v6, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    sub-int/2addr v6, v4

    const/4 v8, 0x0

    :goto_a
    if-ltz v6, :cond_11

    invoke-virtual {v14}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/poi/ss/formula/eval/ValueEval;

    aput-object v9, v7, v6

    instance-of v9, v9, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz v9, :cond_10

    move v8, v4

    :cond_10
    add-int/lit8 v6, v6, -0x1

    goto :goto_a

    :cond_11
    if-eqz v8, :cond_13

    move v11, v5

    :goto_b
    if-ge v11, v15, :cond_13

    aget-object v6, v3, v11

    instance-of v8, v6, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    if-eqz v8, :cond_12

    check-cast v6, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    :try_start_2
    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getFunctionIndex()S

    move-result v6

    invoke-static {v6}, Lorg/apache/poi/ss/formula/eval/FunctionEval;->getBasicFunction(I)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v6

    instance-of v6, v6, Lorg/apache/poi/ss/formula/functions/ArrayMode;
    :try_end_2
    .catch Lorg/apache/poi/ss/formula/eval/NotImplementedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_c

    :cond_12
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :catch_2
    :cond_13
    const/4 v6, 0x0

    :goto_c
    invoke-virtual {v2, v6}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->setArrayMode(Z)V

    invoke-static {v0, v7, v2}, Lorg/apache/poi/ss/formula/OperationEvaluatorFactory;->evaluate(Lorg/apache/poi/ss/formula/ptg/OperationPtg;[Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->setArrayMode(Z)V

    goto :goto_d

    :cond_14
    const/4 v6, 0x0

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getEvalForPtg(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    :goto_d
    if-eqz v0, :cond_15

    invoke-virtual {v14, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget v7, v1, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    if-lez v7, :cond_16

    sget-object v7, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->EVAL_LOG:La5/d;

    invoke-interface {v7}, La5/d;->f()La5/b;

    move-result-object v7

    const-string v8, "{}    = {}"

    invoke-interface {v7, v12, v8, v0}, La5/b;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_e

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Evaluation result must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_e
    move v11, v5

    :goto_f
    add-int/2addr v11, v4

    move v5, v6

    goto/16 :goto_2

    :cond_17
    invoke-virtual {v14}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/ValueEval;

    invoke-virtual {v14}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->isSingleValue()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-static {v0, v2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dereferenceResult(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    :cond_18
    iget v3, v1, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    if-lez v3, :cond_19

    sget-object v3, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->EVAL_LOG:La5/d;

    invoke-interface {v3}, La5/d;->f()La5/b;

    move-result-object v3

    new-instance v5, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v2

    invoke-direct {v5, v6, v2}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "{}finished eval of {}: {}"

    invoke-interface {v3, v5, v12, v2, v0}, La5/b;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget v2, v1, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    sub-int/2addr v2, v4

    iput v2, v1, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    if-ne v2, v4, :cond_19

    const/4 v2, -0x1

    iput v2, v1, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    :cond_19
    return-object v0

    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "evaluation stack not empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public evaluateList(Ljava/lang/String;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddressBase;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/formula/FormulaType;->DATAVALIDATION_LIST:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluate(Ljava/lang/String;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddressBase;Lorg/apache/poi/ss/formula/FormulaType;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method

.method public evaluateNameFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 9

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    if-nez v1, :cond_0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getEvalForPtg(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v8, Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getSheetIndex()I

    move-result v3

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v4

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v5

    new-instance v6, Lorg/apache/poi/ss/formula/EvaluationTracker;

    iget-object p2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    invoke-direct {v6, p2}, Lorg/apache/poi/ss/formula/EvaluationTracker;-><init>(Lorg/apache/poi/ss/formula/EvaluationCache;)V

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationWorkbook;IIILorg/apache/poi/ss/formula/EvaluationTracker;Z)V

    invoke-virtual {p0, v8, p1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateFormula(Lorg/apache/poi/ss/formula/OperationEvaluationContext;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method

.method public evaluateReference(Lorg/apache/poi/ss/formula/EvaluationSheet;IIILorg/apache/poi/ss/formula/EvaluationTracker;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6

    invoke-interface {p1, p3, p4}, Lorg/apache/poi/ss/formula/EvaluationSheet;->getCell(II)Lorg/apache/poi/ss/formula/EvaluationCell;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateAny(Lorg/apache/poi/ss/formula/EvaluationCell;IIILorg/apache/poi/ss/formula/EvaluationTracker;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method

.method public findUserDefinedFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_udfFinder:Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->findFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    move-result-object p0

    return-object p0
.end method

.method public getEnvironment()Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_collaboratingWorkbookEnvironment:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    return-object p0
.end method

.method public getEvaluationListener()Lorg/apache/poi/ss/formula/IEvaluationListener;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    return-object p0
.end method

.method public getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {p0, p1, p2}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object p0

    return-object p0
.end method

.method public getOtherWorkbookEvaluator(Ljava/lang/String;)Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_collaboratingWorkbookEnvironment:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->getWorkbookEvaluator(Ljava/lang/String;)Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    move-result-object p0

    return-object p0
.end method

.method public getSheet(I)Lorg/apache/poi/ss/formula/EvaluationSheet;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheet(I)Lorg/apache/poi/ss/formula/EvaluationSheet;

    move-result-object p0

    return-object p0
.end method

.method public getSheetIndex(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_sheetIndexesByName:Ljava/util/Map;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    .line 8
    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 9
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_sheetIndexesByName:Ljava/util/Map;

    .line 10
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSheetIndexByExternIndex(I)I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->convertFromExternSheetIndex(I)I

    move-result p0

    return p0
.end method

.method public getSheetName(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    return-object p0
.end method

.method public isDebugEvaluationOutputForNextEval()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputForNextEval:Z

    return p0
.end method

.method public isIgnoreMissingWorkbooks()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_ignoreMissingWorkbooks:Z

    return p0
.end method

.method public notifyDeleteCell(Lorg/apache/poi/ss/formula/EvaluationCell;)V
    .locals 2

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getSheet()Lorg/apache/poi/ss/formula/EvaluationSheet;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationSheet;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    iget p0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbookIx:I

    invoke-virtual {v1, p0, v0, p1}, Lorg/apache/poi/ss/formula/EvaluationCache;->notifyDeleteCell(IILorg/apache/poi/ss/formula/EvaluationCell;)V

    return-void
.end method

.method public notifyUpdateCell(Lorg/apache/poi/ss/formula/EvaluationCell;)V
    .locals 2

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getSheet()Lorg/apache/poi/ss/formula/EvaluationSheet;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationSheet;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    iget p0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbookIx:I

    invoke-virtual {v1, p0, v0, p1}, Lorg/apache/poi/ss/formula/EvaluationCache;->notifyUpdateCell(IILorg/apache/poi/ss/formula/EvaluationCell;)V

    return-void
.end method

.method public setDebugEvaluationOutputForNextEval(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputForNextEval:Z

    return-void
.end method

.method public setIgnoreMissingWorkbooks(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_ignoreMissingWorkbooks:Z

    return-void
.end method
