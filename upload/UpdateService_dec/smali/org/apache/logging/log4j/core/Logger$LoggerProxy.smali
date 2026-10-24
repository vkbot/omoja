.class public Lorg/apache/logging/log4j/core/Logger$LoggerProxy;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LoggerProxy"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final messageFactory:Lorg/apache/logging/log4j/message/MessageFactory;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "messageFactory"    # Lorg/apache/logging/log4j/message/MessageFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "messageFactory"
        }
    .end annotation

    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    iput-object p1, p0, Lorg/apache/logging/log4j/core/Logger$LoggerProxy;->name:Ljava/lang/String;

    .line 660
    iput-object p2, p0, Lorg/apache/logging/log4j/core/Logger$LoggerProxy;->messageFactory:Lorg/apache/logging/log4j/message/MessageFactory;

    .line 661
    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 664
    new-instance v0, Lorg/apache/logging/log4j/core/Logger;

    invoke-static {}, Lorg/apache/logging/log4j/core/LoggerContext;->getContext()Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/Logger$LoggerProxy;->name:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/Logger$LoggerProxy;->messageFactory:Lorg/apache/logging/log4j/message/MessageFactory;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/logging/log4j/core/Logger;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)V

    return-object v0
.end method
