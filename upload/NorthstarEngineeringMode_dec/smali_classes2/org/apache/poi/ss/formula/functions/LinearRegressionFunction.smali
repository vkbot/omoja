.class public final Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction;
.super Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;,
        Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$AreaValueArray;,
        Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$RefValueArray;,
        Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$SingleCellValueArray;,
        Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$ValueArray;
    }
.end annotation


# instance fields
.field private final function:Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction;->function:Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;

    return-void
.end method

.method private static createValueVector(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .locals 1

    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-nez v0, :cond_2

    instance-of v0, p0, Lorg/apache/poi/ss/formula/TwoDEval;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$AreaValueArray;

    check-cast p0, Lorg/apache/poi/ss/formula/TwoDEval;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$AreaValueArray;-><init>(Lorg/apache/poi/ss/formula/TwoDEval;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$RefValueArray;

    check-cast p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$RefValueArray;-><init>(Lorg/apache/poi/ss/formula/eval/RefEval;)V

    return-object v0

    :cond_1
    new-instance v0, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$SingleCellValueArray;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$SingleCellValueArray;-><init>(Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    return-object v0

    :cond_2
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    check-cast p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
.end method

.method private evaluateInternal(Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;I)D
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v7, v4

    move v8, v7

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    :goto_0
    if-ge v7, v2, :cond_3

    invoke-interface {v0, v7}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v13

    invoke-interface {v1, v7}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v14

    instance-of v15, v13, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-nez v15, :cond_2

    instance-of v15, v14, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v15, :cond_0

    if-nez v3, :cond_0

    check-cast v14, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-object v3, v14

    goto :goto_1

    :cond_0
    instance-of v15, v13, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v15, :cond_1

    instance-of v15, v14, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v15, :cond_1

    check-cast v13, Lorg/apache/poi/ss/formula/eval/NumberEval;

    check-cast v14, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v13}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v15

    add-double/2addr v9, v15

    invoke-virtual {v14}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v13

    add-double/2addr v11, v13

    const/4 v8, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    check-cast v13, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v13}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0

    :cond_3
    if-nez v3, :cond_9

    if-eqz v8, :cond_8

    int-to-double v7, v2

    div-double/2addr v9, v7

    div-double/2addr v11, v7

    const-wide/16 v7, 0x0

    const-wide/16 v13, 0x0

    :goto_2
    if-ge v4, v2, :cond_5

    invoke-interface {v0, v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    invoke-interface {v1, v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v15

    instance-of v5, v3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v5, :cond_4

    instance-of v5, v15, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v5, :cond_4

    check-cast v3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    check-cast v15, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v5

    sub-double/2addr v5, v9

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v17

    sub-double v17, v17, v9

    mul-double v17, v17, v5

    add-double v7, v17, v7

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v5

    sub-double/2addr v5, v9

    invoke-virtual {v15}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v17

    sub-double v17, v17, v11

    mul-double v17, v17, v5

    add-double v13, v17, v13

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    const-wide/16 v3, 0x0

    cmpl-double v0, v7, v3

    if-eqz v0, :cond_7

    div-double/2addr v13, v7

    mul-double/2addr v9, v13

    sub-double/2addr v11, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction;->function:Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;

    sget-object v1, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;->INTERCEPT:Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;

    if-ne v0, v1, :cond_6

    move-wide v13, v11

    :cond_6
    return-wide v13

    :cond_7
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->DIV_ZERO:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0

    :cond_8
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->DIV_ZERO:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0

    :cond_9
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    invoke-direct {v0, v3}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    :try_start_0
    invoke-static {p3}, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction;->createValueVector(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object p1

    invoke-static {p4}, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction;->createValueVector(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getSize()I

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getSize()I

    move-result p4

    if-eq p4, p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p2, p1, p3}, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction;->evaluateInternal(Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;I)D

    move-result-wide p0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {p2, p0, p1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p2

    :cond_2
    :goto_0
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    :try_start_1
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :goto_2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0
.end method
