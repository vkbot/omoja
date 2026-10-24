.class public final Lorg/apache/poi/ss/formula/functions/Sumifs;
.super Lorg/apache/poi/ss/formula/functions/Baseifs;
.source "SourceFile"


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/functions/Sumifs;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Sumifs;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Sumifs;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Baseifs;-><init>()V

    return-void
.end method


# virtual methods
.method public createAggregator()Lorg/apache/poi/ss/formula/functions/Baseifs$Aggregator;
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/functions/Sumifs$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/functions/Sumifs$1;-><init>(Lorg/apache/poi/ss/formula/functions/Sumifs;)V

    return-object v0
.end method

.method public bridge synthetic evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/poi/ss/formula/functions/Baseifs;->evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method

.method public hasInitialRange()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
