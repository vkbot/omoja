.class public final Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;
.super Lorg/apache/poi/ss/usermodel/helpers/RowShifter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;-><init>(Lorg/apache/poi/ss/usermodel/Sheet;)V

    return-void
.end method


# virtual methods
.method public updateConditionalFormatting(Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-static {p0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowColShifter;->updateConditionalFormatting(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/formula/FormulaShifter;)V

    return-void
.end method

.method public updateFormulas(Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-static {p0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowColShifter;->updateFormulas(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/formula/FormulaShifter;)V

    return-void
.end method

.method public updateHyperlinks(Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-static {p0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowColShifter;->updateHyperlinks(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/formula/FormulaShifter;)V

    return-void
.end method

.method public updateNamedRanges(Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-static {p0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowColShifter;->updateNamedRanges(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/formula/FormulaShifter;)V

    return-void
.end method

.method public updateRowFormulas(Lorg/apache/poi/xssf/usermodel/XSSFRow;Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
        since = "3.15 beta 2"
    .end annotation

    invoke-static {p1, p2}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowColShifter;->updateRowFormulas(Lorg/apache/poi/xssf/usermodel/XSSFRow;Lorg/apache/poi/ss/formula/FormulaShifter;)V

    return-void
.end method
