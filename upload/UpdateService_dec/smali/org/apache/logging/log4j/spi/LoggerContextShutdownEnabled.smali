.class public interface abstract Lorg/apache/logging/log4j/spi/LoggerContextShutdownEnabled;
.super Ljava/lang/Object;
.source "LoggerContextShutdownEnabled.java"


# virtual methods
.method public abstract addShutdownListener(Lorg/apache/logging/log4j/spi/LoggerContextShutdownAware;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract getListeners()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/spi/LoggerContextShutdownAware;",
            ">;"
        }
    .end annotation
.end method
