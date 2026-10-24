.class public Lorg/apache/poi/ss/formula/functions/Rate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# static fields
.field private static final LOG:La5/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/ss/formula/functions/Rate;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Rate;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _g_div_gp(DDDDDD)D
    .locals 16

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double v6, v0, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    sub-double v10, v2, v4

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double v10, v8, p6

    add-double v10, v10, p8

    sub-double/2addr v8, v4

    mul-double v8, v8, p4

    mul-double v12, v0, p10

    add-double/2addr v12, v4

    mul-double v4, v8, v12

    div-double v14, v4, v0

    add-double/2addr v14, v10

    mul-double v10, v2, v6

    mul-double v10, v10, p6

    move-wide/from16 p8, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double v2, v2, p4

    mul-double/2addr v2, v6

    mul-double/2addr v2, v12

    div-double/2addr v2, v0

    add-double/2addr v2, v14

    mul-double v8, v8, p10

    div-double/2addr v8, v0

    add-double/2addr v8, v2

    div-double/2addr v4, v8

    sub-double/2addr v10, v4

    move-wide/from16 v14, p8

    div-double/2addr v14, v10

    return-wide v14
.end method

.method public static calculateRate(DDDDDD)D
    .locals 16

    const/4 v0, 0x0

    move-wide/from16 v13, p10

    move v1, v0

    move v15, v1

    :goto_0
    int-to-double v2, v15

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    if-nez v1, :cond_1

    move-wide v1, v13

    move-wide/from16 v3, p0

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    invoke-static/range {v1 .. v12}, Lorg/apache/poi/ss/formula/functions/Rate;->_g_div_gp(DDDDDD)D

    move-result-wide v1

    sub-double v1, v13, v1

    sub-double v3, v1, v13

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    add-int/lit8 v15, v15, 0x1

    move-wide v13, v1

    move v1, v3

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_2
    return-wide v13
.end method

.method public static checkValue(D)V
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 25

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    array-length v3, v0

    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v0, v3

    invoke-static {v3, v1, v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-static {v5, v1, v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-static {v6, v1, v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v6

    array-length v7, v0

    const/4 v8, 0x4

    const/4 v9, 0x0

    if-lt v7, v8, :cond_1

    aget-object v4, v0, v4

    invoke-static {v4, v1, v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_1
    move-object v4, v9

    :goto_0
    array-length v7, v0

    const/4 v10, 0x5

    if-lt v7, v10, :cond_2

    aget-object v7, v0, v8

    invoke-static {v7, v1, v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v7

    goto :goto_1

    :cond_2
    move-object v7, v9

    :goto_1
    array-length v11, v0

    const/4 v12, 0x6

    if-lt v11, v12, :cond_3

    aget-object v9, v0, v10

    invoke-static {v9, v1, v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v9

    :cond_3
    invoke-static {v3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v13

    invoke-static {v5}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v15

    invoke-static {v6}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v17

    array-length v1, v0

    const-wide/16 v2, 0x0

    if-lt v1, v8, :cond_4

    invoke-static {v4}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v4

    move-wide/from16 v19, v4

    goto :goto_2

    :cond_4
    move-wide/from16 v19, v2

    :goto_2
    array-length v1, v0

    if-lt v1, v10, :cond_5

    invoke-static {v7}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v1

    move-wide/from16 v21, v1

    goto :goto_3

    :cond_5
    move-wide/from16 v21, v2

    :goto_3
    array-length v0, v0

    if-lt v0, v12, :cond_6

    invoke-static {v9}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v0

    :goto_4
    move-wide/from16 v23, v0

    goto :goto_5

    :cond_6
    const-wide v0, 0x3fb999999999999aL    # 0.1

    goto :goto_4

    :goto_5
    invoke-static/range {v13 .. v24}, Lorg/apache/poi/ss/formula/functions/Rate;->calculateRate(DDDDDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/functions/Rate;->checkValue(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v2

    :goto_6
    sget-object v1, Lorg/apache/poi/ss/formula/functions/Rate;->LOG:La5/d;

    invoke-interface {v1}, La5/d;->h()La5/b;

    move-result-object v1

    invoke-interface {v1, v0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object v1

    const-string v2, "Can\'t evaluate rate function"

    invoke-interface {v1, v2}, La5/b;->f(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v0

    return-object v0
.end method
