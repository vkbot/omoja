.class public final Lorg/apache/poi/xssf/usermodel/helpers/XSSFColumnShifter;
.super Lorg/apache/poi/ss/usermodel/helpers/ColumnShifter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/usermodel/helpers/ColumnShifter;-><init>(Lorg/apache/poi/ss/usermodel/Sheet;)V

    return-void
.end method


# virtual methods
.method public updateConditionalFormatting(Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/usermodel/helpers/ColumnShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-static {p0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowColShifter;->updateConditionalFormatting(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/formula/FormulaShifter;)V

    return-void
.end method

.method public updateFormulas(Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/usermodel/helpers/ColumnShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-static {p0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowColShifter;->updateFormulas(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/formula/FormulaShifter;)V

    return-void
.end method

.method public updateHyperlinks(Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/usermodel/helpers/ColumnShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-static {p0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowColShifter;->updateHyperlinks(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/formula/FormulaShifter;)V

    return-void
.end method

.method public updateNamedRanges(Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/usermodel/helpers/ColumnShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-static {p0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowColShifter;->updateNamedRanges(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/formula/FormulaShifter;)V

    return-void
.end method
