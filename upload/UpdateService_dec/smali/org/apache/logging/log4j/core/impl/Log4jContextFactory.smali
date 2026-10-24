.class public Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;
.super Ljava/lang/Object;
.source "Log4jContextFactory.java"

# interfaces
.implements Lorg/apache/logging/log4j/spi/LoggerContextFactory;
.implements Lorg/apache/logging/log4j/core/util/ShutdownCallbackRegistry;


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

.field private static final SHUTDOWN_HOOK_ENABLED:Z


# instance fields
.field private final selector:Lorg/apache/logging/log4j/core/selector/ContextSelector;

.field private final shutdownCallbackRegistry:Lorg/apache/logging/log4j/core/util/ShutdownCallbackRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    .line 51
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    const-string v1, "log4j.shutdownHookEnabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lorg/apache/logging/log4j/core/util/Constants;->IS_WEB_APP:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sput-boolean v2, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->SHUTDOWN_HOOK_ENABLED:Z

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-static {}, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->createContextSelector()Lorg/apache/logging/log4j/core/selector/ContextSelector;

    move-result-object v0

    invoke-static {}, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->createShutdownCallbackRegistry()Lorg/apache/logging/log4j/core/util/ShutdownCallbackRegistry;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;-><init>(Lorg/apache/logging/log4j/core/selector/ContextSelector;Lorg/apache/logging/log4j/core/util/ShutdownCallbackRegistry;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/selector/ContextSelector;)V
    .locals 1
    .param p1, "selector"    # Lorg/apache/logging/log4j/core/selector/ContextSelector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "selector"
        }
    .end annotation

    .line 69
    invoke-static {}, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->createShutdownCallbackRegistry()Lorg/apache/logging/log4j/core/util/ShutdownCallbackRegistry;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;-><init>(Lorg/apache/logging/log4j/core/selector/ContextSelector;Lorg/apache/logging/log4j/core/util/ShutdownCallbackRegistry;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/selector/ContextSelector;Lorg/apache/logging/log4j/core/util/ShutdownCallbackRegistry;)V
    .locals 3
    .param p1, "selector"    # Lorg/apache/logging/log4j/core/selector/ContextSelector;
    .param p2, "shutdownCallbackRegistry"    # Lorg/apache/logging/log4j/core/util/ShutdownCallbackRegistry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "selector",
            "shutdownCallbackRegistry"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-string v0, "No ContextSelector provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/core/selector/ContextSelector;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->selector:Lorg/apache/logging/log4j/core/selector/ContextSelector;

    .line 93
    const-string v0, "No ShutdownCallbackRegistry provided"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lorg/apache/logging/log4j/core/util/ShutdownCallbackRegistry;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->shutdownCallbackRegistry:Lorg/apache/logging/log4j/core/util/ShutdownCallbackRegistry;

    .line 94
    sget-object v0, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Using ShutdownCallbackRegistry {}"

    invoke-virtual {v0, v2, v1}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->initializeShutdownCallbackRegistry()V

    .line 96
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/util/ShutdownCallbackRegistry;)V
    .locals 1
    .param p1, "shutdownCallbackRegistry"    # Lorg/apache/logging/log4j/core/util/ShutdownCallbackRegistry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "shutdownCallbackRegistry"
        }
    .end annotation

    .line 80
    invoke-static {}, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->createContextSelector()Lorg/apache/logging/log4j/core/selector/ContextSelector;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;-><init>(Lorg/apache/logging/log4j/core/selector/ContextSelector;Lorg/apache/logging/log4j/core/util/ShutdownCallbackRegistry;)V

    .line 81
    return-void
.end method

.method private static createContextSelector()Lorg/apache/logging/log4j/core/selector/ContextSelector;
    .locals 3

    .line 100
    :try_start_0
    const-string v0, "Log4jContextSelector"

    const-class v1, Lorg/apache/logging/log4j/core/selector/ContextSelector;

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/core/util/Loader;->newCheckedInstanceOfProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/selector/ContextSelector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .local v0, "selector":Lorg/apache/logging/log4j/core/selector/ContextSelector;
    if-eqz v0, :cond_0

    .line 103
    return-object v0

    .line 107
    .end local v0    # "selector":Lorg/apache/logging/log4j/core/selector/ContextSelector;
    :cond_0
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v2, "Unable to create custom ContextSelector. Falling back to default."

    invoke-virtual {v1, v2, v0}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v0, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;-><init>()V

    return-object v0
