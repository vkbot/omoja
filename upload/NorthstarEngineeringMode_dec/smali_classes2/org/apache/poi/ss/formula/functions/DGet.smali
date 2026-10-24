.class public final Lorg/apache/poi/ss/formula/functions/DGet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;


# instance fields
.field private result:Lorg/apache/poi/ss/formula/eval/ValueEval;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/DGet;->result:Lorg/apache/poi/ss/formula/eval/ValueEval;

    if-nez v0, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :cond_0
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eqz v1, :cond_1

    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1, v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/ss/formula/functions/DGet;->result:Lorg/apache/poi/ss/formula/eval/ValueEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0
.end method

.method public processMatch(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/DGet;->result:Lorg/apache/poi/ss/formula/eval/ValueEval;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/DGet;->result:Lorg/apache/poi/ss/formula/eval/ValueEval;

    goto :goto_0

    :cond_0
    instance-of v0, v0, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eqz v0, :cond_1

    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/DGet;->result:Lorg/apache/poi/ss/formula/eval/ValueEval;

    goto :goto_0

    :cond_1
    instance-of p1, p1, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-nez p1, :cond_2

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/DGet;->result:Lorg/apache/poi/ss/formula/eval/ValueEval;

    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
