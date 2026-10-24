.class public Lorg/apache/logging/log4j/core/async/AsyncLoggerDefaultExceptionHandler;
.super Lorg/apache/logging/log4j/core/async/AbstractAsyncExceptionHandler;
.source "AsyncLoggerDefaultExceptionHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/core/async/AbstractAsyncExceptionHandler<",
        "Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/async/AbstractAsyncExceptionHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleOnShutdownException(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 22
    invoke-super {p0, p1}, Lorg/apache/logging/log4j/core/async/AbstractAsyncExceptionHandler;->handleOnShutdownException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic handleOnStartException(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 22
    invoke-super {p0, p1}, Lorg/apache/logging/log4j/core/async/AbstractAsyncExceptionHandler;->handleOnStartException(Ljava/lang/Throwable;)V

    return-void
.end method