.end method

.method private static createShutdownCallbackRegistry()Lorg/apache/logging/log4j/core/util/ShutdownCallbackRegistry;
    .locals 3

    .line 113
    :try_start_0
    const-string v0, "log4j.shutdownCallbackRegistry"

    const-class v1, Lorg/apache/logging/log4j/core/util/ShutdownCallbackRegistry;

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/core/util/Loader;->newCheckedInstanceOfProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/util/ShutdownCallbackRegistry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .local v0, "registry":Lorg/apache/logging/log4j/core/util/ShutdownCallbackRegistry;
    if-eqz v0, :cond_0

    .line 117
    return-object v0

    .line 121
    .end local v0    # "registry":Lorg/apache/logging/log4j/core/util/ShutdownCallbackRegistry;
    :cond_0
    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v2, "Unable to create custom ShutdownCallbackRegistry. Falling back to default."

    invoke-virtual {v1, v2, v0}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v0, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry;-><init>()V

    return-object v0
.end method

.method private initializeShutdownCallbackRegistry()V
    .locals 3

    .line 126
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->isShutdownHookEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->shutdownCallbackRegistry:Lorg/apache/logging/log4j/core/util/ShutdownCallbackRegistry;

    instance-of v1, v0, Lorg/apache/logging/log4j/core/LifeCycle;

    if-eqz v1, :cond_0

    .line 128
    :try_start_0
    check-cast v0, Lorg/apache/logging/log4j/core/LifeCycle;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/LifeCycle;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v2, "There was an error starting the ShutdownCallbackRegistry."

    invoke-virtual {v1, v2, v0}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 129
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v2, "Cannot start ShutdownCallbackRegistry, already shutting down."

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;)V

    .line 131
    throw v0

    .line 136
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public addShutdownCallback(Ljava/lang/Runnable;)Lorg/apache/logging/log4j/core/util/Cancellable;
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    .line 383
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->isShutdownHookEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->shutdownCallbackRegistry:Lorg/apache/logging/log4j/core/util/ShutdownCallbackRegistry;

    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/core/util/ShutdownCallbackRegistry;->addShutdownCallback(Ljava/lang/Runnable;)Lorg/apache/logging/log4j/core/util/Cancellable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 3
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "externalContext"    # Ljava/lang/Object;
    .param p4, "currentContext"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "loader",
            "externalContext",
            "currentContext"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->selector:Lorg/apache/logging/log4j/core/selector/ContextSelector;

    invoke-interface {v0, p1, p2, p4}, Lorg/apache/logging/log4j/core/selector/ContextSelector;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    .line 151
    .local v0, "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->getExternalContext()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 152
    invoke-virtual {v0, p3}, Lorg/apache/logging/log4j/core/LoggerContext;->setExternalContext(Ljava/lang/Object;)V

    .line 154
    :cond_0
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->getState()Lorg/apache/logging/log4j/core/LifeCycle$State;

    move-result-object v1

    sget-object v2, Lorg/apache/logging/log4j/core/LifeCycle$State;->INITIALIZED:Lorg/apache/logging/log4j/core/LifeCycle$State;

    if-ne v1, v2, :cond_1

    .line 155
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->start()V

    .line 157
    :cond_1
    return-object v0
.end method

