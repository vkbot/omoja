.class final Lorg/apache/poi/ss/formula/atp/PercentRankExcFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# instance fields
.field private evaluator:Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/poi/ss/formula/atp/PercentRankExcFunction;

    sget-object v1, Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;->instance:Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/atp/PercentRankExcFunction;-><init>(Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;)V

    sput-object v0, Lorg/apache/poi/ss/formula/atp/PercentRankExcFunction;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/atp/PercentRankExcFunction;->evaluator:Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;

    return-void
.end method

.method private calculateRank(Ljava/util/List;DIZ)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;DIZ)",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;"
        }
    .end annotation

    move/from16 v8, p4

    const-wide/16 v0, 0x1

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    if-eqz p5, :cond_7

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v5, v2

    move-wide v9, v5

    move-wide v2, v0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    cmpg-double v11, v11, p2

    if-gtz v11, :cond_1

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    cmpl-double v11, v11, v2

    if-lez v11, :cond_1

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    :cond_1
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    cmpl-double v11, v11, p2

    if-lez v11, :cond_2

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    cmpg-double v11, v11, v9

    if-gez v11, :cond_2

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    :cond_2
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    cmpg-double v11, v11, v5

    if-gez v11, :cond_3

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    :cond_3
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    cmpl-double v11, v11, v0

    if-lez v11, :cond_0

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    :cond_4
    cmpg-double v4, p2, v5

    if-ltz v4, :cond_6

    cmpl-double v0, p2, v0

    if-lez v0, :cond_5

    goto :goto_1

    :cond_5
    move-wide v11, v9

    move-wide v9, v2

    goto :goto_2

    :cond_6
    :goto_1
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    :cond_7
    move-wide v9, v0

    move-wide v11, v2

    :goto_2
    if-eqz p5, :cond_c

    cmpl-double v0, v9, p2

    if-eqz v0, :cond_c

    cmpl-double v0, v11, p2

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    const/4 v0, 0x5

    if-ge v8, v0, :cond_9

    const/16 v0, 0x8

    :goto_3
    move v7, v0

    goto :goto_4

    :cond_9
    add-int/lit8 v0, v8, 0x3

    goto :goto_3

    :goto_4
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, v9

    move v5, v7

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/formula/atp/PercentRankExcFunction;->calculateRank(Ljava/util/List;DIZ)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v6

    instance-of v0, v6, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-nez v0, :cond_a

    return-object v6

    :cond_a
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, v11

    move v4, v7

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/formula/atp/PercentRankExcFunction;->calculateRank(Ljava/util/List;DIZ)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-nez v1, :cond_b

    return-object v0

    :cond_b
    check-cast v6, Lorg/apache/poi/ss/formula/eval/NumberEval;

    move-object v7, v0

    check-cast v7, Lorg/apache/poi/ss/formula/eval/NumberEval;

    move-wide v0, p2

    move-wide v2, v9

    move-wide v4, v11

    move/from16 v8, p4

    invoke-static/range {v0 .. v8}, Lorg/apache/poi/ss/formula/functions/PercentRank;->interpolate(DDDLorg/apache/poi/ss/formula/eval/NumberEval;Lorg/apache/poi/ss/formula/eval/NumberEval;I)Lorg/apache/poi/ss/formula/eval/NumberEval;

    move-result-object v0

    return-object v0

    :cond_c
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_d
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpg-double v2, v2, p2

    if-gez v2, :cond_d

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_e
    add-int/lit8 v1, v1, 0x1

    int-to-double v0, v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-static {v0, v8}, Lorg/apache/poi/ss/formula/functions/PercentRank;->round(Ljava/math/BigDecimal;I)D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v1
.end method

.method private evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 9

    .line 2
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 3
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 4
    :try_start_0
    aget-object v2, p1, v0

    invoke-static {v2, p2, p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    .line 5
    invoke-static {v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v5
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 7
    :try_start_1
    aget-object v2, p1, v2

    invoke-static {v2, p2, p3}, Lorg/apache/poi/ss/formula/functions/PercentRank;->getValues(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/util/List;

    move-result-object v2

    .line 8
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 9
    instance-of v7, v3, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-nez v7, :cond_1

    instance-of v7, v3, Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    if-eqz v7, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {v3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_4

    .line 11
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 12
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    .line 13
    :cond_4
    array-length v2, p1

    if-le v2, v1, :cond_6

    .line 14
    :try_start_2
    aget-object p1, p1, v1

    invoke-static {p1, p2, p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    .line 15
    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result p1

    if-ge p1, v0, :cond_5

    .line 16
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_2
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_5
    :goto_1
    move v7, p1

    goto :goto_3

    .line 17
    :goto_2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0

    :cond_6
    const/4 p1, 0x3

    goto :goto_1

    :goto_3
    const/4 v8, 0x1

    move-object v3, p0

    .line 18
    invoke-direct/range {v3 .. v8}, Lorg/apache/poi/ss/formula/atp/PercentRankExcFunction;->calculateRank(Ljava/util/List;DIZ)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    .line 19
    :goto_4
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    .line 20
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eq p0, p1, :cond_7

    return-object p0

    .line 21
    :cond_7
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :catch_2
    move-exception p0

    .line 22
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    .line 23
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-ne p0, p1, :cond_8

    return-object p0

    :cond_8
    return-object p1
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1

    .line 1
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result p2

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/poi/ss/formula/atp/PercentRankExcFunction;->evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method
