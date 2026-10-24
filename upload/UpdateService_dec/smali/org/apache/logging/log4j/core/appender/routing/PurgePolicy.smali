.class public interface abstract Lorg/apache/logging/log4j/core/appender/routing/PurgePolicy;
.super Ljava/lang/Object;
.source "PurgePolicy.java"


# virtual methods
.method public abstract initialize(Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routingAppender"
        }
    .end annotation
.end method

.method public abstract purge()V
.end method

.method public abstract update(Ljava/lang/String;Lorg/apache/logging/log4j/core/LogEvent;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "event"
        }
    .end annotation
.end method