.method public getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;ZLjava/net/URI;Ljava/lang/String;)Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 5
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "externalContext"    # Ljava/lang/Object;
    .param p4, "currentContext"    # Z
    .param p5, "configLocation"    # Ljava/net/URI;
    .param p6, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "loader",
            "externalContext",
            "currentContext",
            "configLocation",
            "name"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->selector:Lorg/apache/logging/log4j/core/selector/ContextSelector;

    invoke-interface {v0, p1, p2, p4, p5}, Lorg/apache/logging/log4j/core/selector/ContextSelector;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;ZLjava/net/URI;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    .line 231
    .local v0, "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->getExternalContext()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 232
    invoke-virtual {v0, p3}, Lorg/apache/logging/log4j/core/LoggerContext;->setExternalContext(Ljava/lang/Object;)V

    .line 234
    :cond_0
    if-eqz p6, :cond_1

    .line 235
    invoke-virtual {v0, p6}, Lorg/apache/logging/log4j/core/LoggerContext;->setName(Ljava/lang/String;)V

    .line 237
    :cond_1
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->getState()Lorg/apache/logging/log4j/core/LifeCycle$State;

    move-result-object v1

    sget-object v2, Lorg/apache/logging/log4j/core/LifeCycle$State;->INITIALIZED:Lorg/apache/logging/log4j/core/LifeCycle$State;

    if-ne v1, v2, :cond_4

    .line 238
    if-nez p5, :cond_3

    if-eqz p6, :cond_2

    goto :goto_0

    .line 245
    :cond_2
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->start()V

    goto :goto_1

    .line 239
    :cond_3
    :goto_0
    sget-object v1, Lorg/apache/logging/log4j/core/impl/ContextAnchor;->THREAD_CONTEXT:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 240
    invoke-static {}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->getInstance()Lorg/apache/logging/log4j/core/config/ConfigurationFactory;

    move-result-object v1

    invoke-virtual {v1, v0, p6, p5}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->getConfiguration(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Ljava/net/URI;)Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v1

    .line 241
    .local v1, "config":Lorg/apache/logging/log4j/core/config/Configuration;
    sget-object v2, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Starting LoggerContext[name={}] from configuration at {}"

    invoke-virtual {v2, v4, v3, p5}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 242
    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/LoggerContext;->start(Lorg/apache/logging/log4j/core/config/Configuration;)V

    .line 243
    sget-object v2, Lorg/apache/logging/log4j/core/impl/ContextAnchor;->THREAD_CONTEXT:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 248
    .end local v1    # "config":Lorg/apache/logging/log4j/core/config/Configuration;
    :cond_4
    :goto_1
    return-object v0
.end method

