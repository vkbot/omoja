.class public final Lorg/apache/poi/ss/formula/functions/DProduct;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;


# instance fields
.field private initDone:Z

.field private product:D


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/ss/formula/functions/DProduct;->initDone:Z

    return-void
.end method


# virtual methods
.method public getResult()Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3

    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    iget-wide v1, p0, Lorg/apache/poi/ss/formula/functions/DProduct;->product:D

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v0
.end method

.method public processMatch(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 6

    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/poi/ss/formula/functions/DProduct;->initDone:Z

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lorg/apache/poi/ss/formula/functions/DProduct;->product:D

    check-cast p1, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide v4

    mul-double/2addr v4, v2

    iput-wide v4, p0, Lorg/apache/poi/ss/formula/functions/DProduct;->product:D

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/poi/ss/formula/functions/DProduct;->product:D

    iput-boolean v1, p0, Lorg/apache/poi/ss/formula/functions/DProduct;->initDone:Z

    :cond_1
    :goto_0
    return v1
.end method
