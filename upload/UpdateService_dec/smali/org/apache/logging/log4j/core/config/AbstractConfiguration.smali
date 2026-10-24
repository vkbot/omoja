.class public abstract Lorg/apache/logging/log4j/core/config/AbstractConfiguration;
.super Lorg/apache/logging/log4j/core/filter/AbstractFilterable;
.source "AbstractConfiguration.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/config/Configuration;


# static fields
.field private static final BUF_SIZE:I = 0x4000


# instance fields
.field private advertisement:Ljava/lang/Object;

.field private advertiser:Lorg/apache/logging/log4j/core/net/Advertiser;

.field private advertiserNode:Lorg/apache/logging/log4j/core/config/Node;

.field private appenders:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Appender;",
            ">;"
        }
    .end annotation
.end field

.field private asyncLoggerConfigDisruptor:Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;

.field private final componentMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final configurationScheduler:Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;

.field private final configurationSource:Lorg/apache/logging/log4j/core/config/ConfigurationSource;

.field private final configurationStrSubstitutor:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

.field private customLevels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/CustomLevelConfig;",
            ">;"
        }
    .end annotation
.end field

.field protected isShutdownHookEnabled:Z

.field protected final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/ConfigurationListener;",
            ">;"
        }
    .end annotation
.end field

.field private loggerConfigs:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/config/LoggerConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/apache/logging/log4j/core/LoggerContext;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private nanoClock:Lorg/apache/logging/log4j/core/util/NanoClock;

.field protected pluginManager:Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;

.field protected final pluginPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final propertyMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private root:Lorg/apache/logging/log4j/core/config/LoggerConfig;

.field protected rootNode:Lorg/apache/logging/log4j/core/config/Node;

.field private final runtimeStrSubstitutor:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

.field protected scriptManager:Lorg/apache/logging/log4j/core/script/ScriptManager;

.field protected shutdownTimeoutMillis:J

.field private final tempLookup:Lorg/apache/logging/log4j/core/lookup/StrLookup;

.field private final watchManager:Lorg/apache/logging/log4j/core/util/WatchManager;


