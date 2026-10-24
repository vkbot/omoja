.class public final Lorg/apache/poi/hssf/usermodel/helpers/HSSFRowShifter;
.super Lorg/apache/poi/ss/usermodel/helpers/RowShifter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;-><init>(Lorg/apache/poi/ss/usermodel/Sheet;)V

    return-void
.end method


# virtual methods
.method public updateConditionalFormatting(Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p0, Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    const-string/jumbo p1, "updateConditionalFormatting"

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateFormulas(Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p0, Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    const-string/jumbo p1, "updateFormulas"

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateHyperlinks(Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p0, Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    const-string/jumbo p1, "updateHyperlinks"

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateNamedRanges(Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p0, Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    const-string p1, "HSSFRowShifter.updateNamedRanges"

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateRowFormulas(Lorg/apache/poi/hssf/usermodel/HSSFRow;Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
        since = "5.1.0"
    .end annotation

    invoke-static {p1, p2}, Lorg/apache/poi/hssf/usermodel/helpers/HSSFRowColShifter;->updateRowFormulas(Lorg/apache/poi/hssf/usermodel/HSSFRow;Lorg/apache/poi/ss/formula/FormulaShifter;)V

    return-void
.end method
