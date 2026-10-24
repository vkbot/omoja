.class public Lorg/apache/poi/ss/formula/functions/Forecast;
.super Lorg/apache/poi/ss/formula/functions/Fixed3ArgFunction;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/Forecast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/functions/Forecast;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Forecast;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Forecast;->instance:Lorg/apache/poi/ss/formula/functions/Forecast;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed3ArgFunction;-><init>()V

    return-void
.end method

.method private static evaluateValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/Double;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 17

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    .line 1
    :try_start_0
    invoke-static {v2, v0, v1}, Lorg/apache/poi/ss/formula/functions/Forecast;->evaluateValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-static/range {p4 .. p5}, Lorg/apache/poi/ss/formula/functions/ArrayFunctionUtils;->getNumberArrays(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/formula/functions/DoubleList;

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/functions/DoubleList;->toArray()[D

    move-result-object v3

    const/4 v4, 0x1

    .line 5
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/formula/functions/DoubleList;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/functions/DoubleList;->toArray()[D

    move-result-object v1

    .line 6
    invoke-static {v3}, Lorg/apache/poi/ss/formula/functions/MathX;->average([D)D

    move-result-wide v4

    .line 7
    invoke-static {v1}, Lorg/apache/poi/ss/formula/functions/MathX;->average([D)D

    move-result-wide v6

    .line 8
    array-length v8, v3

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    :goto_0
    if-ge v2, v8, :cond_1

    .line 9
    aget-wide v15, v1, v2

    sub-double v9, v15, v6

    .line 10
    aget-wide v15, v3, v2

    sub-double/2addr v15, v4

    mul-double/2addr v15, v9

    add-double/2addr v13, v15

    move-wide/from16 p2, v13

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    .line 11
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v11, v9

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v13, p2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    const-wide/16 v1, 0x0

    cmpl-double v1, v11, v1

    if-nez v1, :cond_2

    .line 12
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->DIV_ZERO:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    :cond_2
    div-double/2addr v13, v11

    mul-double/2addr v6, v13

    sub-double/2addr v4, v6

    .line 13
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    mul-double/2addr v13, v0

    add-double/2addr v13, v4

    .line 14
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v0, v13, v14}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v0

    .line 15
    :cond_3
    :goto_1
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 16
    :catch_1
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 17
    :goto_2
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v0

    return-object v0
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6

    .line 18
    array-length v0, p1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 19
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    .line 20
    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v1

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v2

    const/4 p2, 0x0

    aget-object v3, p1, p2

    const/4 p2, 0x1

    aget-object v4, p1, p2

    const/4 p2, 0x2

    aget-object v5, p1, p2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/ss/formula/functions/Forecast;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method
