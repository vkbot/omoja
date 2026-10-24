.class public Lorg/apache/poi/xssf/usermodel/XSSFRangeCopier;
.super Lorg/apache/poi/ss/usermodel/RangeCopier;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/usermodel/RangeCopier;-><init>(Lorg/apache/poi/ss/usermodel/Sheet;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/usermodel/RangeCopier;-><init>(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/usermodel/Sheet;)V

    return-void
.end method


# virtual methods
.method public adjustCellReferencesInsideFormula(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/Sheet;II)V
    .locals 5

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-static {v0}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->create(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellFormula()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/ss/formula/FormulaType;->CELL:Lorg/apache/poi/ss/formula/FormulaType;

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;I)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    invoke-virtual {v0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result p2

    invoke-virtual {p0, v2, p2, p3, p4}, Lorg/apache/poi/ss/usermodel/RangeCopier;->adjustInBothDirections([Lorg/apache/poi/ss/formula/ptg/Ptg;III)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v1, v2}, Lorg/apache/poi/ss/formula/FormulaRenderer;->toFormulaString(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellFormula(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
