.class public Lorg/apache/logging/log4j/message/LocalizedMessageFactory;
.super Lorg/apache/logging/log4j/message/AbstractMessageFactory;
.source "LocalizedMessageFactory.java"


# static fields
.field private static final serialVersionUID:J = -0x1bb44476105a2af5L


# instance fields
.field private final baseName:Ljava/lang/String;

.field private final transient resourceBundle:Ljava/util/ResourceBundle;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "baseName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "baseName"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lorg/apache/logging/log4j/message/AbstractMessageFactory;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessageFactory;->resourceBundle:Ljava/util/ResourceBundle;

    .line 45
    iput-object p1, p0, Lorg/apache/logging/log4j/message/LocalizedMessageFactory;->baseName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/util/ResourceBundle;)V
    .locals 1
    .param p1, "resourceBundle"    # Ljava/util/ResourceBundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "resourceBundle"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lorg/apache/logging/log4j/message/AbstractMessageFactory;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/logging/log4j/message/LocalizedMessageFactory;->resourceBundle:Ljava/util/ResourceBundle;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessageFactory;->baseName:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public getBaseName()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessageFactory;->baseName:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceBundle()Ljava/util/ResourceBundle;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessageFactory;->resourceBundle:Ljava/util/ResourceBundle;

    return-object v0
.end method

.method public newMessage(Ljava/lang/String;)Lorg/apache/logging/log4j/message/Message;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessageFactory;->resourceBundle:Ljava/util/ResourceBundle;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lorg/apache/logging/log4j/message/LocalizedMessage;

    iget-object v1, p0, Lorg/apache/logging/log4j/message/LocalizedMessageFactory;->baseName:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    .line 74
    :cond_0
    new-instance v1, Lorg/apache/logging/log4j/message/LocalizedMessage;

    invoke-direct {v1, v0, p1}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/util/ResourceBundle;Ljava/lang/String;)V

    return-object v1
.end method

.method public varargs newMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "params"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessageFactory;->resourceBundle:Ljava/util/ResourceBundle;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lorg/apache/logging/log4j/message/LocalizedMessage;

    iget-object v1, p0, Lorg/apache/logging/log4j/message/LocalizedMessageFactory;->baseName:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 91
    :cond_0
    new-instance v1, Lorg/apache/logging/log4j/message/LocalizedMessage;

    invoke-direct {v1, v0, p1, p2}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/util/ResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method
