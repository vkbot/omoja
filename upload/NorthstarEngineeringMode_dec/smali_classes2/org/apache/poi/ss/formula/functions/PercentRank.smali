.class public final Lorg/apache/poi/ss/formula/functions/PercentRank;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/functions/PercentRank;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/PercentRank;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/PercentRank;->instance:Lorg/apache/poi/ss/formula/functions/Function;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculateRank(Ljava/util/List;DIZ)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 15
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

    if-eqz p5, :cond_2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v6, v6, p2

    if-gtz v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v6, v6, v0

    if-lez v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :cond_1
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v6, v6, p2

    if-lez v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v6, v6, v2

    if-gez v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_0

    :cond_2
    move-wide v4, v2

    move-wide v2, v0

    if-eqz p5, :cond_7

    cmpl-double v0, v2, p2

    if-eqz v0, :cond_7

    cmpl-double v0, v4, p2

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x5

    if-ge v8, v0, :cond_4

    const/16 v0, 0x8

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v8, 0x3

    :goto_1
    const/4 v14, 0x0

    move-object v9, p0

    move-object/from16 v10, p1

    move-wide v11, v2

    move v13, v0

    invoke-direct/range {v9 .. v14}, Lorg/apache/poi/ss/formula/functions/PercentRank;->calculateRank(Ljava/util/List;DIZ)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    instance-of v6, v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-nez v6, :cond_5

    return-object v1

    :cond_5
    const/4 v14, 0x0

    move-object v9, p0

    move-object/from16 v10, p1

    move-wide v11, v4

    move v13, v0

    invoke-direct/range {v9 .. v14}, Lorg/apache/poi/ss/formula/functions/PercentRank;->calculateRank(Ljava/util/List;DIZ)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    instance-of v6, v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-nez v6, :cond_6

    return-object v0

    :cond_6
    move-object v6, v1

    check-cast v6, Lorg/apache/poi/ss/formula/eval/NumberEval;

    move-object v7, v0

    check-cast v7, Lorg/apache/poi/ss/formula/eval/NumberEval;

    move-wide/from16 v0, p2

    move/from16 v8, p4

    invoke-static/range {v0 .. v8}, Lorg/apache/poi/ss/formula/functions/PercentRank;->interpolate(DDDLorg/apache/poi/ss/formula/eval/NumberEval;Lorg/apache/poi/ss/formula/eval/NumberEval;I)Lorg/apache/poi/ss/formula/eval/NumberEval;

    move-result-object v0

    return-object v0

    :cond_7
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_8
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpg-double v4, v4, p2

    if-gez v4, :cond_9

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    cmpl-double v3, v3, p2

    if-lez v3, :cond_8

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-eq v1, v0, :cond_d

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v2, v0, :cond_b

    goto :goto_4

    :cond_b
    add-int/2addr v1, v2

    if-nez v1, :cond_c

    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v0

    :cond_c
    int-to-double v2, v2

    int-to-double v0, v1

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-static {v0, v8}, Lorg/apache/poi/ss/formula/functions/PercentRank;->round(Ljava/math/BigDecimal;I)D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v1

    :cond_d
    :goto_4
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0
.end method

.method public static getValues(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;",
            "II)",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz v0, :cond_2

    check-cast p0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstRow()I

    move-result p2

    :goto_0
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getLastRow()I

    move-result v0

    if-gt p2, v0, :cond_1

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstColumn()I

    move-result v0

    :goto_1
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getLastColumn()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-interface {p0, p2, v0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getAbsoluteValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    invoke-static {v1, p2, v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static interpolate(DDDLorg/apache/poi/ss/formula/eval/NumberEval;Lorg/apache/poi/ss/formula/eval/NumberEval;I)Lorg/apache/poi/ss/formula/eval/NumberEval;
    .locals 4
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sub-double/2addr p4, p2

    sub-double/2addr p0, p2

    new-instance p2, Ljava/math/BigDecimal;

    invoke-virtual {p7}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v0

    invoke-virtual {p6}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/NumberToTextConverter;->toText(D)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide p6

    invoke-static {p6, p7}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p3

    div-double/2addr p0, p4

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    new-instance p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-static {p0, p8}, Lorg/apache/poi/ss/formula/functions/PercentRank;->round(Ljava/math/BigDecimal;I)D

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p1
.end method

.method public static round(Ljava/math/BigDecimal;I)D
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    add-int/lit8 v0, p1, 0x3

    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p0, v0, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    sget-object v0, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 9

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    aget-object v2, p1, v0

    invoke-static {v2, p2, p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v5
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_1
    aget-object v2, p1, v2

    invoke-static {v2, p2, p3}, Lorg/apache/poi/ss/formula/functions/PercentRank;->getValues(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/util/List;

    move-result-object v2

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

    instance-of v7, v3, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-nez v7, :cond_1

    instance-of v7, v3, Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    if-eqz v7, :cond_2

    goto :goto_0

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

    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :cond_4
    array-length v2, p1

    if-le v2, v1, :cond_6

    :try_start_2
    aget-object p1, p1, v1

    invoke-static {p1, p2, p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result p1

    if-ge p1, v0, :cond_5

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

    invoke-direct/range {v3 .. v8}, Lorg/apache/poi/ss/formula/functions/PercentRank;->calculateRank(Ljava/util/List;DIZ)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    :goto_4
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eq p0, p1, :cond_7

    return-object p0

    :cond_7
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-ne p0, p1, :cond_8

    return-object p0

    :cond_8
    return-object p1
.end method
