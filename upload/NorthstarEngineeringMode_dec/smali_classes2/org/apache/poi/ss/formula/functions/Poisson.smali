.class public Lorg/apache/poi/ss/formula/functions/Poisson;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field private static final DEFAULT_RETURN_RESULT:D = 1.0

.field public static final instance:Lorg/apache/poi/ss/formula/functions/Poisson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/functions/Poisson;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Poisson;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Poisson;->instance:Lorg/apache/poi/ss/formula/functions/Poisson;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkArgument(D)V
    .locals 2

    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V

    const-wide/16 v0, 0x0

    cmpg-double p0, p0, v0

    if-ltz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0
.end method

.method public static evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 2
    array-length v3, v0

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 3
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    :cond_0
    const/4 v3, 0x0

    .line 4
    aget-object v3, v0, v3

    const/4 v4, 0x1

    .line 5
    aget-object v5, v0, v4

    const/4 v6, 0x2

    .line 6
    aget-object v0, v0, v6

    .line 7
    :try_start_0
    invoke-static {v3, v1, v2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v6
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    :try_start_1
    invoke-static {v5, v1, v2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v1

    .line 9
    invoke-static {v6, v7, v1, v2}, Lorg/apache/poi/ss/formula/functions/Poisson;->isDefaultResult(DD)Z

    move-result v3

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    if-eqz v3, :cond_1

    .line 10
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v0, v14, v15}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v0

    :catch_0
    move-exception v0

    goto/16 :goto_7

    .line 11
    :cond_1
    invoke-static {v6, v7}, Lorg/apache/poi/ss/formula/functions/Poisson;->checkArgument(D)V

    .line 12
    invoke-static {v1, v2}, Lorg/apache/poi/ss/formula/functions/Poisson;->checkArgument(D)V

    .line 13
    check-cast v0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v0

    .line 14
    new-instance v3, Ls4/a;

    invoke-direct {v3}, Ls4/a;-><init>()V

    const-wide/16 v11, 0x0

    cmpg-double v3, v1, v11

    if-lez v3, :cond_d

    const-wide v16, 0x3d719799812dea11L    # 1.0E-12

    const v3, 0x989680

    .line 15
    new-instance v8, Lo4/c;

    sget-object v5, Lz4/b;->a:[[D

    .line 16
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    const/4 v13, 0x0

    move-wide v9, v1

    move-wide/from16 v11, v18

    .line 17
    invoke-direct/range {v8 .. v13}, Lo4/c;-><init>(DDI)V

    .line 18
    new-instance v5, Lo4/b;

    const/4 v5, 0x0

    .line 19
    invoke-static {v14, v15, v5}, Lz4/b;->g(D[D)D

    const v8, 0x7fffffff

    if-eqz v0, :cond_4

    double-to-int v0, v6

    if-gez v0, :cond_2

    const-wide/16 v14, 0x0

    goto/16 :goto_6

    :cond_2
    if-ne v0, v8, :cond_3

    goto/16 :goto_6

    :cond_3
    int-to-double v4, v0

    add-double v8, v4, v14

    move v10, v3

    move-wide v11, v1

    move-wide/from16 v13, v16

    .line 20
    invoke-static/range {v8 .. v14}, Lt4/e;->f(DIDD)D

    move-result-wide v14

    goto/16 :goto_6

    :cond_4
    double-to-int v0, v6

    if-ltz v0, :cond_b

    if-ne v0, v8, :cond_5

    goto/16 :goto_3

    :cond_5
    if-nez v0, :cond_6

    neg-double v0, v1

    :goto_0
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto/16 :goto_4

    :cond_6
    int-to-double v8, v0

    .line 21
    sget-object v0, Lo4/d;->b:[D

    const-wide/high16 v10, 0x402e000000000000L    # 15.0

    cmpg-double v0, v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    if-gez v0, :cond_8

    mul-double v6, v8, v10

    .line 22
    invoke-static {v6, v7}, Lz4/b;->f(D)D

    move-result-wide v16

    cmpl-double v0, v16, v6

    if-nez v0, :cond_7

    .line 23
    sget-object v0, Lo4/d;->b:[D

    double-to-int v3, v6

    aget-wide v6, v0, v3

    goto :goto_1

    :cond_7
    add-double/2addr v14, v8

    .line 24
    invoke-static {v14, v15}, Lt4/e;->d(D)D

    move-result-wide v6

    add-double v14, v8, v12

    .line 25
    invoke-static {v8, v9, v5}, Lz4/b;->g(D[D)D

    move-result-wide v16

    mul-double v16, v16, v14

    sub-double v6, v6, v16

    add-double/2addr v6, v8

    .line 26
    sget-wide v14, Lo4/d;->a:D

    sub-double/2addr v6, v14

    goto :goto_1

    :cond_8
    mul-double v6, v8, v8

    const-wide v14, 0x3f4b951e2b18ff23L    # 8.417508417508417E-4

    div-double/2addr v14, v6

    const-wide v16, 0x3f43813813813814L    # 5.952380952380953E-4

    sub-double v16, v16, v14

    div-double v16, v16, v6

    const-wide v14, 0x3f4a01a01a01a01aL    # 7.936507936507937E-4

    sub-double v14, v14, v16

    div-double/2addr v14, v6

    const-wide v16, 0x3f66c16c16c16c17L    # 0.002777777777777778

    sub-double v16, v16, v14

    div-double v16, v16, v6

    const-wide v6, 0x3fb5555555555555L    # 0.08333333333333333

    sub-double v6, v6, v16

    div-double/2addr v6, v8

    :goto_1
    neg-double v6, v6

    sub-double v14, v8, v1

    .line 27
    invoke-static {v14, v15}, Lz4/b;->a(D)D

    move-result-wide v16

    add-double v18, v8, v1

    const-wide v20, 0x3fb999999999999aL    # 0.1

    mul-double v20, v20, v18

    cmpg-double v0, v16, v20

    if-gez v0, :cond_9

    div-double v0, v14, v18

    mul-double/2addr v14, v0

    mul-double/2addr v10, v8

    mul-double/2addr v10, v0

    mul-double/2addr v0, v0

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    move/from16 v16, v4

    :goto_2
    cmpl-double v2, v14, v2

    if-eqz v2, :cond_a

    mul-double/2addr v10, v0

    mul-int/lit8 v2, v16, 0x2

    add-int/2addr v2, v4

    int-to-double v2, v2

    div-double v2, v10, v2

    add-double/2addr v2, v14

    add-int/lit8 v16, v16, 0x1

    move-wide/from16 v22, v2

    move-wide v2, v14

    move-wide/from16 v14, v22

    goto :goto_2

    :cond_9
    div-double v3, v8, v1

    .line 28
    invoke-static {v3, v4, v5}, Lz4/b;->g(D[D)D

    move-result-wide v3

    mul-double/2addr v3, v8

    add-double/2addr v3, v1

    sub-double v14, v3, v8

    :cond_a
    sub-double/2addr v6, v14

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    .line 29
    invoke-static {v0, v1, v5}, Lz4/b;->g(D[D)D

    move-result-wide v0

    mul-double/2addr v0, v12

    sub-double/2addr v6, v0

    invoke-static {v8, v9, v5}, Lz4/b;->g(D[D)D

    move-result-wide v0

    mul-double/2addr v0, v12

    sub-double v0, v6, v0

    goto/16 :goto_0

    :cond_b
    :goto_3
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto/16 :goto_0

    :goto_4
    cmpl-double v2, v0, v2

    if-nez v2, :cond_c

    const-wide/16 v11, 0x0

    goto :goto_5

    :cond_c
    const-wide/16 v2, 0x0

    .line 30
    invoke-static {v0, v1, v2, v3}, Lz4/b;->e(DD)D

    move-result-wide v11

    :goto_5
    move-wide v14, v11

    .line 31
    :goto_6
    invoke-static {v14, v15}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V

    .line 32
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v0, v14, v15}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v0

    .line 33
    :cond_d
    new-instance v0, Lp4/k;

    sget-object v3, Lq4/c;->v1:Lq4/c;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lp4/k;-><init>(Lq4/c;Ljava/lang/Number;)V

    throw v0

    .line 34
    :catch_1
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 35
    :goto_7
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v0

    return-object v0
.end method

.method private static isDefaultResult(DD)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-nez p0, :cond_0

    cmpl-double p0, p2, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    .line 1
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result p0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result p2

    invoke-static {p1, p0, p2}, Lorg/apache/poi/ss/formula/functions/Poisson;->evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method
