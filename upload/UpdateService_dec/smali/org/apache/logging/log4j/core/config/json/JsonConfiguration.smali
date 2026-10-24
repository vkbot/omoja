.class public Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;
.super Lorg/apache/logging/log4j/core/config/AbstractConfiguration;
.source "JsonConfiguration.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/config/Reconfigurable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$Status;,
        Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$ErrorType;
    }
.end annotation


# static fields
.field private static final VERBOSE_CLASSES:[Ljava/lang/String;


# instance fields
.field private root:Lcom/fasterxml/jackson/databind/JsonNode;

.field private final status:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-class v1, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->VERBOSE_CLASSES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)V
    .locals 12
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

    .line 56
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->status:Ljava/util/List;

    .line 57
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getFile()Ljava/io/File;

    move-result-object v0

    .line 60
    .local v0, "configFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .local v1, "configStream":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v1}, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .local v2, "buffer":[B
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 63
    .end local v1    # "configStream":Ljava/io/InputStream;
    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 64
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->getObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/io/InputStream;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->root:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 65
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 66
    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->root:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 67
    .local v5, "node":Lcom/fasterxml/jackson/databind/JsonNode;
    iput-object v5, p0, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->root:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 68
    .end local v5    # "node":Lcom/fasterxml/jackson/databind/JsonNode;
    goto :goto_0

    .line 70
    :cond_1
    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->rootNode:Lorg/apache/logging/log4j/core/config/Node;

    iget-object v5, p0, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->root:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-direct {p0, v3, v5}, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->processAttributes(Lorg/apache/logging/log4j/core/config/Node;Lcom/fasterxml/jackson/databind/JsonNode;)V

    .line 71
    new-instance v3, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;

    invoke-direct {v3}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;-><init>()V

    sget-object v5, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->VERBOSE_CLASSES:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->withVerboseClasses([Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;

    move-result-object v3

    .line 72
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->getDefaultStatus()Lorg/apache/logging/log4j/Level;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->withStatus(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;

    move-result-object v3

    .line 73
    .local v3, "statusConfig":Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;
    const/4 v5, 0x0

    .line 74
    .local v5, "monitorIntervalSeconds":I
    iget-object v6, p0, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->rootNode:Lorg/apache/logging/log4j/core/config/Node;

    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 75
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 76
    .local v8, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->getConfigurationStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v9

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 78
    .local v9, "value":Ljava/lang/String;
    const-string v10, "status"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 79
    invoke-virtual {v3, v9}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->withStatus(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;

    goto/16 :goto_3

    .line 80
    :cond_2
    const-string v10, "dest"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 81
    invoke-virtual {v3, v9}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->withDestination(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;

    goto/16 :goto_3

    .line 82
    :cond_3
    const-string v10, "shutdownHook"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 83
    const-string v10, "disable"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    move v10, v4

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    :goto_2
    iput-boolean v10, p0, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->isShutdownHookEnabled:Z

    goto :goto_3

    .line 84
    :cond_5
    const-string v10, "shutdownTimeout"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 85
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->shutdownTimeoutMillis:J

    goto :goto_3

    .line 86
    :cond_6
    const-string v10, "verbose"

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 87
    invoke-virtual {v3, v9}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->withVerbosity(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;

    goto :goto_3

    .line 88
    :cond_7
    const-string v10, "packages"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 89
    iget-object v10, p0, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->pluginPackages:Ljava/util/List;

    sget-object v11, Lorg/apache/logging/log4j/core/util/Patterns;->COMMA_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 90
    :cond_8
    const-string v10, "name"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 91
    invoke-virtual {p0, v9}, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->setName(Ljava/lang/String;)V

    goto :goto_3

    .line 92
    :cond_9
    const-string v10, "monitorInterval"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 93
    invoke-static {v9}, Lorg/apache/logging/log4j/core/util/Integers;->parseInt(Ljava/lang/String;)I

    move-result v10

    move v5, v10

    goto :goto_3

    .line 94
    :cond_a
    const-string v10, "advertiser"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 95
    const-string v10, "application/json"

    invoke-virtual {p0, v9, p2, v2, v10}, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->createAdvertiser(Ljava/lang/String;Lorg/apache/logging/log4j/core/config/ConfigurationSource;[BLjava/lang/String;)V

    .line 97
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_b
    :goto_3
    goto/16 :goto_1

    .line 98
    :cond_c
    invoke-virtual {p0, p0, p2, v5}, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->initializeWatchers(Lorg/apache/logging/log4j/core/config/Reconfigurable;Lorg/apache/logging/log4j/core/config/ConfigurationSource;I)V

    .line 99
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->initialize()V

    .line 100
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    .line 101
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->setName(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 105
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v3    # "statusConfig":Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;
    .end local v5    # "monitorIntervalSeconds":I
    :cond_d
    goto :goto_5

    .line 60
    .end local v2    # "buffer":[B
    .local v1, "configStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    .end local v0    # "configFile":Ljava/io/File;
    .end local v1    # "configStream":Ljava/io/InputStream;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;
    .end local p1    # "loggerContext":Lorg/apache/logging/log4j/core/LoggerContext;
    .end local p2    # "configSource":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 62
    .restart local v0    # "configFile":Ljava/io/File;
    .restart local v1    # "configStream":Ljava/io/InputStream;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;
    .restart local p1    # "loggerContext":Lorg/apache/logging/log4j/core/LoggerContext;
    .restart local p2    # "configSource":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_e

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "configFile":Ljava/io/File;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;
    .end local p1    # "loggerContext":Lorg/apache/logging/log4j/core/LoggerContext;
    .end local p2    # "configSource":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    :cond_e
    :goto_4
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 103
    .end local v1    # "configStream":Ljava/io/InputStream;
    .restart local v0    # "configFile":Ljava/io/File;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;
    .restart local p1    # "loggerContext":Lorg/apache/logging/log4j/core/LoggerContext;
    .restart local p2    # "configSource":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    :catch_0
    move-exception v1

    .line 104
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_5
    return-void
.end method

.method private constructNode(Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Node;Lcom/fasterxml/jackson/databind/JsonNode;)Lorg/apache/logging/log4j/core/config/Node;
    .locals 19
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parent"    # Lorg/apache/logging/log4j/core/config/Node;
    .param p3, "jsonNode"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "parent",
            "jsonNode"
        }
    .end annotation

    .line 149
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->pluginManager:Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;

    invoke-virtual {v2, v1}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->getPluginType(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    move-result-object v2

    .line 150
    .local v2, "type":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    new-instance v3, Lorg/apache/logging/log4j/core/config/Node;

    move-object/from16 v4, p2

    invoke-direct {v3, v4, v1, v2}, Lorg/apache/logging/log4j/core/config/Node;-><init>(Lorg/apache/logging/log4j/core/config/Node;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;)V

    .line 151
    .local v3, "node":Lorg/apache/logging/log4j/core/config/Node;
    move-object/from16 v5, p3

    invoke-direct {v0, v3, v5}, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->processAttributes(Lorg/apache/logging/log4j/core/config/Node;Lcom/fasterxml/jackson/databind/JsonNode;)V

    .line 152
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/JsonNode;->fields()Ljava/util/Iterator;

    move-result-object v6

    .line 153
    .local v6, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v7

    .line 154
    .local v7, "children":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Node;>;"
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 155
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 156
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 157
    .local v9, "n":Lcom/fasterxml/jackson/databind/JsonNode;
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/JsonNode;->isObject()Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_1

    .line 197
    :cond_0
    sget-object v10, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/JsonNode;->getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    move-result-object v12

    const-string v13, "Node {} is of type {}"

    invoke-interface {v10, v13, v11, v12}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v18, v6

    goto/16 :goto_7

    .line 158
    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 159
    iget-object v10, v0, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->status:Ljava/util/List;

    new-instance v11, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$Status;

    sget-object v12, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$ErrorType;->CLASS_NOT_FOUND:Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$ErrorType;

    invoke-direct {v11, v1, v9, v12}, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$Status;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$ErrorType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_2
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    move-result v10

    const-string v11, "Processing node for object {}"

    if-eqz v10, :cond_9

    .line 162
    sget-object v10, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    const-string v13, "Processing node for array {}"

    invoke-interface {v10, v13, v12}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    move-result v12

    if-ge v10, v12, :cond_8

    .line 164
    invoke-virtual {v9, v10}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v12

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {v0, v12, v13}, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->getType(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 165
    .local v12, "pluginType":Ljava/lang/String;
    iget-object v13, v0, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->pluginManager:Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;

    invoke-virtual {v13, v12}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->getPluginType(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    move-result-object v13

    .line 166
    .local v13, "entryType":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    new-instance v14, Lorg/apache/logging/log4j/core/config/Node;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-direct {v14, v3, v15, v13}, Lorg/apache/logging/log4j/core/config/Node;-><init>(Lorg/apache/logging/log4j/core/config/Node;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;)V

    .line 167
    .local v14, "item":Lorg/apache/logging/log4j/core/config/Node;
    invoke-virtual {v9, v10}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v15

    invoke-direct {v0, v14, v15}, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->processAttributes(Lorg/apache/logging/log4j/core/config/Node;Lcom/fasterxml/jackson/databind/JsonNode;)V

    .line 168
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 169
    sget-object v15, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Processing {}[{}]"

    invoke-interface {v15, v5, v1, v4}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 171
    :cond_3
    sget-object v1, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v15, "Processing {} {}[{}]"

    invoke-interface {v1, v15, v12, v4, v5}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    :goto_3
    invoke-virtual {v9, v10}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->fields()Ljava/util/Iterator;

    move-result-object v1

    .line 174
    .local v1, "itemIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    invoke-virtual {v14}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v4

    .line 175
    .local v4, "itemChildren":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Node;>;"
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 176
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 177
    .local v5, "itemEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v15}, Lcom/fasterxml/jackson/databind/JsonNode;->isObject()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 178
    sget-object v15, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    move-object/from16 v16, v1

    .end local v1    # "itemIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    .local v16, "itemIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v15, v11, v1}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-direct {v0, v1, v14, v15}, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->constructNode(Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Node;Lcom/fasterxml/jackson/databind/JsonNode;)Lorg/apache/logging/log4j/core/config/Node;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v18, v6

    goto :goto_6

    .line 180
    .end local v16    # "itemIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    .restart local v1    # "itemIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    :cond_4
    move-object/from16 v16, v1

    .end local v1    # "itemIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    .restart local v16    # "itemIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 181
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 182
    .local v1, "array":Lcom/fasterxml/jackson/databind/JsonNode;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 183
    .local v15, "entryName":Ljava/lang/String;
    move-object/from16 v17, v5

    .end local v5    # "itemEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    .local v17, "itemEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    sget-object v5, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    move-object/from16 v18, v6

    .end local v6    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    .local v18, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    const-string v6, "Processing array for object {}"

    invoke-interface {v5, v6, v15}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_5
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 185
    invoke-virtual {v1, v5}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v6

    invoke-direct {v0, v15, v14, v6}, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->constructNode(Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Node;Lcom/fasterxml/jackson/databind/JsonNode;)Lorg/apache/logging/log4j/core/config/Node;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 180
    .end local v1    # "array":Lcom/fasterxml/jackson/databind/JsonNode;
    .end local v15    # "entryName":Ljava/lang/String;
    .end local v17    # "itemEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    .end local v18    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    .local v5, "itemEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    .restart local v6    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    :cond_5
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 189
    .end local v5    # "itemEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    .end local v6    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    .restart local v18    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    :cond_6
    :goto_6
    move-object/from16 v1, v16

    move-object/from16 v6, v18

    goto :goto_4

    .line 190
    .end local v16    # "itemIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    .end local v18    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    .local v1, "itemIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    .restart local v6    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    :cond_7
    move-object/from16 v16, v1

    move-object/from16 v18, v6

    .end local v1    # "itemIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    .end local v6    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    .restart local v16    # "itemIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    .restart local v18    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v4    # "itemChildren":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Node;>;"
    .end local v12    # "pluginType":Ljava/lang/String;
    .end local v13    # "entryType":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    .end local v14    # "item":Lorg/apache/logging/log4j/core/config/Node;
    .end local v16    # "itemIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    goto/16 :goto_2

    .end local v18    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    .restart local v6    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    :cond_8
    move-object/from16 v18, v6

    .end local v6    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    .end local v10    # "i":I
    .restart local v18    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    goto :goto_7

    .line 193
    .end local v18    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    .restart local v6    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    :cond_9
    move-object/from16 v18, v6

    .end local v6    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    .restart local v18    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    sget-object v1, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v11, v4}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1, v3, v9}, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->constructNode(Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Node;Lcom/fasterxml/jackson/databind/JsonNode;)Lorg/apache/logging/log4j/core/config/Node;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    .end local v9    # "n":Lcom/fasterxml/jackson/databind/JsonNode;
    :goto_7
    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, v18

    goto/16 :goto_0

    .line 202
    .end local v18    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    .restart local v6    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    :cond_a
    move-object/from16 v18, v6

    .end local v6    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    .restart local v18    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    if-nez v2, :cond_b

    .line 203
    const-string v1, "null"

    .local v1, "t":Ljava/lang/String;
    goto :goto_8

    .line 205
    .end local v1    # "t":Ljava/lang/String;
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getPluginClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    .restart local v1    # "t":Ljava/lang/String;
    :goto_8
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/Node;->getParent()Lorg/apache/logging/log4j/core/config/Node;

    move-result-object v4

    if-nez v4, :cond_c

    const-string v4, "null"

    goto :goto_9

    .line 209
    :cond_c
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/Node;->getParent()Lorg/apache/logging/log4j/core/config/Node;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    const-string v4, "root"

    goto :goto_9

    :cond_d
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/Node;->getParent()Lorg/apache/logging/log4j/core/config/Node;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_9
    nop

    .line 210
    .local v4, "p":Ljava/lang/String;
    sget-object v5, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "Returning {} with parent {} of type {}"

    invoke-interface {v5, v8, v6, v4, v1}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    return-object v3
.end method

.method private getType(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "node"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "node",
            "name"
        }
    .end annotation

    .line 215
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->fields()Ljava/util/Iterator;

    move-result-object v0

    .line 216
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 218
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "type"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 220
    .local v2, "n":Lcom/fasterxml/jackson/databind/JsonNode;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->isValueNode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 224
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    .end local v2    # "n":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_0
    goto :goto_0

    .line 225
    :cond_1
    return-object p2
.end method

.method private processAttributes(Lorg/apache/logging/log4j/core/config/Node;Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 6
    .param p1, "parent"    # Lorg/apache/logging/log4j/core/config/Node;
    .param p2, "node"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "parent",
            "node"
        }
    .end annotation

    .line 229
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v0

    .line 230
    .local v0, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JsonNode;->fields()Ljava/util/Iterator;

    move-result-object v1

    .line 231
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 233
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 234
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 235
    .local v3, "n":Lcom/fasterxml/jackson/databind/JsonNode;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->isValueNode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 236
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    .end local v3    # "n":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_0
    goto :goto_0

    .line 240
    :cond_1
    return-void
.end method


# virtual methods
.method protected getObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 3

    .line 109
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/core/JsonParser$Feature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    return-object v0
.end method

.method public reconfigure()Lorg/apache/logging/log4j/core/config/Configuration;
    .locals 5

    .line 137
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->getConfigurationSource()Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->resetInputStream()Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    move-result-object v1

    .line 138
    .local v1, "source":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    if-nez v1, :cond_0

    .line 139
    return-object v0

    .line 141
    :cond_0
    new-instance v2, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->getLoggerContext()Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 142
    .end local v1    # "source":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    :catch_0
    move-exception v1

    .line 143
    .local v1, "ex":Ljava/io/IOException;
    sget-object v2, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->getConfigurationSource()Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    move-result-object v3

    const-string v4, "Cannot locate file {}"

    invoke-interface {v2, v4, v3, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    .end local v1    # "ex":Ljava/io/IOException;
    return-object v0
.end method

.method public setup()V
    .locals 8

    .line 114
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->root:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->fields()Ljava/util/Iterator;

    move-result-object v0

    .line 115
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->rootNode:Lorg/apache/logging/log4j/core/config/Node;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v1

    .line 116
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Node;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 118
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 119
    .local v3, "n":Lcom/fasterxml/jackson/databind/JsonNode;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->isObject()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    sget-object v4, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Processing node for object {}"

    invoke-interface {v4, v6, v5}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->rootNode:Lorg/apache/logging/log4j/core/config/Node;

    invoke-direct {p0, v4, v5, v3}, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->constructNode(Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Node;Lcom/fasterxml/jackson/databind/JsonNode;)Lorg/apache/logging/log4j/core/config/Node;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 122
    :cond_0
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 123
    sget-object v4, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v5, "Arrays are not supported at the root configuration."

    invoke-interface {v4, v5}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 125
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    .end local v3    # "n":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_1
    :goto_1
    goto :goto_0

    .line 126
    :cond_2
    sget-object v2, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Completed parsing configuration"

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;)V

    .line 127
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->status:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 128
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->status:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$Status;

    .line 129
    .local v3, "s":Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$Status;
    sget-object v4, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-static {v3}, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$Status;->access$000(Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$Status;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$Status;->access$100(Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$Status;)Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$ErrorType;

    move-result-object v6

    const-string v7, "Error processing element {}: {}"

    invoke-interface {v4, v7, v5, v6}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    .end local v3    # "s":Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$Status;
    goto :goto_2

    .line 132
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;->getConfigurationSource()Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
