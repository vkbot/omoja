.class public interface abstract Lorg/apache/logging/log4j/message/FlowMessageFactory;
.super Ljava/lang/Object;
.source "FlowMessageFactory.java"


# virtual methods
.method public abstract newEntryMessage(Lorg/apache/logging/log4j/message/Message;)Lorg/apache/logging/log4j/message/EntryMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation
.end method

.method public abstract newExitMessage(Ljava/lang/Object;Lorg/apache/logging/log4j/message/EntryMessage;)Lorg/apache/logging/log4j/message/ExitMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "result",
            "message"
        }
    .end annotation
.end method

.method public abstract newExitMessage(Ljava/lang/Object;Lorg/apache/logging/log4j/message/Message;)Lorg/apache/logging/log4j/message/ExitMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "result",
            "message"
        }
    .end annotation
.end method

.method public abstract newExitMessage(Lorg/apache/logging/log4j/message/EntryMessage;)Lorg/apache/logging/log4j/message/ExitMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation
.end method
