.class Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;
.super Ljava/lang/Object;
.source "DefaultFlowMessageFactory.java"

# interfaces
.implements Lorg/apache/logging/log4j/message/FlowMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AbstractFlowMessage"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final message:Lorg/apache/logging/log4j/message/Message;

.field private final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/message/Message;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "message"    # Lorg/apache/logging/log4j/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "text",
            "message"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p2, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;->message:Lorg/apache/logging/log4j/message/Message;

    .line 60
    iput-object p1, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;->text:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 2

    .line 73
    iget-object v0, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;->message:Lorg/apache/logging/log4j/message/Message;

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;->message:Lorg/apache/logging/log4j/message/Message;

    invoke-interface {v1}, Lorg/apache/logging/log4j/message/Message;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedMessage()Ljava/lang/String;
    .locals 2

    .line 65
    iget-object v0, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;->message:Lorg/apache/logging/log4j/message/Message;

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;->message:Lorg/apache/logging/log4j/message/Message;

    invoke-interface {v1}, Lorg/apache/logging/log4j/message/Message;->getFormattedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Lorg/apache/logging/log4j/message/Message;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;->message:Lorg/apache/logging/log4j/message/Message;

    return-object v0
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;->message:Lorg/apache/logging/log4j/message/Message;

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0}, Lorg/apache/logging/log4j/message/Message;->getParameters()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 84
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;->message:Lorg/apache/logging/log4j/message/Message;

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0}, Lorg/apache/logging/log4j/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0

    .line 92
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
