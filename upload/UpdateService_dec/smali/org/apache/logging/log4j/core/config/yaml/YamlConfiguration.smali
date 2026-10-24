.class public Lorg/apache/logging/log4j/core/config/yaml/YamlConfiguration;
.super Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;
.source "YamlConfiguration.java"


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)V
    .locals 0
    .param p1, "loggerContext"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p2, "configSource"    # Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "loggerContext",
            "configSource"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected getObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 3

    .line 38
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    new-instance v1, Lcom/fasterxml/jackson/dataformat/yaml/YAMLFactory;

    invoke-direct {v1}, Lcom/fasterxml/jackson/dataformat/yaml/YAMLFactory;-><init>()V

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>(Lcom/fasterxml/jackson/core/JsonFactory;)V

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/core/JsonParser$Feature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    return-object v0
.end method

.method public reconfigure()Lorg/apache/logging/log4j/core/config/Configuration;
    .locals 5

    .line 44
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/yaml/YamlConfiguration;->getConfigurationSource()Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->resetInputStream()Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    move-result-object v1

    .line 45
    .local v1, "source":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    if-nez v1, :cond_0

    .line 46
    return-object v0

    .line 48
    :cond_0
    new-instance v2, Lorg/apache/logging/log4j/core/config/yaml/YamlConfiguration;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/yaml/YamlConfiguration;->getLoggerContext()Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/logging/log4j/core/config/yaml/YamlConfiguration;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 49
    .end local v1    # "source":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    :catch_0
    move-exception v1

    .line 50
    .local v1, "ex":Ljava/io/IOException;
    sget-object v2, Lorg/apache/logging/log4j/core/config/yaml/YamlConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/yaml/YamlConfiguration;->getConfigurationSource()Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    move-result-object v3

    const-string v4, "Cannot locate file {}"

    invoke-interface {v2, v4, v3, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    .end local v1    # "ex":Ljava/io/IOException;
    return-object v0
.end method
