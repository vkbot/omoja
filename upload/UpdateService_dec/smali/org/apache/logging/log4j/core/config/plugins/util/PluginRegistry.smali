.class public Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;
.super Ljava/lang/Object;
.source "PluginRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry$PluginTest;
    }
.end annotation


# static fields
.field private static volatile INSTANCE:Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;

.field private static final INSTANCE_LOCK:Ljava/lang/Object;

.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final pluginsByCategoryByBundleId:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<",
            "*>;>;>;>;"
        }
    .end annotation
.end field

.field private final pluginsByCategoryByPackage:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<",
            "*>;>;>;>;"
        }
    .end annotation
.end field

.field private final pluginsByCategoryRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<",
            "*>;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->pluginsByCategoryRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->pluginsByCategoryByBundleId:Ljava/util/concurrent/ConcurrentMap;

    .line 69
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->pluginsByCategoryByPackage:Ljava/util/concurrent/ConcurrentMap;

    .line 73
    return-void
.end method

.method private decodeCacheFiles(Ljava/lang/ClassLoader;)Ljava/util/Map;
    .locals 17
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "loader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<",
            "*>;>;>;"
        }
    .end annotation

    .line 159
    move-object/from16 v1, p1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 160
    .local v2, "startTime":J
    new-instance v0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;-><init>()V

    move-object v4, v0

    .line 162
    .local v4, "cache":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;
    :try_start_0
    const-string v0, "META-INF/org/apache/logging/log4j/core/config/plugins/Log4j2Plugins.dat"

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    .line 163
    .local v0, "resources":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    if-nez v0, :cond_0

    .line 164
    sget-object v5, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v6, "Plugin preloads not available from class loader {}"

    invoke-interface {v5, v6, v1}, Lorg/apache/logging/log4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {v4, v0}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;->loadCacheFiles(Ljava/util/Enumeration;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v0    # "resources":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :goto_0
    goto :goto_1

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "ioe":Ljava/io/IOException;
    sget-object v5, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v6, "Unable to preload plugins"

    invoke-interface {v5, v6, v0}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v5, v0

    .line 172
    .local v5, "newPluginsByCategory":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;>;>;"
    const/4 v0, 0x0

    .line 173
    .local v0, "pluginCount":I
    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;->getAllCategories()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 174
    .local v7, "outer":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;>;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 175
    .local v8, "categoryLowerCase":Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 176
    .local v9, "types":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;>;"
    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v11, v0

    .end local v0    # "pluginCount":I
    .local v11, "pluginCount":I
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/util/Map$Entry;

    .line 178
    .local v12, "inner":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;

    .line 179
    .local v13, "entry":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;
    invoke-virtual {v13}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->getClassName()Ljava/lang/String;

    move-result-object v14

    .line 181
    .local v14, "className":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v1, v14}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 182
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v15, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_3

    move-object/from16 v16, v4

    .end local v4    # "cache":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;
    .local v16, "cache":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;
    :try_start_2
    invoke-virtual {v13}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v13, v0, v4}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;-><init>(Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;Ljava/lang/Class;Ljava/lang/String;)V

    move-object v4, v15

    .line 183
    .local v4, "type":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_1

    .line 184
    nop

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "type":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    add-int/lit8 v11, v11, 0x1

    .line 189
    :goto_4
    goto :goto_7

    .line 187
    :catch_1
    move-exception v0

    goto :goto_5

    .line 185
    :catch_2
    move-exception v0

    goto :goto_6

    .line 187
    .end local v16    # "cache":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;
    .local v4, "cache":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;
    :catch_3
    move-exception v0

    move-object/from16 v16, v4

    .line 188
    .end local v4    # "cache":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;
    .local v0, "e":Ljava/lang/LinkageError;
    .restart local v16    # "cache":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;
    :goto_5
    sget-object v4, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v15, "Plugin [{}] could not be loaded due to linkage error."

    invoke-interface {v4, v15, v14, v0}, Lorg/apache/logging/log4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    .line 185
    .end local v0    # "e":Ljava/lang/LinkageError;
    .end local v16    # "cache":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;
    .restart local v4    # "cache":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;
    :catch_4
    move-exception v0

    move-object/from16 v16, v4

    .line 186
    .end local v4    # "cache":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    .restart local v16    # "cache":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;
    :goto_6
    sget-object v4, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v15, "Plugin [{}] could not be loaded due to missing classes."

    invoke-interface {v4, v15, v14, v0}, Lorg/apache/logging/log4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_4

    .line 190
    .end local v12    # "inner":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;>;"
    .end local v13    # "entry":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;
    .end local v14    # "className":Ljava/lang/String;
    :goto_7
    move-object/from16 v4, v16

    goto :goto_3

    .line 177
    .end local v16    # "cache":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;
    .restart local v4    # "cache":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;
    :cond_1
    move-object/from16 v16, v4

    .line 191
    .end local v4    # "cache":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;
    .end local v7    # "outer":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;>;>;"
    .end local v8    # "categoryLowerCase":Ljava/lang/String;
    .end local v9    # "types":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;>;"
    .restart local v16    # "cache":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;
    move v0, v11

    goto/16 :goto_2

    .line 192
    .end local v11    # "pluginCount":I
    .end local v16    # "cache":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;
    .local v0, "pluginCount":I
    .restart local v4    # "cache":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;
    :cond_2
    move-object/from16 v16, v4

    .end local v4    # "cache":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;
    .restart local v16    # "cache":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;
    move v4, v0

    .line 193
    .local v4, "numPlugins":I
    sget-object v6, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v7, Lorg/apache/logging/log4j/core/config/plugins/util/-$$Lambda$PluginRegistry$-9P4EQylNewbbFSOhAFd5xhAbYo;

    invoke-direct {v7, v2, v3, v4, v1}, Lorg/apache/logging/log4j/core/config/plugins/util/-$$Lambda$PluginRegistry$-9P4EQylNewbbFSOhAFd5xhAbYo;-><init>(JILjava/lang/ClassLoader;)V

    invoke-interface {v6, v7}, Lorg/apache/logging/log4j/Logger;->debug(Lorg/apache/logging/log4j/util/Supplier;)V

    .line 202
    return-object v5
