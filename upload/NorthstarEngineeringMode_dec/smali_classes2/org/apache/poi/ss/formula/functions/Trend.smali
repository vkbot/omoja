.class public final Lorg/apache/poi/ss/formula/functions/Trend;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/functions/Trend$TrendResults;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static evalToArray(Lorg/apache/poi/ss/formula/eval/ValueEval;)[[D
    .locals 10

    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    filled-new-array {v1, v1}, [I

    move-result-object p0

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[D

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    check-cast p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getNumberOfSheets()I

    move-result v0

    if-gt v0, v2, :cond_1

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0

    :cond_2
    :goto_0
    if-eqz p0, :cond_8

    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz v0, :cond_5

    check-cast p0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getHeight()I

    move-result v2

    filled-new-array {v2, v0}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_6

    move v5, v1

    :goto_2
    if-ge v5, v0, :cond_4

    invoke-interface {p0, v4, v5}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v6

    instance-of v7, v6, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-eqz v7, :cond_3

    aget-object v7, v3, v4

    check-cast v6, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    invoke-interface {v6}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide v8

    aput-wide v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-eqz v0, :cond_7

    filled-new-array {v2, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [[D

    aget-object v0, v3, v1

    check-cast p0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide v4

    aput-wide v4, v0, v1

    :cond_6
    return-object v3

    :cond_7
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Parameter may not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static flattenArray([[D)[D
    .locals 6

    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    new-array p0, v2, [D

    return-object p0

    :cond_0
    array-length v0, p0

    aget-object v1, p0, v2

    array-length v1, v1

    mul-int/2addr v0, v1

    new-array v0, v0, [D

    move v1, v2

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    aget-object v3, p0, v1

    aget-object v4, p0, v2

    array-length v5, v4

    mul-int/2addr v5, v1

    array-length v4, v4

    invoke-static {v3, v2, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static flattenArrayToRow([[D)[[D
    .locals 7

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    filled-new-array {v1, v1}, [I

    move-result-object p0

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[D

    return-object p0

    :cond_0
    array-length v0, p0

    aget-object v3, p0, v1

    array-length v3, v3

    mul-int/2addr v0, v3

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    move v3, v1

    :goto_1
    aget-object v4, p0, v1

    array-length v5, v4

    if-ge v3, v5, :cond_1

    array-length v4, v4

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    aget-object v4, v0, v4

    aget-object v5, p0, v2

    aget-wide v5, v5, v3

    aput-wide v5, v4, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static getDefaultArrayOneD(I)[[D
    .locals 8

    const/4 v0, 0x1

    filled-new-array {p0, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_0

    aget-object v3, v0, v2

    int-to-double v4, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    aput-wide v4, v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getNewY([Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/Trend$TrendResults;
    .locals 19

    move-object/from16 v0, p0

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_4

    const/4 v4, 0x2

    if-eq v1, v4, :cond_3

    const/4 v5, 0x3

    if-eq v1, v5, :cond_2

    const/4 v6, 0x4

    if-ne v1, v6, :cond_1

    aget-object v1, v0, v3

    invoke-static {v1}, Lorg/apache/poi/ss/formula/functions/Trend;->evalToArray(Lorg/apache/poi/ss/formula/eval/ValueEval;)[[D

    move-result-object v1

    aget-object v6, v0, v2

    invoke-static {v6}, Lorg/apache/poi/ss/formula/functions/Trend;->evalToArray(Lorg/apache/poi/ss/formula/eval/ValueEval;)[[D

    move-result-object v6

    aget-object v4, v0, v4

    invoke-static {v4}, Lorg/apache/poi/ss/formula/functions/Trend;->evalToArray(Lorg/apache/poi/ss/formula/eval/ValueEval;)[[D

    move-result-object v4

    aget-object v0, v0, v5

    instance-of v5, v0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz v5, :cond_0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v0

    xor-int/2addr v0, v2

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0

    :cond_2
    aget-object v1, v0, v3

    invoke-static {v1}, Lorg/apache/poi/ss/formula/functions/Trend;->evalToArray(Lorg/apache/poi/ss/formula/eval/ValueEval;)[[D

    move-result-object v1

    aget-object v5, v0, v2

    invoke-static {v5}, Lorg/apache/poi/ss/formula/functions/Trend;->evalToArray(Lorg/apache/poi/ss/formula/eval/ValueEval;)[[D

    move-result-object v6

    aget-object v0, v0, v4

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/Trend;->evalToArray(Lorg/apache/poi/ss/formula/eval/ValueEval;)[[D

    move-result-object v4

    :goto_0
    move v0, v3

    goto :goto_1

    :cond_3
    aget-object v1, v0, v3

    invoke-static {v1}, Lorg/apache/poi/ss/formula/functions/Trend;->evalToArray(Lorg/apache/poi/ss/formula/eval/ValueEval;)[[D

    move-result-object v1

    aget-object v0, v0, v2

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/Trend;->evalToArray(Lorg/apache/poi/ss/formula/eval/ValueEval;)[[D

    move-result-object v6

    filled-new-array {v3, v3}, [I

    move-result-object v0

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [[D

    goto :goto_0

    :cond_4
    aget-object v0, v0, v3

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/Trend;->evalToArray(Lorg/apache/poi/ss/formula/eval/ValueEval;)[[D

    move-result-object v1

    filled-new-array {v3, v3}, [I

    move-result-object v0

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [[D

    filled-new-array {v3, v3}, [I

    move-result-object v0

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [[D

    goto :goto_0

    :goto_1
    array-length v5, v1

    if-lt v5, v2, :cond_1c

    invoke-static {v1}, Lorg/apache/poi/ss/formula/functions/Trend;->flattenArray([[D)[D

    move-result-object v5

    array-length v7, v4

    if-lez v7, :cond_5

    move-object v7, v4

    goto :goto_2

    :cond_5
    filled-new-array {v2, v2}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[D

    :goto_2
    array-length v8, v5

    const-string v9, "Sample size too small"

    if-eq v8, v2, :cond_1b

    array-length v8, v1

    if-eq v8, v2, :cond_b

    aget-object v8, v1, v3

    array-length v8, v8

    if-ne v8, v2, :cond_6

    goto :goto_5

    :cond_6
    array-length v8, v6

    if-ge v8, v2, :cond_7

    array-length v8, v5

    invoke-static {v8}, Lorg/apache/poi/ss/formula/functions/Trend;->getDefaultArrayOneD(I)[[D

    move-result-object v8

    array-length v10, v4

    if-ge v10, v2, :cond_8

    move-object v7, v1

    goto :goto_3

    :cond_7
    invoke-static {v6}, Lorg/apache/poi/ss/formula/functions/Trend;->flattenArrayToRow([[D)[[D

    move-result-object v8

    array-length v10, v4

    if-ge v10, v2, :cond_8

    move-object v7, v6

    :cond_8
    :goto_3
    array-length v10, v4

    if-lez v10, :cond_9

    invoke-static {v4}, Lorg/apache/poi/ss/formula/functions/Trend;->flattenArrayToRow([[D)[[D

    move-result-object v10

    goto :goto_4

    :cond_9
    move-object v10, v4

    :goto_4
    array-length v11, v5

    array-length v12, v8

    if-ne v11, v12, :cond_a

    array-length v1, v1

    array-length v11, v6

    if-ne v1, v11, :cond_a

    goto :goto_9

    :cond_a
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0

    :cond_b
    :goto_5
    array-length v8, v6

    if-ge v8, v2, :cond_d

    array-length v8, v5

    invoke-static {v8}, Lorg/apache/poi/ss/formula/functions/Trend;->getDefaultArrayOneD(I)[[D

    move-result-object v8

    array-length v10, v4

    if-ge v10, v2, :cond_c

    goto :goto_8

    :cond_c
    :goto_6
    move-object v1, v7

    goto :goto_8

    :cond_d
    aget-object v8, v6, v3

    array-length v8, v8

    if-le v8, v2, :cond_e

    array-length v1, v1

    if-ne v1, v2, :cond_e

    invoke-static {v6}, Lorg/apache/poi/ss/formula/functions/Trend;->switchRowsColumns([[D)[[D

    move-result-object v1

    goto :goto_7

    :cond_e
    move-object v1, v6

    :goto_7
    array-length v8, v4

    if-ge v8, v2, :cond_f

    move-object v8, v1

    move-object v1, v6

    goto :goto_8

    :cond_f
    move-object v8, v1

    goto :goto_6

    :goto_8
    array-length v7, v4

    if-lez v7, :cond_11

    array-length v7, v8

    if-eq v7, v2, :cond_10

    aget-object v7, v8, v3

    array-length v7, v7

    if-ne v7, v2, :cond_11

    :cond_10
    invoke-static {v4}, Lorg/apache/poi/ss/formula/functions/Trend;->flattenArrayToRow([[D)[[D

    move-result-object v10

    move-object v7, v1

    goto :goto_9

    :cond_11
    move-object v7, v1

    move-object v10, v4

    :goto_9
    array-length v1, v4

    if-ge v1, v2, :cond_12

    move-object v10, v8

    goto :goto_a

    :cond_12
    array-length v1, v4

    if-ne v1, v2, :cond_13

    aget-object v1, v4, v3

    array-length v1, v1

    if-le v1, v2, :cond_13

    array-length v1, v6

    if-le v1, v2, :cond_13

    aget-object v1, v6, v3

    array-length v1, v1

    if-ne v1, v2, :cond_13

    invoke-static {v4}, Lorg/apache/poi/ss/formula/functions/Trend;->switchRowsColumns([[D)[[D

    move-result-object v10

    :cond_13
    :goto_a
    aget-object v1, v10, v3

    array-length v1, v1

    aget-object v4, v8, v3

    array-length v6, v4

    if-ne v1, v6, :cond_1a

    array-length v1, v4

    array-length v4, v8

    if-ge v1, v4, :cond_19

    array-length v1, v7

    aget-object v4, v7, v3

    array-length v4, v4

    invoke-static {v8}, Lorg/apache/poi/ss/formula/functions/Trend;->isAllColumnsSame([[D)Z

    move-result v6

    const-wide/16 v11, 0x0

    if-eqz v6, :cond_14

    array-length v0, v10

    new-array v0, v0, [D

    invoke-static {v5}, Ljava/util/Arrays;->stream([D)Ljava/util/stream/DoubleStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/DoubleStream;->average()Ljava/util/OptionalDouble;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Ljava/util/OptionalDouble;->orElse(D)D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    new-instance v2, Lorg/apache/poi/ss/formula/functions/Trend$TrendResults;

    invoke-direct {v2, v0, v4, v1}, Lorg/apache/poi/ss/formula/functions/Trend$TrendResults;-><init>([DII)V

    return-object v2

    :cond_14
    new-instance v6, Ly4/a;

    invoke-direct {v6}, Ly4/a;-><init>()V

    if-eqz v0, :cond_15

    iput-boolean v2, v6, Ly4/a;->c:Z

    :cond_15
    :try_start_0
    invoke-virtual {v6, v5, v8}, Ly4/a;->b([D[[D)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v6}, Ly4/a;->a()[D

    move-result-object v5
    :try_end_1
    .catch Lr4/o; {:try_start_1 .. :try_end_1} :catch_0

    array-length v6, v10

    new-array v6, v6, [D

    move v7, v3

    :goto_b
    array-length v8, v10

    if-ge v7, v8, :cond_18

    aput-wide v11, v6, v7

    if-eqz v0, :cond_16

    move v8, v3

    :goto_c
    array-length v9, v5

    if-ge v8, v9, :cond_17

    aget-wide v13, v6, v7

    aget-wide v15, v5, v8

    aget-object v9, v10, v7

    aget-wide v17, v9, v8

    mul-double v15, v15, v17

    add-double/2addr v15, v13

    aput-wide v15, v6, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_16
    aget-wide v8, v5, v3

    aput-wide v8, v6, v7

    move v8, v2

    :goto_d
    array-length v9, v5

    if-ge v8, v9, :cond_17

    aget-wide v13, v6, v7

    aget-wide v15, v5, v8

    aget-object v9, v10, v7

    add-int/lit8 v17, v8, -0x1

    aget-wide v17, v9, v17

    mul-double v15, v15, v17

    add-double/2addr v15, v13

    aput-wide v15, v6, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_17
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_18
    new-instance v0, Lorg/apache/poi/ss/formula/functions/Trend$TrendResults;

    invoke-direct {v0, v6, v4, v1}, Lorg/apache/poi/ss/formula/functions/Trend$TrendResults;-><init>([DII)V

    return-object v0

    :catch_0
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    const-string v1, "Singular matrix in input"

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0

    :cond_19
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    invoke-direct {v0, v9}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0

    :cond_1b
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    invoke-direct {v0, v9}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
.end method

.method private static isAllColumnsSame([[D)Z
    .locals 10

    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    aget-object v0, p0, v1

    array-length v0, v0

    new-array v2, v0, [Z

    move v3, v1

    :goto_0
    aget-object v4, p0, v1

    array-length v4, v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_3

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    move v4, v1

    :goto_1
    array-length v8, p0

    if-ge v4, v8, :cond_2

    aget-object v8, p0, v4

    aget-wide v8, v8, v3

    if-lez v4, :cond_1

    cmpl-double v6, v8, v6

    if-eqz v6, :cond_1

    aput-boolean v5, v2, v3

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    move-wide v6, v8

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move p0, v1

    :goto_3
    if-ge p0, v0, :cond_5

    aget-boolean v3, v2, p0

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_5
    move v1, v5

    :goto_4
    return v1
.end method

.method private static switchRowsColumns([[D)[[D
    .locals 7

    const/4 v0, 0x0

    aget-object v1, p0, v0

    array-length v1, v1

    array-length v2, p0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    move v2, v0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    move v3, v0

    :goto_1
    aget-object v4, p0, v0

    array-length v4, v4

    if-ge v3, v4, :cond_0

    aget-object v4, v1, v3

    aget-object v5, p0, v2

    aget-wide v5, v5, v3

    aput-wide v5, v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7

    array-length p0, p1

    const/4 v0, 0x1

    if-lt p0, v0, :cond_3

    array-length p0, p1

    const/4 v1, 0x4

    if-le p0, v1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/apache/poi/ss/formula/functions/Trend;->getNewY([Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/Trend$TrendResults;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/Trend$TrendResults;->access$000(Lorg/apache/poi/ss/formula/functions/Trend$TrendResults;)[D

    move-result-object p1

    array-length p1, p1

    new-array v6, p1, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    const/4 p1, 0x0

    move v1, p1

    :goto_0
    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/Trend$TrendResults;->access$000(Lorg/apache/poi/ss/formula/functions/Trend$TrendResults;)[D

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    new-instance v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/Trend$TrendResults;->access$000(Lorg/apache/poi/ss/formula/functions/Trend$TrendResults;)[D

    move-result-object v3

    aget-wide v3, v3, v1

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    aput-object v2, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/Trend$TrendResults;->access$000(Lorg/apache/poi/ss/formula/functions/Trend$TrendResults;)[D

    move-result-object v1

    array-length v1, v1

    if-ne v1, v0, :cond_2

    aget-object p0, v6, p1

    return-object p0

    :cond_2
    new-instance p1, Lorg/apache/poi/ss/formula/CacheAreaEval;

    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/Trend$TrendResults;->access$100(Lorg/apache/poi/ss/formula/functions/Trend$TrendResults;)I

    move-result v1

    add-int/2addr v1, p2

    add-int/lit8 v4, v1, -0x1

    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/Trend$TrendResults;->access$200(Lorg/apache/poi/ss/formula/functions/Trend$TrendResults;)I

    move-result p0

    add-int/2addr p0, p3

    add-int/lit8 v5, p0, -0x1

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/formula/CacheAreaEval;-><init>(IIII[Lorg/apache/poi/ss/formula/eval/ValueEval;)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_2
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0
.end method
