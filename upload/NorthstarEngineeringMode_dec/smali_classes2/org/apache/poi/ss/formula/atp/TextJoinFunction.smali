.class final Lorg/apache/poi/ss/formula/atp/TextJoinFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# instance fields
.field private evaluator:Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/poi/ss/formula/atp/TextJoinFunction;

    sget-object v1, Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;->instance:Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/atp/TextJoinFunction;-><init>(Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;)V

    sput-object v0, Lorg/apache/poi/ss/formula/atp/TextJoinFunction;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/atp/TextJoinFunction;->evaluator:Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;

    return-void
.end method

.method private getValues(Lorg/apache/poi/ss/formula/eval/ValueEval;IIZ)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;",
            "IIZ)",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;",
            ">;"
        }
    .end annotation

    instance-of p0, p1, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz p0, :cond_3

    check-cast p1, Lorg/apache/poi/ss/formula/eval/AreaEval;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p4, :cond_0

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getLastRow()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstRow()I

    move-result p2

    :goto_0
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getLastRow()I

    move-result p3

    if-gt p2, p3, :cond_2

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstColumn()I

    move-result p3

    :goto_1
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getLastColumn()I

    move-result p4

    if-gt p3, p4, :cond_1

    invoke-interface {p1, p2, p3}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getAbsoluteValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p4

    invoke-static {p4, p2, p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p4

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-object p0

    :cond_3
    invoke-static {p1, p2, p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private laxValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;
    .locals 0

    instance-of p0, p1, Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    if-eqz p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 10

    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_a

    array-length v0, p1

    const/16 v1, 0xfe

    if-le v0, v1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result p2

    const/4 v1, 0x0

    :try_start_0
    aget-object v2, p1, v1

    const/4 v3, 0x1

    invoke-direct {p0, v2, v0, p2, v3}, Lorg/apache/poi/ss/formula/atp/TextJoinFunction;->getValues(Lorg/apache/poi/ss/formula/eval/ValueEval;IIZ)Ljava/util/List;

    move-result-object v2

    aget-object v4, p1, v3

    invoke-static {v4, v0, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToBoolean(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x2

    :goto_0
    array-length v7, p1

    if-ge v6, v7, :cond_4

    aget-object v7, p1, v6

    invoke-direct {p0, v7, v0, p2, v1}, Lorg/apache/poi/ss/formula/atp/TextJoinFunction;->getValues(Lorg/apache/poi/ss/formula/eval/ValueEval;IIZ)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/ss/formula/eval/ValueEval;

    invoke-static {v8}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v8

    if-eqz v4, :cond_2

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    goto :goto_2

    :catch_0
    move-exception p0

    goto/16 :goto_5

    :cond_2
    :goto_2
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    const-string p1, ""

    invoke-static {p1, v5}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_6

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/formula/eval/ValueEval;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/atp/TextJoinFunction;->laxValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-static {p0, v5}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/ValueEval;

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/atp/TextJoinFunction;->laxValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v1, p2, :cond_9

    if-lez v1, :cond_8

    add-int/lit8 p2, v1, -0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    new-instance p1, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_5
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0

    :cond_a
    :goto_6
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0
.end method
