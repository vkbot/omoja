.class public Lorg/apache/poi/ss/formula/functions/Log;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_10_TO_BASE_e:D

.field private static final TEN:D = 10.0


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/poi/ss/formula/functions/Log;->LOG_10_TO_BASE_e:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4

    array-length v0, p0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    array-length v0, p0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p0, v0

    invoke-static {v0, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v2

    array-length v0, p0

    if-ne v0, v1, :cond_1

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    sget-wide v0, Lorg/apache/poi/ss/formula/functions/Log;->LOG_10_TO_BASE_e:D

    div-double/2addr p0, v0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    aget-object p0, p0, v1

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide p0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x4005bf0a8b145769L    # Math.E

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p2

    if-nez p2, :cond_2

    :goto_0
    move-wide p0, v0

    goto :goto_1

    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    div-double/2addr v0, p0

    goto :goto_0

    :goto_1
    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V

    new-instance p2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {p2, p0, p1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :goto_2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0
.end method
