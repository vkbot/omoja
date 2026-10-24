.class public final Lorg/apache/poi/ss/formula/functions/TDistLt;
.super Lorg/apache/poi/ss/formula/functions/Fixed3ArgFunction;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/TDistLt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/functions/TDistLt;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/TDistLt;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/TDistLt;->instance:Lorg/apache/poi/ss/formula/functions/TDistLt;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed3ArgFunction;-><init>()V

    return-void
.end method

.method private static evaluateBoolean(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToBoolean(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
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

.method private static tdistCumulative(DI)D
    .locals 17

    move/from16 v0, p2

    int-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-lez v4, :cond_2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double v6, v0, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Lt4/e;->d(D)D

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    const/4 v10, 0x0

    invoke-static {v6, v7, v10}, Lz4/b;->g(D[D)D

    invoke-static {v0, v1, v10}, Lz4/b;->g(D[D)D

    div-double v6, v0, v8

    invoke-static {v6, v7}, Lt4/e;->d(D)D

    cmpl-double v6, p0, v2

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    mul-double v9, p0, p0

    add-double/2addr v9, v0

    div-double v11, v0, v9

    mul-double v13, v0, v7

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    invoke-static/range {v11 .. v16}, Lt4/c;->d(DDD)D

    move-result-wide v0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_1

    mul-double/2addr v7, v0

    goto :goto_0

    :cond_1
    mul-double/2addr v0, v7

    sub-double v7, v4, v0

    :goto_0
    return-wide v7

    :cond_2
    new-instance v2, Lp4/k;

    sget-object v3, Lq4/c;->t1:Lq4/c;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lp4/k;-><init>(Lq4/c;Ljava/lang/Number;)V

    throw v2
.end method

.method private static tdistDensity(DI)D
    .locals 17

    move/from16 v0, p2

    int-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-lez v4, :cond_0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double v6, v0, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Lt4/e;->d(D)D

    move-result-wide v10

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lz4/b;->g(D[D)D

    move-result-wide v12

    invoke-static {v0, v1, v14}, Lz4/b;->g(D[D)D

    move-result-wide v15

    add-double/2addr v15, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v15, v12

    sub-double/2addr v10, v15

    div-double v8, v0, v8

    invoke-static {v8, v9}, Lt4/e;->d(D)D

    move-result-wide v8

    sub-double/2addr v10, v8

    mul-double v8, p0, p0

    div-double/2addr v8, v0

    add-double/2addr v8, v4

    invoke-static {v8, v9, v14}, Lz4/b;->g(D[D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    sub-double/2addr v10, v0

    invoke-static {v10, v11, v2, v3}, Lz4/b;->e(DD)D

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v2, Lp4/k;

    sget-object v3, Lq4/c;->t1:Lq4/c;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lp4/k;-><init>(Lq4/c;Ljava/lang/Number;)V

    throw v2
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/TDistLt;->evaluateValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/Double;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/TDistLt;->evaluateValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/Double;

    move-result-object p3

    if-nez p3, :cond_1

    .line 4
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    .line 5
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result p3

    const/4 p4, 0x1

    if-ge p3, p4, :cond_2

    .line 6
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    .line 7
    :cond_2
    invoke-static {p5, p1, p2}, Lorg/apache/poi/ss/formula/functions/TDistLt;->evaluateBoolean(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_3

    .line 8
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    .line 9
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    new-instance p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p4

    invoke-static {p4, p5, p3}, Lorg/apache/poi/ss/formula/functions/TDistLt;->tdistCumulative(DI)D

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p1

    .line 11
    :cond_4
    new-instance p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p4

    invoke-static {p4, p5, p3}, Lorg/apache/poi/ss/formula/functions/TDistLt;->tdistDensity(DI)D

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 12
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 8

    .line 13
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 14
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v3

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v4

    const/4 p2, 0x0

    aget-object v5, p1, p2

    const/4 p2, 0x1

    aget-object v6, p1, p2

    const/4 p2, 0x2

    aget-object v7, p1, p2

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lorg/apache/poi/ss/formula/functions/TDistLt;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    .line 15
    :cond_0
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0
.end method
