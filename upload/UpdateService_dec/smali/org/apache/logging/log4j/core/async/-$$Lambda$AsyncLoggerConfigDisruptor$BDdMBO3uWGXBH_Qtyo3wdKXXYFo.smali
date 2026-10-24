.class public final synthetic Lorg/apache/logging/log4j/core/async/-$$Lambda$AsyncLoggerConfigDisruptor$BDdMBO3uWGXBH_Qtyo3wdKXXYFo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/lmax/disruptor/EventTranslatorTwoArg;


# static fields
.field public static final synthetic INSTANCE:Lorg/apache/logging/log4j/core/async/-$$Lambda$AsyncLoggerConfigDisruptor$BDdMBO3uWGXBH_Qtyo3wdKXXYFo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/logging/log4j/core/async/-$$Lambda$AsyncLoggerConfigDisruptor$BDdMBO3uWGXBH_Qtyo3wdKXXYFo;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/async/-$$Lambda$AsyncLoggerConfigDisruptor$BDdMBO3uWGXBH_Qtyo3wdKXXYFo;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/async/-$$Lambda$AsyncLoggerConfigDisruptor$BDdMBO3uWGXBH_Qtyo3wdKXXYFo;->INSTANCE:Lorg/apache/logging/log4j/core/async/-$$Lambda$AsyncLoggerConfigDisruptor$BDdMBO3uWGXBH_Qtyo3wdKXXYFo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final translateTo(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;

    check-cast p4, Lorg/apache/logging/log4j/core/LogEvent;

    check-cast p5, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;

    invoke-static {p1, p2, p3, p4, p5}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->lambda$static$1(Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;JLorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;)V

    return-void
.end method
