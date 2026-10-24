.class public final Lorg/apache/poi/ss/formula/functions/NormDist;
.super Lorg/apache/poi/ss/formula/functions/Fixed4ArgFunction;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/NormDist;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/functions/NormDist;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/NormDist;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NormDist;->instance:Lorg/apache/poi/ss/formula/functions/NormDist;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed4ArgFunction;-><init>()V

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

.method public static probability(DDDZ)D
    .locals 14

    move-wide/from16 v0, p2

    move-wide/from16 v2, p4

    new-instance v4, Lo4/c;

    invoke-direct {v4, v0, v1, v2, v3}, Lo4/c;-><init>(DD)V

    if-eqz p6, :cond_5

    sub-double v0, p0, v0

    invoke-static {v0, v1}, Lz4/b;->a(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    mul-double v8, v2, v6

    cmpl-double v4, v4, v8

    const-wide/16 v8, 0x0

    if-lez v4, :cond_1

    cmpg-double v0, v0, v8

    if-gez v0, :cond_0

    goto :goto_2

    :cond_0
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_1
    neg-double v0, v0

    sget-wide v4, Lo4/c;->r:D

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lz4/b;->a(D)D

    move-result-wide v2

    cmpl-double v2, v2, v6

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    if-lez v2, :cond_3

    cmpl-double v0, v0, v8

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move-wide v8, v3

    goto :goto_1

    :cond_3
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double v10, v0, v0

    const-wide v12, 0x3cd203af9ee75616L    # 1.0E-15

    const/16 v2, 0x2710

    move-wide p0, v5

    move/from16 p2, v2

    move-wide/from16 p3, v10

    move-wide/from16 p5, v12

    invoke-static/range {p0 .. p6}, Lt4/e;->f(DIDD)D

    move-result-wide v5

    cmpg-double v0, v0, v8

    if-gez v0, :cond_4

    sub-double/2addr v3, v5

    goto :goto_0

    :cond_4
    move-wide v8, v5

    :goto_1
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v0

    goto :goto_2

    :cond_5
    sub-double v0, p0, v0

    div-double/2addr v0, v2

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    mul-double/2addr v2, v0

    mul-double/2addr v2, v0

    iget-wide v0, v4, Lo4/c;->c:D

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Lz4/b;->d(D)D

    move-result-wide v8

    :goto_2
    return-wide v8
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7

    .line 1
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/NormDist;->evaluateValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/Double;

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
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/NormDist;->evaluateValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/Double;

    move-result-object p3

    if-nez p3, :cond_1

    .line 4
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    .line 5
    :cond_1
    invoke-static {p5, p1, p2}, Lorg/apache/poi/ss/formula/functions/NormDist;->evaluateValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/Double;

    move-result-object p1

    if-nez p1, :cond_2

    .line 6
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    .line 7
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p4

    const-wide/16 v0, 0x0

    cmpg-double p2, p4, v0

    if-gtz p2, :cond_3

    .line 8
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :cond_3
    const/4 p2, 0x0

    .line 9
    invoke-static {p6, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToBoolean(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Ljava/lang/Boolean;

    move-result-object p2

    if-nez p2, :cond_4

    .line 10
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    .line 11
    :cond_4
    new-instance p4, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 12
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 13
    invoke-static/range {v0 .. v6}, Lorg/apache/poi/ss/formula/functions/NormDist;->probability(DDDZ)D

    move-result-wide p0

    invoke-direct {p4, p0, p1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p4

    .line 14
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 9

    .line 15
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 16
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

    const/4 p2, 0x3

    aget-object v8, p1, p2

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lorg/apache/poi/ss/formula/functions/NormDist;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    .line 17
    :cond_0
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0
.end method
