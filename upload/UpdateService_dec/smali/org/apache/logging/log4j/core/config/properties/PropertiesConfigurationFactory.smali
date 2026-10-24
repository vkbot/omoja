.class public Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationFactory;
.super Lorg/apache/logging/log4j/core/config/ConfigurationFactory;
.source "PropertiesConfigurationFactory.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/Order;
    value = 0x8
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "ConfigurationFactory"
    name = "PropertiesConfigurationFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getConfiguration(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)Lorg/apache/logging/log4j/core/config/Configuration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "loggerContext",
            "source"
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationFactory;->getConfiguration(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)Lorg/apache/logging/log4j/core/config/properties/PropertiesConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public getConfiguration(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)Lorg/apache/logging/log4j/core/config/properties/PropertiesConfiguration;
    .locals 5
    .param p1, "loggerContext"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p2, "source"    # Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "loggerContext",
            "source"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 47
    .local v0, "properties":Ljava/util/Properties;
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .local v1, "configStream":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 51
    .end local v1    # "configStream":Ljava/io/InputStream;
    :cond_0
    nop

    .line 52
    new-instance v1, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;

    invoke-direct {v1}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;-><init>()V

    .line 53
    invoke-virtual {v1, p2}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->setConfigurationSource(Lorg/apache/logging/log4j/core/config/ConfigurationSource;)Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;

    move-result-object v1

    .line 54
    invoke-virtual {v1, v0}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->setRootProperties(Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;

    move-result-object v1

    .line 55
    invoke-virtual {v1, p1}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->setLoggerContext(Lorg/apache/logging/log4j/core/LoggerContext;)Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->build()Lorg/apache/logging/log4j/core/config/properties/PropertiesConfiguration;

    move-result-object v1

    .line 52
    return-object v1

    .line 47
    .restart local v1    # "configStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    .end local v0    # "properties":Ljava/util/Properties;
    .end local v1    # "configStream":Ljava/io/InputStream;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationFactory;
    .end local p1    # "loggerContext":Lorg/apache/logging/log4j/core/LoggerContext;
    .end local p2    # "source":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 49
    .restart local v0    # "properties":Ljava/util/Properties;
    .restart local v1    # "configStream":Ljava/io/InputStream;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationFactory;
    .restart local p1    # "loggerContext":Lorg/apache/logging/log4j/core/LoggerContext;
    .restart local p2    # "source":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "properties":Ljava/util/Properties;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationFactory;
    .end local p1    # "loggerContext":Lorg/apache/logging/log4j/core/LoggerContext;
    .end local p2    # "source":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    :cond_1
    :goto_0
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v1    # "configStream":Ljava/io/InputStream;
    .restart local v0    # "properties":Ljava/util/Properties;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationFactory;
    .restart local p1    # "loggerContext":Lorg/apache/logging/log4j/core/LoggerContext;
    .restart local p2    # "source":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    :catch_0
    move-exception v1

    .line 50
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Lorg/apache/logging/log4j/core/config/ConfigurationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/logging/log4j/core/config/ConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected getSupportedTypes()[Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, ".properties"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
