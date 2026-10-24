.class public final Lorg/apache/poi/ss/formula/functions/Irr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# static fields
.field private static final ABSOLUTE_ACCURACY:D = 1.0E-7

.field private static final LOGGER:La5/d;

.field private static final MAX_ITERATION_COUNT:I = 0x3e8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/ss/formula/functions/Irr;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Irr;->LOGGER:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static irr([D)D
    .locals 2

    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 1
    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/functions/Irr;->irr([DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static irr([DD)D
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move-wide/from16 v2, p1

    move v4, v1

    :goto_0
    const/16 v5, 0x3e8

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    if-ge v4, v5, :cond_4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v2

    const-wide/16 v10, 0x0

    cmpl-double v5, v8, v10

    if-nez v5, :cond_0

    sget-object v0, Lorg/apache/poi/ss/formula/functions/Irr;->LOGGER:La5/d;

    .line 2
    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    const-string v1, "Returning NaN because IRR has found an denominator of 0"

    invoke-interface {v0, v1}, La5/b;->f(Ljava/lang/String;)V

    return-wide v6

    .line 3
    :cond_0
    aget-wide v12, v0, v1

    const/4 v5, 0x1

    move-wide/from16 v16, v8

    move-wide v14, v10

    .line 4
    :goto_1
    array-length v1, v0

    if-ge v5, v1, :cond_1

    .line 5
    aget-wide v18, v0, v5

    div-double v20, v18, v16

    add-double v12, v20, v12

    mul-double v16, v16, v8

    int-to-double v6, v5

    mul-double v6, v6, v18

    div-double v6, v6, v16

    sub-double/2addr v14, v6

    add-int/lit8 v5, v5, 0x1

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    goto :goto_1

    :cond_1
    cmpl-double v1, v14, v10

    if-nez v1, :cond_2

    sget-object v0, Lorg/apache/poi/ss/formula/functions/Irr;->LOGGER:La5/d;

    .line 6
    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    const-string v1, "Returning NaN because IRR has found an fDerivative of 0"

    invoke-interface {v0, v1}, La5/b;->f(Ljava/lang/String;)V

    :goto_2
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_2
    div-double/2addr v12, v14

    sub-double v5, v2, v12

    sub-double v1, v5, v2

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v7, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v1, v1, v7

    if-gtz v1, :cond_3

    return-wide v5

    :cond_3
    add-int/lit8 v4, v4, 0x1

    move-wide v2, v5

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    sget-object v0, Lorg/apache/poi/ss/formula/functions/Irr;->LOGGER:La5/d;

    .line 8
    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    const-string v1, "Returning NaN because IRR has reached max number of iterations allowed: {}"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4

    array-length p0, p1

    if-eqz p0, :cond_2

    array-length p0, p1

    const/4 v0, 0x2

    if-le p0, v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 p0, 0x1

    :try_start_0
    new-array v1, p0, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    aput-object v3, v1, v2

    invoke-static {v1}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$ValueCollector;->collectValues([Lorg/apache/poi/ss/formula/eval/ValueEval;)[D

    move-result-object v1

    array-length v2, p1

    if-ne v2, v0, :cond_1

    aget-object p0, p1, p0

    invoke-static {p0, p2, p3}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    const-wide p0, 0x3fb999999999999aL    # 0.1

    :goto_0
    invoke-static {v1, p0, p1}, Lorg/apache/poi/ss/formula/functions/Irr;->irr([DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V

    new-instance p2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {p2, p0, p1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_2
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0
.end method
