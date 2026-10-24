.class public interface abstract Lorg/apache/logging/log4j/message/ReusableMessage;
.super Ljava/lang/Object;
.source "ReusableMessage.java"

# interfaces
.implements Lorg/apache/logging/log4j/message/Message;
.implements Lorg/apache/logging/log4j/util/StringBuilderFormattable;


# virtual methods
.method public abstract getParameterCount()S
.end method

.method public abstract memento()Lorg/apache/logging/log4j/message/Message;
.end method

.method public abstract swapParameters([Ljava/lang/Object;)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emptyReplacement"
        }
    .end annotation
.end method
