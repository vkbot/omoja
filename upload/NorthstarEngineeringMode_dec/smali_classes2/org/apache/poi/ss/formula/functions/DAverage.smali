.class public final Lorg/apache/poi/ss/formula/functions/DAverage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;


# instance fields
.field private count:J

.field private total:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static divide(DJ)D
    .locals 0

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    sget-object p2, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {p0, p1, p2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private getAverage()D
    .locals 4

    iget-wide v0, p0, Lorg/apache/poi/ss/formula/functions/DAverage;->total:D

    iget-wide v2, p0, Lorg/apache/poi/ss/formula/functions/DAverage;->count:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/poi/ss/formula/functions/DAverage;->divide(DJ)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getResult()Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4

    iget-wide v0, p0, Lorg/apache/poi/ss/formula/functions/DAverage;->count:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/eval/NumberEval;->ZERO:Lorg/apache/poi/ss/formula/eval/NumberEval;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/DAverage;->getAverage()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public processMatch(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 4

    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/poi/ss/formula/functions/DAverage;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/poi/ss/formula/functions/DAverage;->count:J

    iget-wide v0, p0, Lorg/apache/poi/ss/formula/functions/DAverage;->total:D

    check-cast p1, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide v2

    add-double/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/poi/ss/formula/functions/DAverage;->total:D

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
