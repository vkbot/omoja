.class public Lorg/apache/poi/hssf/usermodel/HSSFRangeCopier;
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
    .locals 1

    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellValueRecord()Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result p2

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/poi/ss/usermodel/RangeCopier;->adjustInBothDirections([Lorg/apache/poi/ss/formula/ptg/Ptg;III)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setParsedExpression([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    :cond_0
    return-void
.end method
