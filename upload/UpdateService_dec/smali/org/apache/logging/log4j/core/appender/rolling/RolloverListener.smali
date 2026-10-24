.class public interface abstract Lorg/apache/logging/log4j/core/appender/rolling/RolloverListener;
.super Ljava/lang/Object;
.source "RolloverListener.java"


# virtual methods
.method public abstract rolloverComplete(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileName"
        }
    .end annotation
.end method

.method public abstract rolloverTriggered(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileName"
        }
    .end annotation
.end method
