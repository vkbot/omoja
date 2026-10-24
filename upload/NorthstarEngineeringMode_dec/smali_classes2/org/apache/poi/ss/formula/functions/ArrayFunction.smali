.class public interface abstract Lorg/apache/poi/ss/formula/functions/ArrayFunction;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static _evaluateOneArrayArg(Lorg/apache/poi/ss/formula/eval/ValueEval;IILjava/util/function/Function;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;",
            "II",
            "Ljava/util/function/Function<",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;",
            ">;)",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;"
        }
    .end annotation

    move-object/from16 v1, p0

    instance-of v0, v1, Lorg/apache/poi/ss/formula/eval/AreaEval;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result v4

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getHeight()I

    move-result v5

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstColumn()I

    move-result v6

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstRow()I

    move-result v0

    move v15, v4

    move v4, v0

    move v0, v15

    goto :goto_0

    :cond_0
    instance-of v0, v1, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getColumn()I

    move-result v6

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getRow()I

    move-result v0

    move v4, v0

    move v0, v2

    move v5, v0

    goto :goto_0

    :cond_1
    move v0, v2

    move v5, v0

    move v4, v3

    move v6, v4

    :goto_0
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    mul-int v8, v5, v7

    new-array v14, v8, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    move v0, v3

    move v9, v0

    :goto_1
    if-ge v9, v5, :cond_4

    move v10, v0

    move v11, v3

    :goto_2
    if-ge v11, v7, :cond_3

    add-int v0, v4, v9

    add-int v12, v6, v11

    :try_start_0
    invoke-static {v1, v0, v12}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/FormulaParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v12, v0

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v13, "Don\'t know how to evaluate name"

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NAME_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_3

    :cond_2
    throw v12

    :catch_1
    move-exception v0

    move-object v12, v0

    invoke-virtual {v12}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v0

    goto :goto_3

    :catch_2
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NAME_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    :goto_3
    add-int/lit8 v12, v10, 0x1

    move-object/from16 v13, p3

    invoke-interface {v13, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/ValueEval;

    aput-object v0, v14, v10

    add-int/lit8 v11, v11, 0x1

    move v10, v12

    goto :goto_2

    :cond_3
    move-object/from16 v13, p3

    add-int/lit8 v9, v9, 0x1

    move v0, v10

    goto :goto_1

    :cond_4
    if-ne v8, v2, :cond_5

    aget-object v0, v14, v3

    return-object v0

    :cond_5
    new-instance v0, Lorg/apache/poi/ss/formula/CacheAreaEval;

    add-int v1, p1, v5

    add-int/lit8 v12, v1, -0x1

    add-int v1, p2, v7

    add-int/lit8 v13, v1, -0x1

    move-object v9, v0

    move/from16 v10, p1

    move/from16 v11, p2

    invoke-direct/range {v9 .. v14}, Lorg/apache/poi/ss/formula/CacheAreaEval;-><init>(IIII[Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    return-object v0
.end method

.method public static _evaluateTwoArrayArgs(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;IILjava/util/function/BiFunction;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;",
            "II",
            "Ljava/util/function/BiFunction<",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;",
            ">;)",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "Don\'t know how to evaluate name"

    instance-of v0, v1, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result v6

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getHeight()I

    move-result v7

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstColumn()I

    move-result v8

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstRow()I

    move-result v0

    move/from16 v19, v6

    move v6, v0

    move/from16 v0, v19

    goto :goto_0

    :cond_0
    instance-of v0, v1, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getColumn()I

    move-result v8

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getRow()I

    move-result v0

    move v6, v0

    const/4 v0, 0x1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    :goto_0
    instance-of v9, v2, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz v9, :cond_2

    move-object v9, v2

    check-cast v9, Lorg/apache/poi/ss/formula/eval/AreaEval;

    invoke-interface {v9}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result v10

    invoke-interface {v9}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getHeight()I

    move-result v11

    invoke-interface {v9}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstColumn()I

    move-result v12

    invoke-interface {v9}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstRow()I

    move-result v9

    goto :goto_1

    :cond_2
    instance-of v9, v2, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v9, :cond_3

    move-object v9, v2

    check-cast v9, Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-interface {v9}, Lorg/apache/poi/ss/formula/eval/RefEval;->getColumn()I

    move-result v12

    invoke-interface {v9}, Lorg/apache/poi/ss/formula/eval/RefEval;->getRow()I

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    :goto_1
    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    mul-int v11, v7, v10

    new-array v15, v11, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    const/4 v0, 0x0

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v7, :cond_9

    move v14, v0

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v10, :cond_8

    add-int v0, v6, v13

    add-int v4, v8, v5

    :try_start_0
    invoke-static {v1, v0, v4}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/FormulaParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    move-object v4, v0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NAME_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_4

    :cond_4
    throw v4

    :catch_1
    move-exception v0

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v0

    goto :goto_4

    :catch_2
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NAME_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_4

    :goto_5
    add-int v0, v9, v13

    add-int v1, v12, v5

    :try_start_1
    invoke-static {v2, v0, v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/FormulaParseException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NAME_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_6

    :cond_5
    throw v1

    :catch_4
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v0

    goto :goto_6

    :catch_5
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NAME_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    :goto_6
    instance-of v1, v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v1, :cond_6

    add-int/lit8 v0, v14, 0x1

    aput-object v4, v15, v14

    move-object/from16 v1, p4

    move v14, v0

    goto :goto_7

    :cond_6
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v1, :cond_7

    add-int/lit8 v1, v14, 0x1

    aput-object v0, v15, v14

    move v14, v1

    move-object/from16 v1, p4

    goto :goto_7

    :cond_7
    add-int/lit8 v1, v14, 0x1

    move/from16 v18, v1

    move-object/from16 v1, p4

    invoke-interface {v1, v4, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/ValueEval;

    aput-object v0, v15, v14

    move/from16 v14, v18

    :goto_7
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p0

    goto :goto_3

    :cond_8
    move-object/from16 v1, p4

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move v0, v14

    goto/16 :goto_2

    :cond_9
    const/4 v4, 0x1

    if-ne v11, v4, :cond_a

    const/4 v1, 0x0

    aget-object v0, v15, v1

    return-object v0

    :cond_a
    new-instance v0, Lorg/apache/poi/ss/formula/CacheAreaEval;

    add-int v1, p2, v7

    add-int/lit8 v16, v1, -0x1

    add-int v1, p3, v10

    add-int/lit8 v17, v1, -0x1

    move-object v13, v0

    move/from16 v14, p2

    move-object v1, v15

    move/from16 v15, p3

    move-object/from16 v18, v1

    invoke-direct/range {v13 .. v18}, Lorg/apache/poi/ss/formula/CacheAreaEval;-><init>(IIII[Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    return-object v0
.end method


# virtual methods
.method public abstract evaluateArray([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
.end method

.method public evaluateOneArrayArg(Lorg/apache/poi/ss/formula/eval/ValueEval;IILjava/util/function/Function;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;",
            "II",
            "Ljava/util/function/Function<",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;",
            ">;)",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lorg/apache/poi/ss/formula/functions/ArrayFunction;->_evaluateOneArrayArg(Lorg/apache/poi/ss/formula/eval/ValueEval;IILjava/util/function/Function;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method

.method public evaluateTwoArrayArgs(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;IILjava/util/function/BiFunction;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;",
            "II",
            "Ljava/util/function/BiFunction<",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;",
            ">;)",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4, p5}, Lorg/apache/poi/ss/formula/functions/ArrayFunction;->_evaluateTwoArrayArgs(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;IILjava/util/function/BiFunction;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method
