.class final enum Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum$5;
.super Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;-><init>(Ljava/lang/String;ILorg/apache/poi/ss/formula/DataValidationEvaluator$1;)V

    return-void
.end method


# virtual methods
.method public isValidValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;)Z
    .locals 3

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getEvaluator()Lorg/apache/poi/ss/formula/DataValidationEvaluator;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->getWorkbookEvaluator()Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    move-result-object p0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getFormula1()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getTarget()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getRegion()Lorg/apache/poi/ss/util/CellRangeAddressBase;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluate(Ljava/lang/String;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddressBase;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    instance-of p1, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz p1, :cond_0

    check-cast p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result p1

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    :cond_0
    instance-of p1, p0, Lorg/apache/poi/ss/formula/eval/BlankEval;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    return p2

    :cond_1
    instance-of p1, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    return v0

    :cond_2
    instance-of p1, p0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz p1, :cond_3

    check-cast p0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result p0

    return p0

    :cond_3
    instance-of p1, p0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz p1, :cond_5

    check-cast p0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide p0

    const-wide/16 v1, 0x0

    cmpl-double p0, p0, v1

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    move p2, v0

    :goto_0
    return p2

    :cond_5
    return v0
.end method
