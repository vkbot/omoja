.class public Lorg/apache/logging/log4j/core/config/properties/PropertiesConfiguration;
.super Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;
.source "PropertiesConfiguration.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/config/Reconfigurable;


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/ConfigurationSource;Lorg/apache/logging/log4j/core/config/builder/api/Component;)V
    .locals 0
    .param p1, "loggerContext"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p2, "source"    # Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    .param p3, "root"    # Lorg/apache/logging/log4j/core/config/builder/api/Component;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "loggerContext",
            "source",
            "root"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/ConfigurationSource;Lorg/apache/logging/log4j/core/config/builder/api/Component;)V

    .line 37
    return-void
.end method


# virtual methods
.method public reconfigure()Lorg/apache/logging/log4j/core/config/Configuration;
    .locals 6

    .line 42
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfiguration;->getConfigurationSource()Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->resetInputStream()Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    move-result-object v1

    .line 43
    .local v1, "source":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    if-nez v1, :cond_0

    .line 44
    return-object v0

    .line 46
    :cond_0
    new-instance v2, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationFactory;

    invoke-direct {v2}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationFactory;-><init>()V

    .line 47
    .local v2, "factory":Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationFactory;
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfiguration;->getLoggerContext()Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationFactory;->getConfiguration(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)Lorg/apache/logging/log4j/core/config/properties/PropertiesConfiguration;

    move-result-object v3

    .line 48
    .local v3, "config":Lorg/apache/logging/log4j/core/config/properties/PropertiesConfiguration;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfiguration;->getState()Lorg/apache/logging/log4j/core/LifeCycle$State;

    move-result-object v4

    sget-object v5, Lorg/apache/logging/log4j/core/LifeCycle$State;->INITIALIZING:Lorg/apache/logging/log4j/core/LifeCycle$State;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v3

    :cond_2
    :goto_0
    return-object v0

    .line 49
    .end local v1    # "source":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    .end local v2    # "factory":Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationFactory;
    .end local v3    # "config":Lorg/apache/logging/log4j/core/config/properties/PropertiesConfiguration;
    :catch_0
    move-exception v1

    .line 50
    .local v1, "ex":Ljava/io/IOException;
    sget-object v2, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfiguration;->getConfigurationSource()Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    move-result-object v3

    const-string v4, "Cannot locate file {}: {}"

    invoke-interface {v2, v4, v3, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    .end local v1    # "ex":Ljava/io/IOException;
    return-object v0
.end method
