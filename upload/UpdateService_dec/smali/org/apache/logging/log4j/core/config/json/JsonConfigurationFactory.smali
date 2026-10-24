.class public Lorg/apache/logging/log4j/core/config/json/JsonConfigurationFactory;
.super Lorg/apache/logging/log4j/core/config/ConfigurationFactory;
.source "JsonConfigurationFactory.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/Order;
    value = 0x6
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "ConfigurationFactory"
    name = "JsonConfigurationFactory"
.end annotation


# static fields
.field private static final SUFFIXES:[Ljava/lang/String;

.field private static final dependencies:[Ljava/lang/String;


# instance fields
.field private final isActive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    const-string v0, ".json"

    const-string v1, ".jsn"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/config/json/JsonConfigurationFactory;->SUFFIXES:[Ljava/lang/String;

    .line 36
    const-string v0, "com.fasterxml.jackson.databind.ObjectMapper"

    const-string v1, "com.fasterxml.jackson.databind.JsonNode"

    const-string v2, "com.fasterxml.jackson.core.JsonParser"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/config/json/JsonConfigurationFactory;->dependencies:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 44
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;-><init>()V

    .line 45
    sget-object v0, Lorg/apache/logging/log4j/core/config/json/JsonConfigurationFactory;->dependencies:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 46
    .local v4, "dependency":Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/logging/log4j/core/util/Loader;->isClassAvailable(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 47
    sget-object v0, Lorg/apache/logging/log4j/core/config/json/JsonConfigurationFactory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Missing dependencies for Json support, ConfigurationFactory {} is inactive"

    invoke-interface {v0, v3, v1}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    iput-boolean v2, p0, Lorg/apache/logging/log4j/core/config/json/JsonConfigurationFactory;->isActive:Z

    .line 49
    return-void

    .line 45
    .end local v4    # "dependency":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 52
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/config/json/JsonConfigurationFactory;->isActive:Z

    .line 53
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

    .line 62
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/config/json/JsonConfigurationFactory;->isActive:Z

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;

    invoke-direct {v0, p1, p2}, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)V

    return-object v0
.end method

.method public getSupportedTypes()[Ljava/lang/String;
    .locals 1

    .line 70
    sget-object v0, Lorg/apache/logging/log4j/core/config/json/JsonConfigurationFactory;->SUFFIXES:[Ljava/lang/String;

    return-object v0
.end method

.method protected isActive()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/config/json/JsonConfigurationFactory;->isActive:Z

    return v0
.end method
