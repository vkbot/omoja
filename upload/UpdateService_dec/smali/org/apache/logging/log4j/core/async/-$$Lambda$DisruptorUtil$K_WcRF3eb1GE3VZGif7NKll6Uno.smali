.class public final synthetic Lorg/apache/logging/log4j/core/async/-$$Lambda$DisruptorUtil$K_WcRF3eb1GE3VZGif7NKll6Uno;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic INSTANCE:Lorg/apache/logging/log4j/core/async/-$$Lambda$DisruptorUtil$K_WcRF3eb1GE3VZGif7NKll6Uno;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/logging/log4j/core/async/-$$Lambda$DisruptorUtil$K_WcRF3eb1GE3VZGif7NKll6Uno;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/async/-$$Lambda$DisruptorUtil$K_WcRF3eb1GE3VZGif7NKll6Uno;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/async/-$$Lambda$DisruptorUtil$K_WcRF3eb1GE3VZGif7NKll6Uno;->INSTANCE:Lorg/apache/logging/log4j/core/async/-$$Lambda$DisruptorUtil$K_WcRF3eb1GE3VZGif7NKll6Uno;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lorg/apache/logging/log4j/core/async/DisruptorUtil;->lambda$getExecutorThreadId$0()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
