.class Lorg/apache/poi/ss/formula/functions/Countifs$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Baseifs$Aggregator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/ss/formula/functions/Countifs;->createAggregator()Lorg/apache/poi/ss/formula/functions/Baseifs$Aggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field accumulator:D

.field final synthetic this$0:Lorg/apache/poi/ss/formula/functions/Countifs;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/functions/Countifs;)V
    .locals 2

    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/Countifs$1;->this$0:Lorg/apache/poi/ss/formula/functions/Countifs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/ss/formula/functions/Countifs$1;->accumulator:D

    return-void
.end method


# virtual methods
.method public addValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)V
    .locals 4

    iget-wide v0, p0, Lorg/apache/poi/ss/formula/functions/Countifs$1;->accumulator:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/poi/ss/formula/functions/Countifs$1;->accumulator:D

    return-void
.end method

.method public getResult()Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3

    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    iget-wide v1, p0, Lorg/apache/poi/ss/formula/functions/Countifs$1;->accumulator:D

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v0
.end method
