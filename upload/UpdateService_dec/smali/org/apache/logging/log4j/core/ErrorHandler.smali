.class public interface abstract Lorg/apache/logging/log4j/core/ErrorHandler;
.super Ljava/lang/Object;
.source "ErrorHandler.java"


# virtual methods
.method public abstract error(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation
.end method

.method public abstract error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "msg",
            "t"
        }
    .end annotation
.end method

.method public abstract error(Ljava/lang/String;Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "msg",
            "event",
            "t"
        }
    .end annotation
.end method
