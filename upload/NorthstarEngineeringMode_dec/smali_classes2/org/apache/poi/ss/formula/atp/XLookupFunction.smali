.class final Lorg/apache/poi/ss/formula/atp/XLookupFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
.implements Lorg/apache/poi/ss/formula/functions/ArrayFunction;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# instance fields
.field private final evaluator:Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/poi/ss/formula/atp/XLookupFunction;

    sget-object v1, Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;->instance:Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/atp/XLookupFunction;-><init>(Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;)V

    sput-object v0, Lorg/apache/poi/ss/formula/atp/XLookupFunction;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/atp/XLookupFunction;->evaluator:Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;

    return-void
.end method

.method private _evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 9

    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :cond_0
    sget-object v0, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    array-length v2, p1

    if-le v2, v1, :cond_1

    :try_start_0
    aget-object v1, p1, v1

    invoke-static {v1, p2, p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    move-object v0, v1

    :cond_1
    move-object v6, v0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0

    :goto_0
    sget-object v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;->ExactMatch:Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;

    array-length v1, p1

    const/4 v2, 0x4

    if-le v1, v2, :cond_2

    :try_start_1
    aget-object v0, p1, v2

    invoke-static {v0, p2, p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->matchMode(I)Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;

    move-result-object v0
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    move-object v7, v0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0

    :goto_2
    sget-object v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;->IterateForward:Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;

    array-length v1, p1

    const/4 v2, 0x5

    if-le v1, v2, :cond_3

    :try_start_2
    aget-object v0, p1, v2

    invoke-static {v0, p2, p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->searchMode(I)Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;

    move-result-object v0
    :try_end_2
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :cond_3
    move-object v8, v0

    goto :goto_4

    :catch_3
    move-exception p0

    goto :goto_3

    :catch_4
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :goto_3
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0

    :goto_4
    const/4 v0, 0x0

    aget-object v3, p1, v0

    const/4 v0, 0x1

    aget-object v4, p1, v0

    const/4 v0, 0x2

    aget-object v5, p1, v0

    move-object v0, p0

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/ss/formula/atp/XLookupFunction;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method

.method private evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1

    .line 4
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    .line 5
    invoke-static {p4}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->resolveTableArrayArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/TwoDEval;

    move-result-object p2

    .line 6
    invoke-interface {p2}, Lorg/apache/poi/ss/formula/TwoDEval;->isColumn()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    .line 7
    invoke-static {p2, p4}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->createColumnVector(Lorg/apache/poi/ss/formula/TwoDEval;I)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object p3

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 8
    :cond_0
    invoke-static {p2, p4}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->createRowVector(Lorg/apache/poi/ss/formula/TwoDEval;I)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object p3
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    .line 9
    :try_start_1
    invoke-static {p1, p3, p7, p8}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->xlookupIndexOfValue(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;)I

    move-result p0
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 10
    :try_start_2
    instance-of p1, p5, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz p1, :cond_2

    .line 11
    check-cast p5, Lorg/apache/poi/ss/formula/eval/AreaEval;

    .line 12
    invoke-interface {p2}, Lorg/apache/poi/ss/formula/TwoDEval;->isColumn()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    invoke-interface {p5}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-interface {p5, p0, p0, p4, p1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object p0

    return-object p0

    .line 14
    :cond_1
    invoke-interface {p5}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getHeight()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-interface {p5, p4, p1, p0, p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p5

    :catch_1
    move-exception p1

    .line 15
    sget-object p2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 16
    sget-object p1, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eq p6, p1, :cond_5

    .line 17
    instance-of p1, p5, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz p1, :cond_4

    .line 18
    check-cast p5, Lorg/apache/poi/ss/formula/eval/AreaEval;

    .line 19
    invoke-interface {p5}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result p1

    if-gt p1, v0, :cond_3

    return-object p6

    .line 20
    :cond_3
    invoke-direct {p0, p6, p1}, Lorg/apache/poi/ss/formula/atp/XLookupFunction;->notFoundAreaEval(Lorg/apache/poi/ss/formula/eval/ValueEval;I)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object p0

    return-object p0

    :cond_4
    return-object p6

    .line 21
    :cond_5
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    .line 22
    :cond_6
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0
    :try_end_2
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    .line 23
    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0
.end method

.method private notFoundAreaEval(Lorg/apache/poi/ss/formula/eval/ValueEval;I)Lorg/apache/poi/ss/formula/eval/AreaEval;
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/atp/XLookupFunction$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/apache/poi/ss/formula/atp/XLookupFunction$1;-><init>(Lorg/apache/poi/ss/formula/atp/XLookupFunction;ILorg/apache/poi/ss/formula/eval/ValueEval;)V

    return-object v0
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1

    .line 1
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result p2

    .line 3
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/poi/ss/formula/atp/XLookupFunction;->_evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method

.method public evaluateArray([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/ss/formula/atp/XLookupFunction;->_evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method
