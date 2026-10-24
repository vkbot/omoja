.class public Lorg/apache/poi/ss/formula/functions/Days360;
.super Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;-><init>()V

    return-void
.end method

.method private static evaluate(DDZ)D
    .locals 9

    .line 13
    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/functions/Days360;->getDate(D)Ljava/util/Calendar;

    move-result-object p0

    .line 14
    invoke-static {p2, p3}, Lorg/apache/poi/ss/formula/functions/Days360;->getDate(D)Ljava/util/Calendar;

    move-result-object p1

    .line 15
    invoke-static {p0, p4}, Lorg/apache/poi/ss/formula/functions/Days360;->getStartingDate(Ljava/util/Calendar;Z)[I

    move-result-object p0

    .line 16
    invoke-static {p1, p0, p4}, Lorg/apache/poi/ss/formula/functions/Days360;->getEndingDate(Ljava/util/Calendar;[IZ)[I

    move-result-object p1

    const/4 p2, 0x0

    .line 17
    aget p3, p1, p2

    int-to-double p3, p3

    const-wide v0, 0x4076800000000000L    # 360.0

    mul-double/2addr p3, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    int-to-double v3, v3

    const-wide/high16 v5, 0x403e000000000000L    # 30.0

    mul-double/2addr v3, v5

    add-double/2addr v3, p3

    const/4 p3, 0x2

    aget p1, p1, p3

    int-to-double v7, p1

    add-double/2addr v3, v7

    aget p1, p0, p2

    int-to-double p1, p1

    mul-double/2addr p1, v0

    aget p4, p0, v2

    int-to-double v0, p4

    mul-double/2addr v0, v5

    add-double/2addr v0, p1

    aget p0, p0, p3

    int-to-double p0, p0

    add-double/2addr v0, p0

    sub-double/2addr v3, v0

    return-wide v3
.end method

.method private static getDate(D)Ljava/util/Calendar;
    .locals 2

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZ)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object v0
.end method

.method private static getEndingDate(Ljava/util/Calendar;[IZ)[I
    .locals 8

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0x1e

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-nez p2, :cond_1

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/16 v7, 0x1f

    if-ne p2, v7, :cond_1

    aget p1, p1, v2

    if-ge p1, v6, :cond_0

    invoke-virtual {p0, v4, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0, v2, v0}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    goto :goto_0

    :cond_0
    move v0, v6

    goto :goto_0

    :cond_1
    move v0, v5

    :goto_0
    filled-new-array {v1, v3, v0}, [I

    move-result-object p0

    return-object p0
.end method

.method private static getStartingDate(Ljava/util/Calendar;Z)[I
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0x1e

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-nez p1, :cond_0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/Days360;->isLastDayOfMonth(Ljava/util/Calendar;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    filled-new-array {v0, v1, v3}, [I

    move-result-object p0

    return-object p0
.end method

.method private static isLastDayOfMonth(Ljava/util/Calendar;)Z
    .locals 2

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p0

    if-ne v1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/Days;->getDate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/time/LocalDate;

    move-result-object p0

    .line 2
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/Days;->getDate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/time/LocalDate;

    move-result-object p1

    .line 3
    new-instance p2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/time/LocalDate;)D

    move-result-wide p3

    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/time/LocalDate;)D

    move-result-wide p0

    const/4 v0, 0x0

    invoke-static {p3, p4, p0, p1, v0}, Lorg/apache/poi/ss/formula/functions/Days360;->evaluate(DDZ)D

    move-result-wide p0

    invoke-direct {p2, p0, p1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4

    .line 5
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/Days;->getDate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/time/LocalDate;

    move-result-object p0

    .line 6
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/Days;->getDate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/time/LocalDate;

    move-result-object p3

    .line 7
    invoke-static {p5, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    const/4 p2, 0x0

    .line 8
    invoke-static {p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToBoolean(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 9
    new-instance p4, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/time/LocalDate;)D

    move-result-wide v0

    invoke-static {p3}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/time/LocalDate;)D

    move-result-wide v2

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 11
    :cond_0
    :goto_0
    invoke-static {v0, v1, v2, v3, p2}, Lorg/apache/poi/ss/formula/functions/Days360;->evaluate(DDZ)D

    move-result-wide p0

    invoke-direct {p4, p0, p1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p4

    .line 12
    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0
.end method
