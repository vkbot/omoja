.class public interface abstract Lorg/apache/logging/log4j/status/StatusListener;
.super Ljava/lang/Object;
.source "StatusListener.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/util/EventListener;


# virtual methods
.method public abstract getStatusLevel()Lorg/apache/logging/log4j/Level;
.end method

.method public abstract log(Lorg/apache/logging/log4j/status/StatusData;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation
.end method
