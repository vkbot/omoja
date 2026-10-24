.class final enum Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum$3;
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
    .locals 5

    invoke-static {p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->getValidationValuesForConstraint(Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/formula/eval/ValueEval;

    instance-of v2, v1, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getSheetIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    :cond_2
    instance-of v2, v1, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eqz v2, :cond_3

    return v0

    :cond_3
    instance-of v2, v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    instance-of v2, v1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz v2, :cond_5

    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {p1, v2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->isType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getBooleanCellValue()Z

    move-result v2

    if-ne v1, v2, :cond_1

    return v0

    :cond_5
    instance-of v2, v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v2, :cond_6

    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {p1, v2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->isType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1

    return v0

    :cond_6
    instance-of v2, v1, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v2, :cond_1

    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {p1, v2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->isType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v1, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getStringCellValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method
