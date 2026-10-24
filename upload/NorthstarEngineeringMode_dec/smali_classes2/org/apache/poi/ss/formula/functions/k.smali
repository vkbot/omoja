.class public final synthetic Lorg/apache/poi/ss/formula/functions/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;
.implements Lorg/apache/poi/ss/formula/functions/NumericFunction$OneDoubleIf;
.implements Lorg/apache/poi/ss/formula/functions/NumericFunction$TwoDoubleIf;
.implements Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
.implements Lorg/apache/poi/ss/formula/functions/XYNumericFunction$Accumulator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/ss/formula/functions/k;->a:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/functions/k;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lorg/apache/poi/ss/formula/eval/BlankEval;

    check-cast p2, Lorg/apache/poi/ss/formula/functions/DoubleList;

    invoke-static {p1, p2}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$ConsumerFactory;->d(Lorg/apache/poi/ss/formula/eval/BlankEval;Lorg/apache/poi/ss/formula/functions/DoubleList;)V

    return-void

    :pswitch_0
    check-cast p2, Lorg/apache/poi/ss/formula/functions/DoubleList;

    invoke-static {p1, p2}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$ConsumerFactory;->a(Ljava/lang/Object;Lorg/apache/poi/ss/formula/functions/DoubleList;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final accumulate(DD)D
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lorg/apache/poi/ss/formula/functions/Sumxmy2;->a(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public final apply(D)D
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/poi/ss/formula/functions/k;->a:I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    return-wide p0

    :pswitch_1
    invoke-static {p1, p2}, Lorg/apache/poi/ss/formula/functions/MathX;->atanh(D)D

    move-result-wide p0

    return-wide p0

    :pswitch_2
    invoke-static {p1, p2}, Ljava/lang/Math;->asin(D)D

    move-result-wide p0

    return-wide p0

    :pswitch_3
    invoke-static {p1, p2}, Lorg/apache/poi/ss/formula/functions/MathX;->tanh(D)D

    move-result-wide p0

    return-wide p0

    :pswitch_4
    invoke-static {p1, p2}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    return-wide p0

    :pswitch_5
    invoke-static {p1, p2}, Lorg/apache/poi/ss/formula/functions/MathX;->sign(D)S

    move-result p0

    int-to-double p0, p0

    return-wide p0

    :pswitch_6
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    return-wide p0

    :pswitch_7
    invoke-static {p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->j(D)D

    move-result-wide p0

    return-wide p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final apply(DD)Ljava/lang/Object;
    .locals 0

    .line 2
    iget p0, p0, Lorg/apache/poi/ss/formula/functions/k;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1, p2, p3, p4}, Lorg/apache/poi/ss/formula/functions/MathX;->roundDown(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p1, p2, p3, p4}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->m(DD)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final matches(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/ss/formula/functions/Count;->a(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    move-result p0

    return p0
.end method
