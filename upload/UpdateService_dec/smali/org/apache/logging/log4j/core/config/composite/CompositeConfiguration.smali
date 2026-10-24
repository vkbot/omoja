.class public Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;
.super Lorg/apache/logging/log4j/core/config/AbstractConfiguration;
.source "CompositeConfiguration.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/config/Reconfigurable;


# static fields
.field public static final MERGE_STRATEGY_PROPERTY:Ljava/lang/String; = "log4j.mergeStrategy"

.field private static final VERBOSE_CLASSES:[Ljava/lang/String;


# instance fields
.field private final configurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lorg/apache/logging/log4j/core/config/AbstractConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mergeStrategy:Lorg/apache/logging/log4j/core/config/composite/MergeStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-class v1, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->VERBOSE_CLASSES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "configurations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/logging/log4j/core/config/AbstractConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p1, "configurations":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/logging/log4j/core/config/AbstractConfiguration;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->getLoggerContext()Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v1

    sget-object v2, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->COMPOSITE_SOURCE:Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    invoke-direct {p0, v1, v2}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)V

    .line 65
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->getRootNode()Lorg/apache/logging/log4j/core/config/Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->rootNode:Lorg/apache/logging/log4j/core/config/Node;

    .line 66
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->configurations:Ljava/util/List;

    .line 67
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    const-class v1, Lorg/apache/logging/log4j/core/config/composite/DefaultMergeStrategy;

    .line 68
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 67
    const-string v2, "log4j.mergeStrategy"

    invoke-virtual {v0, v2, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "mergeStrategyClassName":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/Loader;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/config/composite/MergeStrategy;

    iput-object v1, p0, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->mergeStrategy:Lorg/apache/logging/log4j/core/config/composite/MergeStrategy;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_0

    .line 71
    :catch_0
    move-exception v1

    .line 73
    .local v1, "ex":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Lorg/apache/logging/log4j/core/config/composite/DefaultMergeStrategy;

    invoke-direct {v2}, Lorg/apache/logging/log4j/core/config/composite/DefaultMergeStrategy;-><init>()V

    iput-object v2, p0, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->mergeStrategy:Lorg/apache/logging/log4j/core/config/composite/MergeStrategy;

    .line 75
    .end local v1    # "ex":Ljava/lang/ReflectiveOperationException;
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;

    .line 76
    .local v2, "config":Lorg/apache/logging/log4j/core/config/AbstractConfiguration;
    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->mergeStrategy:Lorg/apache/logging/log4j/core/config/composite/MergeStrategy;

    iget-object v4, p0, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->rootNode:Lorg/apache/logging/log4j/core/config/Node;

    invoke-interface {v3, v4, v2}, Lorg/apache/logging/log4j/core/config/composite/MergeStrategy;->mergeRootProperties(Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/config/AbstractConfiguration;)V

    .line 77
    .end local v2    # "config":Lorg/apache/logging/log4j/core/config/AbstractConfiguration;
    goto :goto_1

    .line 78
    :cond_0
    new-instance v1, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;

    invoke-direct {v1}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;-><init>()V

    sget-object v2, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->VERBOSE_CLASSES:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->withVerboseClasses([Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;

    move-result-object v1

    .line 79
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->getDefaultStatus()Lorg/apache/logging/log4j/Level;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->withStatus(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;

    move-result-object v1

    .line 80
    .local v1, "statusConfig":Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->rootNode:Lorg/apache/logging/log4j/core/config/Node;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 81
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 82
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->getConfigurationStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, "value":Ljava/lang/String;
    const-string v6, "status"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 84
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->withStatus(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;

    goto :goto_3

    .line 85
    :cond_1
    const-string v6, "dest"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 86
    invoke-virtual {v1, v5}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->withDestination(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;

    goto :goto_3

    .line 87
    :cond_2
    const-string v6, "shutdownHook"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 88
    const-string v6, "disable"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    iput-boolean v6, p0, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->isShutdownHookEnabled:Z

    goto :goto_3

    .line 89
    :cond_3
    const-string v6, "shutdownTimeout"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 90
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->shutdownTimeoutMillis:J

    goto :goto_3

    .line 91
    :cond_4
    const-string v6, "verbose"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 92
    invoke-virtual {v1, v5}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->withVerbosity(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;

    goto :goto_3

    .line 93
    :cond_5
    const-string v6, "packages"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 94
    iget-object v6, p0, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->pluginPackages:Ljava/util/List;

    sget-object v7, Lorg/apache/logging/log4j/core/util/Patterns;->COMMA_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 95
    :cond_6
    const-string v6, "name"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 96
    invoke-virtual {p0, v5}, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->setName(Ljava/lang/String;)V

    .line 98
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_7
    :goto_3
    goto/16 :goto_2

    .line 99
    :cond_8
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->initialize()V

    .line 100
    return-void
.end method

.method private printNodes(Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Node;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "indent"    # Ljava/lang/String;
    .param p2, "node"    # Lorg/apache/logging/log4j/core/config/Node;
    .param p3, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "indent",
            "node",
            "sb"
        }
    .end annotation

    .line 173
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/Node;->getType()Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/config/Node;

    .line 176
    .local v1, "child":Lorg/apache/logging/log4j/core/config/Node;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1, p3}, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->printNodes(Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Node;Ljava/lang/StringBuilder;)V

    .line 177
    .end local v1    # "child":Lorg/apache/logging/log4j/core/config/Node;
    goto :goto_0

    .line 178
    :cond_0
    return-void
.end method

.method private staffChildConfiguration(Lorg/apache/logging/log4j/core/config/AbstractConfiguration;)V
    .locals 1
    .param p1, "childConfiguration"    # Lorg/apache/logging/log4j/core/config/AbstractConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "childConfiguration"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->pluginManager:Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;

    invoke-virtual {p1, v0}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->setPluginManager(Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;)V

    .line 168
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->scriptManager:Lorg/apache/logging/log4j/core/script/ScriptManager;

    invoke-virtual {p1, v0}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->setScriptManager(Lorg/apache/logging/log4j/core/script/ScriptManager;)V

    .line 169
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->setup()V

    .line 170
    return-void
.end method


# virtual methods
.method public reconfigure()Lorg/apache/logging/log4j/core/config/Configuration;
    .locals 10

    .line 143
    sget-object v0, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "Reconfiguring composite configuration"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;)V

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/AbstractConfiguration;>;"
    invoke-static {}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->getInstance()Lorg/apache/logging/log4j/core/config/ConfigurationFactory;

    move-result-object v1

    .line 146
    .local v1, "factory":Lorg/apache/logging/log4j/core/config/ConfigurationFactory;
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->configurations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;

    .line 147
    .local v3, "config":Lorg/apache/logging/log4j/core/config/AbstractConfiguration;
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->getConfigurationSource()Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    move-result-object v4

    .line 148
    .local v4, "source":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getURI()Ljava/net/URI;

    move-result-object v5

    .line 149
    .local v5, "sourceURI":Ljava/net/URI;
    move-object v6, v3

    .line 150
    .local v6, "currentConfig":Lorg/apache/logging/log4j/core/config/Configuration;
    if-nez v5, :cond_0

    .line 151
    sget-object v7, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 152
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->getName()Ljava/lang/String;

    move-result-object v8

    .line 151
    const-string v9, "Unable to determine URI for configuration {}, changes to it will be ignored"

    invoke-interface {v7, v9, v8}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 154
    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->getLoggerContext()Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v7

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8, v5}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->getConfiguration(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Ljava/net/URI;)Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v6

    .line 155
    if-nez v6, :cond_1

    .line 156
    sget-object v7, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Unable to reload configuration {}, changes to it will be ignored"

    invoke-interface {v7, v9, v8}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    :cond_1
    :goto_1
    move-object v7, v6

    check-cast v7, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    .end local v3    # "config":Lorg/apache/logging/log4j/core/config/AbstractConfiguration;
    .end local v4    # "source":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    .end local v5    # "sourceURI":Ljava/net/URI;
    .end local v6    # "currentConfig":Lorg/apache/logging/log4j/core/config/Configuration;
    goto :goto_0

    .line 163
    :cond_2
    new-instance v2, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;

    invoke-direct {v2, v0}, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method public setup()V
    .locals 19

    .line 104
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->configurations:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;

    .line 105
    .local v1, "targetConfiguration":Lorg/apache/logging/log4j/core/config/AbstractConfiguration;
    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->staffChildConfiguration(Lorg/apache/logging/log4j/core/config/AbstractConfiguration;)V

    .line 106
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->getWatchManager()Lorg/apache/logging/log4j/core/util/WatchManager;

    move-result-object v2

    .line 107
    .local v2, "watchManager":Lorg/apache/logging/log4j/core/util/WatchManager;
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->getWatchManager()Lorg/apache/logging/log4j/core/util/WatchManager;

    move-result-object v3

    .line 108
    .local v3, "targetWatchManager":Lorg/apache/logging/log4j/core/util/WatchManager;
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/util/WatchManager;->getIntervalSeconds()I

    move-result v4

    if-lez v4, :cond_0

    .line 109
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/util/WatchManager;->getIntervalSeconds()I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/apache/logging/log4j/core/util/WatchManager;->setIntervalSeconds(I)V

    .line 110
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/util/WatchManager;->getConfigurationWatchers()Ljava/util/Map;

    move-result-object v4

    .line 111
    .local v4, "watchers":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/logging/log4j/core/util/Source;Lorg/apache/logging/log4j/core/util/Watcher;>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 112
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/logging/log4j/core/util/Source;Lorg/apache/logging/log4j/core/util/Watcher;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/logging/log4j/core/util/Source;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/logging/log4j/core/util/Watcher;

    iget-object v9, v0, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->listeners:Ljava/util/List;

    .line 113
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/logging/log4j/core/util/Watcher;

    invoke-interface {v10}, Lorg/apache/logging/log4j/core/util/Watcher;->getLastModified()J

    move-result-wide v10

    .line 112
    invoke-interface {v8, v0, v9, v10, v11}, Lorg/apache/logging/log4j/core/util/Watcher;->newWatcher(Lorg/apache/logging/log4j/core/config/Reconfigurable;Ljava/util/List;J)Lorg/apache/logging/log4j/core/util/Watcher;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/apache/logging/log4j/core/util/WatchManager;->watch(Lorg/apache/logging/log4j/core/util/Source;Lorg/apache/logging/log4j/core/util/Watcher;)V

    .line 114
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/logging/log4j/core/util/Source;Lorg/apache/logging/log4j/core/util/Watcher;>;"
    goto :goto_0

    .line 116
    .end local v4    # "watchers":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/logging/log4j/core/util/Source;Lorg/apache/logging/log4j/core/util/Watcher;>;"
    :cond_0
    iget-object v4, v0, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->configurations:Ljava/util/List;

    const/4 v5, 0x1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v4, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;

    .line 117
    .local v5, "sourceConfiguration":Lorg/apache/logging/log4j/core/config/AbstractConfiguration;
    invoke-direct {v0, v5}, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->staffChildConfiguration(Lorg/apache/logging/log4j/core/config/AbstractConfiguration;)V

    .line 118
    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->getRootNode()Lorg/apache/logging/log4j/core/config/Node;

    move-result-object v6

    .line 119
    .local v6, "sourceRoot":Lorg/apache/logging/log4j/core/config/Node;
    iget-object v7, v0, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->mergeStrategy:Lorg/apache/logging/log4j/core/config/composite/MergeStrategy;

    iget-object v8, v0, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->rootNode:Lorg/apache/logging/log4j/core/config/Node;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->getPluginManager()Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;

    move-result-object v9

    invoke-interface {v7, v8, v6, v9}, Lorg/apache/logging/log4j/core/config/composite/MergeStrategy;->mergConfigurations(Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;)V

    .line 120
    sget-object v7, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    sget-object v8, Lorg/apache/logging/log4j/Level;->ALL:Lorg/apache/logging/log4j/Level;

    invoke-interface {v7, v8}, Lorg/apache/logging/log4j/Logger;->isEnabled(Lorg/apache/logging/log4j/Level;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 121
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v7, "sb":Ljava/lang/StringBuilder;
    iget-object v8, v0, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->rootNode:Lorg/apache/logging/log4j/core/config/Node;

    const-string v9, ""

    invoke-direct {v0, v9, v8, v7}, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->printNodes(Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Node;Ljava/lang/StringBuilder;)V

    .line 123
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->getWatchManager()Lorg/apache/logging/log4j/core/util/WatchManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/logging/log4j/core/util/WatchManager;->getIntervalSeconds()I

    move-result v7

    .line 126
    .local v7, "monitorInterval":I
    if-lez v7, :cond_5

    .line 127
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/util/WatchManager;->getIntervalSeconds()I

    move-result v8

    .line 128
    .local v8, "currentInterval":I
    if-lez v8, :cond_2

    if-ge v7, v8, :cond_3

    .line 129
    :cond_2
    invoke-virtual {v2, v7}, Lorg/apache/logging/log4j/core/util/WatchManager;->setIntervalSeconds(I)V

    .line 131
    :cond_3
    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->getWatchManager()Lorg/apache/logging/log4j/core/util/WatchManager;

    move-result-object v9

    .line 132
    .local v9, "sourceWatchManager":Lorg/apache/logging/log4j/core/util/WatchManager;
    invoke-virtual {v9}, Lorg/apache/logging/log4j/core/util/WatchManager;->getConfigurationWatchers()Ljava/util/Map;

    move-result-object v10

    .line 133
    .local v10, "watchers":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/logging/log4j/core/util/Source;Lorg/apache/logging/log4j/core/util/Watcher;>;"
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 134
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/logging/log4j/core/util/Source;Lorg/apache/logging/log4j/core/util/Watcher;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/logging/log4j/core/util/Source;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/logging/log4j/core/util/Watcher;

    iget-object v15, v0, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->listeners:Ljava/util/List;

    .line 135
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/logging/log4j/core/util/Watcher;

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .end local v3    # "targetWatchManager":Lorg/apache/logging/log4j/core/util/WatchManager;
    .local v17, "targetWatchManager":Lorg/apache/logging/log4j/core/util/WatchManager;
    invoke-interface/range {v16 .. v16}, Lorg/apache/logging/log4j/core/util/Watcher;->getLastModified()J

    move-result-wide v3

    .line 134
    invoke-interface {v14, v0, v15, v3, v4}, Lorg/apache/logging/log4j/core/util/Watcher;->newWatcher(Lorg/apache/logging/log4j/core/config/Reconfigurable;Ljava/util/List;J)Lorg/apache/logging/log4j/core/util/Watcher;

    move-result-object v3

    invoke-virtual {v2, v13, v3}, Lorg/apache/logging/log4j/core/util/WatchManager;->watch(Lorg/apache/logging/log4j/core/util/Source;Lorg/apache/logging/log4j/core/util/Watcher;)V

    .line 136
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/logging/log4j/core/util/Source;Lorg/apache/logging/log4j/core/util/Watcher;>;"
    move-object/from16 v3, v17

    move-object/from16 v4, v18

    goto :goto_2

    .line 133
    .end local v17    # "targetWatchManager":Lorg/apache/logging/log4j/core/util/WatchManager;
    .restart local v3    # "targetWatchManager":Lorg/apache/logging/log4j/core/util/WatchManager;
    :cond_4
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .end local v3    # "targetWatchManager":Lorg/apache/logging/log4j/core/util/WatchManager;
    .restart local v17    # "targetWatchManager":Lorg/apache/logging/log4j/core/util/WatchManager;
    goto :goto_3

    .line 126
    .end local v8    # "currentInterval":I
    .end local v9    # "sourceWatchManager":Lorg/apache/logging/log4j/core/util/WatchManager;
    .end local v10    # "watchers":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/logging/log4j/core/util/Source;Lorg/apache/logging/log4j/core/util/Watcher;>;"
    .end local v17    # "targetWatchManager":Lorg/apache/logging/log4j/core/util/WatchManager;
    .restart local v3    # "targetWatchManager":Lorg/apache/logging/log4j/core/util/WatchManager;
    :cond_5
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .line 138
    .end local v3    # "targetWatchManager":Lorg/apache/logging/log4j/core/util/WatchManager;
    .end local v5    # "sourceConfiguration":Lorg/apache/logging/log4j/core/config/AbstractConfiguration;
    .end local v6    # "sourceRoot":Lorg/apache/logging/log4j/core/config/Node;
    .end local v7    # "monitorInterval":I
    .restart local v17    # "targetWatchManager":Lorg/apache/logging/log4j/core/util/WatchManager;
    :goto_3
    move-object/from16 v3, v17

    move-object/from16 v4, v18

    goto/16 :goto_1

    .line 139
    .end local v17    # "targetWatchManager":Lorg/apache/logging/log4j/core/util/WatchManager;
    .restart local v3    # "targetWatchManager":Lorg/apache/logging/log4j/core/util/WatchManager;
    :cond_6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [configurations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->configurations:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mergeStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->mergeStrategy:Lorg/apache/logging/log4j/core/config/composite/MergeStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rootNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->rootNode:Lorg/apache/logging/log4j/core/config/Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", listeners="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->listeners:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pluginPackages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->pluginPackages:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pluginManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->pluginManager:Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isShutdownHookEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->isShutdownHookEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shutdownTimeoutMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->shutdownTimeoutMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", scriptManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;->scriptManager:Lorg/apache/logging/log4j/core/script/ScriptManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
