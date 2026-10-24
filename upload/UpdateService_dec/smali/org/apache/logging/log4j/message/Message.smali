.class public interface abstract Lorg/apache/logging/log4j/message/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract getFormat()Ljava/lang/String;
.end method

.method public abstract getFormattedMessage()Ljava/lang/String;
.end method

.method public abstract getParameters()[Ljava/lang/Object;
.end method

.method public abstract getThrowable()Ljava/lang/Throwable;
.end method
