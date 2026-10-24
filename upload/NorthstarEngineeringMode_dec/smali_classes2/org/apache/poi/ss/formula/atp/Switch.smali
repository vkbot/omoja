.class public final Lorg/apache/poi/ss/formula/atp/Switch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/atp/Switch;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/atp/Switch;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/atp/Switch;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 8

    array-length p0, p1

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    :try_start_0
    aget-object v0, p1, p0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v1

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x1

    move v2, v1

    :cond_1
    array-length v3, p1

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_3

    :try_start_1
    aget-object v3, p1, v2

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v4

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v5

    invoke-static {v3, v4, v5}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    aget-object v4, p1, v4

    sget-object v5, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;->EqualEval:Lorg/apache/poi/ss/formula/functions/Function;

    const/4 v6, 0x2

    new-array v6, v6, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    aput-object v0, v6, p0

    aput-object v3, v6, v1

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v3

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v7

    invoke-interface {v5, v6, v3, v7}, Lorg/apache/poi/ss/formula/functions/Function;->evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    instance-of v5, v3, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz v5, :cond_2

    check-cast v3, Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v3
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_2

    return-object v4

    :cond_2
    add-int/lit8 v2, v2, 0x2

    array-length v3, p1

    sub-int/2addr v3, v1

    if-ne v2, v3, :cond_1

    array-length p0, p1

    sub-int/2addr p0, v1

    aget-object p0, p1, p0

    return-object p0

    :catch_0
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :cond_3
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :catch_1
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0
.end method
