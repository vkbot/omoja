.class Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$ConsumerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConsumerFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;Lorg/apache/poi/ss/formula/functions/DoubleList;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$ConsumerFactory;->lambda$throwValueInvalid$4(Ljava/lang/Object;Lorg/apache/poi/ss/formula/functions/DoubleList;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/Object;Lorg/apache/poi/ss/formula/functions/DoubleList;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$ConsumerFactory;->lambda$doNothing$3(Ljava/lang/Object;Lorg/apache/poi/ss/formula/functions/DoubleList;)V

    return-void
.end method

.method public static synthetic c(Lorg/apache/poi/ss/formula/eval/MissingArgEval;Lorg/apache/poi/ss/formula/functions/DoubleList;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$ConsumerFactory;->lambda$createForMissingArg$0(Lorg/apache/poi/ss/formula/eval/MissingArgEval;Lorg/apache/poi/ss/formula/functions/DoubleList;)V

    return-void
.end method

.method private static createAny(Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;)Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer<",
            "TT;",
            "Lorg/apache/poi/ss/formula/functions/DoubleList;",
            ">;",
            "Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;",
            ")",
            "Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer<",
            "TT;",
            "Lorg/apache/poi/ss/formula/functions/DoubleList;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$1;->$SwitchMap$org$apache$poi$ss$formula$functions$MultiOperandNumericFunction$Policy:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    invoke-static {}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$ConsumerFactory;->throwValueInvalid()Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    invoke-static {}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$ConsumerFactory;->doNothing()Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static createForBlank(Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;)Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;",
            ")",
            "Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer<",
            "Lorg/apache/poi/ss/formula/eval/BlankEval;",
            "Lorg/apache/poi/ss/formula/functions/DoubleList;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/ss/formula/functions/k;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/k;-><init>(I)V

    invoke-static {v0, p0}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$ConsumerFactory;->createAny(Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;)Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;

    move-result-object p0

    return-object p0
.end method

.method public static createForBoolEval(Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;)Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;",
            ")",
            "Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer<",
            "Lorg/apache/poi/ss/formula/eval/BoolEval;",
            "Lorg/apache/poi/ss/formula/functions/DoubleList;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/ss/formula/functions/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/m;-><init>(I)V

    invoke-static {v0, p0}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$ConsumerFactory;->createAny(Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;)Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;

    move-result-object p0

    return-object p0
.end method

.method public static createForMissingArg(Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;)Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;",
            ")",
            "Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer<",
            "Lorg/apache/poi/ss/formula/eval/MissingArgEval;",
            "Lorg/apache/poi/ss/formula/functions/DoubleList;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/ss/formula/functions/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/l;-><init>(I)V

    invoke-static {v0, p0}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$ConsumerFactory;->createAny(Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;)Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/ss/formula/eval/BlankEval;Lorg/apache/poi/ss/formula/functions/DoubleList;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$ConsumerFactory;->lambda$createForBlank$2(Lorg/apache/poi/ss/formula/eval/BlankEval;Lorg/apache/poi/ss/formula/functions/DoubleList;)V

    return-void
.end method

.method private static doNothing()Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer<",
            "TT;",
            "Lorg/apache/poi/ss/formula/functions/DoubleList;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/ss/formula/functions/l;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/l;-><init>(I)V

    return-object v0
.end method

.method public static synthetic e(Lorg/apache/poi/ss/formula/eval/BoolEval;Lorg/apache/poi/ss/formula/functions/DoubleList;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$ConsumerFactory;->lambda$createForBoolEval$1(Lorg/apache/poi/ss/formula/eval/BoolEval;Lorg/apache/poi/ss/formula/functions/DoubleList;)V

    return-void
.end method

.method private static synthetic lambda$createForBlank$2(Lorg/apache/poi/ss/formula/eval/BlankEval;Lorg/apache/poi/ss/formula/functions/DoubleList;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/ss/formula/functions/DoubleList;->add(D)V

    return-void
.end method

.method private static synthetic lambda$createForBoolEval$1(Lorg/apache/poi/ss/formula/eval/BoolEval;Lorg/apache/poi/ss/formula/functions/DoubleList;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getNumberValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/ss/formula/functions/DoubleList;->add(D)V

    return-void
.end method

.method private static synthetic lambda$createForMissingArg$0(Lorg/apache/poi/ss/formula/eval/MissingArgEval;Lorg/apache/poi/ss/formula/functions/DoubleList;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/ss/formula/functions/DoubleList;->add(D)V

    return-void
.end method

.method private static synthetic lambda$doNothing$3(Ljava/lang/Object;Lorg/apache/poi/ss/formula/functions/DoubleList;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$throwValueInvalid$4(Ljava/lang/Object;Lorg/apache/poi/ss/formula/functions/DoubleList;)V
    .locals 0

    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0
.end method

.method private static throwValueInvalid()Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer<",
            "TT;",
            "Lorg/apache/poi/ss/formula/functions/DoubleList;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/ss/formula/functions/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/k;-><init>(I)V

    return-object v0
.end method
