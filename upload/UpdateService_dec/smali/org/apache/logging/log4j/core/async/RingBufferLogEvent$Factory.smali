.class Lorg/apache/logging/log4j/core/async/RingBufferLogEvent$Factory;
.super Ljava/lang/Object;
.source "RingBufferLogEvent.java"

# interfaces
.implements Lcom/lmax/disruptor/EventFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lmax/disruptor/EventFactory<",
        "Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/async/RingBufferLogEvent$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/async/RingBufferLogEvent$1;

    .line 57
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic newInstance()Ljava/lang/Object;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent$Factory;->newInstance()Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;
    .locals 1

    .line 61
    new-instance v0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;-><init>()V

    return-object v0
.end method
