.class Lorg/apache/poi/ss/formula/functions/Averageifs$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Baseifs$Aggregator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/ss/formula/functions/Averageifs;->createAggregator()Lorg/apache/poi/ss/formula/functions/Baseifs$Aggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field count:Ljava/lang/Integer;

.field sum:Ljava/lang/Double;

.field final synthetic this$0:Lorg/apache/poi/ss/formula/functions/Averageifs;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/functions/Averageifs;)V
    .locals 2

    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/Averageifs$1;->this$0:Lorg/apache/poi/ss/formula/functions/Averageifs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/Averageifs$1;->sum:Ljava/lang/Double;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/Averageifs$1;->count:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public addValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)V
    .locals 4

    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v0

    iget-object p1, p0, Lorg/apache/poi/ss/formula/functions/Averageifs$1;->sum:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/Averageifs$1;->sum:Ljava/lang/Double;

    iget-object p1, p0, Lorg/apache/poi/ss/formula/functions/Averageifs$1;->count:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/Averageifs$1;->count:Ljava/lang/Integer;

    return-void
.end method

.method public getResult()Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/Averageifs$1;->count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->DIV_ZERO:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/functions/Averageifs$1;->sum:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget-object p0, p0, Lorg/apache/poi/ss/formula/functions/Averageifs$1;->count:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-double v3, p0

    div-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
