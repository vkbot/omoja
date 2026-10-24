.class final Lorg/apache/poi/ss/formula/functions/MatrixFunction$2;
.super Lorg/apache/poi/ss/formula/functions/MatrixFunction$OneArrayArg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/MatrixFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field private final instance:Lorg/apache/poi/ss/formula/functions/MatrixFunction$MutableValueCollector;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/MatrixFunction$OneArrayArg;-><init>()V

    new-instance v0, Lorg/apache/poi/ss/formula/functions/MatrixFunction$MutableValueCollector;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/functions/MatrixFunction$MutableValueCollector;-><init>(ZZ)V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/functions/MatrixFunction$2;->instance:Lorg/apache/poi/ss/formula/functions/MatrixFunction$MutableValueCollector;

    return-void
.end method


# virtual methods
.method public collectValues(Lorg/apache/poi/ss/formula/eval/ValueEval;)[D
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/ss/formula/functions/MatrixFunction$2;->instance:Lorg/apache/poi/ss/formula/functions/MatrixFunction$MutableValueCollector;

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/functions/MatrixFunction$MutableValueCollector;->collectValues([Lorg/apache/poi/ss/formula/eval/ValueEval;)[D

    move-result-object p0

    return-object p0
.end method

.method public evaluate([[D)[[D
    .locals 0

    new-instance p0, Lr4/c;

    invoke-direct {p0, p1}, Lr4/c;-><init>([[D)V

    invoke-virtual {p0}, Lr4/b;->m()Lr4/k;

    move-result-object p0

    invoke-interface {p0}, Lr4/k;->getData()[[D

    move-result-object p0

    return-object p0
.end method
