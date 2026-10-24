.class public interface abstract Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;
.super Ljava/lang/Object;
.source "TriggeringPolicy.java"


# virtual methods
.method public abstract initialize(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "manager"
        }
    .end annotation
.end method

.method public abstract isTriggeringEvent(Lorg/apache/logging/log4j/core/LogEvent;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "logEvent"
        }
    .end annotation
.end method
