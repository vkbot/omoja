.class public Lorg/apache/logging/log4j/core/async/InternalAsyncUtil;
.super Ljava/lang/Object;
.source "InternalAsyncUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canFormatMessageInBackground(Lorg/apache/logging/log4j/message/Message;)Z
    .locals 2
    .param p0, "message"    # Lorg/apache/logging/log4j/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 47
    sget-boolean v0, Lorg/apache/logging/log4j/core/util/Constants;->FORMAT_MESSAGES_IN_BACKGROUND:Z

    if-nez v0, :cond_1

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/logging/log4j/message/AsynchronouslyFormattable;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 47
    :goto_1
    return v0
.end method

.method public static makeMessageImmutable(Lorg/apache/logging/log4j/message/Message;)Lorg/apache/logging/log4j/message/Message;
    .locals 1
    .param p0, "msg"    # Lorg/apache/logging/log4j/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "msg"
        }
    .end annotation

    .line 40
    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/apache/logging/log4j/core/async/InternalAsyncUtil;->canFormatMessageInBackground(Lorg/apache/logging/log4j/message/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    invoke-interface {p0}, Lorg/apache/logging/log4j/message/Message;->getFormattedMessage()Ljava/lang/String;

    .line 43
    :cond_0
    return-object p0
.end method
