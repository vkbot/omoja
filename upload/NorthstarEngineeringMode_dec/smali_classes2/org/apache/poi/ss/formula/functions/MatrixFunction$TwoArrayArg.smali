.class public abstract Lorg/apache/poi/ss/formula/functions/MatrixFunction$TwoArrayArg;
.super Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/MatrixFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TwoArrayArg"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract collectValues(Lorg/apache/poi/ss/formula/eval/ValueEval;)[D
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 9

    .line 1
    :try_start_0
    instance-of v0, p3, Lorg/apache/poi/ss/formula/eval/AreaEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    :try_start_1
    invoke-virtual {p0, p3}, Lorg/apache/poi/ss/formula/functions/MatrixFunction$TwoArrayArg;->collectValues(Lorg/apache/poi/ss/formula/eval/ValueEval;)[D

    move-result-object v0

    .line 3
    move-object v3, p3

    check-cast v3, Lorg/apache/poi/ss/formula/eval/AreaEval;

    invoke-interface {v3}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getHeight()I

    move-result v3

    move-object v4, p3

    check-cast v4, Lorg/apache/poi/ss/formula/eval/AreaEval;

    invoke-interface {v4}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result v4

    invoke-static {v0, v3, v4}, Lorg/apache/poi/ss/formula/functions/MatrixFunction;->access$000([DII)[[D

    move-result-object v0
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0
    :try_end_2
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5

    return-object p0

    :catch_1
    move-exception p0

    goto/16 :goto_3

    .line 5
    :cond_0
    :try_start_3
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v3

    new-array v0, v2, [[D

    new-array v5, v2, [D

    aput-wide v3, v5, v1

    aput-object v5, v0, v1
    :try_end_3
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5

    .line 6
    :goto_0
    :try_start_4
    instance-of v3, p4, Lorg/apache/poi/ss/formula/eval/AreaEval;
    :try_end_4
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5

    if-eqz v3, :cond_1

    .line 7
    :try_start_5
    invoke-virtual {p0, p4}, Lorg/apache/poi/ss/formula/functions/MatrixFunction$TwoArrayArg;->collectValues(Lorg/apache/poi/ss/formula/eval/ValueEval;)[D

    move-result-object p1

    .line 8
    move-object p2, p4

    check-cast p2, Lorg/apache/poi/ss/formula/eval/AreaEval;

    invoke-interface {p2}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getHeight()I

    move-result p2

    check-cast p4, Lorg/apache/poi/ss/formula/eval/AreaEval;

    invoke-interface {p4}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result p4

    invoke-static {p1, p2, p4}, Lorg/apache/poi/ss/formula/functions/MatrixFunction;->access$000([DII)[[D

    move-result-object p1
    :try_end_5
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_1

    :catch_2
    move-exception p0

    .line 9
    :try_start_6
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0
    :try_end_6
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_5

    return-object p0

    .line 10
    :cond_1
    :try_start_7
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide p1

    new-array p4, v2, [[D

    new-array v3, v2, [D

    aput-wide p1, v3, v1

    aput-object v3, p4, v1
    :try_end_7
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_5

    move-object p1, p4

    .line 11
    :goto_1
    :try_start_8
    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/ss/formula/functions/MatrixFunction$TwoArrayArg;->evaluate([[D[[D)[[D

    move-result-object p0

    .line 12
    aget-object p1, p0, v1

    array-length p1, p1

    .line 13
    array-length p2, p0

    .line 14
    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/MatrixFunction;->access$100([[D)[D

    move-result-object p0

    .line 15
    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/MatrixFunction;->checkValues([D)V
    :try_end_8
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_5

    .line 16
    array-length p4, p0

    new-array v8, p4, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    move p4, v1

    .line 17
    :goto_2
    array-length v0, p0

    if-ge p4, v0, :cond_2

    .line 18
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    aget-wide v3, p0, p4

    invoke-direct {v0, v3, v4}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    aput-object v0, v8, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    .line 19
    :cond_2
    array-length p0, p0

    if-ne p0, v2, :cond_3

    .line 20
    aget-object p0, v8, v1

    return-object p0

    .line 21
    :cond_3
    new-instance p0, Lorg/apache/poi/ss/formula/CacheAreaEval;

    check-cast p3, Lorg/apache/poi/ss/formula/eval/AreaEval;

    invoke-interface {p3}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstRow()I

    move-result v4

    invoke-interface {p3}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstColumn()I

    move-result v5

    .line 22
    invoke-interface {p3}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstRow()I

    move-result p4

    add-int/2addr p4, p2

    add-int/lit8 v6, p4, -0x1

    .line 23
    invoke-interface {p3}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstColumn()I

    move-result p2

    add-int/2addr p2, p1

    add-int/lit8 v7, p2, -0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lorg/apache/poi/ss/formula/CacheAreaEval;-><init>(IIII[Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    return-object p0

    :catch_3
    move-exception p0

    .line 24
    :try_start_9
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0

    :catch_4
    move-exception p0

    .line 25
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0
    :try_end_9
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_5

    return-object p0

    .line 26
    :catch_5
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    .line 27
    :goto_3
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0
.end method

.method public abstract evaluate([[D[[D)[[D
.end method
