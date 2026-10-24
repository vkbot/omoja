.class public interface abstract Lorg/apache/logging/log4j/message/ThreadInformation;
.super Ljava/lang/Object;
.source "ThreadInformation.java"


# virtual methods
.method public abstract printStack(Ljava/lang/StringBuilder;[Ljava/lang/StackTraceElement;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sb",
            "trace"
        }
    .end annotation
.end method

.method public abstract printThreadInfo(Ljava/lang/StringBuilder;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sb"
        }
    .end annotation
.end method
