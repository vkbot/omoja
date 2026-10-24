.class public final Lorg/apache/poi/xssf/streaming/SXSSFEvaluationWorkbook;
.super Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final _sxssfBook:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;


# direct methods
.method private constructor <init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getXSSFWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationWorkbook;->_sxssfBook:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    return-void
.end method

.method public static create(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;)Lorg/apache/poi/xssf/streaming/SXSSFEvaluationWorkbook;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationWorkbook;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationWorkbook;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;)V

    return-object v0
.end method


# virtual methods
.method public getFormulaTokens(Lorg/apache/poi/ss/formula/EvaluationCell;)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 3

    check-cast p1, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;->getSXSSFCell()Lorg/apache/poi/xssf/streaming/SXSSFCell;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellFormula()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/formula/FormulaType;->CELL:Lorg/apache/poi/ss/formula/FormulaType;

    iget-object v2, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationWorkbook;->_sxssfBook:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result p1

    invoke-static {v0, p0, v1, p1}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;I)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0
.end method

.method public getSheet(I)Lorg/apache/poi/ss/formula/EvaluationSheet;
    .locals 1

    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationSheet;

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationWorkbook;->_sxssfBook:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationSheet;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFSheet;)V

    return-object v0
.end method

.method public getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationSheet;)I
    .locals 0

    check-cast p1, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationSheet;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationSheet;->getSXSSFSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationWorkbook;->_sxssfBook:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result p0

    return p0
.end method
