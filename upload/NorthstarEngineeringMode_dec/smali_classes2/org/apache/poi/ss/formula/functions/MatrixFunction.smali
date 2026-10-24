.class public abstract Lorg/apache/poi/ss/formula/functions/MatrixFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/functions/MatrixFunction$Mdeterm;,
        Lorg/apache/poi/ss/formula/functions/MatrixFunction$MutableValueCollector;,
        Lorg/apache/poi/ss/formula/functions/MatrixFunction$TwoArrayArg;,
        Lorg/apache/poi/ss/formula/functions/MatrixFunction$OneArrayArg;
    }
.end annotation


# static fields
.field public static final MDETERM:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final MINVERSE:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final MMULT:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final TRANSPOSE:Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/functions/MatrixFunction$1;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/MatrixFunction$1;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/MatrixFunction;->MINVERSE:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/MatrixFunction$2;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/MatrixFunction$2;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/MatrixFunction;->TRANSPOSE:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/MatrixFunction$Mdeterm;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/MatrixFunction$Mdeterm;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/MatrixFunction;->MDETERM:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/MatrixFunction$3;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/MatrixFunction$3;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/MatrixFunction;->MMULT:Lorg/apache/poi/ss/formula/functions/Function;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000([DII)[[D
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/functions/MatrixFunction;->fillDoubleArray([DII)[[D

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100([[D)[D
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/MatrixFunction;->extractDoubleArray([[D)[D

    move-result-object p0

    return-object p0
.end method

.method public static checkValues([D)V
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0

    :cond_1
    return-void
.end method

.method private static extractDoubleArray([[D)[D
    .locals 10

    if-eqz p0, :cond_2

    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    aget-object v2, p0, v0

    array-length v3, v2

    if-lt v3, v1, :cond_2

    array-length v1, p0

    array-length v2, v2

    mul-int/2addr v1, v2

    new-array v1, v1, [D

    array-length v2, p0

    move v3, v0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, p0, v3

    move v6, v0

    :goto_1
    aget-object v7, p0, v0

    array-length v7, v7

    if-ge v6, v7, :cond_0

    add-int/lit8 v7, v4, 0x1

    aget-wide v8, v5, v6

    aput-wide v8, v1, v4

    add-int/lit8 v6, v6, 0x1

    move v4, v7

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0
.end method

.method private static fillDoubleArray([DII)[[D
    .locals 8

    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    if-lt p2, v0, :cond_3

    array-length v1, p0

    if-lt v1, v0, :cond_3

    filled-new-array {p1, p2}, [I

    move-result-object p1

    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[D

    array-length p2, p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v1, p2, :cond_2

    aget-wide v4, p0, v1

    array-length v6, p1

    if-ge v2, v6, :cond_1

    aget-object v6, p1, v0

    array-length v6, v6

    if-ne v3, v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v3, v0

    :cond_0
    array-length v6, p1

    if-ge v2, v6, :cond_1

    aget-object v6, p1, v2

    add-int/lit8 v7, v3, 0x1

    aput-wide v4, v6, v3

    move v3, v7

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1

    :cond_3
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0
.end method


# virtual methods
.method public final singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide p0

    return-wide p0
.end method
