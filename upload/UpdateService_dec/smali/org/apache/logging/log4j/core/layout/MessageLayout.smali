.class public Lorg/apache/logging/log4j/core/layout/MessageLayout;
.super Lorg/apache/logging/log4j/core/layout/AbstractLayout;
.source "MessageLayout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/core/layout/AbstractLayout<",
        "Lorg/apache/logging/log4j/message/Message;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "layout"
    name = "MessageLayout"
    printObject = true
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lorg/apache/logging/log4j/core/layout/AbstractLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;[B[B)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;[B[B)V
    .locals 0
    .param p1, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "header"    # [B
    .param p3, "footer"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "configuration",
            "header",
            "footer"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/layout/AbstractLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;[B[B)V

    .line 44
    return-void
.end method

.method public static createLayout()Lorg/apache/logging/log4j/core/Layout;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/logging/log4j/core/Layout<",
            "*>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 63
    new-instance v0, Lorg/apache/logging/log4j/core/layout/MessageLayout;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/layout/MessageLayout;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public toByteArray(Lorg/apache/logging/log4j/core/LogEvent;)[B
    .locals 1
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/io/Serializable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "event"
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/layout/MessageLayout;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/message/Message;

    move-result-object p1

    return-object p1
.end method

.method public toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/message/Message;
    .locals 1
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 53
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    return-object v0
.end method