.method public getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;ZLjava/util/List;Ljava/lang/String;)Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 8
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "externalContext"    # Ljava/lang/Object;
    .param p4, "currentContext"    # Z
    .param p6, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "loader",
            "externalContext",
            "currentContext",
            "configLocations",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/util/List<",
            "Ljava/net/URI;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/logging/log4j/core/LoggerContext;"
        }
    .end annotation

    .line 273
    .local p5, "configLocations":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->selector:Lorg/apache/logging/log4j/core/selector/ContextSelector;

    .line 274
    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, p4, v1}, Lorg/apache/logging/log4j/core/selector/ContextSelector;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;ZLjava/net/URI;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    .line 275
    .local v0, "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->getExternalContext()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 276
    invoke-virtual {v0, p3}, Lorg/apache/logging/log4j/core/LoggerContext;->setExternalContext(Ljava/lang/Object;)V

    .line 278
    :cond_0
    if-eqz p6, :cond_1

    .line 279
    invoke-virtual {v0, p6}, Lorg/apache/logging/log4j/core/LoggerContext;->setName(Ljava/lang/String;)V

    .line 281
    :cond_1
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->getState()Lorg/apache/logging/log4j/core/LifeCycle$State;

    move-result-object v1

    sget-object v2, Lorg/apache/logging/log4j/core/LifeCycle$State;->INITIALIZED:Lorg/apache/logging/log4j/core/LifeCycle$State;

    if-ne v1, v2, :cond_9

    .line 282
    if-eqz p5, :cond_8

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 283
    sget-object v1, Lorg/apache/logging/log4j/core/impl/ContextAnchor;->THREAD_CONTEXT:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 284
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 285
    .local v1, "configurations":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/AbstractConfiguration;>;"
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URI;

    .line 286
    .local v3, "configLocation":Ljava/net/URI;
    invoke-static {}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->getInstance()Lorg/apache/logging/log4j/core/config/ConfigurationFactory;

    move-result-object v4

    .line 287
    invoke-virtual {v4, v0, p6, v3}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->getConfiguration(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Ljava/net/URI;)Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v4

    .line 288
    .local v4, "currentReadConfiguration":Lorg/apache/logging/log4j/core/config/Configuration;
    if-eqz v4, :cond_4

    .line 289
    instance-of v5, v4, Lorg/apache/logging/log4j/core/config/DefaultConfiguration;

    if-eqz v5, :cond_2

    .line 290
    sget-object v5, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Unable to locate configuration {}, ignoring"

    invoke-virtual {v5, v7, v6}, Lorg/apache/logging/log4j/status/StatusLogger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 292
    :cond_2
    instance-of v5, v4, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;

    if-eqz v5, :cond_3

    .line 293
    move-object v5, v4

    check-cast v5, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 295
    :cond_3
    sget-object v5, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v6, "Found configuration {}, which is not an AbstractConfiguration and can\'t be handled by CompositeConfiguration"

    invoke-virtual {v5, v6, v3}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 300
    :cond_4
    sget-object v5, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Unable to access configuration {}, ignoring"

    invoke-virtual {v5, v7, v6}, Lorg/apache/logging/log4j/status/StatusLogger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 302
    .end local v3    # "configLocation":Ljava/net/URI;
    .end local v4    # "currentReadConfiguration":Lorg/apache/logging/log4j/core/config/Configuration;
    :goto_1
    goto :goto_0

    .line 303
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 304
    sget-object v2, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "No configurations could be created for {}"

    invoke-virtual {v2, v4, v3}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 305
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 306
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;

    .line 307
    .local v2, "config":Lorg/apache/logging/log4j/core/config/AbstractConfiguration;
    sget-object v3, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v4

    .line 308
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->getConfigurationSource()Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getLocation()Ljava/lang/String;

    move-result-object v5

    .line 307
    const-string v6, "Starting LoggerContext[name={}] from configuration at {}"

    invoke-virtual {v3, v6, v4, v5}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 309
    invoke-virtual {v0, v2}, Lorg/apache/logging/log4j/core/LoggerContext;->start(Lorg/apache/logging/log4j/core/config/Configuration;)V

    .line 310
    .end local v2    # "config":Lorg/apache/logging/log4j/core/config/AbstractConfiguration;
    goto :goto_2

    .line 311
    :cond_7
    new-instance v2, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;

    invoke-direct {v2, v1}, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;-><init>(Ljava/util/List;)V

    .line 312
    .local v2, "compositeConfiguration":Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;
    sget-object v3, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Starting LoggerContext[name={}] from configurations at {}"

    invoke-virtual {v3, v5, v4, p5}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 314
    invoke-virtual {v0, v2}, Lorg/apache/logging/log4j/core/LoggerContext;->start(Lorg/apache/logging/log4j/core/config/Configuration;)V

    .line 317
    .end local v2    # "compositeConfiguration":Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;
    :goto_2
    sget-object v2, Lorg/apache/logging/log4j/core/impl/ContextAnchor;->THREAD_CONTEXT:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 318
    .end local v1    # "configurations":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/AbstractConfiguration;>;"
    goto :goto_3

    .line 319
    :cond_8
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->start()V

    .line 322
    :cond_9
    :goto_3
    return-object v0
.end method

