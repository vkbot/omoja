.class public final Lorg/apache/poi/ss/formula/functions/IfFunc;
.super Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/ArrayFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;-><init>()V

    return-void
.end method

.method public static evaluateFirstArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToBoolean(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Ljava/lang/Boolean;

    move-result-object p0

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/IfFunc;->evaluateFirstArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Z

    move-result p0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    .line 2
    sget-object p0, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    if-ne p4, p0, :cond_0

    .line 3
    sget-object p0, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    return-object p0

    :cond_0
    return-object p4

    .line 4
    :cond_1
    sget-object p0, Lorg/apache/poi/ss/formula/eval/BoolEval;->FALSE:Lorg/apache/poi/ss/formula/eval/BoolEval;

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    .line 6
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/IfFunc;->evaluateFirstArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Z

    move-result p0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    .line 7
    sget-object p0, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    if-ne p4, p0, :cond_0

    .line 8
    sget-object p0, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    return-object p0

    :cond_0
    return-object p4

    .line 9
    :cond_1
    sget-object p0, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    if-ne p5, p0, :cond_2

    .line 10
    sget-object p0, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    return-object p0

    :cond_2
    return-object p5

    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0
.end method

.method public evaluateArray([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 8

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    array-length v0, p1

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    aget-object v3, p1, v0

    const/4 v0, 0x1

    aget-object v4, p1, v0

    array-length v0, p1

    if-ne v0, v1, :cond_1

    sget-object p1, Lorg/apache/poi/ss/formula/eval/BoolEval;->FALSE:Lorg/apache/poi/ss/formula/eval/BoolEval;

    :goto_0
    move-object v5, p1

    goto :goto_1

    :cond_1
    aget-object p1, p1, v1

    goto :goto_0

    :goto_1
    move-object v2, p0

    move v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lorg/apache/poi/ss/formula/functions/IfFunc;->evaluateArrayArgs(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_2
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0
.end method

.method public evaluateArrayArgs(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

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

    move/from16 v21, v6

    move v6, v0

    move/from16 v0, v21

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
    instance-of v13, v3, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz v13, :cond_4

    move-object v13, v3

    check-cast v13, Lorg/apache/poi/ss/formula/eval/AreaEval;

    invoke-interface {v13}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstColumn()I

    move-result v14

    invoke-interface {v13}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstRow()I

    move-result v13

    goto :goto_2

    :cond_4
    instance-of v13, v3, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v13, :cond_5

    move-object v13, v3

    check-cast v13, Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-interface {v13}, Lorg/apache/poi/ss/formula/eval/RefEval;->getColumn()I

    move-result v14

    invoke-interface {v13}, Lorg/apache/poi/ss/formula/eval/RefEval;->getRow()I

    move-result v13

    goto :goto_2

    :cond_5
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_2
    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    mul-int v11, v7, v10

    new-array v15, v11, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v7, :cond_9

    move/from16 v16, v0

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v10, :cond_8

    add-int v0, v6, v4

    move/from16 v18, v6

    add-int v6, v8, v5

    :try_start_0
    invoke-static {v1, v0, v6}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/FormulaParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    move-object v6, v0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v0

    goto :goto_5

    :catch_1
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NAME_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_5

    :goto_6
    add-int v0, v9, v4

    add-int v1, v12, v5

    :try_start_1
    invoke-static {v2, v0, v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/FormulaParseException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_7
    move-object v1, v0

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v0

    goto :goto_7

    :catch_3
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NAME_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_7

    :goto_8
    add-int v0, v13, v4

    move-object/from16 v19, v1

    add-int v1, v14, v5

    :try_start_2
    invoke-static {v3, v0, v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0
    :try_end_2
    .catch Lorg/apache/poi/ss/formula/FormulaParseException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v0

    goto :goto_9

    :catch_5
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NAME_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    :goto_9
    instance-of v1, v6, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v1, :cond_6

    add-int/lit8 v0, v16, 0x1

    aput-object v6, v15, v16

    move/from16 v16, v0

    goto :goto_d

    :cond_6
    const/4 v1, 0x0

    :try_start_3
    invoke-static {v6, v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToBoolean(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Ljava/lang/Boolean;

    move-result-object v6
    :try_end_3
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_3 .. :try_end_3} :catch_7

    add-int/lit8 v1, v16, 0x1

    if-eqz v6, :cond_7

    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_7

    move-object/from16 v0, v19

    goto :goto_a

    :catch_6
    move-exception v0

    move/from16 v16, v1

    goto :goto_c

    :cond_7
    :goto_a
    aput-object v0, v15, v16
    :try_end_4
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_4 .. :try_end_4} :catch_6

    :goto_b
    move/from16 v16, v1

    goto :goto_d

    :catch_7
    move-exception v0

    :goto_c
    add-int/lit8 v1, v16, 0x1

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v0

    aput-object v0, v15, v16

    goto :goto_b

    :goto_d
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    move/from16 v6, v18

    goto :goto_4

    :cond_8
    move/from16 v18, v6

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p1

    move/from16 v0, v16

    goto/16 :goto_3

    :cond_9
    const/4 v1, 0x1

    if-ne v11, v1, :cond_a

    const/4 v2, 0x0

    aget-object v0, v15, v2

    return-object v0

    :cond_a
    new-instance v0, Lorg/apache/poi/ss/formula/CacheAreaEval;

    add-int v2, p4, v7

    add-int/lit8 v18, v2, -0x1

    add-int v2, p5, v10

    add-int/lit8 v19, v2, -0x1

    move-object v1, v15

    move-object v15, v0

    move/from16 v16, p4

    move/from16 v17, p5

    move-object/from16 v20, v1

    invoke-direct/range {v15 .. v20}, Lorg/apache/poi/ss/formula/CacheAreaEval;-><init>(IIII[Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    return-object v0
.end method
