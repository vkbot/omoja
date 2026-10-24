.class public final Lorg/apache/poi/ss/formula/functions/Areas;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    array-length p0, p1

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    :try_start_0
    aget-object p0, p1, p0

    instance-of p1, p0, Lorg/apache/poi/ss/formula/eval/RefListEval;

    if-eqz p1, :cond_1

    check-cast p0, Lorg/apache/poi/ss/formula/eval/RefListEval;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/RefListEval;->getList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    new-instance p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    new-instance p2, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    int-to-double v0, p0

    invoke-direct {p2, v0, v1}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;-><init>(D)V

    invoke-direct {p1, p2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0
.end method
