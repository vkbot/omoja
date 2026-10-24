.class Lorg/apache/poi/ss/formula/functions/Minifs$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Baseifs$Aggregator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/ss/formula/functions/Minifs;->createAggregator()Lorg/apache/poi/ss/formula/functions/Baseifs$Aggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field accumulator:Ljava/lang/Double;

.field final synthetic this$0:Lorg/apache/poi/ss/formula/functions/Minifs;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/functions/Minifs;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/Minifs$1;->this$0:Lorg/apache/poi/ss/formula/functions/Minifs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/Minifs$1;->accumulator:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public addValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)V
    .locals 4

    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iget-object p1, p0, Lorg/apache/poi/ss/formula/functions/Minifs$1;->accumulator:Ljava/lang/Double;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double p1, v2, v0

    if-lez p1, :cond_2

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/Minifs$1;->accumulator:Ljava/lang/Double;

    :cond_2
    return-void
.end method

.method public getResult()Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3

    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    iget-object p0, p0, Lorg/apache/poi/ss/formula/functions/Minifs$1;->accumulator:Ljava/lang/Double;

    if-nez p0, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    :goto_0
    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v0
.end method
