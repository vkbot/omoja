.class public Lorg/apache/poi/ss/formula/functions/Frequency;
.super Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;
.source "SourceFile"


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/functions/Frequency;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Frequency;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Frequency;->instance:Lorg/apache/poi/ss/formula/functions/Function;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    return-void
.end method

.method public static synthetic a(I)[Lorg/apache/poi/ss/formula/eval/NumberEval;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/Frequency;->lambda$evaluate$0(I)[Lorg/apache/poi/ss/formula/eval/NumberEval;

    move-result-object p0

    return-object p0
.end method

.method public static findBin(D[D)I
    .locals 0

    invoke-static {p2, p0, p1}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result p0

    if-ltz p0, :cond_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    neg-int p0, p0

    :goto_0
    return p0
.end method

.method public static histogram([D[D)[I
    .locals 5

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, p0, v2

    invoke-static {v3, v4, p1}, Lorg/apache/poi/ss/formula/functions/Frequency;->findBin(D[D)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget v4, v0, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static synthetic lambda$evaluate$0(I)[Lorg/apache/poi/ss/formula/eval/NumberEval;
    .locals 0

    new-array p0, p0, [Lorg/apache/poi/ss/formula/eval/NumberEval;

    return-object p0
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 8

    new-instance p0, Lorg/apache/poi/ss/formula/functions/MatrixFunction$MutableValueCollector;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/apache/poi/ss/formula/functions/MatrixFunction$MutableValueCollector;-><init>(ZZ)V

    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    aput-object p3, v2, v0

    invoke-virtual {p0, v2}, Lorg/apache/poi/ss/formula/functions/MatrixFunction$MutableValueCollector;->collectValues([Lorg/apache/poi/ss/formula/eval/ValueEval;)[D

    move-result-object p3

    new-array v2, v1, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    aput-object p4, v2, v0

    invoke-virtual {p0, v2}, Lorg/apache/poi/ss/formula/functions/MatrixFunction$MutableValueCollector;->collectValues([Lorg/apache/poi/ss/formula/eval/ValueEval;)[D

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p3, p0}, Lorg/apache/poi/ss/formula/functions/Frequency;->histogram([D[D)[I

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p3, Lorg/apache/poi/ss/formula/functions/h;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, p3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p3, Lorg/apache/poi/ss/formula/functions/i;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, p3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, [Lorg/apache/poi/ss/formula/eval/NumberEval;

    new-instance p0, Lorg/apache/poi/ss/formula/CacheAreaEval;

    array-length p3, v7

    add-int/2addr p3, p1

    add-int/lit8 v5, p3, -0x1

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v6, p2

    invoke-direct/range {v2 .. v7}, Lorg/apache/poi/ss/formula/CacheAreaEval;-><init>(IIII[Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0
.end method
