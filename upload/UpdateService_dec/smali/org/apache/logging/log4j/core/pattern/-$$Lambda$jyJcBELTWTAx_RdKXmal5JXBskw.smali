.class public final synthetic Lorg/apache/logging/log4j/core/pattern/-$$Lambda$jyJcBELTWTAx_RdKXmal5JXBskw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lorg/apache/logging/log4j/core/pattern/-$$Lambda$jyJcBELTWTAx_RdKXmal5JXBskw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/logging/log4j/core/pattern/-$$Lambda$jyJcBELTWTAx_RdKXmal5JXBskw;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/pattern/-$$Lambda$jyJcBELTWTAx_RdKXmal5JXBskw;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/-$$Lambda$jyJcBELTWTAx_RdKXmal5JXBskw;->INSTANCE:Lorg/apache/logging/log4j/core/pattern/-$$Lambda$jyJcBELTWTAx_RdKXmal5JXBskw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;

    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;->handlesThrowable()Z

    move-result p1

    return p1
.end method
