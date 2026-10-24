.class public final synthetic Lorg/apache/logging/log4j/core/util/-$$Lambda$11MdKcU0CfbiGE6Sd4hL5-nXhTQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/apache/logging/log4j/util/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lorg/apache/logging/log4j/core/util/-$$Lambda$11MdKcU0CfbiGE6Sd4hL5-nXhTQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/logging/log4j/core/util/-$$Lambda$11MdKcU0CfbiGE6Sd4hL5-nXhTQ;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/util/-$$Lambda$11MdKcU0CfbiGE6Sd4hL5-nXhTQ;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/util/-$$Lambda$11MdKcU0CfbiGE6Sd4hL5-nXhTQ;->INSTANCE:Lorg/apache/logging/log4j/core/util/-$$Lambda$11MdKcU0CfbiGE6Sd4hL5-nXhTQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/apache/logging/log4j/core/util/SystemMillisClock;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/util/SystemMillisClock;-><init>()V

    check-cast v0, Lorg/apache/logging/log4j/core/util/Clock;

    return-object v0
.end method
