.class public final Lorg/apache/logging/log4j/util/ProviderUtil;
.super Ljava/lang/Object;
.source "ProviderUtil.java"


# static fields
.field private static final API_VERSION:Ljava/lang/String; = "Log4jAPIVersion"

.field private static final COMPATIBLE_API_VERSIONS:[Ljava/lang/String;

.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field protected static final PROVIDERS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/logging/log4j/spi/Provider;",
            ">;"
        }
    .end annotation
.end field

.field protected static final PROVIDER_RESOURCE:Ljava/lang/String; = "META-INF/log4j-provider.properties"

.field protected static final STARTUP_LOCK:Ljava/util/concurrent/locks/Lock;

.field private static volatile instance:Lorg/apache/logging/log4j/util/ProviderUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/util/ProviderUtil;->PROVIDERS:Ljava/util/Collection;

    .line 55
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/util/ProviderUtil;->STARTUP_LOCK:Ljava/util/concurrent/locks/Lock;

    .line 58
    const-string v0, "2.6.0"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/util/ProviderUtil;->COMPATIBLE_API_VERSIONS:[Ljava/lang/String;

    .line 59
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/util/ProviderUtil;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {}, Lorg/apache/logging/log4j/util/LoaderUtil;->getClassLoaders()[Ljava/lang/ClassLoader;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 68
    .local v3, "classLoader":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-static {v3}, Lorg/apache/logging/log4j/util/ProviderUtil;->loadProviders(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    goto :goto_1

    .line 69
    :catchall_0
    move-exception v4

    .line 70
    .local v4, "ex":Ljava/lang/Throwable;
    sget-object v5, Lorg/apache/logging/log4j/util/ProviderUtil;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v6, "Unable to retrieve provider from ClassLoader {}"

    invoke-interface {v5, v6, v3, v4}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    .end local v3    # "classLoader":Ljava/lang/ClassLoader;
    .end local v4    # "ex":Ljava/lang/Throwable;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    :cond_0
    const-string v0, "META-INF/log4j-provider.properties"

    invoke-static {v0}, Lorg/apache/logging/log4j/util/LoaderUtil;->findUrlResources(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/util/LoaderUtil$UrlResource;

    .line 74
    .local v1, "resource":Lorg/apache/logging/log4j/util/LoaderUtil$UrlResource;
    invoke-virtual {v1}, Lorg/apache/logging/log4j/util/LoaderUtil$UrlResource;->getUrl()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/logging/log4j/util/LoaderUtil$UrlResource;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/logging/log4j/util/ProviderUtil;->loadProvider(Ljava/net/URL;Ljava/lang/ClassLoader;)V

    .line 75
    .end local v1    # "resource":Lorg/apache/logging/log4j/util/LoaderUtil$UrlResource;
    goto :goto_2

    .line 76
    :cond_1
    return-void
.end method

.method protected static addProvider(Lorg/apache/logging/log4j/spi/Provider;)V
    .locals 2
    .param p0, "provider"    # Lorg/apache/logging/log4j/spi/Provider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "provider"
        }
    .end annotation

    .line 79
    sget-object v0, Lorg/apache/logging/log4j/util/ProviderUtil;->PROVIDERS:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lorg/apache/logging/log4j/util/ProviderUtil;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "Loaded Provider {}"

    invoke-interface {v0, v1, p0}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public static findClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 163
    invoke-static {}, Lorg/apache/logging/log4j/util/LoaderUtil;->getThreadContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static getProviders()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/logging/log4j/spi/Provider;",
            ">;"
        }
    .end annotation

    .line 129
    invoke-static {}, Lorg/apache/logging/log4j/util/ProviderUtil;->lazyInit()V

    .line 130
    sget-object v0, Lorg/apache/logging/log4j/util/ProviderUtil;->PROVIDERS:Ljava/util/Collection;

    return-object v0
.end method

.method public static hasProviders()Z
    .locals 1

    .line 134
    invoke-static {}, Lorg/apache/logging/log4j/util/ProviderUtil;->lazyInit()V

    .line 135
    sget-object v0, Lorg/apache/logging/log4j/util/ProviderUtil;->PROVIDERS:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected static lazyInit()V
    .locals 3

    .line 145
    sget-object v0, Lorg/apache/logging/log4j/util/ProviderUtil;->instance:Lorg/apache/logging/log4j/util/ProviderUtil;

    if-nez v0, :cond_1

    .line 147
    :try_start_0
    sget-object v0, Lorg/apache/logging/log4j/util/ProviderUtil;->STARTUP_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :try_start_1
    sget-object v0, Lorg/apache/logging/log4j/util/ProviderUtil;->instance:Lorg/apache/logging/log4j/util/ProviderUtil;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Lorg/apache/logging/log4j/util/ProviderUtil;

    invoke-direct {v0}, Lorg/apache/logging/log4j/util/ProviderUtil;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/util/ProviderUtil;->instance:Lorg/apache/logging/log4j/util/ProviderUtil;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    :cond_0
    :try_start_2
    sget-object v0, Lorg/apache/logging/log4j/util/ProviderUtil;->STARTUP_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 154
    nop

    .line 158
    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    sget-object v1, Lorg/apache/logging/log4j/util/ProviderUtil;->STARTUP_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lorg/apache/logging/log4j/util/ProviderUtil;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Interrupted before Log4j Providers could be loaded."

    invoke-interface {v1, v2, v0}, Lorg/apache/logging/log4j/Logger;->fatal(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 160
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :goto_0
    return-void
.end method

.method protected static loadProvider(Ljava/net/URL;Ljava/lang/ClassLoader;)V
    .locals 4
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "url",
            "cl"
        }
    .end annotation

    .line 92
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/logging/log4j/util/PropertiesUtil;->loadClose(Ljava/io/InputStream;Ljava/lang/Object;)Ljava/util/Properties;

    move-result-object v0

    .line 93
    .local v0, "props":Ljava/util/Properties;
    const-string v1, "Log4jAPIVersion"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/logging/log4j/util/ProviderUtil;->validVersion(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    new-instance v1, Lorg/apache/logging/log4j/spi/Provider;

    invoke-direct {v1, v0, p0, p1}, Lorg/apache/logging/log4j/spi/Provider;-><init>(Ljava/util/Properties;Ljava/net/URL;Ljava/lang/ClassLoader;)V

    .line 95
    .local v1, "provider":Lorg/apache/logging/log4j/spi/Provider;
    sget-object v2, Lorg/apache/logging/log4j/util/ProviderUtil;->PROVIDERS:Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v2, Lorg/apache/logging/log4j/util/ProviderUtil;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Loaded Provider {}"

    invoke-interface {v2, v3, v1}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v0    # "props":Ljava/util/Properties;
    .end local v1    # "provider":Lorg/apache/logging/log4j/spi/Provider;
    :cond_0
    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/apache/logging/log4j/util/ProviderUtil;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Unable to open {}"

    invoke-interface {v1, v2, p0, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method protected static loadProviders(Ljava/lang/ClassLoader;)V
    .locals 4
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "classLoader"
        }
    .end annotation

    .line 108
    const-class v0, Lorg/apache/logging/log4j/spi/Provider;

    invoke-static {v0, p0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 109
    .local v0, "serviceLoader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Lorg/apache/logging/log4j/spi/Provider;>;"
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/spi/Provider;

    .line 110
    .local v2, "provider":Lorg/apache/logging/log4j/spi/Provider;
    invoke-virtual {v2}, Lorg/apache/logging/log4j/spi/Provider;->getVersions()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/logging/log4j/util/ProviderUtil;->validVersion(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lorg/apache/logging/log4j/util/ProviderUtil;->PROVIDERS:Ljava/util/Collection;

    invoke-interface {v3, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 111
    sget-object v3, Lorg/apache/logging/log4j/util/ProviderUtil;->PROVIDERS:Ljava/util/Collection;

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v2    # "provider":Lorg/apache/logging/log4j/spi/Provider;
    :cond_0
    goto :goto_0

    .line 114
    :cond_1
    return-void
.end method

.method protected static loadProviders(Ljava/util/Enumeration;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "urls",
            "cl"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 121
    .local p0, "urls":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    if-eqz p0, :cond_0

    .line 122
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    invoke-static {v0, p1}, Lorg/apache/logging/log4j/util/ProviderUtil;->loadProvider(Ljava/net/URL;Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 126
    :cond_0
    return-void
.end method

.method private static validVersion(Ljava/lang/String;)Z
    .locals 6
    .param p0, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "version"
        }
    .end annotation

    .line 167
    sget-object v0, Lorg/apache/logging/log4j/util/ProviderUtil;->COMPATIBLE_API_VERSIONS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 168
    .local v4, "v":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 169
    const/4 v0, 0x1

    return v0

    .line 167
    .end local v4    # "v":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 172
    :cond_1
    return v2
.end method
