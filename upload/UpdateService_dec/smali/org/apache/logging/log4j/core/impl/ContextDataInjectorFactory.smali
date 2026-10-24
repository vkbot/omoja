.class public Lorg/apache/logging/log4j/core/impl/ContextDataInjectorFactory;
.super Ljava/lang/Object;
.source "ContextDataInjectorFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDefaultInjector()Lorg/apache/logging/log4j/core/ContextDataInjector;
    .locals 2

    .line 87
    invoke-static {}, Lorg/apache/logging/log4j/ThreadContext;->getThreadContextMap()Lorg/apache/logging/log4j/spi/ReadOnlyThreadContextMap;

    move-result-object v0

    .line 90
    .local v0, "threadContextMap":Lorg/apache/logging/log4j/spi/ReadOnlyThreadContextMap;
    instance-of v1, v0, Lorg/apache/logging/log4j/spi/DefaultThreadContextMap;

    if-nez v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    instance-of v1, v0, Lorg/apache/logging/log4j/spi/CopyOnWrite;

    if-eqz v1, :cond_1

    .line 94
    new-instance v1, Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector$ForCopyOnWriteThreadContextMap;

    invoke-direct {v1}, Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector$ForCopyOnWriteThreadContextMap;-><init>()V

    return-object v1

    .line 96
    :cond_1
    new-instance v1, Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector$ForGarbageFreeThreadContextMap;

    invoke-direct {v1}, Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector$ForGarbageFreeThreadContextMap;-><init>()V

    return-object v1

    .line 91
    :cond_2
    :goto_0
    new-instance v1, Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector$ForDefaultThreadContextMap;

    invoke-direct {v1}, Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector$ForDefaultThreadContextMap;-><init>()V

    return-object v1
.end method

.method public static createInjector()Lorg/apache/logging/log4j/core/ContextDataInjector;
    .locals 6

    .line 69
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    const-string v1, "log4j2.ContextDataInjector"

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 71
    invoke-static {}, Lorg/apache/logging/log4j/core/impl/ContextDataInjectorFactory;->createDefaultInjector()Lorg/apache/logging/log4j/core/ContextDataInjector;

    move-result-object v1

    return-object v1

    .line 74
    :cond_0
    :try_start_0
    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/apache/logging/log4j/core/ContextDataInjector;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 76
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/logging/log4j/core/ContextDataInjector;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/ContextDataInjector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 77
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/logging/log4j/core/ContextDataInjector;>;"
    :catch_0
    move-exception v1

    .line 78
    .local v1, "dynamicFailed":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/logging/log4j/core/impl/ContextDataInjectorFactory;->createDefaultInjector()Lorg/apache/logging/log4j/core/ContextDataInjector;

    move-result-object v2

    .line 79
    .local v2, "result":Lorg/apache/logging/log4j/core/ContextDataInjector;
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v3

    .line 81
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 79
    const-string v5, "Could not create ContextDataInjector for \'{}\', using default {}: {}"

    invoke-virtual {v3, v5, v0, v4, v1}, Lorg/apache/logging/log4j/status/StatusLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    return-object v2
.end method
