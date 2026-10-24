.class public final Lorg/apache/poi/ss/formula/functions/Sumxmy2;
.super Lorg/apache/poi/ss/formula/functions/XYNumericFunction;
.source "SourceFile"


# static fields
.field private static final XMinusYSquaredAccumulator:Lorg/apache/poi/ss/formula/functions/XYNumericFunction$Accumulator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/poi/ss/formula/functions/k;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/k;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Sumxmy2;->XMinusYSquaredAccumulator:Lorg/apache/poi/ss/formula/functions/XYNumericFunction$Accumulator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/XYNumericFunction;-><init>()V

    return-void
.end method

.method public static synthetic a(DD)D
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/ss/formula/functions/Sumxmy2;->lambda$static$0(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$static$0(DD)D
    .locals 0

    sub-double/2addr p0, p2

    mul-double/2addr p0, p0

    return-wide p0
.end method


# virtual methods
.method public createAccumulator()Lorg/apache/poi/ss/formula/functions/XYNumericFunction$Accumulator;
    .locals 0

    sget-object p0, Lorg/apache/poi/ss/formula/functions/Sumxmy2;->XMinusYSquaredAccumulator:Lorg/apache/poi/ss/formula/functions/XYNumericFunction$Accumulator;

    return-object p0
.end method
