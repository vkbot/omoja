.class public final Lorg/apache/poi/ss/formula/functions/Single;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/functions/Single;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Single;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Single;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 5

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result p0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result p2

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    aget-object v3, p1, v2

    instance-of v4, v3, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;

    if-eqz v4, :cond_5

    check-cast v3, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;

    invoke-virtual {v3, p2, p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :cond_0
    invoke-virtual {v3, p2, p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getAbsoluteValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, p2}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->containsRow(I)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_2

    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :cond_2
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstColumn()I

    move-result v1

    invoke-virtual {v3, p2, v1}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getAbsoluteValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-virtual {v3, p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->containsColumn(I)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v1, :cond_4

    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :cond_4
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstRow()I

    move-result v1

    invoke-virtual {v3, v1, p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getAbsoluteValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_7

    return-object v1

    :cond_7
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0
.end method
