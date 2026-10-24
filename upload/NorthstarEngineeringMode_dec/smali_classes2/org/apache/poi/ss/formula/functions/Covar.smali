.class public Lorg/apache/poi/ss/formula/functions/Covar;
.super Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final instanceP:Lorg/apache/poi/ss/formula/functions/Covar;

.field public static final instanceS:Lorg/apache/poi/ss/formula/functions/Covar;


# instance fields
.field private final sampleBased:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/poi/ss/formula/functions/Covar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/Covar;-><init>(Z)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Covar;->instanceP:Lorg/apache/poi/ss/formula/functions/Covar;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/Covar;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/Covar;-><init>(Z)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Covar;->instanceS:Lorg/apache/poi/ss/formula/functions/Covar;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    iput-boolean p1, p0, Lorg/apache/poi/ss/formula/functions/Covar;->sampleBased:Z

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p3, p4}, Lorg/apache/poi/ss/formula/functions/ArrayFunctionUtils;->getNumberArrays(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    .line 2
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/ss/formula/functions/DoubleList;

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/functions/DoubleList;->toArray()[D

    move-result-object p2

    const/4 p3, 0x1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/formula/functions/DoubleList;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/functions/DoubleList;->toArray()[D

    move-result-object p1

    iget-boolean p0, p0, Lorg/apache/poi/ss/formula/functions/Covar;->sampleBased:Z

    .line 3
    invoke-static {p2, p1, p0}, Lm0/a;->b([D[DZ)D

    move-result-wide p0

    .line 4
    new-instance p2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {p2, p0, p1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object p2

    :catch_0
    move-exception p0

    goto :goto_0

    .line 5
    :catch_1
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    .line 6
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3

    .line 7
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 8
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result p2

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-virtual {p0, v0, p2, v1, p1}, Lorg/apache/poi/ss/formula/functions/Covar;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method
