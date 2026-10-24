.class public abstract Lorg/apache/poi/ss/formula/functions/MatrixFunction$OneArrayArg;
.super Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/MatrixFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OneArrayArg"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract collectValues(Lorg/apache/poi/ss/formula/eval/ValueEval;)[D
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 9

    .line 1
    instance-of v0, p3, Lorg/apache/poi/ss/formula/eval/AreaEval;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/apache/poi/ss/formula/functions/MatrixFunction$OneArrayArg;->collectValues(Lorg/apache/poi/ss/formula/eval/ValueEval;)[D

    move-result-object p1

    .line 3
    move-object p2, p3

    check-cast p2, Lorg/apache/poi/ss/formula/eval/AreaEval;

    invoke-interface {p2}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getHeight()I

    move-result p2

    move-object v0, p3

    check-cast v0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result v0

    invoke-static {p1, p2, v0}, Lorg/apache/poi/ss/formula/functions/MatrixFunction;->access$000([DII)[[D

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/functions/MatrixFunction$OneArrayArg;->evaluate([[D)[[D

    move-result-object p0

    .line 5
    aget-object p1, p0, v2

    array-length p1, p1

    .line 6
    array-length p2, p0

    .line 7
    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/MatrixFunction;->access$100([[D)[D

    move-result-object p0

    .line 8
    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/MatrixFunction;->checkValues([D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    array-length v0, p0

    new-array v8, v0, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    move v0, v2

    .line 10
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 11
    new-instance v3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    aget-wide v4, p0, v0

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    aput-object v3, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :cond_0
    array-length p0, p0

    if-ne p0, v1, :cond_1

    .line 13
    aget-object p0, v8, v2

    return-object p0

    .line 14
    :cond_1
    new-instance p0, Lorg/apache/poi/ss/formula/CacheAreaEval;

    check-cast p3, Lorg/apache/poi/ss/formula/eval/AreaEval;

    invoke-interface {p3}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstRow()I

    move-result v4

    invoke-interface {p3}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstColumn()I

    move-result v5

    .line 15
    invoke-interface {p3}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstRow()I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 v6, v0, -0x1

    .line 16
    invoke-interface {p3}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstColumn()I

    move-result p2

    add-int/2addr p2, p1

    add-int/lit8 v7, p2, -0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lorg/apache/poi/ss/formula/CacheAreaEval;-><init>(IIII[Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0

    .line 18
    :cond_2
    :try_start_1
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide p1

    new-array p3, v1, [[D

    new-array v0, v1, [D

    aput-wide p1, v0, v2

    aput-object v0, p3, v2

    .line 19
    invoke-virtual {p0, p3}, Lorg/apache/poi/ss/formula/functions/MatrixFunction$OneArrayArg;->evaluate([[D)[[D

    move-result-object p0

    .line 20
    aget-object p1, p0, v2

    aget-wide p1, p1, v2

    invoke-static {p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 21
    new-instance p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    aget-object p0, p0, v2

    aget-wide p2, p0, v2

    invoke-direct {p1, p2, p3}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p1

    :catch_1
    move-exception p0

    .line 22
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0
.end method

.method public abstract evaluate([[D)[[D
.end method