.method public getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;ZLorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 3
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "externalContext"    # Ljava/lang/Object;
    .param p4, "currentContext"    # Z
    .param p5, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "loader",
            "externalContext",
            "currentContext",
            "configuration"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->selector:Lorg/apache/logging/log4j/core/selector/ContextSelector;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, p4, v1}, Lorg/apache/logging/log4j/core/selector/ContextSelector;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;ZLjava/net/URI;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    .line 203
    .local v0, "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->getExternalContext()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 204
    invoke-virtual {v0, p3}, Lorg/apache/logging/log4j/core/LoggerContext;->setExternalContext(Ljava/lang/Object;)V

    .line 206
    :cond_0
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->getState()Lorg/apache/logging/log4j/core/LifeCycle$State;

    move-result-object v1

    sget-object v2, Lorg/apache/logging/log4j/core/LifeCycle$State;->INITIALIZED:Lorg/apache/logging/log4j/core/LifeCycle$State;

    if-ne v1, v2, :cond_1

    .line 207
    sget-object v1, Lorg/apache/logging/log4j/core/impl/ContextAnchor;->THREAD_CONTEXT:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 209
    :try_start_0
    invoke-virtual {v0, p5}, Lorg/apache/logging/log4j/core/LoggerContext;->start(Lorg/apache/logging/log4j/core/config/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    sget-object v1, Lorg/apache/logging/log4j/core/impl/ContextAnchor;->THREAD_CONTEXT:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 212
    goto :goto_0

    .line 211
    :catchall_0
    move-exception v1

    sget-object v2, Lorg/apache/logging/log4j/core/impl/ContextAnchor;->THREAD_CONTEXT:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    throw v1

    .line 214
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;ZLorg/apache/logging/log4j/core/config/ConfigurationSource;)Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 5
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "externalContext"    # Ljava/lang/Object;
    .param p4, "currentContext"    # Z
    .param p5, "source"    # Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "loader",
            "externalContext",
            "currentContext",
            "source"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->selector:Lorg/apache/logging/log4j/core/selector/ContextSelector;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, p4, v1}, Lorg/apache/logging/log4j/core/selector/ContextSelector;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;ZLjava/net/URI;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    .line 173
    .local v0, "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->getExternalContext()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 174
    invoke-virtual {v0, p3}, Lorg/apache/logging/log4j/core/LoggerContext;->setExternalContext(Ljava/lang/Object;)V

    .line 176
    :cond_0
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->getState()Lorg/apache/logging/log4j/core/LifeCycle$State;

    move-result-object v1

    sget-object v2, Lorg/apache/logging/log4j/core/LifeCycle$State;->INITIALIZED:Lorg/apache/logging/log4j/core/LifeCycle$State;

    if-ne v1, v2, :cond_2

    .line 177
    if-eqz p5, :cond_1

    .line 178
    sget-object v1, Lorg/apache/logging/log4j/core/impl/ContextAnchor;->THREAD_CONTEXT:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 179
    invoke-static {}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->getInstance()Lorg/apache/logging/log4j/core/config/ConfigurationFactory;

    move-result-object v1

    invoke-virtual {v1, v0, p5}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->getConfiguration(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v1

    .line 180
    .local v1, "config":Lorg/apache/logging/log4j/core/config/Configuration;
    sget-object v2, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Starting LoggerContext[name={}] from configuration {}"

    invoke-virtual {v2, v4, v3, p5}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 181
    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/LoggerContext;->start(Lorg/apache/logging/log4j/core/config/Configuration;)V

    .line 182
    sget-object v2, Lorg/apache/logging/log4j/core/impl/ContextAnchor;->THREAD_CONTEXT:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 183
    .end local v1    # "config":Lorg/apache/logging/log4j/core/config/Configuration;
    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->start()V

    .line 187
    :cond_2
    :goto_0
    return-object v0
.end method

.method public getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Map$Entry;ZLjava/net/URI;Ljava/lang/String;)Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 6
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p4, "currentContext"    # Z
    .param p5, "configLocation"    # Ljava/net/URI;
    .param p6, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "loader",
            "entry",
            "currentContext",
            "configLocation",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/logging/log4j/core/LoggerContext;"
        }
    .end annotation

    .line 253
    .local p3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->selector:Lorg/apache/logging/log4j/core/selector/ContextSelector;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/apache/logging/log4j/core/selector/ContextSelector;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Map$Entry;ZLjava/net/URI;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    .line 254
    .local v0, "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    if-eqz p6, :cond_0

    .line 255
    invoke-virtual {v0, p6}, Lorg/apache/logging/log4j/core/LoggerContext;->setName(Ljava/lang/String;)V

    .line 257
    :cond_0
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->getState()Lorg/apache/logging/log4j/core/LifeCycle$State;

    move-result-object v1

    sget-object v2, Lorg/apache/logging/log4j/core/LifeCycle$State;->INITIALIZED:Lorg/apache/logging/log4j/core/LifeCycle$State;

    if-ne v1, v2, :cond_3

    .line 258
    if-nez p5, :cond_2

    if-eqz p6, :cond_1

    goto :goto_0

    .line 265
    :cond_1
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->start()V

    goto :goto_1

    .line 259
    :cond_2
    :goto_0
    sget-object v1, Lorg/apache/logging/log4j/core/impl/ContextAnchor;->THREAD_CONTEXT:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 260
    invoke-static {}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->getInstance()Lorg/apache/logging/log4j/core/config/ConfigurationFactory;

    move-result-object v1

    invoke-virtual {v1, v0, p6, p5}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->getConfiguration(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Ljava/net/URI;)Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v1

    .line 261
    .local v1, "config":Lorg/apache/logging/log4j/core/config/Configuration;
    sget-object v2, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Starting LoggerContext[name={}] from configuration at {}"

    invoke-virtual {v2, v4, v3, p5}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 262
    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/LoggerContext;->start(Lorg/apache/logging/log4j/core/config/Configuration;)V

    .line 263
    sget-object v2, Lorg/apache/logging/log4j/core/impl/ContextAnchor;->THREAD_CONTEXT:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 268
    .end local v1    # "config":Lorg/apache/logging/log4j/core/config/Configuration;
    :cond_3
    :goto_1
    return-object v0
