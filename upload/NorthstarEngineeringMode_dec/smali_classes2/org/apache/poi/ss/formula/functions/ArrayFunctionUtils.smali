.class final Lorg/apache/poi/ss/formula/functions/ArrayFunctionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static collectValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/Double;
    .locals 3

    if-eqz p0, :cond_4

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

    if-eqz v0, :cond_1

    check-cast p0, Lorg/apache/poi/ss/formula/eval/StringValueEval;

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/StringValueEval;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-nez v0, :cond_3

    sget-object v0, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne p0, v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid ValueEval type passed for conversion: ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    check-cast p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ve must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static collectValuesWithBlanks(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/DoubleList;
    .locals 11

    new-instance v0, Lorg/apache/poi/ss/formula/functions/DoubleList;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/DoubleList;-><init>()V

    instance-of v1, p0, Lorg/apache/poi/ss/formula/ThreeDEval;

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    check-cast p0, Lorg/apache/poi/ss/formula/ThreeDEval;

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/SheetRange;->getFirstSheetIndex()I

    move-result v1

    :goto_0
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/SheetRange;->getLastSheetIndex()I

    move-result v5

    if-gt v1, v5, :cond_3

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/TwoDEval;->getWidth()I

    move-result v5

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/TwoDEval;->getHeight()I

    move-result v6

    move v7, v4

    :goto_1
    if-ge v7, v6, :cond_2

    move v8, v4

    :goto_2
    if-ge v8, v5, :cond_1

    invoke-interface {p0, v1, v7, v8}, Lorg/apache/poi/ss/formula/ThreeDEval;->getValue(III)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/poi/ss/formula/functions/ArrayFunctionUtils;->collectValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/Double;

    move-result-object v9

    if-nez v9, :cond_0

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/ss/formula/functions/DoubleList;->add(D)V

    goto :goto_3

    :cond_0
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lorg/apache/poi/ss/formula/functions/DoubleList;->add(D)V

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    instance-of v1, p0, Lorg/apache/poi/ss/formula/TwoDEval;

    if-eqz v1, :cond_8

    check-cast p0, Lorg/apache/poi/ss/formula/TwoDEval;

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/TwoDEval;->getWidth()I

    move-result v1

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/TwoDEval;->getHeight()I

    move-result v5

    move v6, v4

    :goto_4
    if-ge v6, v5, :cond_7

    move v7, v4

    :goto_5
    if-ge v7, v1, :cond_6

    invoke-interface {p0, v6, v7}, Lorg/apache/poi/ss/formula/TwoDEval;->getValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/poi/ss/formula/functions/ArrayFunctionUtils;->collectValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/Double;

    move-result-object v8

    if-nez v8, :cond_5

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/ss/formula/functions/DoubleList;->add(D)V

    goto :goto_6

    :cond_5
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lorg/apache/poi/ss/formula/functions/DoubleList;->add(D)V

    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    return-object v0

    :cond_8
    instance-of v1, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v1, :cond_b

    check-cast p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v1

    :goto_7
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getLastSheetIndex()I

    move-result v4

    if-gt v1, v4, :cond_a

    invoke-interface {p0, v1}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/poi/ss/formula/functions/ArrayFunctionUtils;->collectValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/Double;

    move-result-object v4

    if-nez v4, :cond_9

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/ss/formula/functions/DoubleList;->add(D)V

    goto :goto_8

    :cond_9
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/apache/poi/ss/formula/functions/DoubleList;->add(D)V

    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_a
    return-object v0

    :cond_b
    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/ArrayFunctionUtils;->collectValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/Double;

    move-result-object p0

    if-nez p0, :cond_c

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/ss/formula/functions/DoubleList;->add(D)V

    goto :goto_9

    :cond_c
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/ss/formula/functions/DoubleList;->add(D)V

    :goto_9
    return-object v0
.end method

.method public static getNumberArrays(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/formula/functions/DoubleList;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/ArrayFunctionUtils;->collectValuesWithBlanks(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/DoubleList;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/DoubleList;->toArray()[D

    move-result-object p0

    invoke-static {p1}, Lorg/apache/poi/ss/formula/functions/ArrayFunctionUtils;->collectValuesWithBlanks(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/DoubleList;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/functions/DoubleList;->toArray()[D

    move-result-object p1

    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_3

    new-instance v0, Lorg/apache/poi/ss/formula/functions/DoubleList;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/DoubleList;-><init>()V

    new-instance v1, Lorg/apache/poi/ss/formula/functions/DoubleList;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/DoubleList;-><init>()V

    array-length v2, p0

    array-length v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-wide v4, p0, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_1

    aget-wide v4, p1, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    aget-wide v4, p0, v3

    invoke-virtual {v0, v4, v5}, Lorg/apache/poi/ss/formula/functions/DoubleList;->add(D)V

    aget-wide v4, p1, v3

    invoke-virtual {v1, v4, v5}, Lorg/apache/poi/ss/formula/functions/DoubleList;->add(D)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    filled-new-array {v0, v1}, [Lorg/apache/poi/ss/formula/functions/DoubleList;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0
.end method
