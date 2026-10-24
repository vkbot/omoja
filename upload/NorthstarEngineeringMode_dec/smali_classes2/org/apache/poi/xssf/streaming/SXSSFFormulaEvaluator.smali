.class public final Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;
.super Lorg/apache/poi/xssf/usermodel/BaseXSSFFormulaEvaluator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator$RowFlushedException;,
        Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator$SheetsFlushedException;
    }
.end annotation


# static fields
.field private static final LOG:La5/d;


# instance fields
.field private final wb:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-static {p1}, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationWorkbook;->create(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;)Lorg/apache/poi/xssf/streaming/SXSSFEvaluationWorkbook;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;-><init>(Lorg/apache/poi/ss/formula/EvaluationWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/BaseXSSFFormulaEvaluator;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;->wb:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    return-void
.end method

.method public static create(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;
    .locals 1

    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    return-object v0
.end method

.method public static evaluateAllFormulaCells(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Z)V
    .locals 6

    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;)V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Workbook;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/usermodel/Sheet;

    check-cast v2, Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->areAllRowsFlushed()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator$SheetsFlushedException;

    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator$SheetsFlushedException;-><init>()V

    throw p0

    :cond_1
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Workbook;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/usermodel/Sheet;

    instance-of v2, v1, Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    if-eqz v2, :cond_4

    move-object v2, v1

    check-cast v2, Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getLastFlushedRowNum()I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_4

    if-eqz p1, :cond_3

    sget-object v3, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;->LOG:La5/d;

    invoke-interface {v3}, La5/d;->f()La5/b;

    move-result-object v3

    invoke-static {v2}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "Rows up to {} have already been flushed, skipping"

    invoke-interface {v3, v2, v4}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance p0, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator$RowFlushedException;

    const/4 p1, 0x0

    invoke-direct {p0, p1, v2}, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator$RowFlushedException;-><init>(II)V

    throw p0

    :cond_4
    :goto_1
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Sheet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/usermodel/Row;

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Row;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/usermodel/Cell;

    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/Cell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v4

    sget-object v5, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v4, v5, :cond_6

    invoke-virtual {v0, v3}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->evaluateFormulaCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellType;

    goto :goto_2

    :cond_7
    return-void
.end method


# virtual methods
.method public evaluateAll()V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;->wb:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;->evaluateAllFormulaCells(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Z)V

    return-void
.end method

.method public bridge synthetic evaluateInCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;->evaluateInCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/xssf/streaming/SXSSFCell;

    move-result-object p0

    return-object p0
.end method

.method public evaluateInCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/xssf/streaming/SXSSFCell;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->evaluateInCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;

    return-object p0
.end method

.method public notifyDeleteCell(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;

    check-cast p1, Lorg/apache/poi/xssf/streaming/SXSSFCell;

    invoke-direct {v0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFCell;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->notifyDeleteCell(Lorg/apache/poi/ss/formula/EvaluationCell;)V

    return-void
.end method

.method public notifySetFormula(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;

    check-cast p1, Lorg/apache/poi/xssf/streaming/SXSSFCell;

    invoke-direct {v0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFCell;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->notifyUpdateCell(Lorg/apache/poi/ss/formula/EvaluationCell;)V

    return-void
.end method

.method public notifyUpdateCell(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;

    check-cast p1, Lorg/apache/poi/xssf/streaming/SXSSFCell;

    invoke-direct {v0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFCell;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->notifyUpdateCell(Lorg/apache/poi/ss/formula/EvaluationCell;)V

    return-void
.end method

.method public toEvaluationCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/formula/EvaluationCell;
    .locals 2

    instance-of p0, p1, Lorg/apache/poi/xssf/streaming/SXSSFCell;

    if-eqz p0, :cond_0

    new-instance p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;

    check-cast p1, Lorg/apache/poi/xssf/streaming/SXSSFCell;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFCell;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected type of cell: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Only SXSSFCells can be evaluated."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
