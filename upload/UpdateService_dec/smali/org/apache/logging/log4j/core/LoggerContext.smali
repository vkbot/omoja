.class public Lorg/apache/logging/log4j/core/LoggerContext;
.super Lorg/apache/logging/log4j/core/AbstractLifeCycle;
.source "LoggerContext.java"

# interfaces
.implements Lorg/apache/logging/log4j/spi/LoggerContext;
.implements Ljava/lang/AutoCloseable;
.implements Lorg/apache/logging/log4j/spi/Terminable;
.implements Lorg/apache/logging/log4j/core/config/ConfigurationListener;
.implements Lorg/apache/logging/log4j/spi/LoggerContextShutdownEnabled;


# static fields
.field private static final EXTERNAL_CONTEXT_KEY:Ljava/lang/String; = "__EXTERNAL_CONTEXT_KEY__"

.field private static final NULL_CONFIGURATION:Lorg/apache/logging/log4j/core/config/Configuration;

.field public static final PROPERTY_CONFIG:Ljava/lang/String; = "config"


# instance fields
.field private volatile configLocation:Ljava/net/URI;

.field private final configLock:Ljava/util/concurrent/locks/Lock;

.field private volatile configuration:Lorg/apache/logging/log4j/core/config/Configuration;

.field private contextName:Ljava/lang/String;

.field private externalMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/spi/LoggerContextShutdownAware;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerRegistry:Lorg/apache/logging/log4j/spi/LoggerRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/logging/log4j/spi/LoggerRegistry<",
            "Lorg/apache/logging/log4j/core/Logger;",
            ">;"
        }
    .end annotation
.end field

.field private final propertyChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/beans/PropertyChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private shutdownCallback:Lorg/apache/logging/log4j/core/util/Cancellable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Lorg/apache/logging/log4j/core/config/NullConfiguration;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/config/NullConfiguration;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/LoggerContext;->NULL_CONFIGURATION:Lorg/apache/logging/log4j/core/config/Configuration;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
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

    .line 99
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/net/URI;

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/logging/log4j/core/LoggerContext;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/net/URI;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "externalContext"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "externalContext"
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    check-cast v0, Ljava/net/URI;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/logging/log4j/core/LoggerContext;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/net/URI;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "externalContext"    # Ljava/lang/Object;
    .param p3, "configLocn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "externalContext",
            "configLocn"
        }
    .end annotation

    .line 137
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/AbstractLifeCycle;-><init>()V

    .line 76
    new-instance v0, Lorg/apache/logging/log4j/spi/LoggerRegistry;

    invoke-direct {v0}, Lorg/apache/logging/log4j/spi/LoggerRegistry;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->loggerRegistry:Lorg/apache/logging/log4j/spi/LoggerRegistry;

    .line 77
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->propertyChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 84
    new-instance v0, Lorg/apache/logging/log4j/core/config/DefaultConfiguration;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/config/DefaultConfiguration;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->externalMap:Ljava/util/concurrent/ConcurrentMap;

    .line 91
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configLock:Ljava/util/concurrent/locks/Lock;

    .line 138
    iput-object p1, p0, Lorg/apache/logging/log4j/core/LoggerContext;->contextName:Ljava/lang/String;

    .line 139
    const-string v0, "__EXTERNAL_CONTEXT_KEY__"

    if-nez p2, :cond_0

    .line 140
    iget-object v1, p0, Lorg/apache/logging/log4j/core/LoggerContext;->externalMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 142
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/LoggerContext;->externalMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :goto_0
    if-eqz p3, :cond_1

    .line 147
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .local v0, "uri":Ljava/net/URI;
    goto :goto_1

    .line 148
    .end local v0    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v0

    .line 149
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    move-object v0, v1

    .line 151
    .local v0, "uri":Ljava/net/URI;
    :goto_1
    iput-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configLocation:Ljava/net/URI;

    .line 152
    .end local v0    # "uri":Ljava/net/URI;
    goto :goto_2

    .line 153
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configLocation:Ljava/net/URI;

    .line 155
    :goto_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/net/URI;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "externalContext"    # Ljava/lang/Object;
    .param p3, "configLocn"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "externalContext",
            "configLocn"
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/AbstractLifeCycle;-><init>()V

    .line 76
    new-instance v0, Lorg/apache/logging/log4j/spi/LoggerRegistry;

    invoke-direct {v0}, Lorg/apache/logging/log4j/spi/LoggerRegistry;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->loggerRegistry:Lorg/apache/logging/log4j/spi/LoggerRegistry;

    .line 77
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->propertyChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 84
    new-instance v0, Lorg/apache/logging/log4j/core/config/DefaultConfiguration;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/config/DefaultConfiguration;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->externalMap:Ljava/util/concurrent/ConcurrentMap;

    .line 91
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configLock:Ljava/util/concurrent/locks/Lock;

    .line 120
    iput-object p1, p0, Lorg/apache/logging/log4j/core/LoggerContext;->contextName:Ljava/lang/String;

    .line 121
    const-string v0, "__EXTERNAL_CONTEXT_KEY__"

    if-nez p2, :cond_0

    .line 122
    iget-object v1, p0, Lorg/apache/logging/log4j/core/LoggerContext;->externalMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 124
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/LoggerContext;->externalMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :goto_0
    iput-object p3, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configLocation:Ljava/net/URI;

    .line 127
    return-void