# direct methods
.method protected constructor <init>(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)V
    .locals 3
    .param p1, "loggerContext"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p2, "configurationSource"    # Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "loggerContext",
            "configurationSource"
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;-><init>()V

    .line 95
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->listeners:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->pluginPackages:Ljava/util/List;

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->isShutdownHookEnabled:Z

    .line 125
    new-instance v0, Lorg/apache/logging/log4j/core/config/DefaultAdvertiser;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/config/DefaultAdvertiser;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->advertiser:Lorg/apache/logging/log4j/core/net/Advertiser;

    .line 129
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->appenders:Ljava/util/concurrent/ConcurrentMap;

    .line 130
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->loggerConfigs:Ljava/util/concurrent/ConcurrentMap;

    .line 131
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->customLevels:Ljava/util/List;

    .line 132
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->propertyMap:Ljava/util/concurrent/ConcurrentMap;

    .line 133
    new-instance v0, Lorg/apache/logging/log4j/core/lookup/Interpolator;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->propertyMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/lookup/Interpolator;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->tempLookup:Lorg/apache/logging/log4j/core/lookup/StrLookup;

    .line 134
    new-instance v0, Lorg/apache/logging/log4j/core/lookup/RuntimeStrSubstitutor;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->tempLookup:Lorg/apache/logging/log4j/core/lookup/StrLookup;

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/lookup/RuntimeStrSubstitutor;-><init>(Lorg/apache/logging/log4j/core/lookup/StrLookup;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->runtimeStrSubstitutor:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    .line 135
    new-instance v0, Lorg/apache/logging/log4j/core/lookup/ConfigurationStrSubstitutor;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->runtimeStrSubstitutor:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/lookup/ConfigurationStrSubstitutor;-><init>(Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->configurationStrSubstitutor:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    .line 136
    new-instance v0, Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->root:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    .line 137
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->componentMap:Ljava/util/concurrent/ConcurrentMap;

    .line 139
    new-instance v0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->configurationScheduler:Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;

    .line 140
    new-instance v0, Lorg/apache/logging/log4j/core/util/WatchManager;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->configurationScheduler:Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/util/WatchManager;-><init>(Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->watchManager:Lorg/apache/logging/log4j/core/util/WatchManager;

    .line 142
    new-instance v0, Lorg/apache/logging/log4j/core/util/DummyNanoClock;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/util/DummyNanoClock;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->nanoClock:Lorg/apache/logging/log4j/core/util/NanoClock;

    .line 149
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->loggerContext:Ljava/lang/ref/WeakReference;

    .line 152
    const-string v0, "configurationSource is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->configurationSource:Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    .line 153
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->componentMap:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->propertyMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v2, "ContextProperties"

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance v0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;

    const-string v1, "Core"

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->pluginManager:Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;

    .line 155
    new-instance v0, Lorg/apache/logging/log4j/core/config/Node;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/config/Node;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->rootNode:Lorg/apache/logging/log4j/core/config/Node;

    .line 156
    sget-object v0, Lorg/apache/logging/log4j/core/LifeCycle$State;->INITIALIZING:Lorg/apache/logging/log4j/core/LifeCycle$State;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->setState(Lorg/apache/logging/log4j/core/LifeCycle$State;)V

    .line 157
    return-void
.end method

.method private static createPluginCollection(Lorg/apache/logging/log4j/core/config/Node;)Ljava/util/Collection;
    .locals 5
    .param p0, "node"    # Lorg/apache/logging/log4j/core/config/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "node"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/Node;",
            ")",
            "Ljava/util/Collection<",
            "*>;"
        }
    .end annotation

    .line 1135
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v0

    .line 1136
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Node;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1137
    .local v1, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/core/config/Node;

    .line 1138
    .local v3, "child":Lorg/apache/logging/log4j/core/config/Node;
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/Node;->getObject()Ljava/lang/Object;

    move-result-object v4

    .line 1139
    .local v4, "object":Ljava/lang/Object;
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1140
    .end local v3    # "child":Lorg/apache/logging/log4j/core/config/Node;
    .end local v4    # "object":Ljava/lang/Object;
    goto :goto_0

    .line 1141
    :cond_0
    return-object v1
.end method

.method private static createPluginMap(Lorg/apache/logging/log4j/core/config/Node;)Ljava/util/Map;
    .locals 5
    .param p0, "node"    # Lorg/apache/logging/log4j/core/config/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "node"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/Node;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 1126
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1127
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/config/Node;

    .line 1128
    .local v2, "child":Lorg/apache/logging/log4j/core/config/Node;
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/Node;->getObject()Ljava/lang/Object;

    move-result-object v3

    .line 1129
    .local v3, "object":Ljava/lang/Object;
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    .end local v2    # "child":Lorg/apache/logging/log4j/core/config/Node;
    .end local v3    # "object":Ljava/lang/Object;
    goto :goto_0

    .line 1131
    :cond_0
    return-object v0
.end method

.method private createPluginObject(Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/Object;
    .locals 5
    .param p2, "node"    # Lorg/apache/logging/log4j/core/config/Node;
    .param p3, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "type",
            "node",
            "event"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<",
            "*>;",
            "Lorg/apache/logging/log4j/core/config/Node;",
            "Lorg/apache/logging/log4j/core/LogEvent;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1104
    .local p1, "type":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getPluginClass()Ljava/lang/Class;

    move-result-object v0

    .line 1106
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1108
    :try_start_0
    invoke-static {p2}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->createPluginMap(Lorg/apache/logging/log4j/core/config/Node;)Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1109
    :catch_0
    move-exception v1

    .line 1110
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getElementName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unable to create Map for {} of class {}"

    invoke-interface {v2, v4, v3, v0, v1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1114
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1116
    :try_start_1
    invoke-static {p2}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->createPluginCollection(Lorg/apache/logging/log4j/core/config/Node;)Ljava/util/Collection;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 1117
    :catch_1
    move-exception v1

    .line 1118
    .restart local v1    # "e":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getElementName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unable to create List for {} of class {}"

    invoke-interface {v2, v4, v3, v0, v1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1122
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;

    invoke-direct {v1, p1}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;-><init>(Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;)V

    invoke-virtual {v1, p0}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->withConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->withConfigurationNode(Lorg/apache/logging/log4j/core/config/Node;)Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->forLogEvent(Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->build()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private getAsyncAppenders([Lorg/apache/logging/log4j/core/Appender;)Ljava/util/List;
    .locals 3
    .param p1, "all"    # [Lorg/apache/logging/log4j/core/Appender;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "all"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/logging/log4j/core/Appender;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/Appender;",
            ">;"
        }
    .end annotation

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/Appender;>;"
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 442
    aget-object v2, p1, v1

    instance-of v2, v2, Lorg/apache/logging/log4j/core/appender/AsyncAppender;

    if-eqz v2, :cond_0

    .line 443
    aget-object v2, p1, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 446
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static getDefaultLevel()Lorg/apache/logging/log4j/Level;
    .locals 3

    .line 718
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    sget-object v1, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    .line 719
    invoke-virtual {v1}, Lorg/apache/logging/log4j/Level;->name()Ljava/lang/String;

    move-result-object v1

    .line 718
    const-string v2, "org.apache.logging.log4j.level"

    invoke-virtual {v0, v2, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 720
    .local v0, "levelName":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/logging/log4j/Level;->valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/Level;

    move-result-object v1

    return-object v1
.end method

.method private hasAsyncLoggers()Z
    .locals 4

    .line 321
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->root:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    instance-of v0, v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 322
    return v1

    .line 324
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->loggerConfigs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/config/LoggerConfig;

    .line 325
    .local v2, "logger":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    instance-of v3, v2, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;

    if-eqz v3, :cond_1

    .line 326
    return v1

    .line 328
    .end local v2    # "logger":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    :cond_1
    goto :goto_0

    .line 329
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private monitorSource(Lorg/apache/logging/log4j/core/config/Reconfigurable;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)V
    .locals 8
    .param p1, "reconfigurable"    # Lorg/apache/logging/log4j/core/config/Reconfigurable;
    .param p2, "configSource"    # Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reconfigurable",
            "configSource"
        }
    .end annotation

    .line 276
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getLastModified()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 277
    new-instance v0, Lorg/apache/logging/log4j/core/util/Source;

    invoke-direct {v0, p2}, Lorg/apache/logging/log4j/core/util/Source;-><init>(Lorg/apache/logging/log4j/core/config/ConfigurationSource;)V

    .line 278
    .local v0, "cfgSource":Lorg/apache/logging/log4j/core/util/Source;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->pluginPackages:Ljava/util/List;

    invoke-static {v1}, Lorg/apache/logging/log4j/core/util/WatcherFactory;->getInstance(Ljava/util/List;)Lorg/apache/logging/log4j/core/util/WatcherFactory;

    move-result-object v1

    iget-object v5, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->listeners:Ljava/util/List;

    .line 279
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getLastModified()J

    move-result-wide v6

    .line 278
    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v7}, Lorg/apache/logging/log4j/core/util/WatcherFactory;->newWatcher(Lorg/apache/logging/log4j/core/util/Source;Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/config/Reconfigurable;Ljava/util/List;J)Lorg/apache/logging/log4j/core/util/Watcher;

    move-result-object v1

    .line 280
    .local v1, "watcher":Lorg/apache/logging/log4j/core/util/Watcher;
    if-eqz v1, :cond_0

    .line 281
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->watchManager:Lorg/apache/logging/log4j/core/util/WatchManager;

    invoke-virtual {v2, v0, v1}, Lorg/apache/logging/log4j/core/util/WatchManager;->watch(Lorg/apache/logging/log4j/core/util/Source;Lorg/apache/logging/log4j/core/util/Watcher;)V

    .line 283
    .end local v0    # "cfgSource":Lorg/apache/logging/log4j/core/util/Source;
    .end local v1    # "watcher":Lorg/apache/logging/log4j/core/util/Watcher;
    :cond_0
    goto :goto_0

    .line 284
    :cond_1
    sget-object v0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getURI()Ljava/net/URI;

    move-result-object v1

    const-string v2, "{} does not support dynamic reconfiguration"

    invoke-interface {v0, v2, v1}, Lorg/apache/logging/log4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 286
    :goto_0
    return-void
.end method

.method private setParents()V
    .locals 6

    .line 1145
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->loggerConfigs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1146
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/logging/log4j/core/config/LoggerConfig;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/config/LoggerConfig;

    .line 1147
    .local v2, "logger":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1148
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1149
    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 1150
    .local v4, "i":I
    if-lez v4, :cond_1

    .line 1151
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1152
    invoke-virtual {p0, v3}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->getLoggerConfig(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/LoggerConfig;

    move-result-object v5

    .line 1153
    .local v5, "parent":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    if-nez v5, :cond_0

    .line 1154
    iget-object v5, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->root:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    .line 1156
    :cond_0
    invoke-virtual {v2, v5}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->setParent(Lorg/apache/logging/log4j/core/config/LoggerConfig;)V

    .line 1157
    .end local v5    # "parent":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    goto :goto_1

    .line 1158
    :cond_1
    iget-object v5, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->root:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-virtual {v2, v5}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->setParent(Lorg/apache/logging/log4j/core/config/LoggerConfig;)V

    .line 1161
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/logging/log4j/core/config/LoggerConfig;>;"
    .end local v2    # "logger":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "i":I
    :cond_2
    :goto_1
    goto :goto_0

    .line 1162
    :cond_3
    return-void
.end method

.method private setupAdvertisement()V
    .locals 7

    .line 489
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->advertiserNode:Lorg/apache/logging/log4j/core/config/Node;

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "nodeName":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->pluginManager:Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;

    invoke-virtual {v1, v0}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->getPluginType(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    move-result-object v1

    .line 492
    .local v1, "type":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    if-eqz v1, :cond_0

    .line 493
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getPluginClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/apache/logging/log4j/core/net/Advertiser;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 495
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/logging/log4j/core/net/Advertiser;>;"
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/core/net/Advertiser;

    iput-object v3, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->advertiser:Lorg/apache/logging/log4j/core/net/Advertiser;

    .line 496
    iget-object v4, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->advertiserNode:Lorg/apache/logging/log4j/core/config/Node;

    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/logging/log4j/core/net/Advertiser;->advertise(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->advertisement:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    goto :goto_0

    .line 497
    :catch_0
    move-exception v3

    .line 498
    .local v3, "e":Ljava/lang/ReflectiveOperationException;
    sget-object v4, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "{} attempting to instantiate advertiser: {}"

    invoke-interface {v4, v6, v5, v0, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 502
    .end local v0    # "nodeName":Ljava/lang/String;
    .end local v1    # "type":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/logging/log4j/core/net/Advertiser;>;"
    .end local v3    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_0
    :goto_0
    return-void
.end method

.method protected static toByteArray(Ljava/io/InputStream;)[B
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "is"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1173
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1176
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x4000

    new-array v1, v1, [B

    .line 1178
    .local v1, "data":[B
    :goto_0
    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    move v4, v2

    .local v4, "nRead":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    .line 1179
    invoke-virtual {v0, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 1182
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public addAppender(Lorg/apache/logging/log4j/core/Appender;)V
    .locals 2
    .param p1, "appender"    # Lorg/apache/logging/log4j/core/Appender;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "appender"
        }
    .end annotation

    .line 807
    if-eqz p1, :cond_0

    .line 808
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->appenders:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/Appender;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    :cond_0
    return-void
.end method

.method public addComponent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "componentName",
            "obj"
        }
    .end annotation

    .line 512
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->componentMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    return-void
.end method

.method public addListener(Lorg/apache/logging/log4j/core/config/ConfigurationListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/logging/log4j/core/config/ConfigurationListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "listener"
        }
    .end annotation

    .line 765
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 766
    return-void
.end method

.method public declared-synchronized addLogger(Ljava/lang/String;Lorg/apache/logging/log4j/core/config/LoggerConfig;)V
    .locals 1
    .param p1, "loggerName"    # Ljava/lang/String;
    .param p2, "loggerConfig"    # Lorg/apache/logging/log4j/core/config/LoggerConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "loggerName",
            "loggerConfig"
        }
    .end annotation

    monitor-enter p0

    .line 1017
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->loggerConfigs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->setParents()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1019
    monitor-exit p0

    return-void

    .line 1016
    .end local p0    # "this":Lorg/apache/logging/log4j/core/config/AbstractConfiguration;
    .end local p1    # "loggerName":Ljava/lang/String;
    .end local p2    # "loggerConfig":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addLoggerAppender(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/core/Appender;)V
    .locals 6
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "appender"    # Lorg/apache/logging/log4j/core/Appender;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "logger",
            "appender"
        }
    .end annotation

    monitor-enter p0

    .line 855
    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 858
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    .line 859
    .local v0, "loggerName":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->appenders:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2}, Lorg/apache/logging/log4j/core/Appender;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->getLoggerConfig(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/LoggerConfig;

    move-result-object v1

    .line 861
    .local v1, "lc":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 862
    invoke-virtual {v1, p2, v3, v3}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->addAppender(Lorg/apache/logging/log4j/core/Appender;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/core/Filter;)V

    goto :goto_0

    .line 864
    .end local p0    # "this":Lorg/apache/logging/log4j/core/config/AbstractConfiguration;
    :cond_1
    new-instance v2, Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->isAdditive()Z

    move-result v5

    invoke-direct {v2, v0, v4, v5}, Lorg/apache/logging/log4j/core/config/LoggerConfig;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Z)V

    .line 865
    .local v2, "nlc":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    invoke-virtual {v2, p2, v3, v3}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->addAppender(Lorg/apache/logging/log4j/core/Appender;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/core/Filter;)V

    .line 866
    invoke-virtual {v2, v1}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->setParent(Lorg/apache/logging/log4j/core/config/LoggerConfig;)V

    .line 867
    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->loggerConfigs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->setParents()V

    .line 869
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/Logger;->getContext()Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/LoggerContext;->updateLoggers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    .end local v2    # "nlc":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    :goto_0
    monitor-exit p0

    return-void

    .line 854
    .end local v0    # "loggerName":Ljava/lang/String;
    .end local v1    # "lc":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    .end local p1    # "logger":Lorg/apache/logging/log4j/core/Logger;
    .end local p2    # "appender":Lorg/apache/logging/log4j/core/Appender;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 856
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/config/AbstractConfiguration;
    .restart local p1    # "logger":Lorg/apache/logging/log4j/core/Logger;
    .restart local p2    # "appender":Lorg/apache/logging/log4j/core/Appender;
    :cond_2
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized addLoggerFilter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/core/Filter;)V
    .locals 5
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "logger",
            "filter"
        }
    .end annotation

    monitor-enter p0

    .line 884
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    .line 885
    .local v0, "loggerName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->getLoggerConfig(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/LoggerConfig;

    move-result-object v1

    .line 886
    .local v1, "lc":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 887
    invoke-virtual {v1, p2}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->addFilter(Lorg/apache/logging/log4j/core/Filter;)V

    goto :goto_0

    .line 889
    .end local p0    # "this":Lorg/apache/logging/log4j/core/config/AbstractConfiguration;
    :cond_0
    new-instance v2, Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->isAdditive()Z

    move-result v4

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/logging/log4j/core/config/LoggerConfig;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Z)V

    .line 890
    .local v2, "nlc":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    invoke-virtual {v2, p2}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->addFilter(Lorg/apache/logging/log4j/core/Filter;)V

    .line 891
    invoke-virtual {v2, v1}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->setParent(Lorg/apache/logging/log4j/core/config/LoggerConfig;)V

    .line 892
    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->loggerConfigs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->setParents()V

    .line 894
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/Logger;->getContext()Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/LoggerContext;->updateLoggers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 896
    .end local v2    # "nlc":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    :goto_0
    monitor-exit p0

    return-void

    .line 883
    .end local v0    # "loggerName":Ljava/lang/String;
    .end local v1    # "lc":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    .end local p1    # "logger":Lorg/apache/logging/log4j/core/Logger;
    .end local p2    # "filter":Lorg/apache/logging/log4j/core/Filter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected createAdvertiser(Ljava/lang/String;Lorg/apache/logging/log4j/core/config/ConfigurationSource;[BLjava/lang/String;)V
    .locals 4
    .param p1, "advertiserString"    # Ljava/lang/String;
    .param p2, "configSource"    # Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    .param p3, "buffer"    # [B
    .param p4, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "advertiserString",
            "configSource",
            "buffer",
            "contentType"
        }
    .end annotation

    .line 475
    if-eqz p1, :cond_1

    .line 476
    new-instance v0, Lorg/apache/logging/log4j/core/config/Node;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Lorg/apache/logging/log4j/core/config/Node;-><init>(Lorg/apache/logging/log4j/core/config/Node;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;)V

    .line 477
    .local v0, "node":Lorg/apache/logging/log4j/core/config/Node;
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v1

    .line 478
    .local v1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    const-string v3, "content"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const-string v2, "contentType"

    invoke-interface {v1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    const-string v2, "name"

    const-string v3, "configuration"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getLocation()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 482
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getLocation()Ljava/lang/String;

    move-result-object v2

    const-string v3, "location"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    :cond_0
    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->advertiserNode:Lorg/apache/logging/log4j/core/config/Node;

    .line 486
    .end local v0    # "node":Lorg/apache/logging/log4j/core/config/Node;
    .end local v1    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public createConfiguration(Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 4
    .param p1, "node"    # Lorg/apache/logging/log4j/core/config/Node;
    .param p2, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "node",
            "event"
        }
    .end annotation

    .line 1034
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/Node;->getType()Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    move-result-object v0

    .line 1035
    .local v0, "type":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->isDeferChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1036
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->createPluginObject(Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/logging/log4j/core/config/Node;->setObject(Ljava/lang/Object;)V

    goto :goto_1

    .line 1038
    :cond_0
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/config/Node;

    .line 1039
    .local v2, "child":Lorg/apache/logging/log4j/core/config/Node;
    invoke-virtual {p0, v2, p2}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->createConfiguration(Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 1040
    .end local v2    # "child":Lorg/apache/logging/log4j/core/config/Node;
    goto :goto_0

    .line 1042
    :cond_1
    if-nez v0, :cond_2

    .line 1043
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/Node;->getParent()Lorg/apache/logging/log4j/core/config/Node;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1044
    sget-object v1, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to locate plugin for {}"

    invoke-interface {v1, v3, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 1047
    :cond_2
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->createPluginObject(Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/logging/log4j/core/config/Node;->setObject(Ljava/lang/Object;)V

    .line 1050
    :cond_3
    :goto_1
    return-void
.end method

.method public createPluginObject(Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;Lorg/apache/logging/log4j/core/config/Node;)Ljava/lang/Object;
    .locals 3
    .param p2, "node"    # Lorg/apache/logging/log4j/core/config/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "type",
            "node"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<",
            "*>;",
            "Lorg/apache/logging/log4j/core/config/Node;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1059
    .local p1, "type":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->getState()Lorg/apache/logging/log4j/core/LifeCycle$State;

    move-result-object v0

    sget-object v1, Lorg/apache/logging/log4j/core/LifeCycle$State;->INITIALIZING:Lorg/apache/logging/log4j/core/LifeCycle$State;

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/LifeCycle$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1060
    invoke-direct {p0, p1, p2, v1}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->createPluginObject(Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1062
    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Plugin Object creation is not allowed after initialization"

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 1063
    return-object v1
.end method

.method protected doConfigure()V
    .locals 14

    .line 623
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->rootNode:Lorg/apache/logging/log4j/core/config/Node;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->processConditionals(Lorg/apache/logging/log4j/core/config/Node;)V

    .line 624
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->rootNode:Lorg/apache/logging/log4j/core/config/Node;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->preConfigure(Lorg/apache/logging/log4j/core/config/Node;)V

    .line 625
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->configurationScheduler:Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->start()V

    .line 626
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->rootNode:Lorg/apache/logging/log4j/core/config/Node;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/Node;->hasChildren()Z

    move-result v0

    const-string v1, "Properties"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->rootNode:Lorg/apache/logging/log4j/core/config/Node;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/config/Node;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->rootNode:Lorg/apache/logging/log4j/core/config/Node;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/config/Node;

    .line 628
    .local v0, "first":Lorg/apache/logging/log4j/core/config/Node;
    invoke-virtual {p0, v0, v2}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->createConfiguration(Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 629
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/Node;->getObject()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 630
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/Node;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/logging/log4j/core/lookup/StrLookup;

    .line 631
    .local v4, "lookup":Lorg/apache/logging/log4j/core/lookup/StrLookup;
    iget-object v5, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->runtimeStrSubstitutor:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    invoke-virtual {v5, v4}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setVariableResolver(Lorg/apache/logging/log4j/core/lookup/StrLookup;)V

    .line 632
    iget-object v5, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->configurationStrSubstitutor:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    invoke-virtual {v5, v4}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setVariableResolver(Lorg/apache/logging/log4j/core/lookup/StrLookup;)V

    .line 634
    .end local v0    # "first":Lorg/apache/logging/log4j/core/config/Node;
    .end local v4    # "lookup":Lorg/apache/logging/log4j/core/lookup/StrLookup;
    :cond_0
    goto :goto_1

    .line 635
    :cond_1
    const-string v0, "ContextProperties"

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->getComponent(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 636
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_2

    move-object v4, v2

    goto :goto_0

    :cond_2
    new-instance v4, Lorg/apache/logging/log4j/core/lookup/PropertiesLookup;

    invoke-direct {v4, v0}, Lorg/apache/logging/log4j/core/lookup/PropertiesLookup;-><init>(Ljava/util/Map;)V

    .line 637
    .restart local v4    # "lookup":Lorg/apache/logging/log4j/core/lookup/StrLookup;
    :goto_0
    new-instance v5, Lorg/apache/logging/log4j/core/lookup/Interpolator;

    iget-object v6, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->pluginPackages:Ljava/util/List;

    invoke-direct {v5, v4, v6}, Lorg/apache/logging/log4j/core/lookup/Interpolator;-><init>(Lorg/apache/logging/log4j/core/lookup/StrLookup;Ljava/util/List;)V

    .line 638
    .local v5, "interpolator":Lorg/apache/logging/log4j/core/lookup/Interpolator;
    iget-object v6, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->runtimeStrSubstitutor:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    invoke-virtual {v6, v5}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setVariableResolver(Lorg/apache/logging/log4j/core/lookup/StrLookup;)V

    .line 639
    iget-object v6, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->configurationStrSubstitutor:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    invoke-virtual {v6, v5}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setVariableResolver(Lorg/apache/logging/log4j/core/lookup/StrLookup;)V

    .line 642
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "lookup":Lorg/apache/logging/log4j/core/lookup/StrLookup;
    .end local v5    # "interpolator":Lorg/apache/logging/log4j/core/lookup/Interpolator;
    :goto_1
    const/4 v0, 0x0

    .line 643
    .local v0, "setLoggers":Z
    const/4 v4, 0x0

    .line 644
    .local v4, "setRoot":Z
    iget-object v5, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->rootNode:Lorg/apache/logging/log4j/core/config/Node;

    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/logging/log4j/core/config/Node;

    .line 645
    .local v6, "child":Lorg/apache/logging/log4j/core/config/Node;
    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 646
    iget-object v7, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->tempLookup:Lorg/apache/logging/log4j/core/lookup/StrLookup;

    iget-object v8, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->runtimeStrSubstitutor:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    invoke-virtual {v8}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->getVariableResolver()Lorg/apache/logging/log4j/core/lookup/StrLookup;

    move-result-object v8

    if-ne v7, v8, :cond_3

    .line 647
    sget-object v7, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v8, "Properties declaration must be the first element in the configuration"

    invoke-interface {v7, v8}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 651
    :cond_4
    invoke-virtual {p0, v6, v2}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->createConfiguration(Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 652
    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/config/Node;->getObject()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_5

    .line 653
    goto :goto_2

    .line 655
    :cond_5
    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Scripts"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 656
    const-class v7, [Lorg/apache/logging/log4j/core/script/AbstractScript;

    invoke-virtual {v6, v7}, Lorg/apache/logging/log4j/core/config/Node;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lorg/apache/logging/log4j/core/script/AbstractScript;

    array-length v8, v7

    move v9, v3

    :goto_3
    if-ge v9, v8, :cond_f

    aget-object v10, v7, v9

    .line 657
    .local v10, "script":Lorg/apache/logging/log4j/core/script/AbstractScript;
    instance-of v11, v10, Lorg/apache/logging/log4j/core/script/ScriptRef;

    if-eqz v11, :cond_6

    .line 658
    sget-object v11, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 659
    invoke-virtual {v10}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getName()Ljava/lang/String;

    move-result-object v12

    .line 658
    const-string v13, "Script reference to {} not added. Scripts definition cannot contain script references"

    invoke-interface {v11, v13, v12}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 660
    :cond_6
    iget-object v11, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->scriptManager:Lorg/apache/logging/log4j/core/script/ScriptManager;

    if-eqz v11, :cond_7

    .line 661
    invoke-virtual {v11, v10}, Lorg/apache/logging/log4j/core/script/ScriptManager;->addScript(Lorg/apache/logging/log4j/core/script/AbstractScript;)Z

    .line 656
    .end local v10    # "script":Lorg/apache/logging/log4j/core/script/AbstractScript;
    :cond_7
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 664
    :cond_8
    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Appenders"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 665
    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/config/Node;->getObject()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/ConcurrentMap;

    iput-object v7, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->appenders:Ljava/util/concurrent/ConcurrentMap;

    goto/16 :goto_5

    .line 666
    :cond_9
    const-class v7, Lorg/apache/logging/log4j/core/Filter;

    invoke-virtual {v6, v7}, Lorg/apache/logging/log4j/core/config/Node;->isInstanceOf(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 667
    const-class v7, Lorg/apache/logging/log4j/core/Filter;

    invoke-virtual {v6, v7}, Lorg/apache/logging/log4j/core/config/Node;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/logging/log4j/core/Filter;

    invoke-virtual {p0, v7}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->addFilter(Lorg/apache/logging/log4j/core/Filter;)V

    goto/16 :goto_5

    .line 668
    :cond_a
    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Loggers"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 669
    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/config/Node;->getObject()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/logging/log4j/core/config/Loggers;

    .line 670
    .local v7, "l":Lorg/apache/logging/log4j/core/config/Loggers;
    invoke-virtual {v7}, Lorg/apache/logging/log4j/core/config/Loggers;->getMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v8

    iput-object v8, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->loggerConfigs:Ljava/util/concurrent/ConcurrentMap;

    .line 671
    const/4 v0, 0x1

    .line 672
    invoke-virtual {v7}, Lorg/apache/logging/log4j/core/config/Loggers;->getRoot()Lorg/apache/logging/log4j/core/config/LoggerConfig;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 673
    invoke-virtual {v7}, Lorg/apache/logging/log4j/core/config/Loggers;->getRoot()Lorg/apache/logging/log4j/core/config/LoggerConfig;

    move-result-object v8

    iput-object v8, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->root:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    .line 674
    const/4 v4, 0x1

    .line 676
    .end local v7    # "l":Lorg/apache/logging/log4j/core/config/Loggers;
    :cond_b
    goto :goto_5

    :cond_c
    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CustomLevels"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 677
    const-class v7, Lorg/apache/logging/log4j/core/config/CustomLevels;

    invoke-virtual {v6, v7}, Lorg/apache/logging/log4j/core/config/Node;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/logging/log4j/core/config/CustomLevels;

    invoke-virtual {v7}, Lorg/apache/logging/log4j/core/config/CustomLevels;->getCustomLevels()Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->customLevels:Ljava/util/List;

    goto :goto_5

    .line 678
    :cond_d
    const-class v7, Lorg/apache/logging/log4j/core/config/CustomLevelConfig;

    invoke-virtual {v6, v7}, Lorg/apache/logging/log4j/core/config/Node;->isInstanceOf(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 679
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->customLevels:Ljava/util/List;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 680
    .local v7, "copy":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/CustomLevelConfig;>;"
    const-class v8, Lorg/apache/logging/log4j/core/config/CustomLevelConfig;

    invoke-virtual {v6, v8}, Lorg/apache/logging/log4j/core/config/Node;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    iput-object v7, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->customLevels:Ljava/util/List;

    .line 682
    .end local v7    # "copy":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/CustomLevelConfig;>;"
    goto :goto_5

    .line 683
    :cond_e
    const-string v7, "\"Appenders\""

    const-string v8, "\"Loggers\""

    const-string v9, "\"Properties\""

    const-string v10, "\"Scripts\""

    const-string v11, "\"CustomLevels\""

    filled-new-array {v7, v8, v9, v10, v11}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 685
    .local v7, "expected":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v8, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 686
    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/config/Node;->getObject()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    .line 685
    const-string v11, "Unknown object \"{}\" of type {} is ignored: try nesting it inside one of: {}."

    invoke-interface {v8, v11, v9, v10, v7}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 688
    .end local v6    # "child":Lorg/apache/logging/log4j/core/config/Node;
    .end local v7    # "expected":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_f
    :goto_5
    goto/16 :goto_2

    .line 690
    :cond_10
    if-nez v0, :cond_11

    .line 691
    sget-object v1, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "No Loggers were configured, using default. Is the Loggers element missing?"

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 692
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->setToDefault()V

    .line 693
    return-void

    .line 694
    :cond_11
    if-nez v4, :cond_12

    .line 695
    sget-object v1, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "No Root logger was configured, creating default ERROR-level Root logger with Console appender"

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 696
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->setToDefault()V

    .line 700
    :cond_12
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->loggerConfigs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 701
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/logging/log4j/core/config/LoggerConfig;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/core/config/LoggerConfig;

    .line 702
    .local v3, "loggerConfig":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getAppenderRefs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/logging/log4j/core/config/AppenderRef;

    .line 703
    .local v6, "ref":Lorg/apache/logging/log4j/core/config/AppenderRef;
    iget-object v7, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->appenders:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/config/AppenderRef;->getRef()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/logging/log4j/core/Appender;

    .line 704
    .local v7, "app":Lorg/apache/logging/log4j/core/Appender;
    if-eqz v7, :cond_13

    .line 705
    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/config/AppenderRef;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v8

    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/config/AppenderRef;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v9

    invoke-virtual {v3, v7, v8, v9}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->addAppender(Lorg/apache/logging/log4j/core/Appender;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/core/Filter;)V

    goto :goto_8

    .line 707
    :cond_13
    sget-object v8, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/config/AppenderRef;->getRef()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Unable to locate appender \"{}\" for logger config \"{}\""

    invoke-interface {v8, v10, v9, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 710
    .end local v6    # "ref":Lorg/apache/logging/log4j/core/config/AppenderRef;
    .end local v7    # "app":Lorg/apache/logging/log4j/core/Appender;
    :goto_8
    goto :goto_7

    .line 712
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/logging/log4j/core/config/LoggerConfig;>;"
    .end local v3    # "loggerConfig":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    :cond_14
    goto :goto_6

    .line 714
    :cond_15
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->setParents()V

    .line 715
    return-void
.end method

.method public getAdvertiser()Lorg/apache/logging/log4j/core/net/Advertiser;
    .locals 1

    .line 829
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->advertiser:Lorg/apache/logging/log4j/core/net/Advertiser;

    return-object v0
.end method

.method public getAppender(Ljava/lang/String;)Lorg/apache/logging/log4j/core/Appender;
    .locals 1
    .param p1, "appenderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "appenderName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/logging/log4j/core/Appender;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 787
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->appenders:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/Appender;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getAppenders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Appender;",
            ">;"
        }
    .end annotation

    .line 797
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->appenders:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public getAsyncLoggerConfigDelegate()Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDelegate;
    .locals 1

    .line 209
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->asyncLoggerConfigDisruptor:Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->asyncLoggerConfigDisruptor:Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;

    .line 212
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->asyncLoggerConfigDisruptor:Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;

    return-object v0
.end method

.method public getComponent(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "componentName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "componentName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 507
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->componentMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getConfigurationSource()Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->configurationSource:Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    return-object v0
.end method

.method public getConfigurationStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    .locals 1

    .line 819
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->configurationStrSubstitutor:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    return-object v0
.end method

.method public getCustomLevels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/CustomLevelConfig;",
            ">;"
        }
    .end annotation

    .line 947
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->customLevels:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultStatus()Lorg/apache/logging/log4j/Level;
    .locals 3

    .line 464
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    sget-object v1, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    .line 465
    invoke-virtual {v1}, Lorg/apache/logging/log4j/Level;->name()Ljava/lang/String;

    move-result-object v1

    .line 464
    const-string v2, "Log4jDefaultStatusLevel"

    invoke-virtual {v0, v2, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "statusLevel":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lorg/apache/logging/log4j/Level;->toLevel(Ljava/lang/String;)Lorg/apache/logging/log4j/Level;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 468
    :catch_0
    move-exception v1

    .line 469
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    return-object v2
.end method

.method public getLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/LoggerConfig;
    .locals 1
    .param p1, "loggerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "loggerName"
        }
    .end annotation

    .line 1005
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->loggerConfigs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/config/LoggerConfig;

    return-object v0
.end method

.method public getLoggerConfig(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/LoggerConfig;
    .locals 3
    .param p1, "loggerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "loggerName"
        }
    .end annotation

    .line 959
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->loggerConfigs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/config/LoggerConfig;

    .line 960
    .local v0, "loggerConfig":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    if-eqz v0, :cond_0

    .line 961
    return-object v0

    .line 963
    :cond_0
    move-object v1, p1

    .line 964
    .local v1, "substr":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Lorg/apache/logging/log4j/core/util/NameUtil;->getSubName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_2

    .line 965
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->loggerConfigs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/logging/log4j/core/config/LoggerConfig;

    .line 966
    if-eqz v0, :cond_1

    .line 967
    return-object v0

    .line 970
    :cond_2
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->root:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    return-object v2
.end method

.method public getLoggerContext()Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 1

    .line 975
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->loggerContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/LoggerContext;

    return-object v0
.end method

.method public getLoggers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/config/LoggerConfig;",
            ">;"
        }
    .end annotation

    .line 995
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->loggerConfigs:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 755
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNanoClock()Lorg/apache/logging/log4j/core/util/NanoClock;
    .locals 1

    .line 1187
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->nanoClock:Lorg/apache/logging/log4j/core/util/NanoClock;

    return-object v0
.end method

.method public getPluginManager()Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->pluginManager:Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;

    return-object v0
.end method

.method public getPluginPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->pluginPackages:Ljava/util/List;

    return-object v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->propertyMap:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public getReliabilityStrategy(Lorg/apache/logging/log4j/core/config/LoggerConfig;)Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;
    .locals 1
    .param p1, "loggerConfig"    # Lorg/apache/logging/log4j/core/config/LoggerConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "loggerConfig"
        }
    .end annotation

    .line 840
    invoke-static {p1}, Lorg/apache/logging/log4j/core/config/ReliabilityStrategyFactory;->getReliabilityStrategy(Lorg/apache/logging/log4j/core/config/LoggerConfig;)Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;

    move-result-object v0

    return-object v0
.end method

.method public getRootLogger()Lorg/apache/logging/log4j/core/config/LoggerConfig;
    .locals 1

    .line 985
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->root:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    return-object v0
.end method

.method public getRootNode()Lorg/apache/logging/log4j/core/config/Node;
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->rootNode:Lorg/apache/logging/log4j/core/config/Node;

    return-object v0
.end method

.method public getScheduler()Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->configurationScheduler:Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;

    return-object v0
.end method

.method public getScriptManager()Lorg/apache/logging/log4j/core/script/ScriptManager;
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->scriptManager:Lorg/apache/logging/log4j/core/script/ScriptManager;

    return-object v0
.end method

.method public getShutdownTimeoutMillis()J
    .locals 2

    .line 456
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->shutdownTimeoutMillis:J

    return-wide v0
.end method

.method public getStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    .locals 1

    .line 814
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->runtimeStrSubstitutor:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    return-object v0
.end method

.method public getWatchManager()Lorg/apache/logging/log4j/core/util/WatchManager;
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->watchManager:Lorg/apache/logging/log4j/core/util/WatchManager;

    return-object v0
.end method

.method public initialize()V
    .locals 10

    .line 220
    sget-object v0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/apache/logging/log4j/core/Version;->getProductString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " initializing configuration {}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->runtimeStrSubstitutor:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)V

    .line 222
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->configurationStrSubstitutor:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)V

    .line 223
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    const-string v1, "log4j2.Script.enableLanguages"

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "scriptLanguages":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 226
    :try_start_0
    new-instance v1, Lorg/apache/logging/log4j/core/script/ScriptManager;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->watchManager:Lorg/apache/logging/log4j/core/util/WatchManager;

    invoke-direct {v1, p0, v2, v0}, Lorg/apache/logging/log4j/core/script/ScriptManager;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/util/WatchManager;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->scriptManager:Lorg/apache/logging/log4j/core/script/ScriptManager;
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    goto :goto_0

    .line 227
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v2, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Cannot initialize scripting support because this JRE does not support it."

    invoke-interface {v2, v3, v1}, Lorg/apache/logging/log4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->pluginManager:Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->pluginPackages:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->collectPlugins(Ljava/util/List;)V

    .line 233
    new-instance v1, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;

    const-string v2, "Level"

    invoke-direct {v1, v2}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;-><init>(Ljava/lang/String;)V

    .line 234
    .local v1, "levelPlugins":Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->pluginPackages:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->collectPlugins(Ljava/util/List;)V

    .line 235
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->getPlugins()Ljava/util/Map;

    move-result-object v2

    .line 236
    .local v2, "plugins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;>;"
    if-eqz v2, :cond_1

    .line 237
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    .line 240
    .local v4, "type":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    :try_start_1
    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getPluginClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getPluginClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/logging/log4j/core/util/Loader;->initializeClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 244
    goto :goto_2

    .line 241
    :catch_1
    move-exception v5

    .line 242
    .local v5, "e":Ljava/lang/Exception;
    sget-object v6, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getPluginClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 243
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    .line 242
    const-string v9, "Unable to initialize {} due to {}"

    invoke-interface {v6, v9, v7, v8, v5}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 245
    .end local v4    # "type":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_1

    .line 247
    :cond_1
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->setup()V

    .line 248
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->setupAdvertisement()V

    .line 249
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->doConfigure()V

    .line 250
    sget-object v3, Lorg/apache/logging/log4j/core/LifeCycle$State;->INITIALIZED:Lorg/apache/logging/log4j/core/LifeCycle$State;

    invoke-virtual {p0, v3}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->setState(Lorg/apache/logging/log4j/core/LifeCycle$State;)V

    .line 251
    sget-object v3, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v4, "Configuration {} initialized"

    invoke-interface {v3, v4, p0}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 252
    return-void
.end method

.method protected initializeWatchers(Lorg/apache/logging/log4j/core/config/Reconfigurable;Lorg/apache/logging/log4j/core/config/ConfigurationSource;I)V
    .locals 10
    .param p1, "reconfigurable"    # Lorg/apache/logging/log4j/core/config/Reconfigurable;
    .param p2, "configSource"    # Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    .param p3, "monitorIntervalSeconds"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "reconfigurable",
            "configSource",
            "monitorIntervalSeconds"
        }
    .end annotation

    .line 256
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getURL()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 257
    :cond_0
    if-lez p3, :cond_3

    .line 258
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->watchManager:Lorg/apache/logging/log4j/core/util/WatchManager;

    invoke-virtual {v0, p3}, Lorg/apache/logging/log4j/core/util/WatchManager;->setIntervalSeconds(I)V

    .line 259
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 260
    new-instance v0, Lorg/apache/logging/log4j/core/util/Source;

    invoke-direct {v0, p2}, Lorg/apache/logging/log4j/core/util/Source;-><init>(Lorg/apache/logging/log4j/core/config/ConfigurationSource;)V

    .line 261
    .local v0, "cfgSource":Lorg/apache/logging/log4j/core/util/Source;
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    .line 262
    .local v8, "lastModifeid":J
    new-instance v1, Lorg/apache/logging/log4j/core/config/ConfigurationFileWatcher;

    iget-object v5, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->listeners:Ljava/util/List;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-wide v6, v8

    invoke-direct/range {v2 .. v7}, Lorg/apache/logging/log4j/core/config/ConfigurationFileWatcher;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/config/Reconfigurable;Ljava/util/List;J)V

    .line 264
    .local v1, "watcher":Lorg/apache/logging/log4j/core/config/ConfigurationFileWatcher;
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->watchManager:Lorg/apache/logging/log4j/core/util/WatchManager;

    invoke-virtual {v2, v0, v1}, Lorg/apache/logging/log4j/core/util/WatchManager;->watch(Lorg/apache/logging/log4j/core/util/Source;Lorg/apache/logging/log4j/core/util/Watcher;)V

    .end local v0    # "cfgSource":Lorg/apache/logging/log4j/core/util/Source;
    .end local v1    # "watcher":Lorg/apache/logging/log4j/core/config/ConfigurationFileWatcher;
    .end local v8    # "lastModifeid":J
    goto :goto_0

    .line 265
    :cond_1
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getURL()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 266
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->monitorSource(Lorg/apache/logging/log4j/core/config/Reconfigurable;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)V

    goto :goto_1

    .line 265
    :cond_2
    :goto_0
    goto :goto_1

    .line 268
    :cond_3
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->watchManager:Lorg/apache/logging/log4j/core/util/WatchManager;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/util/WatchManager;->hasEventListeners()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getURL()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_4

    if-ltz p3, :cond_4

    .line 270
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->monitorSource(Lorg/apache/logging/log4j/core/config/Reconfigurable;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)V

    .line 273
    :cond_4
    :goto_1
    return-void
.end method

.method public isShutdownHookEnabled()Z
    .locals 1

    .line 451
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->isShutdownHookEnabled:Z

    return v0
.end method

.method protected preConfigure(Lorg/apache/logging/log4j/core/config/Node;)V
    .locals 5
    .param p1, "node"    # Lorg/apache/logging/log4j/core/config/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "node"
        }
    .end annotation

    .line 517
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/config/Node;

    .line 518
    .local v1, "child":Lorg/apache/logging/log4j/core/config/Node;
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/Node;->getType()Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    move-result-object v2

    if-nez v2, :cond_0

    .line 519
    sget-object v2, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to locate plugin type for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 520
    goto :goto_0

    .line 522
    :cond_0
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/Node;->getType()Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getPluginClass()Ljava/lang/Class;

    move-result-object v2

    .line 523
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Lorg/apache/logging/log4j/core/config/Scheduled;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 524
    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->configurationScheduler:Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->incrementScheduledItems()V

    .line 526
    :cond_1
    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->preConfigure(Lorg/apache/logging/log4j/core/config/Node;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    .end local v1    # "child":Lorg/apache/logging/log4j/core/config/Node;
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 530
    :cond_2
    goto :goto_1

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error capturing node data for node "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 531
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method protected processConditionals(Lorg/apache/logging/log4j/core/config/Node;)V
    .locals 10
    .param p1, "node"    # Lorg/apache/logging/log4j/core/config/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "node"
        }
    .end annotation

    .line 540
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 541
    .local v0, "addList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Node;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 542
    .local v1, "removeList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Node;>;"
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/core/config/Node;

    .line 543
    .local v3, "child":Lorg/apache/logging/log4j/core/config/Node;
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/Node;->getType()Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    move-result-object v4

    .line 544
    .local v4, "type":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    if-eqz v4, :cond_3

    const-string v5, "Arbiter"

    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getElementName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 545
    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getPluginClass()Ljava/lang/Class;

    move-result-object v5

    .line 546
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Lorg/apache/logging/log4j/core/config/arbiters/SelectArbiter;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 547
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    invoke-virtual {p0, v3, v4}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->processSelect(Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 549
    :cond_0
    const-class v6, Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 550
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 552
    const/4 v6, 0x0

    :try_start_1
    invoke-direct {p0, v4, v3, v6}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->createPluginObject(Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;

    .line 553
    .local v6, "condition":Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;
    invoke-interface {v6}, Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;->isCondition()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 554
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 555
    invoke-virtual {p0, v3}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->processConditionals(Lorg/apache/logging/log4j/core/config/Node;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 561
    .end local v6    # "condition":Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;
    :cond_1
    :goto_1
    goto :goto_2

    .line 557
    :catch_0
    move-exception v6

    .line 558
    .local v6, "inner":Ljava/lang/Exception;
    :try_start_2
    sget-object v7, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v8, "Exception processing {}: Ignoring and including children"

    .line 559
    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getPluginClass()Ljava/lang/Class;

    move-result-object v9

    .line 558
    invoke-interface {v7, v8, v9}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 560
    invoke-virtual {p0, v3}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->processConditionals(Lorg/apache/logging/log4j/core/config/Node;)V

    .end local v6    # "inner":Ljava/lang/Exception;
    goto :goto_1

    .line 563
    :cond_2
    sget-object v6, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v7, "Encountered Condition Plugin that does not implement Condition: {}"

    .line 564
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v8

    .line 563
    invoke-interface {v6, v7, v8}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 565
    invoke-virtual {p0, v3}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->processConditionals(Lorg/apache/logging/log4j/core/config/Node;)V

    .line 567
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    goto :goto_3

    .line 568
    :cond_3
    invoke-virtual {p0, v3}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->processConditionals(Lorg/apache/logging/log4j/core/config/Node;)V

    .line 570
    .end local v3    # "child":Lorg/apache/logging/log4j/core/config/Node;
    .end local v4    # "type":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    :goto_3
    goto :goto_0

    .line 571
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 572
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v2

    .line 573
    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Node;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 574
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 575
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/logging/log4j/core/config/Node;

    .line 576
    .local v4, "grandChild":Lorg/apache/logging/log4j/core/config/Node;
    invoke-virtual {v4, p1}, Lorg/apache/logging/log4j/core/config/Node;->setParent(Lorg/apache/logging/log4j/core/config/Node;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 577
    .end local v4    # "grandChild":Lorg/apache/logging/log4j/core/config/Node;
    goto :goto_4

    .line 581
    .end local v0    # "addList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Node;>;"
    .end local v1    # "removeList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Node;>;"
    .end local v2    # "children":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Node;>;"
    :cond_5
    goto :goto_5

    .line 579
    :catch_1
    move-exception v0

    .line 580
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error capturing node data for node "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 582
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_5
    return-void
.end method

.method protected processSelect(Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;)Ljava/util/List;
    .locals 10
    .param p1, "selectNode"    # Lorg/apache/logging/log4j/core/config/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selectNode",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/Node;",
            "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<",
            "*>;)",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/Node;",
            ">;"
        }
    .end annotation

    .line 592
    .local p2, "type":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 593
    .local v0, "addList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Node;>;"
    const/4 v1, 0x0

    invoke-direct {p0, p2, p1, v1}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->createPluginObject(Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/config/arbiters/SelectArbiter;

    .line 594
    .local v2, "select":Lorg/apache/logging/log4j/core/config/arbiters/SelectArbiter;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 595
    .local v3, "conditions":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;>;"
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/logging/log4j/core/config/Node;

    .line 596
    .local v5, "child":Lorg/apache/logging/log4j/core/config/Node;
    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/config/Node;->getType()Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    move-result-object v6

    .line 597
    .local v6, "nodeType":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    if-eqz v6, :cond_1

    .line 598
    const-class v7, Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;

    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getPluginClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 599
    invoke-direct {p0, v6, v5, v1}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->createPluginObject(Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;

    .line 600
    .local v7, "condition":Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    invoke-virtual {v5, v7}, Lorg/apache/logging/log4j/core/config/Node;->setObject(Ljava/lang/Object;)V

    .line 602
    .end local v7    # "condition":Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;
    goto :goto_1

    .line 603
    :cond_0
    sget-object v7, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 604
    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v8

    .line 603
    const-string v9, "Invalid Node {} for Select. Must be a Condition"

    invoke-interface {v7, v9, v8}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 607
    :cond_1
    sget-object v7, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "No PluginType for node {}"

    invoke-interface {v7, v9, v8}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 609
    .end local v5    # "child":Lorg/apache/logging/log4j/core/config/Node;
    .end local v6    # "nodeType":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    :goto_1
    goto :goto_0

    .line 610
    :cond_2
    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/core/config/arbiters/SelectArbiter;->evaluateConditions(Ljava/util/List;)Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;

    move-result-object v1

    .line 611
    .local v1, "condition":Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;
    if-eqz v1, :cond_4

    .line 612
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/logging/log4j/core/config/Node;

    .line 613
    .restart local v5    # "child":Lorg/apache/logging/log4j/core/config/Node;
    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/config/Node;->getObject()Ljava/lang/Object;

    move-result-object v6

    if-ne v1, v6, :cond_3

    .line 614
    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 615
    invoke-virtual {p0, v5}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->processConditionals(Lorg/apache/logging/log4j/core/config/Node;)V

    .line 617
    .end local v5    # "child":Lorg/apache/logging/log4j/core/config/Node;
    :cond_3
    goto :goto_2

    .line 619
    :cond_4
    return-object v0
.end method

.method public declared-synchronized removeAppender(Ljava/lang/String;)V
    .locals 2
    .param p1, "appenderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "appenderName"
        }
    .end annotation

    monitor-enter p0

    .line 930
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->loggerConfigs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/config/LoggerConfig;

    .line 931
    .local v1, "logger":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    invoke-virtual {v1, p1}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->removeAppender(Ljava/lang/String;)V

    .line 932
    .end local v1    # "logger":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    goto :goto_0

    .line 933
    .end local p0    # "this":Lorg/apache/logging/log4j/core/config/AbstractConfiguration;
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->appenders:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/Appender;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 935
    .local v0, "app":Lorg/apache/logging/log4j/core/Appender;
    :goto_1
    if-eqz v0, :cond_2

    .line 936
    invoke-interface {v0}, Lorg/apache/logging/log4j/core/Appender;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 938
    :cond_2
    monitor-exit p0

    return-void

    .line 929
    .end local v0    # "app":Lorg/apache/logging/log4j/core/Appender;
    .end local p1    # "appenderName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeListener(Lorg/apache/logging/log4j/core/config/ConfigurationListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/logging/log4j/core/config/ConfigurationListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "listener"
        }
    .end annotation

    .line 775
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 776
    return-void
.end method

.method public declared-synchronized removeLogger(Ljava/lang/String;)V
    .locals 1
    .param p1, "loggerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "loggerName"
        }
    .end annotation

    monitor-enter p0

    .line 1028
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->loggerConfigs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->setParents()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    monitor-exit p0

    return-void

    .line 1027
    .end local p0    # "this":Lorg/apache/logging/log4j/core/config/AbstractConfiguration;
    .end local p1    # "loggerName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setAdvertiser(Lorg/apache/logging/log4j/core/net/Advertiser;)V
    .locals 0
    .param p1, "advertiser"    # Lorg/apache/logging/log4j/core/net/Advertiser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "advertiser"
        }
    .end annotation

    .line 824
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->advertiser:Lorg/apache/logging/log4j/core/net/Advertiser;

    .line 825
    return-void
.end method

.method public declared-synchronized setLoggerAdditive(Lorg/apache/logging/log4j/core/Logger;Z)V
    .locals 4
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "additive"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "logger",
            "additive"
        }
    .end annotation

    monitor-enter p0

    .line 909
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    .line 910
    .local v0, "loggerName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->getLoggerConfig(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/LoggerConfig;

    move-result-object v1

    .line 911
    .local v1, "lc":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 912
    invoke-virtual {v1, p2}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->setAdditive(Z)V

    goto :goto_0

    .line 914
    .end local p0    # "this":Lorg/apache/logging/log4j/core/config/AbstractConfiguration;
    :cond_0
    new-instance v2, Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v3

    invoke-direct {v2, v0, v3, p2}, Lorg/apache/logging/log4j/core/config/LoggerConfig;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Z)V

    .line 915
    .local v2, "nlc":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    invoke-virtual {v2, v1}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->setParent(Lorg/apache/logging/log4j/core/config/LoggerConfig;)V

    .line 916
    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->loggerConfigs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->setParents()V

    .line 918
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/Logger;->getContext()Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/LoggerContext;->updateLoggers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 920
    .end local v2    # "nlc":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    :goto_0
    monitor-exit p0

    return-void

    .line 908
    .end local v0    # "loggerName":Ljava/lang/String;
    .end local v1    # "lc":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    .end local p1    # "logger":Lorg/apache/logging/log4j/core/Logger;
    .end local p2    # "additive":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 745
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->name:Ljava/lang/String;

    .line 746
    return-void
.end method

.method public setNanoClock(Lorg/apache/logging/log4j/core/util/NanoClock;)V
    .locals 1
    .param p1, "nanoClock"    # Lorg/apache/logging/log4j/core/util/NanoClock;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "nanoClock"
        }
    .end annotation

    .line 1192
    const-string v0, "nanoClock"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/core/util/NanoClock;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->nanoClock:Lorg/apache/logging/log4j/core/util/NanoClock;

    .line 1193
    return-void
.end method

.method public setPluginManager(Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;)V
    .locals 0
    .param p1, "pluginManager"    # Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pluginManager"
        }
    .end annotation

    .line 188
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->pluginManager:Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;

    .line 189
    return-void
.end method

.method public setScriptManager(Lorg/apache/logging/log4j/core/script/ScriptManager;)V
    .locals 0
    .param p1, "scriptManager"    # Lorg/apache/logging/log4j/core/script/ScriptManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "scriptManager"
        }
    .end annotation

    .line 180
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->scriptManager:Lorg/apache/logging/log4j/core/script/ScriptManager;

    .line 181
    return-void
.end method

.method protected setToDefault()V
    .locals 4

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->setName(Ljava/lang/String;)V

    .line 726
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->newBuilder()Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;

    move-result-object v0

    .line 727
    const-string v1, "%d{HH:mm:ss.SSS} [%thread] %-5level %logger{36} - %msg%n"

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->withPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;

    move-result-object v0

    .line 728
    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->withConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;

    move-result-object v0

    .line 729
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->build()Lorg/apache/logging/log4j/core/layout/PatternLayout;

    move-result-object v0

    .line 730
    .local v0, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    invoke-static {v0}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;->createDefaultAppenderForLayout(Lorg/apache/logging/log4j/core/Layout;)Lorg/apache/logging/log4j/core/appender/ConsoleAppender;

    move-result-object v1

    .line 731
    .local v1, "appender":Lorg/apache/logging/log4j/core/Appender;
    invoke-interface {v1}, Lorg/apache/logging/log4j/core/Appender;->start()V

    .line 732
    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->addAppender(Lorg/apache/logging/log4j/core/Appender;)V

    .line 733
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->getRootLogger()Lorg/apache/logging/log4j/core/config/LoggerConfig;

    move-result-object v2

    .line 734
    .local v2, "rootLoggerConfig":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v3}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->addAppender(Lorg/apache/logging/log4j/core/Appender;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/core/Filter;)V

    .line 736
    invoke-static {}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->getDefaultLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->setLevel(Lorg/apache/logging/log4j/Level;)V

    .line 737
    return-void
.end method

.method public setup()V
    .locals 0

    .line 461
    return-void
.end method

.method public start()V
    .locals 3

    .line 294
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->getState()Lorg/apache/logging/log4j/core/LifeCycle$State;

    move-result-object v0

    sget-object v1, Lorg/apache/logging/log4j/core/LifeCycle$State;->INITIALIZING:Lorg/apache/logging/log4j/core/LifeCycle$State;

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/LifeCycle$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->initialize()V

    .line 297
    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "Starting configuration {}"

    invoke-interface {v0, v1, p0}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 298
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->setStarting()V

    .line 299
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->watchManager:Lorg/apache/logging/log4j/core/util/WatchManager;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/util/WatchManager;->getIntervalSeconds()I

    move-result v0

    if-ltz v0, :cond_1

    .line 300
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->watchManager:Lorg/apache/logging/log4j/core/util/WatchManager;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/util/WatchManager;->start()V

    .line 302
    :cond_1
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->hasAsyncLoggers()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->asyncLoggerConfigDisruptor:Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->start()V

    .line 305
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 306
    .local v0, "alreadyStarted":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/logging/log4j/core/config/LoggerConfig;>;"
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->loggerConfigs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/config/LoggerConfig;

    .line 307
    .local v2, "logger":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->start()V

    .line 308
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 309
    .end local v2    # "logger":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    goto :goto_0

    .line 310
    :cond_3
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->appenders:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/Appender;

    .line 311
    .local v2, "appender":Lorg/apache/logging/log4j/core/Appender;
    invoke-interface {v2}, Lorg/apache/logging/log4j/core/Appender;->start()V

    .line 312
    .end local v2    # "appender":Lorg/apache/logging/log4j/core/Appender;
    goto :goto_1

    .line 313
    :cond_4
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->root:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 314
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->root:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->start()V

    .line 316
    :cond_5
    invoke-super {p0}, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->start()V

    .line 317
    sget-object v1, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Started configuration {} OK."

    invoke-interface {v1, v2, p0}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 318
    return-void
.end method

.method public stop(JLjava/util/concurrent/TimeUnit;)Z
    .locals 8
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "timeout",
            "timeUnit"
        }
    .end annotation

    .line 337
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->setStopping()V

    .line 338
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->stop(JLjava/util/concurrent/TimeUnit;Z)Z

    .line 339
    sget-object v0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "Stopping {}..."

    invoke-interface {v0, v1, p0}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 354
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->loggerConfigs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/config/LoggerConfig;

    .line 355
    .local v1, "loggerConfig":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getReliabilityStrategy()Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;

    move-result-object v2

    invoke-interface {v2, p0}, Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;->beforeStopConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)V

    .line 356
    .end local v1    # "loggerConfig":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    goto :goto_0

    .line 357
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->root:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getReliabilityStrategy()Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;->beforeStopConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)V

    .line 359
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "cls":Ljava/lang/String;
    sget-object v1, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->loggerConfigs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "{} notified {} ReliabilityStrategies that config will be stopped."

    invoke-interface {v1, v4, v0, v2}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 363
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->loggerConfigs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 364
    sget-object v1, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->loggerConfigs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "{} stopping {} LoggerConfigs."

    invoke-interface {v1, v4, v0, v2}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 365
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->loggerConfigs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/config/LoggerConfig;

    .line 366
    .local v2, "logger":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    invoke-virtual {v2, p1, p2, p3}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->stop(JLjava/util/concurrent/TimeUnit;)Z

    .line 367
    .end local v2    # "logger":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    goto :goto_1

    .line 369
    :cond_1
    sget-object v1, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "{} stopping root LoggerConfig."

    invoke-interface {v1, v2, v0}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 370
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->root:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->isStopped()Z

    move-result v1

    if-nez v1, :cond_2

    .line 371
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->root:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->stop(JLjava/util/concurrent/TimeUnit;)Z

    .line 374
    :cond_2
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->hasAsyncLoggers()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 375
    sget-object v1, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "{} stopping AsyncLoggerConfigDisruptor."

    invoke-interface {v1, v2, v0}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 376
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->asyncLoggerConfigDisruptor:Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->stop(JLjava/util/concurrent/TimeUnit;)Z

    .line 379
    :cond_3
    sget-object v1, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "{} notifying ReliabilityStrategies that appenders will be stopped."

    invoke-interface {v1, v2, v0}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 380
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->loggerConfigs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/config/LoggerConfig;

    .line 381
    .local v2, "loggerConfig":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getReliabilityStrategy()Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;->beforeStopAppenders()V

    .line 382
    .end local v2    # "loggerConfig":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    goto :goto_2

    .line 383
    :cond_4
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->root:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getReliabilityStrategy()Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;->beforeStopAppenders()V

    .line 386
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->appenders:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    sget-object v2, Lorg/apache/logging/log4j/core/Appender;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/Appender;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/logging/log4j/core/Appender;

    .line 387
    .local v1, "array":[Lorg/apache/logging/log4j/core/Appender;
    invoke-direct {p0, v1}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->getAsyncAppenders([Lorg/apache/logging/log4j/core/Appender;)Ljava/util/List;

    move-result-object v2

    .line 388
    .local v2, "async":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/Appender;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 390
    sget-object v4, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "{} stopping {} AsyncAppenders."

    invoke-interface {v4, v6, v0, v5}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 391
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/logging/log4j/core/Appender;

    .line 392
    .local v5, "appender":Lorg/apache/logging/log4j/core/Appender;
    instance-of v6, v5, Lorg/apache/logging/log4j/core/LifeCycle2;

    if-eqz v6, :cond_5

    .line 393
    move-object v6, v5

    check-cast v6, Lorg/apache/logging/log4j/core/LifeCycle2;

    invoke-interface {v6, p1, p2, p3}, Lorg/apache/logging/log4j/core/LifeCycle2;->stop(JLjava/util/concurrent/TimeUnit;)Z

    goto :goto_4

    .line 395
    :cond_5
    invoke-interface {v5}, Lorg/apache/logging/log4j/core/Appender;->stop()V

    .line 397
    .end local v5    # "appender":Lorg/apache/logging/log4j/core/Appender;
    :goto_4
    goto :goto_3

    .line 400
    :cond_6
    sget-object v4, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v5, "{} stopping remaining Appenders."

    invoke-interface {v4, v5, v0}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 401
    const/4 v4, 0x0

    .line 402
    .local v4, "appenderCount":I
    array-length v5, v1

    sub-int/2addr v5, v3

    .local v5, "i":I
    :goto_5
    if-ltz v5, :cond_9

    .line 403
    aget-object v6, v1, v5

    invoke-interface {v6}, Lorg/apache/logging/log4j/core/Appender;->isStarted()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 404
    aget-object v6, v1, v5

    instance-of v6, v6, Lorg/apache/logging/log4j/core/LifeCycle2;

    if-eqz v6, :cond_7

    .line 405
    aget-object v6, v1, v5

    check-cast v6, Lorg/apache/logging/log4j/core/LifeCycle2;

    invoke-interface {v6, p1, p2, p3}, Lorg/apache/logging/log4j/core/LifeCycle2;->stop(JLjava/util/concurrent/TimeUnit;)Z

    goto :goto_6

    .line 407
    :cond_7
    aget-object v6, v1, v5

    invoke-interface {v6}, Lorg/apache/logging/log4j/core/Appender;->stop()V

    .line 409
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 402
    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    .line 412
    .end local v5    # "i":I
    :cond_9
    sget-object v5, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "{} stopped {} remaining Appenders."

    invoke-interface {v5, v7, v0, v6}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 414
    sget-object v5, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v6, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->loggerConfigs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v6

    add-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "{} cleaning Appenders from {} LoggerConfigs."

    invoke-interface {v5, v7, v0, v6}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 415
    iget-object v5, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->loggerConfigs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/logging/log4j/core/config/LoggerConfig;

    .line 422
    .local v6, "loggerConfig":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->clearAppenders()V

    .line 423
    .end local v6    # "loggerConfig":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    goto :goto_7

    .line 424
    :cond_a
    iget-object v5, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->root:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->clearAppenders()V

    .line 426
    iget-object v5, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->watchManager:Lorg/apache/logging/log4j/core/util/WatchManager;

    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/util/WatchManager;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 427
    iget-object v5, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->watchManager:Lorg/apache/logging/log4j/core/util/WatchManager;

    invoke-virtual {v5, p1, p2, p3}, Lorg/apache/logging/log4j/core/util/WatchManager;->stop(JLjava/util/concurrent/TimeUnit;)Z

    .line 429
    :cond_b
    iget-object v5, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->configurationScheduler:Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;

    invoke-virtual {v5, p1, p2, p3}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->stop(JLjava/util/concurrent/TimeUnit;)Z

    .line 431
    iget-object v5, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->advertiser:Lorg/apache/logging/log4j/core/net/Advertiser;

    if-eqz v5, :cond_c

    iget-object v6, p0, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->advertisement:Ljava/lang/Object;

    if-eqz v6, :cond_c

    .line 432
    invoke-interface {v5, v6}, Lorg/apache/logging/log4j/core/net/Advertiser;->unadvertise(Ljava/lang/Object;)V

    .line 434
    :cond_c
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->setStopped()V

    .line 435
    sget-object v5, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v6, "Stopped {} OK"

    invoke-interface {v5, v6, p0}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 436
    return v3
.end method
