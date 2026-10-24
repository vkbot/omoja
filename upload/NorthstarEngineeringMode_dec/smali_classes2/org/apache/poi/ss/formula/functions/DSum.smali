.class public final Lorg/apache/poi/ss/formula/functions/DSum;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;


# instance fields
.field private totalValue:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/ss/formula/functions/DSum;->totalValue:D

    return-void
.end method


# virtual methods
.method public getResult()Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3

    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    iget-wide v1, p0, Lorg/apache/poi/ss/formula/functions/DSum;->totalValue:D

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v0
.end method

.method public processMatch(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 4

    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/poi/ss/formula/functions/DSum;->totalValue:D

    add-double/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/poi/ss/formula/functions/DSum;->totalValue:D

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