.end method

.method private firePropertyChangeEvent(Ljava/beans/PropertyChangeEvent;)V
    .locals 2
    .param p1, "event"    # Ljava/beans/PropertyChangeEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 647
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->propertyChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/beans/PropertyChangeListener;

    .line 648
    .local v1, "listener":Ljava/beans/PropertyChangeListener;
    invoke-interface {v1, p1}, Ljava/beans/PropertyChangeListener;->propertyChange(Ljava/beans/PropertyChangeEvent;)V

    .line 649
    .end local v1    # "listener":Ljava/beans/PropertyChangeListener;
    goto :goto_0

    .line 650
    :cond_0
    return-void
.end method

.method public static getContext()Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 1

    .line 193
    invoke-static {}, Lorg/apache/logging/log4j/LogManager;->getContext()Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/LoggerContext;

    return-object v0
.end method

.method public static getContext(Ljava/lang/ClassLoader;ZLjava/net/URI;)Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 1
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "currentContext"    # Z
    .param p2, "configLocation"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "loader",
            "currentContext",
            "configLocation"
        }
    .end annotation

    .line 239
    invoke-static {p0, p1, p2}, Lorg/apache/logging/log4j/LogManager;->getContext(Ljava/lang/ClassLoader;ZLjava/net/URI;)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/LoggerContext;

    return-object v0
.end method

.method public static getContext(Z)Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 1
    .param p0, "currentContext"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "currentContext"
        }
    .end annotation

    .line 214
    invoke-static {p0}, Lorg/apache/logging/log4j/LogManager;->getContext(Z)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/LoggerContext;

    return-object v0
.end method

.method private initApiModule()V
    .locals 0

    .line 767
    invoke-static {}, Lorg/apache/logging/log4j/spi/ThreadContextMapFactory;->init()V

    .line 768
    return-void
.end method

.method static synthetic lambda$setConfiguration$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "s"
        }
    .end annotation

    .line 615
    invoke-static {}, Lorg/apache/logging/log4j/core/util/NetUtils;->getLocalHostname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private reconfigure(Ljava/net/URI;)V
    .locals 9
    .param p1, "configURI"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "configURI"
        }
    .end annotation

    .line 686
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->externalMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "__EXTERNAL_CONTEXT_KEY__"

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 687
    .local v0, "externalContext":Ljava/lang/Object;
    const-class v1, Ljava/lang/ClassLoader;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/ClassLoader;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 688
    .local v1, "cl":Ljava/lang/ClassLoader;
    :goto_0
    sget-object v2, Lorg/apache/logging/log4j/core/LoggerContext;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v4, p0, Lorg/apache/logging/log4j/core/LoggerContext;->contextName:Ljava/lang/String;

    const-string v3, "Reconfiguration started for context[name={}] at URI {} ({}) with optional ClassLoader: {}"

    move-object v5, p1

    move-object v6, p0

    move-object v7, v1

    invoke-interface/range {v2 .. v7}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 690
    invoke-static {}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->getInstance()Lorg/apache/logging/log4j/core/config/ConfigurationFactory;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/logging/log4j/core/LoggerContext;->contextName:Ljava/lang/String;

    invoke-virtual {v2, p0, v3, p1, v1}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->getConfiguration(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Ljava/net/URI;Ljava/lang/ClassLoader;)Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v8

    .line 691
    .local v8, "instance":Lorg/apache/logging/log4j/core/config/Configuration;
    if-nez v8, :cond_1

    .line 692
    sget-object v2, Lorg/apache/logging/log4j/core/LoggerContext;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/LoggerContext;->contextName:Ljava/lang/String;

    const-string v4, "Reconfiguration failed: No configuration found for \'{}\' at \'{}\' in \'{}\'"

    invoke-interface {v2, v4, v3, p1, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 694
    :cond_1
    invoke-virtual {p0, v8}, Lorg/apache/logging/log4j/core/LoggerContext;->setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/config/Configuration;

    .line 699
    iget-object v2, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    if-nez v2, :cond_2

    const-string v2, "?"

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v2}, Lorg/apache/logging/log4j/core/config/Configuration;->getConfigurationSource()Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v5, v2

    .line 700
    .local v5, "location":Ljava/lang/String;
    sget-object v2, Lorg/apache/logging/log4j/core/LoggerContext;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v4, p0, Lorg/apache/logging/log4j/core/LoggerContext;->contextName:Ljava/lang/String;

    const-string v3, "Reconfiguration complete for context[name={}] at URI {} ({}) with optional ClassLoader: {}"

    move-object v6, p0

    move-object v7, v1

    invoke-interface/range {v2 .. v7}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 703
    .end local v5    # "location":Ljava/lang/String;
    :goto_2
    return-void
