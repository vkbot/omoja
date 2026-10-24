.class Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadDumpMessageProxy;
.super Ljava/lang/Object;
.source "ThreadDumpMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/message/ThreadDumpMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadDumpMessageProxy"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x303f6fe12e40fe0dL


# instance fields
.field private final formattedMsg:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/logging/log4j/message/ThreadDumpMessage;)V
    .locals 1
    .param p1, "msg"    # Lorg/apache/logging/log4j/message/ThreadDumpMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "msg"
        }
    .end annotation

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-virtual {p1}, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->getFormattedMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadDumpMessageProxy;->formattedMsg:Ljava/lang/String;

    .line 159
    invoke-static {p1}, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->access$100(Lorg/apache/logging/log4j/message/ThreadDumpMessage;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadDumpMessageProxy;->title:Ljava/lang/String;

    .line 160
    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .locals 4

    .line 167
    new-instance v0, Lorg/apache/logging/log4j/message/ThreadDumpMessage;

    iget-object v1, p0, Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadDumpMessageProxy;->formattedMsg:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadDumpMessageProxy;->title:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/logging/log4j/message/ThreadDumpMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/message/ThreadDumpMessage$1;)V

    return-object v0
.end method
