.class public Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector;
.super Ljava/lang/Object;
.source "ThreadContextDataInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector$ForCopyOnWriteThreadContextMap;,
        Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector$ForGarbageFreeThreadContextMap;,
        Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector$ForDefaultThreadContextMap;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field private static final SERVICE_PROVIDERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/util/ContextDataProvider;",
            ">;"
        }
    .end annotation
.end field

.field public static contextDataProviders:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/logging/log4j/core/util/ContextDataProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector;->contextDataProviders:Ljava/util/Collection;

    .line 64
    invoke-static {}, Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector;->getServiceProviders()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector;->SERVICE_PROVIDERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .line 54
    invoke-static {}, Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector;->getProviders()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static copyProperties(Ljava/util/List;Lorg/apache/logging/log4j/util/StringMap;)V
    .locals 4
    .param p1, "result"    # Lorg/apache/logging/log4j/util/StringMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "properties",
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/Property;",
            ">;",
            "Lorg/apache/logging/log4j/util/StringMap;",
            ")V"
        }
    .end annotation

    .line 270
    .local p0, "properties":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Property;>;"
    if-eqz p0, :cond_0

    .line 271
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 272
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/config/Property;

    .line 273
    .local v1, "prop":Lorg/apache/logging/log4j/core/config/Property;
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/Property;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/Property;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lorg/apache/logging/log4j/util/StringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 271
    .end local v1    # "prop":Lorg/apache/logging/log4j/core/config/Property;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static getProviders()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/util/ContextDataProvider;",
            ">;"
        }
    .end annotation

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector;->contextDataProviders:Ljava/util/Collection;

    .line 280
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    sget-object v2, Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector;->SERVICE_PROVIDERS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 281
    .local v0, "providers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/util/ContextDataProvider;>;"
    sget-object v1, Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector;->contextDataProviders:Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 282
    sget-object v1, Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector;->SERVICE_PROVIDERS:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 283
    return-object v0
.end method

.method private static getServiceProviders()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/util/ContextDataProvider;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v0, "providers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/util/ContextDataProvider;>;"
    invoke-static {}, Lorg/apache/logging/log4j/util/LoaderUtil;->getClassLoaders()[Ljava/lang/ClassLoader;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 79
    .local v4, "classLoader":Ljava/lang/ClassLoader;
    :try_start_0
    const-class v5, Lorg/apache/logging/log4j/core/util/ContextDataProvider;

    invoke-static {v5, v4}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/logging/log4j/core/util/ContextDataProvider;

    .line 80
    .local v6, "provider":Lorg/apache/logging/log4j/core/util/ContextDataProvider;
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lorg/apache/logging/log4j/core/impl/-$$Lambda$ThreadContextDataInjector$7Y4ucS0E-XUyvFTNPNImuqLW9oI;

    invoke-direct {v8, v6}, Lorg/apache/logging/log4j/core/impl/-$$Lambda$ThreadContextDataInjector$7Y4ucS0E-XUyvFTNPNImuqLW9oI;-><init>(Lorg/apache/logging/log4j/core/util/ContextDataProvider;)V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 81
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .end local v6    # "provider":Lorg/apache/logging/log4j/core/util/ContextDataProvider;
    :cond_0
    goto :goto_1

    .line 86
    :cond_1
    goto :goto_2

    .line 84
    :catchall_0
    move-exception v5

    .line 85
    .local v5, "ex":Ljava/lang/Throwable;
    sget-object v6, Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Unable to access Context Data Providers {}"

    invoke-interface {v6, v8, v7}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    .end local v4    # "classLoader":Ljava/lang/ClassLoader;
    .end local v5    # "ex":Ljava/lang/Throwable;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 88
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static initServiceProviders()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 73
    return-void
.end method

.method static synthetic lambda$getServiceProviders$0(Lorg/apache/logging/log4j/core/util/ContextDataProvider;Lorg/apache/logging/log4j/core/util/ContextDataProvider;)Z
    .locals 2
    .param p0, "provider"    # Lorg/apache/logging/log4j/core/util/ContextDataProvider;
    .param p1, "p"    # Lorg/apache/logging/log4j/core/util/ContextDataProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "provider",
            "p"
        }
    .end annotation

    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