.end method

.method public static getInstance()Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;
    .locals 3

    .line 82
    sget-object v0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->INSTANCE:Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;

    .line 83
    .local v0, "result":Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;
    if-nez v0, :cond_1

    .line 84
    sget-object v1, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 85
    :try_start_0
    sget-object v2, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->INSTANCE:Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;

    move-object v0, v2

    .line 86
    if-nez v0, :cond_0

    .line 87
    new-instance v2, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;

    invoke-direct {v2}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;-><init>()V

    move-object v0, v2

    sput-object v2, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->INSTANCE:Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;

    .line 89
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 91
    :cond_1
    :goto_0
    return-object v0
.end method

.method static synthetic lambda$decodeCacheFiles$0(JILjava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 8
    .param p0, "startTime"    # J
    .param p2, "numPlugins"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "startTime",
            "numPlugins",
            "loader"
        }
    .end annotation

    .line 194
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 195
    .local v0, "endTime":J
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Took "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .local v2, "sb":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#0.000000"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 197
    .local v3, "numFormat":Ljava/text/DecimalFormat;
    sub-long v4, v0, p0

    long-to-double v4, v4

    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    mul-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string v4, " seconds to load "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    const-string v4, " plugins from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method static synthetic lambda$loadFromPackage$1(JLorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p0, "startTime"    # J
    .param p2, "resolver"    # Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;
    .param p3, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "startTime",
            "resolver",
            "pkg"
        }
    .end annotation

    .line 264
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 265
    .local v0, "endTime":J
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Took "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    .local v2, "sb":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#0.000000"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 267
    .local v3, "numFormat":Ljava/text/DecimalFormat;
    sub-long v4, v0, p0

    long-to-double v4, v4

    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    mul-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const-string v4, " seconds to load "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->getClasses()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 269
    const-string v4, " plugins from package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 98
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->pluginsByCategoryRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->pluginsByCategoryByPackage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 100
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->pluginsByCategoryByBundleId:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 101
    return-void
