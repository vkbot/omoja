.class public interface abstract Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
.super Ljava/lang/Object;
.source "Action.java"

# interfaces
.implements Ljava/lang/Runnable;


# virtual methods
.method public abstract close()V
.end method

.method public abstract execute()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isComplete()Z
.end method
