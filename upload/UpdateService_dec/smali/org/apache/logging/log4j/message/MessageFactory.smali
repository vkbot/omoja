.class public interface abstract Lorg/apache/logging/log4j/message/MessageFactory;
.super Ljava/lang/Object;
.source "MessageFactory.java"


# virtual methods
.method public abstract newMessage(Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation
.end method

.method public abstract newMessage(Ljava/lang/String;)Lorg/apache/logging/log4j/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation
.end method

.method public varargs abstract newMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "params"
        }
    .end annotation
.end method