.end method

.method public clearBundlePlugins(J)V
    .locals 2
    .param p1, "bundleId"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bundleId"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->pluginsByCategoryByBundleId:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-void
.end method

.method public getPluginsByCategoryByBundleId()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<",
            "*>;>;>;>;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->pluginsByCategoryByBundleId:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public loadFromBundle(JLjava/lang/ClassLoader;)Ljava/util/Map;
    .locals 4
    .param p1, "bundleId"    # J
    .param p3, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "bundleId",
            "loader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<",
            "*>;>;>;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->pluginsByCategoryByBundleId:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 142
    .local v0, "existing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;>;>;"
    if-eqz v0, :cond_0

    .line 144
    return-object v0

    .line 146
    :cond_0
    invoke-direct {p0, p3}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->decodeCacheFiles(Ljava/lang/ClassLoader;)Ljava/util/Map;

    move-result-object v1

    .line 151
    .local v1, "newPluginsByCategory":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;>;>;"
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->pluginsByCategoryByBundleId:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    .line 152
    if-eqz v0, :cond_1

    .line 153
    return-object v0

    .line 155
    :cond_1
    return-object v1
.end method

.method public loadFromMainClassLoader()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<",
            "*>;>;>;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->pluginsByCategoryRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 115
    .local v0, "existing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;>;>;"
    if-eqz v0, :cond_0

    .line 117
    return-object v0

    .line 119
    :cond_0
    invoke-static {}, Lorg/apache/logging/log4j/core/util/Loader;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->decodeCacheFiles(Ljava/lang/ClassLoader;)Ljava/util/Map;

    move-result-object v1

    .line 124
    .local v1, "newPluginsByCategory":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;>;>;"
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->pluginsByCategoryRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    return-object v1

    .line 127
    :cond_1
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->pluginsByCategoryRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    return-object v2
.end method

