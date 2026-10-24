.class public final synthetic Lorg/apache/logging/log4j/core/config/arbiters/-$$Lambda$SelectArbiter$gnglK541yy9N1AmPGK7SXCT29eU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic INSTANCE:Lorg/apache/logging/log4j/core/config/arbiters/-$$Lambda$SelectArbiter$gnglK541yy9N1AmPGK7SXCT29eU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/logging/log4j/core/config/arbiters/-$$Lambda$SelectArbiter$gnglK541yy9N1AmPGK7SXCT29eU;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/config/arbiters/-$$Lambda$SelectArbiter$gnglK541yy9N1AmPGK7SXCT29eU;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/config/arbiters/-$$Lambda$SelectArbiter$gnglK541yy9N1AmPGK7SXCT29eU;->INSTANCE:Lorg/apache/logging/log4j/core/config/arbiters/-$$Lambda$SelectArbiter$gnglK541yy9N1AmPGK7SXCT29eU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;

    check-cast p2, Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;

    invoke-static {p1, p2}, Lorg/apache/logging/log4j/core/config/arbiters/SelectArbiter;->lambda$evaluateConditions$1(Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;)Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;

    move-result-object p1

    return-object p1
.end method
