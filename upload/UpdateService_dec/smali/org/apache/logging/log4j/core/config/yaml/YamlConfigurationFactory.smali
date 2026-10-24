.class public Lorg/apache/logging/log4j/core/config/yaml/YamlConfigurationFactory;
.super Lorg/apache/logging/log4j/core/config/ConfigurationFactory;
.source "YamlConfigurationFactory.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/Order;
    value = 0x7
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "ConfigurationFactory"
    name = "YamlConfigurationFactory"
.end annotation


# static fields
.field private static final SUFFIXES:[Ljava/lang/String;

.field private static final dependencies:[Ljava/lang/String;


# instance fields
.field private final isActive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 34
    const-string v0, ".yml"

    const-string v1, ".yaml"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/config/yaml/YamlConfigurationFactory;->SUFFIXES:[Ljava/lang/String;

    .line 36
    const-string v0, "com.fasterxml.jackson.databind.ObjectMapper"

    const-string v1, "com.fasterxml.jackson.databind.JsonNode"

    const-string v2, "com.fasterxml.jackson.core.JsonParser"

    const-string v3, "com.fasterxml.jackson.dataformat.yaml.YAMLFactory"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/config/yaml/YamlConfigurationFactory;->dependencies:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 45
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;-><init>()V

    .line 46
    sget-object v0, Lorg/apache/logging/log4j/core/config/yaml/YamlConfigurationFactory;->dependencies:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 47
    .local v4, "dependency":Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/logging/log4j/core/util/Loader;->isClassAvailable(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 48
    sget-object v0, Lorg/apache/logging/log4j/core/config/yaml/YamlConfigurationFactory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Missing dependencies for Yaml support, ConfigurationFactory {} is inactive"

    invoke-interface {v0, v3, v1}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    iput-boolean v2, p0, Lorg/apache/logging/log4j/core/config/yaml/YamlConfigurationFactory;->isActive:Z

    .line 50
    return-void

    .line 46
    .end local v4    # "dependency":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 53
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/config/yaml/YamlConfigurationFactory;->isActive:Z

    .line 54
    return-void
.end method


# virtual methods
.method public getConfiguration(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)Lorg/apache/logging/log4j/core/config/Configuration;
    .locals 1
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

    .line 63
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/config/yaml/YamlConfigurationFactory;->isActive:Z

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x0

    return-object v0

    .line 66
    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/core/config/yaml/YamlConfiguration;

    invoke-direct {v0, p1, p2}, Lorg/apache/logging/log4j/core/config/yaml/YamlConfiguration;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)V

    return-object v0
.end method

.method public getSupportedTypes()[Ljava/lang/String;
    .locals 1

    .line 71
    sget-object v0, Lorg/apache/logging/log4j/core/config/yaml/YamlConfigurationFactory;->SUFFIXES:[Ljava/lang/String;

    return-object v0
.end method

.method protected isActive()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/config/yaml/YamlConfigurationFactory;->isActive:Z

    return v0
.end method
