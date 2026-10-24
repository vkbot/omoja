.class public abstract Lorg/apache/poi/ss/formula/functions/BooleanFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;
.implements Lorg/apache/poi/ss/formula/functions/ArrayFunction;


# static fields
.field public static final AND:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final FALSE:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final NOT:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final OR:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final TRUE:Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/poi/ss/formula/functions/BooleanFunction$1;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/BooleanFunction$1;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->AND:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/BooleanFunction$2;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/BooleanFunction$2;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->OR:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/b;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->FALSE:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/c;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/c;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->TRUE:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/d;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/d;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->NOT:Lorg/apache/poi/ss/formula/functions/Function;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->evaluateTrue([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->evaluateNot([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->lambda$evaluateNot$0(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method

.method private calculate([Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 12

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->getInitialResultValue()Z

    move-result v0

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_8

    aget-object v5, p1, v3

    instance-of v6, v5, Lorg/apache/poi/ss/formula/TwoDEval;

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    check-cast v5, Lorg/apache/poi/ss/formula/TwoDEval;

    invoke-interface {v5}, Lorg/apache/poi/ss/formula/TwoDEval;->getHeight()I

    move-result v6

    invoke-interface {v5}, Lorg/apache/poi/ss/formula/TwoDEval;->getWidth()I

    move-result v8

    move v9, v2

    :goto_1
    if-ge v9, v6, :cond_7

    move v10, v2

    :goto_2
    if-ge v10, v8, :cond_1

    invoke-interface {v5, v9, v10}, Lorg/apache/poi/ss/formula/TwoDEval;->getValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v11

    invoke-static {v11, v7}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToBoolean(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Ljava/lang/Boolean;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v0, v4}, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->partialEvaluate(ZZ)Z

    move-result v0

    move v4, v7

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    instance-of v6, v5, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v6, :cond_4

    check-cast v5, Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-interface {v5}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v6

    invoke-interface {v5}, Lorg/apache/poi/ss/formula/eval/RefEval;->getLastSheetIndex()I

    move-result v8

    :goto_3
    if-gt v6, v8, :cond_7

    invoke-interface {v5, v6}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v9

    invoke-static {v9, v7}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToBoolean(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Ljava/lang/Boolean;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v0, v4}, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->partialEvaluate(ZZ)Z

    move-result v0

    move v4, v7

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    sget-object v6, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    if-eq v5, v6, :cond_6

    sget-object v6, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne v5, v6, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {v5, v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToBoolean(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_5

    :cond_6
    :goto_4
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_5
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v0, v4}, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->partialEvaluate(ZZ)Z

    move-result v0

    move v4, v7

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    if-eqz v4, :cond_9

    return v0

    :cond_9
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0
.end method

.method public static synthetic d([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->evaluateFalse([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method

.method private static evaluateFalse([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    array-length p0, p0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/poi/ss/formula/eval/BoolEval;->FALSE:Lorg/apache/poi/ss/formula/eval/BoolEval;

    :goto_0
    return-object p0
.end method

.method private static evaluateNot([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/poi/ss/formula/functions/a;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ss/formula/functions/a;-><init>(II)V

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/poi/ss/formula/functions/ArrayFunction;->_evaluateOneArrayArg(Lorg/apache/poi/ss/formula/eval/ValueEval;IILjava/util/function/Function;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method

.method private static evaluateTrue([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    array-length p0, p0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/poi/ss/formula/eval/BoolEval;->TRUE:Lorg/apache/poi/ss/formula/eval/BoolEval;

    :goto_0
    return-object p0
.end method

.method private static synthetic lambda$evaluateNot$0(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    :try_start_0
    invoke-static {p2, p0, p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToBoolean(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/BoolEval;->valueOf(Z)Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    array-length p2, p1

    const/4 p3, 0x1

    if-ge p2, p3, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->calculate([Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    move-result p0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/BoolEval;->valueOf(Z)Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0
.end method

.method public evaluateArray([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method

.method public abstract getInitialResultValue()Z
.end method

.method public abstract partialEvaluate(ZZ)Z
.end method
