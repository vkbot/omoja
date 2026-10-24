.class public abstract Lorg/apache/poi/ss/formula/functions/AggregateFunction;
.super Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/functions/AggregateFunction$Geomean;,
        Lorg/apache/poi/ss/formula/functions/AggregateFunction$Product;,
        Lorg/apache/poi/ss/formula/functions/AggregateFunction$AggregateFunctionA;,
        Lorg/apache/poi/ss/formula/functions/AggregateFunction$ValueCollector;,
        Lorg/apache/poi/ss/formula/functions/AggregateFunction$Percentile;,
        Lorg/apache/poi/ss/formula/functions/AggregateFunction$LargeSmall;
    }
.end annotation


# static fields
.field public static final AVEDEV:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final AVERAGE:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final AVERAGEA:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final DEVSQ:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final GEOMEAN:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final LARGE:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final MAX:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final MEDIAN:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final MIN:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final PERCENTILE:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final PRODUCT:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final SMALL:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final STDEV:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final STDEVA:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final STDEVP:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final STDEVPA:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final SUM:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final SUMSQ:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final VAR:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final VARA:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final VARP:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final VARPA:Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction$2;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$2;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->AVEDEV:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction$3;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$3;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->AVERAGE:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction$4;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$4;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->AVERAGEA:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction$5;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$5;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->DEVSQ:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction$LargeSmall;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$LargeSmall;-><init>(Z)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->LARGE:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction$6;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$6;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->MAX:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction$7;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$7;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->MEDIAN:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction$8;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$8;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->MIN:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction$Percentile;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$Percentile;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->PERCENTILE:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction$Product;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$Product;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->PRODUCT:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction$LargeSmall;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$LargeSmall;-><init>(Z)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->SMALL:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction$9;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$9;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->STDEV:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction$10;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$10;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->STDEVP:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction$11;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$11;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->STDEVA:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction$12;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$12;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->STDEVPA:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction$13;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$13;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->SUM:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction$14;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$14;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->SUMSQ:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction$15;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$15;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->VAR:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction$16;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$16;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->VARP:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction$17;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$17;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->VARA:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction$18;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$18;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->VARPA:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction$Geomean;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$Geomean;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->GEOMEAN:Lorg/apache/poi/ss/formula/functions/Function;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;-><init>(ZZ)V

    return-void
.end method

.method public static subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;Z)Lorg/apache/poi/ss/formula/functions/Function;
    .locals 1

    check-cast p0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$1;-><init>(Lorg/apache/poi/ss/formula/functions/AggregateFunction;Z)V

    return-object v0
.end method
