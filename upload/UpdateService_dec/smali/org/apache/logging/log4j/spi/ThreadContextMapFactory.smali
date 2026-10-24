.class public final Lorg/apache/logging/log4j/spi/ThreadContextMapFactory;
.super Ljava/lang/Object;
.source "ThreadContextMapFactory.java"


# static fields
.field private static final GC_FREE_THREAD_CONTEXT_KEY:Ljava/lang/String; = "log4j2.garbagefree.threadContextMap"

.field private static GcFreeThreadContextKey:Z = false

.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field private static final THREAD_CONTEXT_KEY:Ljava/lang/String; = "log4j2.threadContextMap"

.field private static ThreadContextMapName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/spi/ThreadContextMapFactory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 57
    invoke-static {}, Lorg/apache/logging/log4j/spi/ThreadContextMapFactory;->initPrivate()V

    .line 58
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method private static createDefaultThreadContextMap()Lorg/apache/logging/log4j/spi/ThreadContextMap;
    .locals 2

    .line 124
    sget-boolean v0, Lorg/apache/logging/log4j/util/Constants;->ENABLE_THREADLOCALS:Z

    if-eqz v0, :cond_1

    .line 125
    sget-boolean v0, Lorg/apache/logging/log4j/spi/ThreadContextMapFactory;->GcFreeThreadContextKey:Z

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;

    invoke-direct {v0}, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;-><init>()V

    return-object v0

    .line 128
    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;

    invoke-direct {v0}, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;-><init>()V

    return-object v0

    .line 130
    :cond_1
    new-instance v0, Lorg/apache/logging/log4j/spi/DefaultThreadContextMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/spi/DefaultThreadContextMap;-><init>(Z)V

    return-object v0
.end method

.method public static createThreadContextMap()Lorg/apache/logging/log4j/spi/ThreadContextMap;
    .locals 10

    .line 85
    invoke-static {}, Lorg/apache/logging/log4j/util/ProviderUtil;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 86
    .local v0, "cl":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    .line 87
    .local v1, "result":Lorg/apache/logging/log4j/spi/ThreadContextMap;
    sget-object v2, Lorg/apache/logging/log4j/spi/ThreadContextMapFactory;->ThreadContextMapName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 89
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 90
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Lorg/apache/logging/log4j/spi/ThreadContextMap;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/spi/ThreadContextMap;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 97
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    goto :goto_1

    .line 95
    :catch_0
    move-exception v2

    .line 96
    .local v2, "ex":Ljava/lang/Exception;
    sget-object v3, Lorg/apache/logging/log4j/spi/ThreadContextMapFactory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    sget-object v4, Lorg/apache/logging/log4j/spi/ThreadContextMapFactory;->ThreadContextMapName:Ljava/lang/String;

    const-string v5, "Unable to create configured ThreadContextMap {}"

    invoke-interface {v3, v5, v4, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 93
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 94
    .local v2, "cnfe":Ljava/lang/ClassNotFoundException;
    sget-object v3, Lorg/apache/logging/log4j/spi/ThreadContextMapFactory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    sget-object v4, Lorg/apache/logging/log4j/spi/ThreadContextMapFactory;->ThreadContextMapName:Ljava/lang/String;

    const-string v5, "Unable to locate configured ThreadContextMap {}"

    invoke-interface {v3, v5, v4}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .end local v2    # "cnfe":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 99
    :cond_1
    :goto_1
    if-nez v1, :cond_3

    invoke-static {}, Lorg/apache/logging/log4j/util/ProviderUtil;->hasProviders()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lorg/apache/logging/log4j/LogManager;->getFactory()Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 100
    invoke-static {}, Lorg/apache/logging/log4j/LogManager;->getFactory()Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "factoryClassName":Ljava/lang/String;
    invoke-static {}, Lorg/apache/logging/log4j/util/ProviderUtil;->getProviders()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/logging/log4j/spi/Provider;

    .line 102
    .local v4, "provider":Lorg/apache/logging/log4j/spi/Provider;
    invoke-virtual {v4}, Lorg/apache/logging/log4j/spi/Provider;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 103
    invoke-virtual {v4}, Lorg/apache/logging/log4j/spi/Provider;->loadThreadContextMap()Ljava/lang/Class;

    move-result-object v5

    .line 104
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/logging/log4j/spi/ThreadContextMap;>;"
    if-eqz v5, :cond_2

    .line 106
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/logging/log4j/spi/ThreadContextMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v6

    .line 107
    goto :goto_3

    .line 108
    :catch_2
    move-exception v6

    .line 109
    .local v6, "e":Ljava/lang/Exception;
    sget-object v7, Lorg/apache/logging/log4j/spi/ThreadContextMapFactory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 110
    invoke-virtual {v4}, Lorg/apache/logging/log4j/spi/Provider;->getThreadContextMap()Ljava/lang/String;

    move-result-object v8

    .line 109
    const-string v9, "Unable to locate or load configured ThreadContextMap {}"

    invoke-interface {v7, v9, v8, v6}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    invoke-static {}, Lorg/apache/logging/log4j/spi/ThreadContextMapFactory;->createDefaultThreadContextMap()Lorg/apache/logging/log4j/spi/ThreadContextMap;

    move-result-object v1

    .line 115
    .end local v4    # "provider":Lorg/apache/logging/log4j/spi/Provider;
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/logging/log4j/spi/ThreadContextMap;>;"
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    goto :goto_2

    .line 117
    .end local v2    # "factoryClassName":Ljava/lang/String;
    :cond_3
    :goto_3
    if-nez v1, :cond_4

    .line 118
    invoke-static {}, Lorg/apache/logging/log4j/spi/ThreadContextMapFactory;->createDefaultThreadContextMap()Lorg/apache/logging/log4j/spi/ThreadContextMap;

    move-result-object v1

    .line 120
    :cond_4
    return-object v1
.end method

.method public static init()V
    .locals 0

    .line 65
    invoke-static {}, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->init()V

    .line 66
    invoke-static {}, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;->init()V

    .line 67
    invoke-static {}, Lorg/apache/logging/log4j/spi/DefaultThreadContextMap;->init()V

    .line 68
    invoke-static {}, Lorg/apache/logging/log4j/spi/ThreadContextMapFactory;->initPrivate()V

    .line 69
    return-void
.end method

.method private static initPrivate()V
    .locals 2

    .line 76
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    .line 77
    .local v0, "properties":Lorg/apache/logging/log4j/util/PropertiesUtil;
    const-string v1, "log4j2.threadContextMap"

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/logging/log4j/spi/ThreadContextMapFactory;->ThreadContextMapName:Ljava/lang/String;

    .line 78
    const-string v1, "log4j2.garbagefree.threadContextMap"

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/logging/log4j/spi/ThreadContextMapFactory;->GcFreeThreadContextKey:Z

    .line 79
    return-void
.end method
