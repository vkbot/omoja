.class public final Lorg/apache/poi/ss/formula/functions/DStarRunner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function3Arg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;,
        Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final algoType:Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/DStarRunner;->algoType:Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    return-void
.end method

.method private static fulfillsConditions(Lorg/apache/poi/ss/formula/eval/AreaEval;ILorg/apache/poi/ss/formula/eval/AreaEval;)Z
    .locals 10

    invoke-interface {p2}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getHeight()I

    move-result v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_6

    invoke-interface {p2}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result v4

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_5

    invoke-static {p2, v2, v5}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->resolveReference(Lorg/apache/poi/ss/formula/eval/AreaEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v6

    instance-of v7, v6, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eqz v7, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p2, v3, v5}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->resolveReference(Lorg/apache/poi/ss/formula/eval/AreaEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v7

    instance-of v8, v7, Lorg/apache/poi/ss/formula/eval/StringValueEval;

    if-eqz v8, :cond_4

    invoke-static {v7, p0}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->getColumnForName(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/AreaEval;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    invoke-static {v6}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    const-string p1, "D* function with formula conditions"

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v7, p0}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->getColumnForName(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/AreaEval;)I

    move-result v7

    invoke-static {p0, p1, v7}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->resolveReference(Lorg/apache/poi/ss/formula/eval/AreaEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v7

    invoke-static {v7, v6}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->testNormalCondition(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    move-result v6

    if-nez v6, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0

    :cond_5
    return v1

    :cond_6
    return v3
.end method

.method private static getColumnForName(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/AreaEval;)I
    .locals 1

    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-eqz v0, :cond_2

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_1

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result p1

    if-lt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0

    :cond_2
    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->getColumnForString(Lorg/apache/poi/ss/formula/eval/AreaEval;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static getColumnForString(Lorg/apache/poi/ss/formula/eval/AreaEval;Ljava/lang/String;)I
    .locals 5

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-static {p0, v1, v2}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->resolveReference(Lorg/apache/poi/ss/formula/eval/AreaEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    instance-of v4, v3, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    instance-of v4, v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    :goto_2
    return v2
.end method

.method private static getNumberFromValueEval(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/Double;
    .locals 4

    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/StringValueEval;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lorg/apache/poi/ss/formula/eval/StringValueEval;

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/StringValueEval;->getStringValue()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    return-object v1
.end method

.method private static resolveReference(Lorg/apache/poi/ss/formula/eval/AreaEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    :try_start_0
    invoke-interface {p0, p1, p2}, Lorg/apache/poi/ss/formula/TwoDEval;->getValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstRow()I

    move-result v1

    add-int/2addr v1, p1

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstColumn()I

    move-result p0

    add-int/2addr p0, p2

    invoke-static {v0, v1, p0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0
.end method

.method private static testNormalCondition(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 5

    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/StringEval;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    check-cast p1, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "="

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->smallerEqualThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    invoke-static {p0, v0, p1}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->testNumericCondition(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->smallerThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    invoke-static {p0, v0, p1}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->testNumericCondition(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->largerEqualThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    invoke-static {p0, v0, p1}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->testNumericCondition(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    sget-object v0, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->largerThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    invoke-static {p0, v0, p1}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->testNumericCondition(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    instance-of p0, p0, Lorg/apache/poi/ss/formula/eval/BlankEval;

    return p0

    :cond_4
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    sget-object v0, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->equal:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    invoke-static {p0, v0, p1}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->testNumericCondition(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;Ljava/lang/String;)Z

    move-result p0

    return p0

    :catch_1
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    instance-of p0, p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    return p0

    :cond_7
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;->getWildCardPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_9
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0

    :cond_a
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    check-cast p1, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide v3

    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->getNumberFromValueEval(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    cmpl-double p0, v3, p0

    if-nez p0, :cond_b

    goto :goto_3

    :cond_b
    move v1, v2

    :goto_3
    return v1

    :cond_c
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v0, :cond_e

    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v0, :cond_e

    check-cast p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getErrorCode()I

    move-result p1

    check-cast p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getErrorCode()I

    move-result p0

    if-ne p1, p0, :cond_d

    goto :goto_4

    :cond_d
    move v1, v2

    :goto_4
    return v1

    :cond_e
    return v2
.end method

.method private static testNumericCondition(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;Ljava/lang/String;)Z
    .locals 6

    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide v2

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-double v4, p0

    goto :goto_0

    :catch_0
    :try_start_1
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    invoke-static {v2, v3, v4, v5}, Lorg/apache/poi/ss/util/NumberComparer;->compare(DD)I

    move-result p0

    sget-object p2, Lorg/apache/poi/ss/formula/functions/DStarRunner$1;->$SwitchMap$org$apache$poi$ss$formula$functions$DStarRunner$operator:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    return v1

    :cond_1
    if-nez p0, :cond_2

    move v1, p2

    :cond_2
    return v1

    :cond_3
    if-gtz p0, :cond_4

    move v1, p2

    :cond_4
    return v1

    :cond_5
    if-gez p0, :cond_6

    move v1, p2

    :cond_6
    return v1

    :cond_7
    if-ltz p0, :cond_8

    move v1, p2

    :cond_8
    return v1

    :cond_9
    if-lez p0, :cond_a

    move v1, p2

    :cond_a
    return v1

    :catch_1
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    .line 4
    instance-of v0, p3, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz v0, :cond_7

    instance-of v0, p5, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 5
    :cond_0
    check-cast p3, Lorg/apache/poi/ss/formula/eval/AreaEval;

    .line 6
    check-cast p5, Lorg/apache/poi/ss/formula/eval/AreaEval;

    iget-object p0, p0, Lorg/apache/poi/ss/formula/functions/DStarRunner;->algoType:Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    .line 7
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;->newInstance()Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;

    move-result-object p0

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 8
    :try_start_0
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    .line 9
    instance-of p2, p1, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-eqz p2, :cond_1

    .line 10
    check-cast p1, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p1, p1

    sub-int/2addr p1, v1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    .line 11
    :cond_1
    invoke-static {p1, p3}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->getColumnForName(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/AreaEval;)I

    move-result p1
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    if-ne p1, v0, :cond_3

    .line 12
    :try_start_1
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;->allowEmptyMatchField()Z

    move-result p2

    if-nez p2, :cond_3

    .line 13
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move v0, p1

    goto :goto_1

    :catch_2
    move-exception p2

    move v0, p1

    move-object p1, p2

    goto :goto_2

    .line 14
    :catch_3
    :goto_1
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;->allowEmptyMatchField()Z

    move-result p1

    if-nez p1, :cond_2

    .line 15
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :cond_2
    move p1, v0

    goto :goto_3

    .line 16
    :goto_2
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;->allowEmptyMatchField()Z

    move-result p2

    if-nez p2, :cond_2

    .line 17
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0

    .line 18
    :cond_3
    :goto_3
    invoke-interface {p3}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getHeight()I

    move-result p2

    :goto_4
    if-ge v1, p2, :cond_6

    .line 19
    :try_start_2
    invoke-static {p3, v1, p5}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->fulfillsConditions(Lorg/apache/poi/ss/formula/eval/AreaEval;ILorg/apache/poi/ss/formula/eval/AreaEval;)Z

    move-result p4
    :try_end_2
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_2 .. :try_end_2} :catch_4

    if-eqz p4, :cond_5

    .line 20
    invoke-static {p3, v1, p1}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->resolveReference(Lorg/apache/poi/ss/formula/eval/AreaEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p4

    if-gez p1, :cond_4

    .line 21
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;->allowEmptyMatchField()Z

    move-result v0

    if-eqz v0, :cond_4

    instance-of v0, p4, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-nez v0, :cond_4

    .line 22
    sget-object p4, Lorg/apache/poi/ss/formula/eval/NumberEval;->ZERO:Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 23
    :cond_4
    invoke-interface {p0, p4}, Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;->processMatch(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    move-result p4

    if-nez p4, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 24
    :catch_4
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    .line 25
    :cond_6
    :goto_5
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;->getResult()Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    .line 26
    :cond_7
    :goto_6
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7

    .line 1
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    aget-object v4, p1, v0

    const/4 v0, 0x1

    aget-object v5, p1, v0

    const/4 v0, 0x2

    aget-object v6, p1, v0

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0
.end method
