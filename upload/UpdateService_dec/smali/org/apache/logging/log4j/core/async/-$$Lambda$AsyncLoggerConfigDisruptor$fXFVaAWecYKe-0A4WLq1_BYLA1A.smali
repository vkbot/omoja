.class public final synthetic Lorg/apache/logging/log4j/core/async/-$$Lambda$AsyncLoggerConfigDisruptor$fXFVaAWecYKe-0A4WLq1_BYLA1A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/lmax/disruptor/EventFactory;


# static fields
.field public static final synthetic INSTANCE:Lorg/apache/logging/log4j/core/async/-$$Lambda$AsyncLoggerConfigDisruptor$fXFVaAWecYKe-0A4WLq1_BYLA1A;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/logging/log4j/core/async/-$$Lambda$AsyncLoggerConfigDisruptor$fXFVaAWecYKe-0A4WLq1_BYLA1A;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/async/-$$Lambda$AsyncLoggerConfigDisruptor$fXFVaAWecYKe-0A4WLq1_BYLA1A;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/async/-$$Lambda$AsyncLoggerConfigDisruptor$fXFVaAWecYKe-0A4WLq1_BYLA1A;->INSTANCE:Lorg/apache/logging/log4j/core/async/-$$Lambda$AsyncLoggerConfigDisruptor$fXFVaAWecYKe-0A4WLq1_BYLA1A;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->lambda$static$0()Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;

    move-result-object v0

    return-object v0
.end method
