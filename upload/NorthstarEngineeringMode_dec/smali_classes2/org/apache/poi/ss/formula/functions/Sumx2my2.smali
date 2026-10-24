.class public final Lorg/apache/poi/ss/formula/functions/Sumx2my2;
.super Lorg/apache/poi/ss/formula/functions/XYNumericFunction;
.source "SourceFile"


# static fields
.field private static final XSquaredMinusYSquaredAccumulator:Lorg/apache/poi/ss/formula/functions/XYNumericFunction$Accumulator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/poi/ss/formula/functions/l;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/l;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Sumx2my2;->XSquaredMinusYSquaredAccumulator:Lorg/apache/poi/ss/formula/functions/XYNumericFunction$Accumulator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/XYNumericFunction;-><init>()V

    return-void
.end method

.method public static synthetic a(DD)D
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/ss/formula/functions/Sumx2my2;->lambda$static$0(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$static$0(DD)D
    .locals 0

    mul-double/2addr p0, p0

    mul-double/2addr p2, p2

    sub-double/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method public createAccumulator()Lorg/apache/poi/ss/formula/functions/XYNumericFunction$Accumulator;
    .locals 0

    sget-object p0, Lorg/apache/poi/ss/formula/functions/Sumx2my2;->XSquaredMinusYSquaredAccumulator:Lorg/apache/poi/ss/formula/functions/XYNumericFunction$Accumulator;

    return-object p0
.end method
