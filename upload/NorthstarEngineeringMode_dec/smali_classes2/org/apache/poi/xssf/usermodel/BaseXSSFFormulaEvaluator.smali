.class public abstract Lorg/apache/poi/xssf/usermodel/BaseXSSFFormulaEvaluator;
.super Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V

    return-void
.end method

.method private cacheExternalWorkbookCells(Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;)V
    .locals 8

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->getEvaluationWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getFormulaTokens(Lorg/apache/poi/ss/formula/EvaluationCell;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    instance-of v4, v3, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getExternalWorkbookNumber()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->getEvaluationWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getSheetName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getLastSheetName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getExternalWorkbookNumber()I

    move-result v7

    invoke-interface {v4, v5, v6, v7}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getExternalSheet(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {p1, v4, v3}, Lorg/apache/poi/xssf/usermodel/BaseXSSFFormulaEvaluator;->processEvalCell(Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;Lorg/apache/poi/ss/formula/ptg/Area3DPxg;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static processEvalCell(Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;Lorg/apache/poi/ss/formula/ptg/Area3DPxg;)V
    .locals 18

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;->getXSSFCell()Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCreationHelper()Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->getReferencedWorkbooks()Ljava/util/Map;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getWorkbookName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getExternalLinksTable()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getExternalWorkbookNumber()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/model/ExternalLinksTable;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getSheetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getLastSheetName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getLastSheetName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v3

    move v8, v3

    goto :goto_0

    :cond_0
    move v8, v2

    :goto_0
    move v9, v2

    :goto_1
    if-gt v9, v8, :cond_4

    invoke-virtual {v1, v9}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstRow()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastRow()I

    move-result v11

    move v12, v2

    :goto_2
    if-gt v12, v11, :cond_3

    invoke-virtual {v10, v12}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstColumn()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastColumn()I

    move-result v14

    move v15, v2

    :goto_3
    if-gt v15, v14, :cond_2

    invoke-virtual {v13, v15}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRawValue()Ljava/lang/String;

    move-result-object v7

    new-instance v3, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v3, v2}, Lorg/apache/poi/ss/util/CellReference;-><init>(Lorg/apache/poi/ss/usermodel/Cell;)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lorg/apache/poi/ss/util/CellReference;->formatAsString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object v3

    int-to-long v4, v12

    const-wide/16 v16, 0x1

    add-long v4, v4, v16

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Lorg/apache/poi/xssf/model/ExternalLinksTable;->cacheData(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public createRichTextString(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/RichTextString;
    .locals 0

    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public evaluateFormulaCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellValue;
    .locals 11

    const-string v0, ", value: "

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/BaseXSSFFormulaEvaluator;->toEvaluationCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/formula/EvaluationCell;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-virtual {v3, v2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluate(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    instance-of v4, v2, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;

    if-eqz v4, :cond_0

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;

    invoke-direct {p0, v2}, Lorg/apache/poi/xssf/usermodel/BaseXSSFFormulaEvaluator;->cacheExternalWorkbookCells(Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :cond_0
    :goto_0
    instance-of p0, v3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz p0, :cond_1

    check-cast v3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    new-instance p0, Lorg/apache/poi/ss/usermodel/CellValue;

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/ss/usermodel/CellValue;-><init>(D)V

    return-object p0

    :cond_1
    instance-of p0, v3, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz p0, :cond_2

    check-cast v3, Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/CellValue;->valueOf(Z)Lorg/apache/poi/ss/usermodel/CellValue;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of p0, v3, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz p0, :cond_3

    check-cast v3, Lorg/apache/poi/ss/formula/eval/StringEval;

    new-instance p0, Lorg/apache/poi/ss/usermodel/CellValue;

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/usermodel/CellValue;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_3
    instance-of p0, v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz p0, :cond_4

    check-cast v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getErrorCode()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/CellValue;->getError(I)Lorg/apache/poi/ss/usermodel/CellValue;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected eval class ("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", cell: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lorg/apache/poi/ss/util/CellReference;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getRowIndex()I

    move-result v6

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    invoke-virtual {v3, v1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/IllegalStateException;

    if-ne v2, v3, :cond_5

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to evaluate cell: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ss/util/CellReference;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getRowIndex()I

    move-result v7

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    invoke-virtual {v4, v1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_5
    throw p0
.end method

.method public setCellType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;)V
    .locals 2

    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->getEvaluationWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-virtual {p1, p2, p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, p2}, Lorg/apache/poi/ss/usermodel/Cell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    :goto_1
    return-void
.end method

.method public abstract toEvaluationCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/formula/EvaluationCell;
.end method
