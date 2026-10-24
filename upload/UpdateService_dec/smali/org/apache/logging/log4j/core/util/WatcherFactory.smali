.class public Lorg/apache/logging/log4j/core/util/WatcherFactory;
.super Ljava/lang/Object;
.source "WatcherFactory.java"


# static fields
.field private static LOGGER:Lorg/apache/logging/log4j/Logger;

.field private static volatile factory:Lorg/apache/logging/log4j/core/util/WatcherFactory;

.field private static pluginManager:Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;


# instance fields
.field private final plugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/util/WatcherFactory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 40
    new-instance v0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;

    const-string v1, "Watcher"

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/WatcherFactory;->pluginManager:Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lorg/apache/logging/log4j/core/util/WatcherFactory;->pluginManager:Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->collectPlugins(Ljava/util/List;)V

    .line 48
    sget-object v0, Lorg/apache/logging/log4j/core/util/WatcherFactory;->pluginManager:Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->getPlugins()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/WatcherFactory;->plugins:Ljava/util/Map;

    .line 49
    return-void
.end method

.method public static getInstance(Ljava/util/List;)Lorg/apache/logging/log4j/core/util/WatcherFactory;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/logging/log4j/core/util/WatcherFactory;"
        }
    .end annotation

    .line 52
    .local p0, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lorg/apache/logging/log4j/core/util/WatcherFactory;->factory:Lorg/apache/logging/log4j/core/util/WatcherFactory;

    if-nez v0, :cond_1

    .line 53
    sget-object v0, Lorg/apache/logging/log4j/core/util/WatcherFactory;->pluginManager:Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lorg/apache/logging/log4j/core/util/WatcherFactory;->factory:Lorg/apache/logging/log4j/core/util/WatcherFactory;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lorg/apache/logging/log4j/core/util/WatcherFactory;

    invoke-direct {v1, p0}, Lorg/apache/logging/log4j/core/util/WatcherFactory;-><init>(Ljava/util/List;)V

    sput-object v1, Lorg/apache/logging/log4j/core/util/WatcherFactory;->factory:Lorg/apache/logging/log4j/core/util/WatcherFactory;

    .line 57
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 59
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/logging/log4j/core/util/WatcherFactory;->factory:Lorg/apache/logging/log4j/core/util/WatcherFactory;

    return-object v0
.end method

.method public static instantiate(Ljava/lang/String;Ljava/lang/Class;Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/config/Reconfigurable;Ljava/util/List;J)Lorg/apache/logging/log4j/core/util/Watcher;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p2, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p3, "reconfigurable"    # Lorg/apache/logging/log4j/core/config/Reconfigurable;
    .param p5, "lastModifiedMillis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "name",
            "clazz",
            "configuration",
            "reconfigurable",
            "listeners",
            "lastModifiedMillis"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/logging/log4j/core/util/Watcher;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            "Lorg/apache/logging/log4j/core/config/Reconfigurable;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/ConfigurationListener;",
            ">;J)TT;"
        }
    .end annotation

    .line 83
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p4, "listeners":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/ConfigurationListener;>;"
    const-string v0, "No class provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    const/4 v0, 0x4

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Lorg/apache/logging/log4j/core/config/Configuration;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lorg/apache/logging/log4j/core/config/Reconfigurable;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-class v2, Ljava/util/List;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 86
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 87
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    aput-object p3, v0, v4

    aput-object p4, v0, v5

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v6

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/util/Watcher;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 96
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/logging/log4j/core/util/Throwables;->rethrow(Ljava/lang/Throwable;)V

    .line 98
    new-instance v1, Ljava/lang/InternalError;

    const-string v2, "Unreachable"

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 90
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 88
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v0

    .line 89
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No valid constructor for Watcher plugin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public newWatcher(Lorg/apache/logging/log4j/core/util/Source;Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/config/Reconfigurable;Ljava/util/List;J)Lorg/apache/logging/log4j/core/util/Watcher;
    .locals 9
    .param p1, "source"    # Lorg/apache/logging/log4j/core/util/Source;
    .param p2, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p3, "reconfigurable"    # Lorg/apache/logging/log4j/core/config/Reconfigurable;
    .param p5, "lastModifiedMillis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "source",
            "configuration",
            "reconfigurable",
            "configurationListeners",
            "lastModifiedMillis"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/util/Source;",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            "Lorg/apache/logging/log4j/core/config/Reconfigurable;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/ConfigurationListener;",
            ">;J)",
            "Lorg/apache/logging/log4j/core/util/Watcher;"
        }
    .end annotation

    .line 65
    .local p4, "configurationListeners":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/ConfigurationListener;>;"
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/util/Source;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Lorg/apache/logging/log4j/core/config/ConfigurationFileWatcher;

    move-object v1, v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/logging/log4j/core/config/ConfigurationFileWatcher;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/config/Reconfigurable;Ljava/util/List;J)V

    return-object v0

    .line 69
    :cond_0
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/util/Source;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/WatcherFactory;->plugins:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    .line 71
    .local v8, "pluginType":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    if-eqz v8, :cond_1

    .line 72
    invoke-virtual {v8}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getPluginClass()Ljava/lang/Class;

    move-result-object v2

    move-object v1, v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-static/range {v1 .. v7}, Lorg/apache/logging/log4j/core/util/WatcherFactory;->instantiate(Ljava/lang/String;Ljava/lang/Class;Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/config/Reconfigurable;Ljava/util/List;J)Lorg/apache/logging/log4j/core/util/Watcher;

    move-result-object v1

    return-object v1

    .line 75
    :cond_1
    sget-object v1, Lorg/apache/logging/log4j/core/util/WatcherFactory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "No Watcher plugin is available for protocol \'{}\'"

    invoke-interface {v1, v2, v0}, Lorg/apache/logging/log4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    const/4 v1, 0x0

    return-object v1
.end method