.end method

.method private setUpShutdownHook()V
    .locals 5

    .line 290
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->shutdownCallback:Lorg/apache/logging/log4j/core/util/Cancellable;

    if-nez v0, :cond_0

    .line 291
    invoke-static {}, Lorg/apache/logging/log4j/LogManager;->getFactory()Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    move-result-object v0

    .line 292
    .local v0, "factory":Lorg/apache/logging/log4j/spi/LoggerContextFactory;
    instance-of v1, v0, Lorg/apache/logging/log4j/core/util/ShutdownCallbackRegistry;

    if-eqz v1, :cond_0

    .line 293
    sget-object v1, Lorg/apache/logging/log4j/core/LoggerContext;->LOGGER:Lorg/apache/logging/log4j/Logger;

    sget-object v2, Lorg/apache/logging/log4j/core/util/ShutdownCallbackRegistry;->SHUTDOWN_HOOK_MARKER:Lorg/apache/logging/log4j/Marker;

    const-string v3, "Shutdown hook enabled. Registering a new one."

    invoke-interface {v1, v2, v3}, Lorg/apache/logging/log4j/Logger;->debug(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;)V

    .line 295
    invoke-static {}, Lorg/apache/logging/log4j/core/util/ExecutorServices;->ensureInitialized()V

    .line 297
    :try_start_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getShutdownTimeoutMillis()J

    move-result-wide v1

    .line 298
    .local v1, "shutdownTimeoutMillis":J
    move-object v3, v0

    check-cast v3, Lorg/apache/logging/log4j/core/util/ShutdownCallbackRegistry;

    new-instance v4, Lorg/apache/logging/log4j/core/LoggerContext$1;

    invoke-direct {v4, p0, v1, v2}, Lorg/apache/logging/log4j/core/LoggerContext$1;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;J)V

    invoke-interface {v3, v4}, Lorg/apache/logging/log4j/core/util/ShutdownCallbackRegistry;->addShutdownCallback(Ljava/lang/Runnable;)Lorg/apache/logging/log4j/core/util/Cancellable;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/logging/log4j/core/LoggerContext;->shutdownCallback:Lorg/apache/logging/log4j/core/util/Cancellable;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    .end local v1    # "shutdownTimeoutMillis":J
    goto :goto_0

    .line 316
    :catch_0
    move-exception v1

    .line 317
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v2, Lorg/apache/logging/log4j/core/LoggerContext;->LOGGER:Lorg/apache/logging/log4j/Logger;

    sget-object v3, Lorg/apache/logging/log4j/core/util/ShutdownCallbackRegistry;->SHUTDOWN_HOOK_MARKER:Lorg/apache/logging/log4j/Marker;

    const-string v4, "Unable to register shutdown hook due to security restrictions"

    invoke-interface {v2, v3, v4, v1}, Lorg/apache/logging/log4j/Logger;->error(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 313
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 314
    .local v1, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to register Log4j shutdown hook because JVM is shutting down."

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 322
    .end local v0    # "factory":Lorg/apache/logging/log4j/spi/LoggerContextFactory;
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public addFilter(Lorg/apache/logging/log4j/core/Filter;)V
    .locals 1
    .param p1, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "filter"
        }
    .end annotation

    .line 582
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/core/config/Configuration;->addFilter(Lorg/apache/logging/log4j/core/Filter;)V

    .line 583
    return-void
