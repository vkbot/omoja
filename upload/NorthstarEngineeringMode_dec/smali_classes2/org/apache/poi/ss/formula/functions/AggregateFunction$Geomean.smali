.class Lorg/apache/poi/ss/formula/functions/AggregateFunction$Geomean;
.super Lorg/apache/poi/ss/formula/functions/AggregateFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/AggregateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Geomean"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;-><init>()V

    sget-object v0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;->COERCE:Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->setMissingArgPolicy(Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;)V

    return-void
.end method


# virtual methods
.method public evaluate([D)D
    .locals 5

    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    aget-wide v1, p1, v0

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-lez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0

    :cond_1
    new-instance p0, Lw4/b;

    invoke-direct {p0}, Lw4/b;-><init>()V

    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lw4/b;->c([DI)D

    move-result-wide p0

    return-wide p0
.end method
