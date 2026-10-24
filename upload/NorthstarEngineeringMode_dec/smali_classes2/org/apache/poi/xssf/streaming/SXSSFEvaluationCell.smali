.class final Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/EvaluationCell;


# instance fields
.field private final _cell:Lorg/apache/poi/xssf/streaming/SXSSFCell;

.field private final _evalSheet:Lorg/apache/poi/ss/formula/EvaluationSheet;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/streaming/SXSSFCell;)V
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationSheet;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationSheet;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFSheet;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFCell;Lorg/apache/poi/xssf/streaming/SXSSFEvaluationSheet;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/streaming/SXSSFCell;Lorg/apache/poi/xssf/streaming/SXSSFEvaluationSheet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/streaming/SXSSFCell;

    iput-object p2, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;->_evalSheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

    return-void
.end method


# virtual methods
.method public getArrayFormulaRange()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/streaming/SXSSFCell;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getArrayFormulaRange()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object p0

    return-object p0
.end method

.method public getBooleanCellValue()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/streaming/SXSSFCell;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getBooleanCellValue()Z

    move-result p0

    return p0
.end method

.method public getCachedFormulaResultType()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/streaming/SXSSFCell;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCachedFormulaResultType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p0

    return-object p0
.end method

.method public getCellType()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/streaming/SXSSFCell;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p0

    return-object p0
.end method

.method public getColumnIndex()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/streaming/SXSSFCell;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getColumnIndex()I

    move-result p0

    return p0
.end method

.method public getErrorCellValue()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/streaming/SXSSFCell;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getErrorCellValue()B

    move-result p0

    return p0
.end method

.method public getIdentityKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/streaming/SXSSFCell;

    return-object p0
.end method

.method public getNumericCellValue()D
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/streaming/SXSSFCell;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getNumericCellValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getRowIndex()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/streaming/SXSSFCell;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getRowIndex()I

    move-result p0

    return p0
.end method

.method public getSXSSFCell()Lorg/apache/poi/xssf/streaming/SXSSFCell;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/streaming/SXSSFCell;

    return-object p0
.end method

.method public getSheet()Lorg/apache/poi/ss/formula/EvaluationSheet;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;->_evalSheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

    return-object p0
.end method

.method public getStringCellValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/streaming/SXSSFCell;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isPartOfArrayFormulaGroup()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/streaming/SXSSFCell;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result p0

    return p0
.end method
