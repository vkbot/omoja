.class public final Lorg/apache/poi/ss/formula/functions/DCount;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;


# instance fields
.field private count:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allowEmptyMatchField()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getResult()Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3

    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    iget-wide v1, p0, Lorg/apache/poi/ss/formula/functions/DCount;->count:J

    long-to-double v1, v1

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v0
.end method

.method public processMatch(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 4

    instance-of p1, p1, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lorg/apache/poi/ss/formula/functions/DCount;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/poi/ss/formula/functions/DCount;->count:J

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
