.class public Lorg/apache/poi/ss/formula/functions/Mirr;
.super Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;-><init>(ZZ)V

    return-void
.end method

.method private static mirr([DDD)D
    .locals 17

    move-object/from16 v0, p0

    array-length v1, v0

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, v3

    array-length v5, v0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-wide v10, v6

    move v9, v8

    move v12, v9

    :goto_0
    if-ge v9, v5, :cond_1

    aget-wide v13, v0, v9

    cmpg-double v15, v13, v6

    if-gez v15, :cond_0

    add-double v15, p1, v3

    add-double v3, v15, p3

    add-int/lit8 v15, v12, 0x1

    int-to-double v6, v12

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    div-double/2addr v13, v3

    add-double/2addr v10, v13

    move v12, v15

    :cond_0
    add-int/lit8 v9, v9, 0x1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    goto :goto_0

    :cond_1
    array-length v3, v0

    const-wide/16 v4, 0x0

    :goto_1
    if-ge v8, v3, :cond_3

    aget-wide v6, v0, v8

    const-wide/16 v13, 0x0

    cmpl-double v9, v6, v13

    move-wide v15, v10

    if-lez v9, :cond_2

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    add-double v9, p1, v13

    add-int/lit8 v11, v12, 0x1

    int-to-double v12, v12

    sub-double v12, v1, v12

    invoke-static {v9, v10, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double/2addr v9, v6

    add-double/2addr v4, v9

    move v12, v11

    :cond_2
    add-int/lit8 v8, v8, 0x1

    move-wide v10, v15

    goto :goto_1

    :cond_3
    move-wide v15, v10

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_4

    cmpl-double v0, v15, v6

    if-eqz v0, :cond_4

    neg-double v3, v4

    div-double/2addr v3, v15

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double v0, v5, v1

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double v6, v0, v5

    :cond_4
    return-wide v6
.end method


# virtual methods
.method public evaluate([D)D
    .locals 12

    array-length p0, p1

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    aget-wide v1, p1, p0

    array-length p0, p1

    add-int/lit8 p0, p0, -0x2

    aget-wide v3, p1, p0

    array-length p0, p1

    add-int/lit8 p0, p0, -0x2

    invoke-static {p1, p0}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p0

    array-length p1, p0

    const/4 v5, 0x0

    move v7, v0

    move v6, v5

    :goto_0
    const-wide/16 v8, 0x0

    if-ge v6, p1, :cond_1

    aget-wide v10, p0, v6

    cmpg-double v8, v10, v8

    if-gez v8, :cond_0

    move v8, v0

    goto :goto_1

    :cond_0
    move v8, v5

    :goto_1
    and-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    if-eqz v7, :cond_2

    const-wide/high16 p0, -0x4010000000000000L    # -1.0

    return-wide p0

    :cond_2
    array-length p1, p0

    move v7, v0

    move v6, v5

    :goto_2
    if-ge v6, p1, :cond_4

    aget-wide v10, p0, v6

    cmpl-double v10, v10, v8

    if-lez v10, :cond_3

    move v10, v0

    goto :goto_3

    :cond_3
    move v10, v5

    :goto_3
    and-int/2addr v7, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    if-nez v7, :cond_5

    invoke-static {p0, v1, v2, v3, v4}, Lorg/apache/poi/ss/formula/functions/Mirr;->mirr([DDD)D

    move-result-wide p0

    return-wide p0

    :cond_5
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->DIV_ZERO:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0
.end method

.method public getMaxNumOperands()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method
