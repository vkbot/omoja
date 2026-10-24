.class public final Lorg/apache/poi/ss/formula/functions/DMax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;


# instance fields
.field private maximumValue:Lorg/apache/poi/ss/formula/eval/ValueEval;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/functions/DMax;->maximumValue:Lorg/apache/poi/ss/formula/eval/ValueEval;

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/eval/NumberEval;->ZERO:Lorg/apache/poi/ss/formula/eval/NumberEval;

    :cond_0
    return-object p0
.end method

.method public processMatch(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 4

    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/DMax;->maximumValue:Lorg/apache/poi/ss/formula/eval/ValueEval;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/DMax;->maximumValue:Lorg/apache/poi/ss/formula/eval/ValueEval;

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/poi/ss/formula/functions/DMax;->maximumValue:Lorg/apache/poi/ss/formula/eval/ValueEval;

    check-cast v2, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    invoke-interface {v2}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/DMax;->maximumValue:Lorg/apache/poi/ss/formula/eval/ValueEval;

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
