.class final enum Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum$2;
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
    .locals 2

    invoke-super {p0, p1, p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->isValidValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;)Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide p0

    double-to-int v0, p0

    int-to-double v0, v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2
.end method