.method public loadFromPackage(Ljava/lang/String;)Ljava/util/Map;
    .locals 26
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pkg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<",
            "*>;>;>;"
        }
    .end annotation

    .line 209
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p1 .. p1}, Lorg/apache/logging/log4j/util/Strings;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    return-object v2

    .line 213
    :cond_0
    iget-object v2, v0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->pluginsByCategoryByPackage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 214
    .local v2, "existing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;>;>;"
    if-eqz v2, :cond_1

    .line 216
    return-object v2

    .line 219
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 220
    .local v3, "startTime":J
    new-instance v5, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;

    invoke-direct {v5}, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;-><init>()V

    .line 221
    .local v5, "resolver":Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;
    invoke-static {}, Lorg/apache/logging/log4j/core/util/Loader;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 222
    .local v6, "classLoader":Ljava/lang/ClassLoader;
    if-eqz v6, :cond_2

    .line 223
    invoke-virtual {v5, v6}, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 225
    :cond_2
    new-instance v7, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry$PluginTest;

    invoke-direct {v7}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry$PluginTest;-><init>()V

    invoke-virtual {v5, v7, v1}, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->findInPackage(Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;Ljava/lang/String;)V

    .line 227
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 228
    .local v7, "newPluginsByCategory":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;>;>;"
    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;->getClasses()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Class;

    .line 229
    .local v9, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v10, Lorg/apache/logging/log4j/core/config/plugins/Plugin;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Lorg/apache/logging/log4j/core/config/plugins/Plugin;

    .line 230
    .local v10, "plugin":Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    invoke-interface {v10}, Lorg/apache/logging/log4j/core/config/plugins/Plugin;->category()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 231
    .local v11, "categoryLowerCase":Ljava/lang/String;
    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 232
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;>;"
    if-nez v12, :cond_3

    .line 233
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v13

    invoke-interface {v7, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_3
    new-instance v13, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;

    invoke-direct {v13}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;-><init>()V

    .line 236
    .local v13, "mainEntry":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;
    invoke-interface {v10}, Lorg/apache/logging/log4j/core/config/plugins/Plugin;->elementType()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 237
    invoke-interface {v10}, Lorg/apache/logging/log4j/core/config/plugins/Plugin;->name()Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    :cond_4
    invoke-interface {v10}, Lorg/apache/logging/log4j/core/config/plugins/Plugin;->elementType()Ljava/lang/String;

    move-result-object v14

    .line 238
    .local v14, "mainElementName":Ljava/lang/String;
    :goto_1
    invoke-interface {v10}, Lorg/apache/logging/log4j/core/config/plugins/Plugin;->name()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v2

    .end local v2    # "existing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;>;>;"
    .local v17, "existing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;>;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->setKey(Ljava/lang/String;)V

    .line 239
    invoke-interface {v10}, Lorg/apache/logging/log4j/core/config/plugins/Plugin;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->setName(Ljava/lang/String;)V

    .line 240
    invoke-interface {v10}, Lorg/apache/logging/log4j/core/config/plugins/Plugin;->category()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->setCategory(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->setClassName(Ljava/lang/String;)V

    .line 242
    invoke-interface {v10}, Lorg/apache/logging/log4j/core/config/plugins/Plugin;->printObject()Z

    move-result v2

    invoke-virtual {v13, v2}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->setPrintable(Z)V

    .line 243
    invoke-interface {v10}, Lorg/apache/logging/log4j/core/config/plugins/Plugin;->deferChildren()Z

    move-result v2

    invoke-virtual {v13, v2}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->setDefer(Z)V

    .line 244
    new-instance v2, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    invoke-direct {v2, v13, v9, v14}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;-><init>(Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;Ljava/lang/Class;Ljava/lang/String;)V

    .line 245
    .local v2, "mainType":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    move-object/from16 v16, v2

    .end local v2    # "mainType":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    .local v16, "mainType":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    const-class v2, Lorg/apache/logging/log4j/core/config/plugins/PluginAliases;

    invoke-virtual {v9, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/config/plugins/PluginAliases;

    .line 247
    .local v2, "pluginAliases":Lorg/apache/logging/log4j/core/config/plugins/PluginAliases;
    if-eqz v2, :cond_7

    .line 248
    move-object/from16 v18, v6

    .end local v6    # "classLoader":Ljava/lang/ClassLoader;
    .local v18, "classLoader":Ljava/lang/ClassLoader;
    invoke-interface {v2}, Lorg/apache/logging/log4j/core/config/plugins/PluginAliases;->value()[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v19, v2

    .end local v2    # "pluginAliases":Lorg/apache/logging/log4j/core/config/plugins/PluginAliases;
    .local v19, "pluginAliases":Lorg/apache/logging/log4j/core/config/plugins/PluginAliases;
    array-length v2, v6

    const/16 v20, 0x0

    move-object/from16 v21, v8

    move/from16 v8, v20

    :goto_2
    if-ge v8, v2, :cond_6

    aget-object v20, v6, v8

    .line 249
    .local v20, "alias":Ljava/lang/String;
    new-instance v22, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;

    invoke-direct/range {v22 .. v22}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;-><init>()V

    move-object/from16 v23, v22

    .line 250
    .local v23, "aliasEntry":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;
    move/from16 v22, v2

    invoke-interface {v10}, Lorg/apache/logging/log4j/core/config/plugins/Plugin;->elementType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 251
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_5
    invoke-interface {v10}, Lorg/apache/logging/log4j/core/config/plugins/Plugin;->elementType()Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "aliasElementName":Ljava/lang/String;
    :goto_3
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v25, v6

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v24, v11

    move-object/from16 v11, v23

    .end local v23    # "aliasEntry":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;
    .local v11, "aliasEntry":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;
    .local v24, "categoryLowerCase":Ljava/lang/String;
    invoke-virtual {v11, v6}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->setKey(Ljava/lang/String;)V

    .line 253
    invoke-interface {v10}, Lorg/apache/logging/log4j/core/config/plugins/Plugin;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->setName(Ljava/lang/String;)V

    .line 254
    invoke-interface {v10}, Lorg/apache/logging/log4j/core/config/plugins/Plugin;->category()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->setCategory(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->setClassName(Ljava/lang/String;)V

    .line 256
    invoke-interface {v10}, Lorg/apache/logging/log4j/core/config/plugins/Plugin;->printObject()Z

    move-result v6

    invoke-virtual {v11, v6}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->setPrintable(Z)V

    .line 257
    invoke-interface {v10}, Lorg/apache/logging/log4j/core/config/plugins/Plugin;->deferChildren()Z

    move-result v6

    invoke-virtual {v11, v6}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->setDefer(Z)V

    .line 258
    new-instance v6, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    invoke-direct {v6, v11, v9, v2}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;-><init>(Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;Ljava/lang/Class;Ljava/lang/String;)V

    .line 259
    .local v6, "aliasType":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    .end local v2    # "aliasElementName":Ljava/lang/String;
    .end local v6    # "aliasType":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    .end local v11    # "aliasEntry":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;
    .end local v20    # "alias":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v22

    move-object/from16 v11, v24

    move-object/from16 v6, v25

    goto :goto_2

    .end local v24    # "categoryLowerCase":Ljava/lang/String;
    .local v11, "categoryLowerCase":Ljava/lang/String;
    :cond_6
    move-object/from16 v24, v11

    .end local v11    # "categoryLowerCase":Ljava/lang/String;
    .restart local v24    # "categoryLowerCase":Ljava/lang/String;
    goto :goto_4

    .line 247
    .end local v18    # "classLoader":Ljava/lang/ClassLoader;
    .end local v19    # "pluginAliases":Lorg/apache/logging/log4j/core/config/plugins/PluginAliases;
    .end local v24    # "categoryLowerCase":Ljava/lang/String;
    .local v2, "pluginAliases":Lorg/apache/logging/log4j/core/config/plugins/PluginAliases;
    .local v6, "classLoader":Ljava/lang/ClassLoader;
    .restart local v11    # "categoryLowerCase":Ljava/lang/String;
    :cond_7
    move-object/from16 v19, v2

    move-object/from16 v18, v6

    move-object/from16 v21, v8

    move-object/from16 v24, v11

    .line 262
    .end local v2    # "pluginAliases":Lorg/apache/logging/log4j/core/config/plugins/PluginAliases;
    .end local v6    # "classLoader":Ljava/lang/ClassLoader;
    .end local v9    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "plugin":Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    .end local v11    # "categoryLowerCase":Ljava/lang/String;
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;>;"
    .end local v13    # "mainEntry":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;
    .end local v14    # "mainElementName":Ljava/lang/String;
    .end local v16    # "mainType":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    .restart local v18    # "classLoader":Ljava/lang/ClassLoader;
    :goto_4
    move-object/from16 v2, v17

    move-object/from16 v6, v18

    move-object/from16 v8, v21

    goto/16 :goto_0

    .line 263
    .end local v17    # "existing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;>;>;"
    .end local v18    # "classLoader":Ljava/lang/ClassLoader;
    .local v2, "existing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;>;>;"
    .restart local v6    # "classLoader":Ljava/lang/ClassLoader;
    :cond_8
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    .end local v2    # "existing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;>;>;"
    .end local v6    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v17    # "existing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;>;>;"
    .restart local v18    # "classLoader":Ljava/lang/ClassLoader;
    sget-object v2, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v6, Lorg/apache/logging/log4j/core/config/plugins/util/-$$Lambda$PluginRegistry$lsNRKSYRZtCUcByVFTSA5hQuStc;

    invoke-direct {v6, v3, v4, v5, v1}, Lorg/apache/logging/log4j/core/config/plugins/util/-$$Lambda$PluginRegistry$lsNRKSYRZtCUcByVFTSA5hQuStc;-><init>(JLorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Lorg/apache/logging/log4j/Logger;->debug(Lorg/apache/logging/log4j/util/Supplier;)V

    .line 276
    iget-object v2, v0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->pluginsByCategoryByPackage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1, v7}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 277
    .end local v17    # "existing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;>;>;"
    .restart local v2    # "existing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;>;>;"
    if-eqz v2, :cond_9

    .line 278
    return-object v2

    .line 280
    :cond_9
    return-object v7
.end method
