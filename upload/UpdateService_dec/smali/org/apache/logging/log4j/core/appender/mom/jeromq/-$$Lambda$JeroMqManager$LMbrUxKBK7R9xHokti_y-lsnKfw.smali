.class public final synthetic Lorg/apache/logging/log4j/core/appender/mom/jeromq/-$$Lambda$JeroMqManager$LMbrUxKBK7R9xHokti_y-lsnKfw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/zeromq/ZMQ$Context;


# direct methods
.method public synthetic constructor <init>(Lorg/zeromq/ZMQ$Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/-$$Lambda$JeroMqManager$LMbrUxKBK7R9xHokti_y-lsnKfw;->f$0:Lorg/zeromq/ZMQ$Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/-$$Lambda$JeroMqManager$LMbrUxKBK7R9xHokti_y-lsnKfw;->f$0:Lorg/zeromq/ZMQ$Context;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->lambda$LMbrUxKBK7R9xHokti_y-lsnKfw(Lorg/zeromq/ZMQ$Context;)V

    return-void
.end method