.end method

.method public bridge synthetic getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)Lorg/apache/logging/log4j/spi/LoggerContext;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "fqcn",
            "loader",
            "externalContext",
            "currentContext"
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;ZLjava/net/URI;Ljava/lang/String;)Lorg/apache/logging/log4j/spi/LoggerContext;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "fqcn",
            "loader",
            "externalContext",
            "currentContext",
            "configLocation",
            "name"
        }
    .end annotation

    .line 47
    invoke-virtual/range {p0 .. p6}, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;ZLjava/net/URI;Ljava/lang/String;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object p1

    return-object p1
.end method

.method public getSelector()Lorg/apache/logging/log4j/core/selector/ContextSelector;
    .locals 1

    .line 351
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->selector:Lorg/apache/logging/log4j/core/selector/ContextSelector;

    return-object v0
.end method

.method public getShutdownCallbackRegistry()Lorg/apache/logging/log4j/core/util/ShutdownCallbackRegistry;
    .locals 1

    .line 361
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->shutdownCallbackRegistry:Lorg/apache/logging/log4j/core/util/ShutdownCallbackRegistry;

    return-object v0
.end method

.method public hasContext(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Z
    .locals 1
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "currentContext"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fqcn",
            "loader",
            "currentContext"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->selector:Lorg/apache/logging/log4j/core/selector/ContextSelector;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/logging/log4j/core/selector/ContextSelector;->hasContext(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Z

    move-result v0

    return v0
.end method

.method public isClassLoaderDependent()Z
    .locals 1

    .line 378
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->selector:Lorg/apache/logging/log4j/core/selector/ContextSelector;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/selector/ContextSelector;->isClassLoaderDependent()Z

    move-result v0

    return v0
.end method

.method public isShutdownHookEnabled()Z
    .locals 1

    .line 387
    sget-boolean v0, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->SHUTDOWN_HOOK_ENABLED:Z

    return v0
.end method

.method public removeContext(Lorg/apache/logging/log4j/spi/LoggerContext;)V
    .locals 2
    .param p1, "context"    # Lorg/apache/logging/log4j/spi/LoggerContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 371
    instance-of v0, p1, Lorg/apache/logging/log4j/core/LoggerContext;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->selector:Lorg/apache/logging/log4j/core/selector/ContextSelector;

    move-object v1, p1

    check-cast v1, Lorg/apache/logging/log4j/core/LoggerContext;

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/core/selector/ContextSelector;->removeContext(Lorg/apache/logging/log4j/core/LoggerContext;)V

    .line 374
    :cond_0
    return-void
.end method

.method public shutdown(Ljava/lang/String;Ljava/lang/ClassLoader;ZZ)V
    .locals 1
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "currentContext"    # Z
    .param p4, "allContexts"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fqcn",
            "loader",
            "currentContext",
            "allContexts"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->selector:Lorg/apache/logging/log4j/core/selector/ContextSelector;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/logging/log4j/core/selector/ContextSelector;->hasContext(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->selector:Lorg/apache/logging/log4j/core/selector/ContextSelector;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/core/selector/ContextSelector;->shutdown(Ljava/lang/String;Ljava/lang/ClassLoader;ZZ)V

    .line 330
    :cond_0
    return-void
.end method
