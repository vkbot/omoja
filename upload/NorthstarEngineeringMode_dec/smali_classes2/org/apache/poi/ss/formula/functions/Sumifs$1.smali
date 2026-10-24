.class Lorg/apache/poi/ss/formula/functions/Sumifs$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Baseifs$Aggregator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/ss/formula/functions/Sumifs;->createAggregator()Lorg/apache/poi/ss/formula/functions/Baseifs$Aggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field accumulator:D

.field final synthetic this$0:Lorg/apache/poi/ss/formula/functions/Sumifs;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/functions/Sumifs;)V
    .locals 2

    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/Sumifs$1;->this$0:Lorg/apache/poi/ss/formula/functions/Sumifs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/ss/formula/functions/Sumifs$1;->accumulator:D

    return-void
.end method


# virtual methods
.method public addValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)V
    .locals 4

    iget-wide v0, p0, Lorg/apache/poi/ss/formula/functions/Sumifs$1;->accumulator:D

    instance-of v2, p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v2, :cond_0

    check-cast p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/poi/ss/formula/functions/Sumifs$1;->accumulator:D

    return-void
.end method

.method public getResult()Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3

    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    iget-wide v1, p0, Lorg/apache/poi/ss/formula/functions/Sumifs$1;->accumulator:D

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v0
.end method
