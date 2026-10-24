.class public Lorg/apache/poi/ss/formula/functions/Subtotal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findFunction(I)Lorg/apache/poi/ss/formula/functions/Function;
    .locals 1

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_1

    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidValue()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object p0

    throw p0

    :pswitch_0
    sget-object p0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->VARP:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {p0, v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;Z)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->VAR:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {p0, v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;Z)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->SUM:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {p0, v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;Z)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object p0

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->STDEVP:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {p0, v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;Z)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object p0

    return-object p0

    :pswitch_4
    sget-object p0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->STDEV:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {p0, v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;Z)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object p0

    return-object p0

    :pswitch_5
    sget-object p0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->PRODUCT:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {p0, v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;Z)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object p0

    return-object p0

    :pswitch_6
    sget-object p0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->MIN:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {p0, v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;Z)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object p0

    return-object p0

    :pswitch_7
    sget-object p0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->MAX:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {p0, v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;Z)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/Counta;->subtotalInstance(Z)Lorg/apache/poi/ss/formula/functions/Counta;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/Count;->subtotalInstance(Z)Lorg/apache/poi/ss/formula/functions/Count;

    move-result-object p0

    return-object p0

    :pswitch_a
    sget-object p0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->AVERAGE:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {p0, v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;Z)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object p0

    return-object p0

    :pswitch_b
    sget-object p0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->VARP:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {p0, v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;Z)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object p0

    return-object p0

    :pswitch_c
    sget-object p0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->VAR:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {p0, v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;Z)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object p0

    return-object p0

    :pswitch_d
    sget-object p0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->SUM:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {p0, v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;Z)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object p0

    return-object p0

    :pswitch_e
    sget-object p0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->STDEVP:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {p0, v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;Z)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object p0

    return-object p0

    :pswitch_f
    sget-object p0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->STDEV:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {p0, v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;Z)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object p0

    return-object p0

    :pswitch_10
    sget-object p0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->PRODUCT:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {p0, v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;Z)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object p0

    return-object p0

    :pswitch_11
    sget-object p0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->MIN:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {p0, v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;Z)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object p0

    return-object p0

    :pswitch_12
    sget-object p0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->MAX:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {p0, v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;Z)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object p0

    return-object p0

    :pswitch_13
    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/Counta;->subtotalInstance(Z)Lorg/apache/poi/ss/formula/functions/Counta;

    move-result-object p0

    return-object p0

    :pswitch_14
    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/Count;->subtotalInstance(Z)Lorg/apache/poi/ss/formula/functions/Count;

    move-result-object p0

    return-object p0

    :pswitch_15
    sget-object p0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->AVERAGE:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {p0, v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;Z)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x65
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 5

    array-length p0, p1

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    if-ge p0, v0, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    :try_start_0
    aget-object v1, p1, p0

    invoke-static {v1, p2, p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ss/formula/functions/Subtotal;->findFunction(I)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v2
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    array-length p1, p1

    invoke-interface {v4, v0, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/ValueEval;

    instance-of v4, v0, Lorg/apache/poi/ss/formula/LazyRefEval;

    if-eqz v4, :cond_1

    check-cast v0, Lorg/apache/poi/ss/formula/LazyRefEval;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/LazyRefEval;->isSubTotal()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    :cond_2
    const/16 v4, 0x64

    if-le v1, v4, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/LazyRefEval;->isRowHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    new-array p0, p0, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    invoke-interface {v2, p0, p2, p3}, Lorg/apache/poi/ss/formula/functions/Function;->evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0
.end method