.end method

.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 2
    .param p1, "listener"    # Ljava/beans/PropertyChangeListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "listener"
        }
    .end annotation

    .line 653
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->propertyChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "listener"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    return-void
.end method

.method public addShutdownListener(Lorg/apache/logging/log4j/spi/LoggerContextShutdownAware;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/logging/log4j/spi/LoggerContextShutdownAware;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->listeners:Ljava/util/List;

    if-nez v0, :cond_1

    .line 160
    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->listeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->listeners:Ljava/util/List;

    .line 164
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 166
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method

.method public close()V
    .locals 0

    .line 326
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/LoggerContext;->stop()V

    .line 327
    return-void
.end method

.method public getConfigLocation()Ljava/net/URI;
    .locals 1

    .line 669
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configLocation:Ljava/net/URI;

    return-object v0
.end method

.method public getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;
    .locals 1

    .line 572
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    return-object v0
.end method

.method public getExternalContext()Ljava/lang/Object;
    .locals 2

    .line 473
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->externalMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "__EXTERNAL_CONTEXT_KEY__"

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/spi/LoggerContextShutdownAware;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public getLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/core/Logger;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 484
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/core/LoggerContext;->getLogger(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/core/Logger;

    move-result-object v0

    return-object v0
.end method

.method public getLogger(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/core/Logger;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "messageFactory"    # Lorg/apache/logging/log4j/message/MessageFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "messageFactory"
        }
    .end annotation

    .line 511
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->loggerRegistry:Lorg/apache/logging/log4j/spi/LoggerRegistry;

    invoke-virtual {v0, p1, p2}, Lorg/apache/logging/log4j/spi/LoggerRegistry;->getLogger(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/spi/ExtendedLogger;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/Logger;

    .line 512
    .local v0, "logger":Lorg/apache/logging/log4j/core/Logger;
    if-eqz v0, :cond_0

    .line 513
    invoke-static {v0, p2}, Lorg/apache/logging/log4j/spi/AbstractLogger;->checkMessageFactory(Lorg/apache/logging/log4j/spi/ExtendedLogger;Lorg/apache/logging/log4j/message/MessageFactory;)V

    .line 514
    return-object v0

    .line 517
    :cond_0
    invoke-virtual {p0, p0, p1, p2}, Lorg/apache/logging/log4j/core/LoggerContext;->newInstance(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/core/Logger;

    move-result-object v0

    .line 518
    iget-object v1, p0, Lorg/apache/logging/log4j/core/LoggerContext;->loggerRegistry:Lorg/apache/logging/log4j/spi/LoggerRegistry;

    invoke-virtual {v1, p1, p2, v0}, Lorg/apache/logging/log4j/spi/LoggerRegistry;->putIfAbsent(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;Lorg/apache/logging/log4j/spi/ExtendedLogger;)V

    .line 519
    iget-object v1, p0, Lorg/apache/logging/log4j/core/LoggerContext;->loggerRegistry:Lorg/apache/logging/log4j/spi/LoggerRegistry;

    invoke-virtual {v1, p1, p2}, Lorg/apache/logging/log4j/spi/LoggerRegistry;->getLogger(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/spi/ExtendedLogger;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/Logger;

    return-object v1
.end method

.method public bridge synthetic getLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/spi/ExtendedLogger;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "name"
        }
    .end annotation

    .line 65
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/LoggerContext;->getLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/core/Logger;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getLogger(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/spi/ExtendedLogger;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "name",
            "messageFactory"
        }
    .end annotation

    .line 65
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/LoggerContext;->getLogger(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/core/Logger;

    move-result-object p1

    return-object p1
.end method

.method public getLoggerRegistry()Lorg/apache/logging/log4j/spi/LoggerRegistry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/logging/log4j/spi/LoggerRegistry<",
            "Lorg/apache/logging/log4j/core/Logger;",
            ">;"
        }
    .end annotation

    .line 529
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->loggerRegistry:Lorg/apache/logging/log4j/spi/LoggerRegistry;

    return-object v0
.end method

.method public getLoggers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/logging/log4j/core/Logger;",
            ">;"
        }
    .end annotation

    .line 497
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->loggerRegistry:Lorg/apache/logging/log4j/spi/LoggerRegistry;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/spi/LoggerRegistry;->getLoggers()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 406
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->contextName:Ljava/lang/String;

    return-object v0
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->externalMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRootLogger()Lorg/apache/logging/log4j/core/Logger;
    .locals 1

    .line 415
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/LoggerContext;->getLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/core/Logger;

    move-result-object v0

    return-object v0
.end method

.method public hasLogger(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 540
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->loggerRegistry:Lorg/apache/logging/log4j/spi/LoggerRegistry;

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/spi/LoggerRegistry;->hasLogger(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasLogger(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "messageFactoryClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/logging/log4j/message/MessageFactory;",
            ">;)Z"
        }
    .end annotation

    .line 562
    .local p2, "messageFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/logging/log4j/message/MessageFactory;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->loggerRegistry:Lorg/apache/logging/log4j/spi/LoggerRegistry;

    invoke-virtual {v0, p1, p2}, Lorg/apache/logging/log4j/spi/LoggerRegistry;->hasLogger(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasLogger(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "messageFactory"    # Lorg/apache/logging/log4j/message/MessageFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "messageFactory"
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->loggerRegistry:Lorg/apache/logging/log4j/spi/LoggerRegistry;

    invoke-virtual {v0, p1, p2}, Lorg/apache/logging/log4j/spi/LoggerRegistry;->hasLogger(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Z

    move-result v0

    return v0
.end method

.method protected newInstance(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/core/Logger;
    .locals 1
    .param p1, "ctx"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "messageFactory"    # Lorg/apache/logging/log4j/message/MessageFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "ctx",
            "name",
            "messageFactory"
        }
    .end annotation

    .line 772
    new-instance v0, Lorg/apache/logging/log4j/core/Logger;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/logging/log4j/core/Logger;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)V

    return-object v0
.end method

.method public declared-synchronized onChange(Lorg/apache/logging/log4j/core/config/Reconfigurable;)V
    .locals 8
    .param p1, "reconfigurable"    # Lorg/apache/logging/log4j/core/config/Reconfigurable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "reconfigurable"
        }
    .end annotation

    monitor-enter p0

    .line 752
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 753
    .local v0, "startMillis":J
    sget-object v2, Lorg/apache/logging/log4j/core/LoggerContext;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Reconfiguration started for context {} ({})"

    iget-object v4, p0, Lorg/apache/logging/log4j/core/LoggerContext;->contextName:Ljava/lang/String;

    invoke-interface {v2, v3, v4, p0}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 754
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/LoggerContext;->initApiModule()V

    .line 755
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/config/Reconfigurable;->reconfigure()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v2

    .line 756
    .local v2, "newConfig":Lorg/apache/logging/log4j/core/config/Configuration;
    if-eqz v2, :cond_0

    .line 757
    invoke-virtual {p0, v2}, Lorg/apache/logging/log4j/core/LoggerContext;->setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/config/Configuration;

    .line 758
    sget-object v3, Lorg/apache/logging/log4j/core/LoggerContext;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v4, "Reconfiguration completed for {} ({}) in {} milliseconds."

    iget-object v5, p0, Lorg/apache/logging/log4j/core/LoggerContext;->contextName:Ljava/lang/String;

    .line 759
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 758
    invoke-interface {v3, v4, v5, p0, v6}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 761
    .end local p0    # "this":Lorg/apache/logging/log4j/core/LoggerContext;
    :cond_0
    sget-object v3, Lorg/apache/logging/log4j/core/LoggerContext;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v4, "Reconfiguration failed for {} ({}) in {} milliseconds."

    iget-object v5, p0, Lorg/apache/logging/log4j/core/LoggerContext;->contextName:Ljava/lang/String;

    .line 762
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 761
    invoke-interface {v3, v4, v5, p0, v6}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 764
    :goto_0
    monitor-exit p0

    return-void

    .line 751
    .end local v0    # "startMillis":J
    .end local v2    # "newConfig":Lorg/apache/logging/log4j/core/config/Configuration;
    .end local p1    # "reconfigurable":Lorg/apache/logging/log4j/core/config/Reconfigurable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->externalMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putObjectIfAbsent(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->externalMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reconfigure()V
    .locals 1

    .line 711
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configLocation:Ljava/net/URI;

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/LoggerContext;->reconfigure(Ljava/net/URI;)V

    .line 712
    return-void
.end method

.method public reconfigure(Lorg/apache/logging/log4j/core/config/Configuration;)V
    .locals 2
    .param p1, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 715
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/LoggerContext;->setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/config/Configuration;

    .line 716
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/config/Configuration;->getConfigurationSource()Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    move-result-object v0

    .line 717
    .local v0, "source":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    if-eqz v0, :cond_0

    .line 718
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getURI()Ljava/net/URI;

    move-result-object v1

    .line 719
    .local v1, "uri":Ljava/net/URI;
    if-eqz v1, :cond_0

    .line 720
    iput-object v1, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configLocation:Ljava/net/URI;

    .line 723
    .end local v1    # "uri":Ljava/net/URI;
    :cond_0
    return-void
.end method

.method public removeFilter(Lorg/apache/logging/log4j/core/Filter;)V
    .locals 1
    .param p1, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "filter"
        }
    .end annotation

    .line 591
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/core/config/Configuration;->removeFilter(Lorg/apache/logging/log4j/core/Filter;)V

    .line 592
    return-void
.end method

.method public removeObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->externalMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeObject(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->externalMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "listener"    # Ljava/beans/PropertyChangeListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "listener"
        }
    .end annotation

    .line 657
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->propertyChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 658
    return-void
.end method

.method public setConfigLocation(Ljava/net/URI;)V
    .locals 0
    .param p1, "configLocation"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "configLocation"
        }
    .end annotation

    .line 678
    iput-object p1, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configLocation:Ljava/net/URI;

    .line 679
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/LoggerContext;->reconfigure(Ljava/net/URI;)V

    .line 680
    return-void
.end method

.method public setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/config/Configuration;
    .locals 7
    .param p1, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "config"
        }
    .end annotation

    .line 601
    const-string v0, "hostName"

    if-nez p1, :cond_0

    .line 602
    sget-object v0, Lorg/apache/logging/log4j/core/LoggerContext;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/LoggerContext;->contextName:Ljava/lang/String;

    const-string v2, "No configuration found for context \'{}\'."

    invoke-interface {v0, v2, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 604
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    return-object v0

    .line 606
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 608
    :try_start_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 609
    .local v1, "prev":Lorg/apache/logging/log4j/core/config/Configuration;
    invoke-interface {p1, p0}, Lorg/apache/logging/log4j/core/config/Configuration;->addListener(Lorg/apache/logging/log4j/core/config/ConfigurationListener;)V

    .line 611
    const-string v2, "ContextProperties"

    invoke-interface {p1, v2}, Lorg/apache/logging/log4j/core/config/Configuration;->getComponent(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    .local v2, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_1
    sget-object v3, Lorg/apache/logging/log4j/core/-$$Lambda$LoggerContext$JnI-mMPbCgRaPtDUZ1FFckJcYpY;->INSTANCE:Lorg/apache/logging/log4j/core/-$$Lambda$LoggerContext$JnI-mMPbCgRaPtDUZ1FFckJcYpY;

    invoke-interface {v2, v0, v3}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 619
    goto :goto_0

    .line 616
    :catch_0
    move-exception v3

    .line 617
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_2
    sget-object v4, Lorg/apache/logging/log4j/core/LoggerContext;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v5, "Ignoring {}, setting hostName to \'unknown\'"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 618
    const-string v4, "unknown"

    invoke-interface {v2, v0, v4}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    const-string v0, "contextName"

    iget-object v3, p0, Lorg/apache/logging/log4j/core/LoggerContext;->contextName:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/config/Configuration;->start()V

    .line 622
    iput-object p1, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 623
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/LoggerContext;->updateLoggers()V

    .line 624
    if-eqz v1, :cond_1

    .line 625
    invoke-interface {v1, p0}, Lorg/apache/logging/log4j/core/config/Configuration;->removeListener(Lorg/apache/logging/log4j/core/config/ConfigurationListener;)V

    .line 626
    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->stop()V

    .line 629
    :cond_1
    new-instance v0, Ljava/beans/PropertyChangeEvent;

    const-string v3, "config"

    invoke-direct {v0, p0, v3, v1, p1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/LoggerContext;->firePropertyChangeEvent(Ljava/beans/PropertyChangeEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 632
    :try_start_3
    invoke-static {}, Lorg/apache/logging/log4j/core/jmx/Server;->reregisterMBeansAfterReconfigure()V
    :try_end_3
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 636
    goto :goto_1

    .line 633
    :catch_1
    move-exception v0

    .line 635
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_4
    sget-object v3, Lorg/apache/logging/log4j/core/LoggerContext;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v4, "Could not reconfigure JMX"

    invoke-interface {v3, v4, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 638
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getNanoClock()Lorg/apache/logging/log4j/core/util/NanoClock;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->setNanoClock(Lorg/apache/logging/log4j/core/util/NanoClock;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 640
    nop

    .line 642
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 640
    return-object v1

    .line 642
    .end local v1    # "prev":Lorg/apache/logging/log4j/core/config/Configuration;
    .end local v2    # "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public setExternalContext(Ljava/lang/Object;)V
    .locals 2
    .param p1, "context"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 459
    const-string v0, "__EXTERNAL_CONTEXT_KEY__"

    if-eqz p1, :cond_0

    .line 460
    iget-object v1, p0, Lorg/apache/logging/log4j/core/LoggerContext;->externalMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 462
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/LoggerContext;->externalMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    :goto_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 425
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->contextName:Ljava/lang/String;

    .line 426
    return-void
.end method

.method public start()V
    .locals 3

    .line 244
    sget-object v0, Lorg/apache/logging/log4j/core/LoggerContext;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Starting LoggerContext[name={}, {}]..."

    invoke-interface {v0, v2, v1, p0}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 245
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    const-string v1, "log4j.LoggerContext.stacktrace.on.start"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lorg/apache/logging/log4j/core/LoggerContext;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Not a real error, showing stack trace to locate invoker"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string v2, "Stack trace to locate invoker"

    invoke-interface {v0, v2, v1}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 251
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/LoggerContext;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/LoggerContext;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    :cond_1
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/LoggerContext;->setStarting()V

    .line 253
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/LoggerContext;->reconfigure()V

    .line 254
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->isShutdownHookEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/LoggerContext;->setUpShutdownHook()V

    .line 257
    :cond_2
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/LoggerContext;->setStarted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :cond_3
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 261
    goto :goto_0

    .line 260
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 263
    :cond_4
    :goto_0
    sget-object v0, Lorg/apache/logging/log4j/core/LoggerContext;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LoggerContext[name={}, {}] started OK."

    invoke-interface {v0, v2, v1, p0}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 264
    return-void
.end method

.method public start(Lorg/apache/logging/log4j/core/config/Configuration;)V
    .locals 3
    .param p1, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "config"
        }
    .end annotation

    .line 272
    sget-object v0, Lorg/apache/logging/log4j/core/LoggerContext;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Starting LoggerContext[name={}, {}] with configuration {}..."

    invoke-interface {v0, v2, v1, p0, p1}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 275
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/LoggerContext;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/LoggerContext;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->isShutdownHookEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/LoggerContext;->setUpShutdownHook()V

    .line 279
    :cond_1
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/LoggerContext;->setStarted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    :cond_2
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 283
    goto :goto_0

    .line 282
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 285
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/LoggerContext;->setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/config/Configuration;

    .line 286
    sget-object v0, Lorg/apache/logging/log4j/core/LoggerContext;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LoggerContext[name={}, {}] started OK with configuration {}."

    invoke-interface {v0, v2, v1, p0, p1}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 287
    return-void
.end method

.method public stop(JLjava/util/concurrent/TimeUnit;)Z
    .locals 5
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

    .line 355
    sget-object v0, Lorg/apache/logging/log4j/core/LoggerContext;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Stopping LoggerContext[name={}, {}]..."

    invoke-interface {v0, v2, v1, p0}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 356
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 358
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/LoggerContext;->isStopped()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 359
    nop

    .line 384
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 385
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/LoggerContext;->setStopped()V

    .line 359
    return v1

    .line 362
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/LoggerContext;->setStopping()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/jmx/Server;->unregisterLoggerContext(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 368
    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_3
    sget-object v2, Lorg/apache/logging/log4j/core/LoggerContext;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Unable to unregister MBeans"

    invoke-interface {v2, v3, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 369
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->shutdownCallback:Lorg/apache/logging/log4j/core/util/Cancellable;

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->shutdownCallback:Lorg/apache/logging/log4j/core/util/Cancellable;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/util/Cancellable;->cancel()V

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->shutdownCallback:Lorg/apache/logging/log4j/core/util/Cancellable;

    .line 373
    :cond_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 374
    .local v0, "prev":Lorg/apache/logging/log4j/core/config/Configuration;
    sget-object v2, Lorg/apache/logging/log4j/core/LoggerContext;->NULL_CONFIGURATION:Lorg/apache/logging/log4j/core/config/Configuration;

    iput-object v2, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 375
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/LoggerContext;->updateLoggers()V

    .line 376
    instance-of v2, v0, Lorg/apache/logging/log4j/core/LifeCycle2;

    if-eqz v2, :cond_2

    .line 377
    move-object v2, v0

    check-cast v2, Lorg/apache/logging/log4j/core/LifeCycle2;

    invoke-interface {v2, p1, p2, p3}, Lorg/apache/logging/log4j/core/LifeCycle2;->stop(JLjava/util/concurrent/TimeUnit;)Z

    goto :goto_1

    .line 379
    :cond_2
    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->stop()V

    .line 381
    :goto_1
    iget-object v2, p0, Lorg/apache/logging/log4j/core/LoggerContext;->externalMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 382
    invoke-static {}, Lorg/apache/logging/log4j/LogManager;->getFactory()Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    move-result-object v2

    invoke-interface {v2, p0}, Lorg/apache/logging/log4j/spi/LoggerContextFactory;->removeContext(Lorg/apache/logging/log4j/spi/LoggerContext;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 384
    .end local v0    # "prev":Lorg/apache/logging/log4j/core/config/Configuration;
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 385
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/LoggerContext;->setStopped()V

    .line 386
    nop

    .line 387
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->listeners:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 388
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/spi/LoggerContextShutdownAware;

    .line 390
    .local v2, "listener":Lorg/apache/logging/log4j/spi/LoggerContextShutdownAware;
    :try_start_4
    invoke-interface {v2, p0}, Lorg/apache/logging/log4j/spi/LoggerContextShutdownAware;->contextShutdown(Lorg/apache/logging/log4j/spi/LoggerContext;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 393
    goto :goto_3

    .line 391
    :catch_1
    move-exception v3

    .line 394
    .end local v2    # "listener":Lorg/apache/logging/log4j/spi/LoggerContextShutdownAware;
    :goto_3
    goto :goto_2

    .line 396
    :cond_3
    sget-object v0, Lorg/apache/logging/log4j/core/LoggerContext;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Stopped LoggerContext[name={}, {}] with status {}"

    invoke-interface {v0, v4, v2, p0, v3}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 397
    return v1

    .line 384
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 385
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/LoggerContext;->setStopped()V

    throw v0
.end method

.method public terminate()V
    .locals 0

    .line 331
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/LoggerContext;->stop()V

    .line 332
    return-void
.end method

.method public updateLoggers()V
    .locals 1

    .line 729
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/LoggerContext;->updateLoggers(Lorg/apache/logging/log4j/core/config/Configuration;)V

    .line 730
    return-void
.end method

.method public updateLoggers(Lorg/apache/logging/log4j/core/config/Configuration;)V
    .locals 3
    .param p1, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "config"
        }
    .end annotation

    .line 738
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 739
    .local v0, "old":Lorg/apache/logging/log4j/core/config/Configuration;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/LoggerContext;->loggerRegistry:Lorg/apache/logging/log4j/spi/LoggerRegistry;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/spi/LoggerRegistry;->getLoggers()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/Logger;

    .line 740
    .local v2, "logger":Lorg/apache/logging/log4j/core/Logger;
    invoke-virtual {v2, p1}, Lorg/apache/logging/log4j/core/Logger;->updateConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)V

    .line 741
    .end local v2    # "logger":Lorg/apache/logging/log4j/core/Logger;
    goto :goto_0

    .line 742
    :cond_0
    new-instance v1, Ljava/beans/PropertyChangeEvent;

    const-string v2, "config"

    invoke-direct {v1, p0, v2, v0, p1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lorg/apache/logging/log4j/core/LoggerContext;->firePropertyChangeEvent(Ljava/beans/PropertyChangeEvent;)V

    .line 743
    return-void
.end method
