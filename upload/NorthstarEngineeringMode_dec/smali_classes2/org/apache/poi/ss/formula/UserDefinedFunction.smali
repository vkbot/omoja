.class final Lorg/apache/poi/ss/formula/UserDefinedFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/UserDefinedFunction;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/UserDefinedFunction;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/UserDefinedFunction;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4

    array-length p0, p1

    const/4 v0, 0x1

    if-lt p0, v0, :cond_3

    const/4 v1, 0x0

    aget-object v2, p1, v1

    instance-of v3, v2, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;

    if-eqz v3, :cond_2

    check-cast v2, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;->getFunctionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->findUserDefinedFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    move-result-object v3

    if-eqz v3, :cond_1

    sub-int/2addr p0, v0

    new-array v2, p0, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    invoke-static {p1, v0, v2, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    instance-of p0, v3, Lorg/apache/poi/ss/formula/functions/ArrayFunction;

    if-eqz p0, :cond_0

    move-object p0, v3

    check-cast p0, Lorg/apache/poi/ss/formula/functions/ArrayFunction;

    invoke-static {p0, v2, p2}, Lorg/apache/poi/ss/formula/OperationEvaluatorFactory;->evaluateArrayFunction(Lorg/apache/poi/ss/formula/functions/ArrayFunction;[Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {v3, v2, p2}, Lorg/apache/poi/ss/formula/functions/FreeRefFunction;->evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;

    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "First argument should be a NameEval, but got ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "function name argument missing"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
