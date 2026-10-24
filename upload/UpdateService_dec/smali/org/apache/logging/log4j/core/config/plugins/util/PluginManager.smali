.class public Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"


# static fields
.field private static final LOG4J_PACKAGES:Ljava/lang/String; = "org.apache.logging.log4j.core"

.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field private static final PACKAGES:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final category:Ljava/lang/String;

.field private plugins:Ljava/util/Map;
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
    .locals 1

    .line 36
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->PACKAGES:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 39
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "category"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->plugins:Ljava/util/Map;

    .line 50
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->category:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static addPackage(Ljava/lang/String;)V
    .locals 1
    .param p0, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "p"
        }
    .end annotation

    .line 76
    invoke-static {p0}, Lorg/apache/logging/log4j/util/Strings;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    return-void

    .line 79
    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->PACKAGES:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method public static addPackages(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 88
    .local p0, "packages":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 89
    .local v1, "pkg":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/logging/log4j/util/Strings;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    sget-object v2, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->PACKAGES:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 92
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 93
    :cond_1
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "args"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "ERROR: this tool is superseded by the annotation processor included in log4j-core."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 65
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "If the annotation processor does not work for you, please see the manual page:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "http://logging.apache.org/log4j/2.x/manual/configuration.html#ConfigurationSyntax"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 68
    return-void
.end method

.method private static mergeByName(Ljava/util/Map;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "newPlugins",
            "plugins"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<",
            "*>;>;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<",
            "*>;>;)V"
        }
    .end annotation

    .line 162
    .local p0, "newPlugins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;>;"
    .local p1, "plugins":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;>;"
    if-nez p1, :cond_0

    .line 163
    return-void

    .line 165
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    .line 166
    .local v1, "pluginType":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    .line 168
    .local v3, "existing":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    if-nez v3, :cond_1

    .line 169
    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 170
    :cond_1
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getPluginClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getPluginClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 171
    sget-object v4, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 172
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getPluginClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getPluginClass()Ljava/lang/Class;

    move-result-object v6

    .line 171
    const-string v7, "Plugin [{}] is already mapped to {}, ignoring {}"

    invoke-interface {v4, v7, v2, v5, v6}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    .end local v1    # "pluginType":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "existing":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    :cond_2
    :goto_1
    goto :goto_0

    .line 175
    :cond_3
    return-void
.end method


# virtual methods
.method public collectPlugins()V
    .locals 1

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->collectPlugins(Ljava/util/List;)V

    .line 119
    return-void
.end method

.method public collectPlugins(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
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

    .line 128
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->category:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "categoryLowerCase":Ljava/lang/String;
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 132
    .local v1, "newPlugins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;>;"
    invoke-static {}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->getInstance()Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->loadFromMainClassLoader()Ljava/util/Map;

    move-result-object v2

    .line 133
    .local v2, "builtInPlugins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;>;>;"
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    invoke-static {}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->getInstance()Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;

    move-result-object v3

    const-string v4, "org.apache.logging.log4j.core"

    invoke-virtual {v3, v4}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->loadFromPackage(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 138
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v1, v3}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->mergeByName(Ljava/util/Map;Ljava/util/List;)V

    .line 141
    invoke-static {}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->getInstance()Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->getPluginsByCategoryByBundleId()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 142
    .local v4, "pluginsByCategory":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;>;>;"
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v1, v5}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->mergeByName(Ljava/util/Map;Ljava/util/List;)V

    .line 143
    .end local v4    # "pluginsByCategory":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;>;>;"
    goto :goto_0

    .line 146
    :cond_1
    sget-object v3, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->PACKAGES:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 147
    .local v4, "pkg":Ljava/lang/String;
    invoke-static {}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->getInstance()Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->loadFromPackage(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v1, v5}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->mergeByName(Ljava/util/Map;Ljava/util/List;)V

    .line 148
    .end local v4    # "pkg":Ljava/lang/String;
    goto :goto_1

    .line 150
    :cond_2
    if-eqz p1, :cond_3

    .line 151
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 152
    .restart local v4    # "pkg":Ljava/lang/String;
    invoke-static {}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->getInstance()Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->loadFromPackage(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v1, v5}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->mergeByName(Ljava/util/Map;Ljava/util/List;)V

    .line 153
    .end local v4    # "pkg":Ljava/lang/String;
    goto :goto_2

    .line 156
    :cond_3
    sget-object v3, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v4, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->category:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "PluginManager \'{}\' found {} plugins"

    invoke-interface {v3, v6, v4, v5}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    iput-object v1, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->plugins:Ljava/util/Map;

    .line 159
    return-void
.end method

.method public getPluginType(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<",
            "*>;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->plugins:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    return-object v0
.end method

.method public getPlugins()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<",
            "*>;>;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->plugins:Ljava/util/Map;

    return-object v0
.end method
