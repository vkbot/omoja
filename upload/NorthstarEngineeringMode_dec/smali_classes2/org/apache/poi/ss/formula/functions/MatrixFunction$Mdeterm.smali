.class Lorg/apache/poi/ss/formula/functions/MatrixFunction$Mdeterm;
.super Lorg/apache/poi/ss/formula/functions/MatrixFunction$OneArrayArg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/MatrixFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mdeterm"
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

    iput-object v0, p0, Lorg/apache/poi/ss/formula/functions/MatrixFunction$Mdeterm;->instance:Lorg/apache/poi/ss/formula/functions/MatrixFunction$MutableValueCollector;

    sget-object p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;->ERROR:Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;

    invoke-virtual {v0, p0}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->setBlankEvalPolicy(Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;)V

    return-void
.end method


# virtual methods
.method public collectValues(Lorg/apache/poi/ss/formula/eval/ValueEval;)[D
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/MatrixFunction$Mdeterm;->instance:Lorg/apache/poi/ss/formula/functions/MatrixFunction$MutableValueCollector;

    const/4 v1, 0x1

    new-array v2, v1, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Lorg/apache/poi/ss/formula/functions/MatrixFunction$MutableValueCollector;->collectValues([Lorg/apache/poi/ss/formula/eval/ValueEval;)[D

    move-result-object v0

    instance-of v2, p1, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz v2, :cond_1

    array-length v0, v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/apache/poi/ss/formula/functions/MatrixFunction$Mdeterm;->instance:Lorg/apache/poi/ss/formula/functions/MatrixFunction$MutableValueCollector;

    new-array v0, v1, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    aput-object p1, v0, v3

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/functions/MatrixFunction$MutableValueCollector;->collectValues([Lorg/apache/poi/ss/formula/eval/ValueEval;)[D

    move-result-object p0

    return-object p0
.end method

.method public evaluate([[D)[[D
    .locals 8

    array-length p0, p1

    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v1, v1

    if-ne p0, v1, :cond_3

    const/4 p0, 0x1

    filled-new-array {p0, p0}, [I

    move-result-object p0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[D

    new-instance v1, Lr4/c;

    invoke-direct {v1, p1}, Lr4/c;-><init>([[D)V

    aget-object p1, p0, v0

    new-instance v2, Lr4/g;

    invoke-direct {v2, v1}, Lr4/g;-><init>(Lr4/c;)V

    iget-boolean v1, v2, Lr4/g;->d:Z

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_2

    :cond_0
    iget-object v1, v2, Lr4/g;->b:[I

    array-length v1, v1

    iget-boolean v3, v2, Lr4/g;->c:Z

    if-eqz v3, :cond_1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_1
    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    :goto_0
    move v5, v0

    :goto_1
    if-ge v5, v1, :cond_2

    iget-object v6, v2, Lr4/g;->a:[[D

    aget-object v6, v6, v5

    aget-wide v6, v6, v5

    mul-double/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move-wide v1, v3

    :goto_2
    aput-wide v1, p1, v0

    return-object p0

    :cond_3
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0
.end method
