.class final Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$SimpleExitMessage;
.super Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;
.source "DefaultFlowMessageFactory.java"

# interfaces
.implements Lorg/apache/logging/log4j/message/ExitMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SimpleExitMessage"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final isVoid:Z

.field private final result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/logging/log4j/message/EntryMessage;)V
    .locals 1
    .param p1, "exitText"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/Object;
    .param p3, "message"    # Lorg/apache/logging/log4j/message/EntryMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "exitText",
            "result",
            "message"
        }
    .end annotation

    .line 130
    invoke-interface {p3}, Lorg/apache/logging/log4j/message/EntryMessage;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/message/Message;)V

    .line 131
    iput-object p2, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$SimpleExitMessage;->result:Ljava/lang/Object;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$SimpleExitMessage;->isVoid:Z

    .line 133
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/logging/log4j/message/Message;)V
    .locals 1
    .param p1, "exitText"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/Object;
    .param p3, "message"    # Lorg/apache/logging/log4j/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "exitText",
            "result",
            "message"
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1, p3}, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/message/Message;)V

    .line 137
    iput-object p2, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$SimpleExitMessage;->result:Ljava/lang/Object;

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$SimpleExitMessage;->isVoid:Z

    .line 139
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/message/EntryMessage;)V
    .locals 1
    .param p1, "exitText"    # Ljava/lang/String;
    .param p2, "message"    # Lorg/apache/logging/log4j/message/EntryMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "exitText",
            "message"
        }
    .end annotation

    .line 124
    invoke-interface {p2}, Lorg/apache/logging/log4j/message/EntryMessage;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/message/Message;)V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$SimpleExitMessage;->result:Ljava/lang/Object;

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$SimpleExitMessage;->isVoid:Z

    .line 127
    return-void
.end method


# virtual methods
.method public getFormattedMessage()Ljava/lang/String;
    .locals 3

    .line 143
    invoke-super {p0}, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;->getFormattedMessage()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "formattedMessage":Ljava/lang/String;
    iget-boolean v1, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$SimpleExitMessage;->isVoid:Z

    if-eqz v1, :cond_0

    .line 145
    return-object v0

    .line 147
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$SimpleExitMessage;->result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
