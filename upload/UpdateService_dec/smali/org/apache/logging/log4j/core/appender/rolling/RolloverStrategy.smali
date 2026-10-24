.class public interface abstract Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;
.super Ljava/lang/Object;
.source "RolloverStrategy.java"


# virtual methods
.method public abstract rollover(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;)Lorg/apache/logging/log4j/core/appender/rolling/RolloverDescription;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "manager"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method
