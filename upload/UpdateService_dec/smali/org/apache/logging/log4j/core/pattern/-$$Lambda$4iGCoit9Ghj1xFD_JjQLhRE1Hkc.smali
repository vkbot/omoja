.class public final synthetic Lorg/apache/logging/log4j/core/pattern/-$$Lambda$4iGCoit9Ghj1xFD_JjQLhRE1Hkc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lorg/apache/logging/log4j/core/pattern/-$$Lambda$4iGCoit9Ghj1xFD_JjQLhRE1Hkc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/logging/log4j/core/pattern/-$$Lambda$4iGCoit9Ghj1xFD_JjQLhRE1Hkc;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/pattern/-$$Lambda$4iGCoit9Ghj1xFD_JjQLhRE1Hkc;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/-$$Lambda$4iGCoit9Ghj1xFD_JjQLhRE1Hkc;->INSTANCE:Lorg/apache/logging/log4j/core/pattern/-$$Lambda$4iGCoit9Ghj1xFD_JjQLhRE1Hkc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->getConverter()Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;

    move-result-object p1

    return-object p1
.end method
