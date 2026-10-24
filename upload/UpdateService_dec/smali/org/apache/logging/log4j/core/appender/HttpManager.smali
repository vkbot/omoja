.class public abstract Lorg/apache/logging/log4j/core/appender/HttpManager;
.super Lorg/apache/logging/log4j/core/appender/AbstractManager;
.source "HttpManager.java"


# instance fields
.field private final configuration:Lorg/apache/logging/log4j/core/config/Configuration;


# direct methods
.method protected constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;)V
    .locals 1
    .param p1, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "loggerContext"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "configuration",
            "loggerContext",
            "name"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p2, p3}, Lorg/apache/logging/log4j/core/appender/AbstractManager;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;)V

    .line 32
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/core/config/Configuration;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/HttpManager;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 33
    return-void
.end method


# virtual methods
.method public getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/HttpManager;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    return-object v0
.end method

.method public abstract send(Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/LogEvent;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layout",
            "event"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/Layout<",
            "*>;",
            "Lorg/apache/logging/log4j/core/LogEvent;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public startup()V
    .locals 0

    .line 41
    return-void
.end method
