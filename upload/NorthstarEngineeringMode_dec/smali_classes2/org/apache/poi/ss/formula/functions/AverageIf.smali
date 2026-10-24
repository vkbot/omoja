.class public Lorg/apache/poi/ss/formula/functions/AverageIf;
.super Lorg/apache/poi/ss/formula/functions/Baseifs;
.source "SourceFile"


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/functions/AverageIf;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/AverageIf;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/AverageIf;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Baseifs;-><init>()V

    return-void
.end method


# virtual methods
.method public aggregateMatchingCells(Lorg/apache/poi/ss/formula/functions/Baseifs$Aggregator;Lorg/apache/poi/ss/formula/eval/AreaEval;Lorg/apache/poi/ss/formula/eval/AreaEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7

    invoke-interface {p3}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getHeight()I

    move-result p0

    invoke-interface {p3}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_3

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_2

    invoke-interface {p3, v2, v3}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    invoke-interface {p2, v2, v3}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v5

    if-eqz p4, :cond_1

    invoke-interface {p4, v4}, Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;->matches(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    move-result v6

    if-eqz v6, :cond_1

    instance-of v6, v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-nez v6, :cond_0

    invoke-interface {p1, v5}, Lorg/apache/poi/ss/formula/functions/Baseifs$Aggregator;->addValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    goto :goto_2

    :cond_0
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    check-cast v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, v4}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/functions/Baseifs$Aggregator;->getResult()Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method

.method public createAggregator()Lorg/apache/poi/ss/formula/functions/Baseifs$Aggregator;
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/functions/AverageIf$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/functions/AverageIf$1;-><init>(Lorg/apache/poi/ss/formula/functions/AverageIf;)V

    return-object v0
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 5

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    aget-object v2, p1, v0

    invoke-static {v2}, Lorg/apache/poi/ss/formula/functions/Baseifs;->convertRangeArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v2

    array-length v3, p1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    aget-object v1, p1, v1

    invoke-static {v1}, Lorg/apache/poi/ss/formula/functions/Baseifs;->convertRangeArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    aget-object v0, p1, v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/Baseifs;->convertRangeArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v1

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result p2

    invoke-static {p1, v1, p2}, Lorg/apache/poi/ss/formula/functions/Countif;->createCriteriaPredicate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    move-result-object p1

    instance-of p2, p1, Lorg/apache/poi/ss/formula/functions/Countif$ErrorMatcher;

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/AverageIf;->createAggregator()Lorg/apache/poi/ss/formula/functions/Baseifs$Aggregator;

    move-result-object p2

    invoke-virtual {p0, p2, v2, v0, p1}, Lorg/apache/poi/ss/formula/functions/AverageIf;->aggregateMatchingCells(Lorg/apache/poi/ss/formula/functions/Baseifs$Aggregator;Lorg/apache/poi/ss/formula/eval/AreaEval;Lorg/apache/poi/ss/formula/eval/AreaEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    check-cast p1, Lorg/apache/poi/ss/formula/functions/Countif$ErrorMatcher;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/functions/Countif$ErrorMatcher;->getValue()I

    move-result p1

    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->valueOf(I)Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0
.end method

.method public hasInitialRange()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
