.class final Lorg/apache/poi/ss/formula/functions/MatrixFunction$3;
.super Lorg/apache/poi/ss/formula/functions/MatrixFunction$TwoArrayArg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/MatrixFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field private final instance:Lorg/apache/poi/ss/formula/functions/MatrixFunction$MutableValueCollector;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/MatrixFunction$TwoArrayArg;-><init>()V

    new-instance v0, Lorg/apache/poi/ss/formula/functions/MatrixFunction$MutableValueCollector;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/apache/poi/ss/formula/functions/MatrixFunction$MutableValueCollector;-><init>(ZZ)V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/functions/MatrixFunction$3;->instance:Lorg/apache/poi/ss/formula/functions/MatrixFunction$MutableValueCollector;

    return-void
.end method


# virtual methods
.method public collectValues(Lorg/apache/poi/ss/formula/eval/ValueEval;)[D
    .locals 3

    iget-object p0, p0, Lorg/apache/poi/ss/formula/functions/MatrixFunction$3;->instance:Lorg/apache/poi/ss/formula/functions/MatrixFunction$MutableValueCollector;

    const/4 v0, 0x1

    new-array v1, v0, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/formula/functions/MatrixFunction$MutableValueCollector;->collectValues([Lorg/apache/poi/ss/formula/eval/ValueEval;)[D

    move-result-object p0

    instance-of p1, p1, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz p1, :cond_1

    array-length p1, p0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public evaluate([[D[[D)[[D
    .locals 18

    new-instance v0, Lr4/c;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lr4/c;-><init>([[D)V

    new-instance v1, Lr4/c;

    move-object/from16 v2, p2

    invoke-direct {v1, v2}, Lr4/c;-><init>([[D)V

    :try_start_0
    sget v2, Lr4/h;->a:I

    invoke-virtual {v0}, Lr4/c;->a()I

    move-result v2

    invoke-virtual {v1}, Lr4/c;->c()I

    move-result v3
    :try_end_0
    .catch Lp4/b; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_5

    invoke-virtual {v0}, Lr4/c;->a()I

    move-result v2

    invoke-virtual {v1}, Lr4/c;->c()I

    move-result v3

    if-ne v2, v3, :cond_4

    invoke-virtual {v0}, Lr4/c;->c()I

    move-result v2

    invoke-virtual {v1}, Lr4/c;->a()I

    move-result v3

    invoke-virtual {v0}, Lr4/c;->a()I

    move-result v4

    filled-new-array {v2, v3}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    new-array v6, v4, [D

    iget-object v1, v1, Lr4/c;->r:[[D

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v3, :cond_3

    move v9, v7

    :goto_1
    if-ge v9, v4, :cond_0

    aget-object v10, v1, v9

    aget-wide v10, v10, v8

    aput-wide v10, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    move v9, v7

    :goto_2
    if-ge v9, v2, :cond_2

    iget-object v10, v0, Lr4/c;->r:[[D

    aget-object v10, v10, v9

    const-wide/16 v11, 0x0

    move v13, v7

    :goto_3
    if-ge v13, v4, :cond_1

    aget-wide v14, v10, v13

    aget-wide v16, v6, v13

    mul-double v14, v14, v16

    add-double/2addr v11, v14

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_1
    aget-object v10, v5, v9

    aput-wide v11, v10, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Lr4/c;

    invoke-direct {v0, v5, v7}, Lr4/c;-><init>([[DZ)V

    invoke-virtual {v0}, Lr4/c;->getData()[[D

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v2, Lp4/b;

    invoke-virtual {v0}, Lr4/c;->a()I

    move-result v0

    invoke-virtual {v1}, Lr4/c;->c()I

    move-result v1

    invoke-direct {v2, v0, v1}, Lp4/b;-><init>(II)V

    throw v2

    :cond_5
    :try_start_1
    new-instance v2, Lp4/b;

    invoke-virtual {v0}, Lr4/c;->a()I

    move-result v0

    invoke-virtual {v1}, Lr4/c;->c()I

    move-result v1

    invoke-direct {v2, v0, v1}, Lp4/b;-><init>(II)V

    throw v2
    :try_end_1
    .catch Lp4/b; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
.end method
