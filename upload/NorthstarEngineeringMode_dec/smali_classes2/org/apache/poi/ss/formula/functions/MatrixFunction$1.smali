.class final Lorg/apache/poi/ss/formula/functions/MatrixFunction$1;
.super Lorg/apache/poi/ss/formula/functions/MatrixFunction$OneArrayArg;
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

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/MatrixFunction$OneArrayArg;-><init>()V

    new-instance v0, Lorg/apache/poi/ss/formula/functions/MatrixFunction$MutableValueCollector;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/apache/poi/ss/formula/functions/MatrixFunction$MutableValueCollector;-><init>(ZZ)V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/functions/MatrixFunction$1;->instance:Lorg/apache/poi/ss/formula/functions/MatrixFunction$MutableValueCollector;

    return-void
.end method


# virtual methods
.method public collectValues(Lorg/apache/poi/ss/formula/eval/ValueEval;)[D
    .locals 3

    iget-object p0, p0, Lorg/apache/poi/ss/formula/functions/MatrixFunction$1;->instance:Lorg/apache/poi/ss/formula/functions/MatrixFunction$MutableValueCollector;

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

.method public evaluate([[D)[[D
    .locals 26

    move-object/from16 v0, p1

    array-length v1, v0

    const/4 v2, 0x0

    aget-object v3, v0, v2

    array-length v3, v3

    if-ne v1, v3, :cond_17

    new-instance v1, Lr4/c;

    invoke-direct {v1, v0}, Lr4/c;-><init>([[D)V

    sget v0, Lr4/h;->a:I

    invoke-virtual {v1}, Lr4/b;->k()Z

    move-result v0

    if-eqz v0, :cond_16

    instance-of v0, v1, Lr4/f;

    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-eqz v0, :cond_3

    check-cast v1, Lr4/f;

    move v0, v2

    :goto_0
    iget-object v7, v1, Lr4/f;->r:[D

    array-length v8, v7

    if-ge v0, v8, :cond_1

    aget-wide v7, v7, v0

    invoke-static {v7, v8, v3, v4}, Lz4/d;->a(DD)Z

    move-result v7

    if-nez v7, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lr4/o;

    invoke-direct {v0}, Lr4/o;-><init>()V

    throw v0

    :cond_1
    array-length v0, v7

    new-array v0, v0, [D

    :goto_1
    array-length v1, v7

    if-ge v2, v1, :cond_2

    aget-wide v3, v7, v2

    div-double v3, v5, v3

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance v1, Lr4/f;

    invoke-direct {v1, v0}, Lr4/f;-><init>([D)V

    goto/16 :goto_12

    :cond_3
    new-instance v0, Lr4/j;

    invoke-direct {v0, v1, v3, v4}, Lr4/j;-><init>(Lr4/c;D)V

    iget-object v1, v0, Lr4/j;->a:[[D

    iget-object v0, v0, Lr4/j;->b:[D

    aget-object v7, v1, v2

    array-length v7, v7

    mul-int v8, v7, v7

    const/16 v9, 0x1000

    if-gt v8, v9, :cond_4

    new-instance v8, Lr4/c;

    invoke-direct {v8, v7, v7}, Lr4/c;-><init>(II)V

    goto :goto_2

    :cond_4
    new-instance v8, Lr4/e;

    invoke-direct {v8, v7, v7}, Lr4/e;-><init>(II)V

    :goto_2
    move v9, v2

    :goto_3
    if-ge v9, v7, :cond_5

    invoke-interface {v8, v9, v9, v5, v6}, Lr4/k;->e(IID)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    array-length v7, v1

    aget-object v9, v1, v2

    array-length v9, v9

    invoke-interface {v8}, Lr4/k;->c()I

    move-result v10

    if-ne v10, v9, :cond_15

    array-length v10, v0

    move v11, v2

    :goto_4
    if-ge v11, v10, :cond_7

    aget-wide v12, v0, v11

    invoke-static {v12, v13}, Lz4/b;->a(D)D

    move-result-wide v12

    cmpg-double v12, v12, v3

    if-lez v12, :cond_6

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_6
    new-instance v0, Lr4/o;

    invoke-direct {v0}, Lr4/o;-><init>()V

    throw v0

    :cond_7
    invoke-interface {v8}, Lr4/k;->a()I

    move-result v10

    add-int/lit8 v11, v10, 0x33

    const/16 v12, 0x34

    div-int/2addr v11, v12

    invoke-static {v7, v10}, Lr4/e;->t(II)[[D

    move-result-object v13

    invoke-interface {v8}, Lr4/k;->c()I

    move-result v14

    filled-new-array {v14, v12}, [I

    move-result-object v14

    sget-object v15, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[D

    new-array v12, v12, [D

    move v15, v2

    :goto_5
    if-ge v15, v11, :cond_14

    mul-int/lit8 v2, v15, 0x34

    add-int/lit8 v3, v2, 0x34

    sget-object v4, Lz4/b;->a:[[D

    if-gt v3, v10, :cond_8

    goto :goto_6

    :cond_8
    move v3, v10

    :goto_6
    sub-int v4, v3, v2

    add-int/lit8 v5, v9, -0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v8, v5, v2, v3, v14}, Lr4/b;->i(III[[D)V

    const/4 v2, 0x0

    :goto_7
    if-gt v9, v7, :cond_9

    move v3, v9

    goto :goto_8

    :cond_9
    move v3, v7

    :goto_8
    if-ge v2, v3, :cond_f

    aget-object v3, v1, v2

    aget-wide v5, v0, v2

    aget-wide v19, v3, v2

    mul-double v5, v5, v19

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    div-double v5, v17, v5

    move-object/from16 v19, v8

    move/from16 p0, v10

    move/from16 p1, v11

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-static {v12, v8, v4, v10, v11}, Ljava/util/Arrays;->fill([DIID)V

    move v8, v2

    :goto_9
    if-ge v8, v9, :cond_b

    aget-wide v20, v3, v8

    aget-object v16, v14, v8

    const/4 v10, 0x0

    :goto_a
    if-ge v10, v4, :cond_a

    aget-wide v22, v12, v10

    aget-wide v24, v16, v10

    mul-double v24, v24, v20

    add-double v24, v24, v22

    aput-wide v24, v12, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_a
    add-int/lit8 v8, v8, 0x1

    const-wide/16 v10, 0x0

    goto :goto_9

    :cond_b
    const/4 v8, 0x0

    :goto_b
    if-ge v8, v4, :cond_c

    aget-wide v10, v12, v8

    mul-double/2addr v10, v5

    aput-wide v10, v12, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_c
    move v5, v2

    :goto_c
    if-ge v5, v9, :cond_e

    aget-wide v10, v3, v5

    aget-object v6, v14, v5

    const/4 v8, 0x0

    :goto_d
    if-ge v8, v4, :cond_d

    aget-wide v20, v6, v8

    aget-wide v22, v12, v8

    mul-double v22, v22, v10

    add-double v22, v22, v20

    aput-wide v22, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_e
    add-int/lit8 v2, v2, 0x1

    move/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v8, v19

    goto :goto_7

    :cond_f
    move-object/from16 v19, v8

    move/from16 p0, v10

    move/from16 p1, v11

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    :goto_e
    if-ltz v2, :cond_13

    div-int/lit8 v3, v2, 0x34

    mul-int/lit8 v5, v3, 0x34

    aget-wide v10, v0, v2

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    div-double v10, v16, v10

    aget-object v6, v14, v2

    mul-int v3, v3, p1

    add-int/2addr v3, v15

    aget-object v3, v13, v3

    sub-int v5, v2, v5

    mul-int/2addr v5, v4

    const/4 v8, 0x0

    :goto_f
    if-ge v8, v4, :cond_10

    aget-wide v20, v6, v8

    mul-double v20, v20, v10

    aput-wide v20, v6, v8

    add-int/lit8 v18, v5, 0x1

    aput-wide v20, v3, v5

    add-int/lit8 v8, v8, 0x1

    move/from16 v5, v18

    goto :goto_f

    :cond_10
    aget-object v3, v1, v2

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v2, :cond_12

    aget-wide v10, v3, v5

    aget-object v8, v14, v5

    move-object/from16 v18, v0

    const/4 v0, 0x0

    :goto_11
    if-ge v0, v4, :cond_11

    aget-wide v20, v8, v0

    aget-wide v22, v6, v0

    mul-double v22, v22, v10

    sub-double v20, v20, v22

    aput-wide v20, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_11
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v18

    goto :goto_10

    :cond_12
    move-object/from16 v18, v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    :cond_13
    move-object/from16 v18, v0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move/from16 v10, p0

    move/from16 v11, p1

    move-wide/from16 v5, v16

    move-object/from16 v8, v19

    goto/16 :goto_5

    :cond_14
    move/from16 p0, v10

    new-instance v1, Lr4/e;

    move/from16 v0, p0

    invoke-direct {v1, v7, v0, v13}, Lr4/e;-><init>(II[[D)V

    :goto_12
    invoke-interface {v1}, Lr4/k;->getData()[[D

    move-result-object v0

    return-object v0

    :cond_15
    move-object/from16 v19, v8

    new-instance v0, Lp4/b;

    invoke-interface/range {v19 .. v19}, Lr4/k;->c()I

    move-result v1

    invoke-direct {v0, v1, v9}, Lp4/b;-><init>(II)V

    throw v0

    :cond_16
    new-instance v0, Lr4/i;

    invoke-virtual {v1}, Lr4/c;->c()I

    move-result v2

    invoke-virtual {v1}, Lr4/c;->a()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lr4/i;-><init>(II)V

    throw v0

    :cond_17
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
.end method
