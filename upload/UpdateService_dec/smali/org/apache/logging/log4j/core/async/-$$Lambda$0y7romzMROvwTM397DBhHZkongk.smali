.class public final synthetic Lorg/apache/logging/log4j/core/async/-$$Lambda$0y7romzMROvwTM397DBhHZkongk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/lmax/disruptor/EventFactory;


# static fields
.field public static final synthetic INSTANCE:Lorg/apache/logging/log4j/core/async/-$$Lambda$0y7romzMROvwTM397DBhHZkongk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/logging/log4j/core/async/-$$Lambda$0y7romzMROvwTM397DBhHZkongk;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/async/-$$Lambda$0y7romzMROvwTM397DBhHZkongk;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/async/-$$Lambda$0y7romzMROvwTM397DBhHZkongk;->INSTANCE:Lorg/apache/logging/log4j/core/async/-$$Lambda$0y7romzMROvwTM397DBhHZkongk;

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

    new-instance v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;-><init>()V

    return-object v0
.end method
