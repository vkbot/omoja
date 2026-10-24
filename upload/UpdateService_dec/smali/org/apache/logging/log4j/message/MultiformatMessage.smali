.class public interface abstract Lorg/apache/logging/log4j/message/MultiformatMessage;
.super Ljava/lang/Object;
.source "MultiformatMessage.java"

# interfaces
.implements Lorg/apache/logging/log4j/message/Message;


# virtual methods
.method public abstract getFormats()[Ljava/lang/String;
.end method

.method public abstract getFormattedMessage([Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "formats"
        }
    .end annotation
.end method
