.class public Lorg/apache/logging/log4j/core/appender/ConfigurationFactoryData;
.super Ljava/lang/Object;
.source "ConfigurationFactoryData.java"


# instance fields
.field public final configuration:Lorg/apache/logging/log4j/core/config/Configuration;


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;)V
    .locals 0
    .param p1, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/ConfigurationFactoryData;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 34
    return-void
.end method


# virtual methods
.method public getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/ConfigurationFactoryData;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    return-object v0
.end method

.method public getLoggerContext()Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/ConfigurationFactoryData;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getLoggerContext()Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
