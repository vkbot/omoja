.class public final Lorg/apache/logging/log4j/core/jmx/Server;
.super Ljava/lang/Object;
.source "Server.java"


# static fields
.field private static final CONTEXT_NAME_ALL:Ljava/lang/String; = "*"

.field public static final DOMAIN:Ljava/lang/String; = "org.apache.logging.log4j2"

.field private static final LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

.field private static final PROPERTY_ASYNC_NOTIF:Ljava/lang/String; = "log4j2.jmx.notify.async"

.field private static final PROPERTY_DISABLE_JMX:Ljava/lang/String; = "log4j2.disable.jmx"

.field private static final THREAD_NAME_PREFIX:Ljava/lang/String; = "jmx.notif"

.field static final executor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/jmx/Server;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    .line 66
    invoke-static {}, Lorg/apache/logging/log4j/core/jmx/Server;->isJmxDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/logging/log4j/core/jmx/Server;->createExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :goto_0
    sput-object v0, Lorg/apache/logging/log4j/core/jmx/Server;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method private static createExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 4

    .line 79
    sget-boolean v0, Lorg/apache/logging/log4j/core/util/Constants;->IS_WEB_APP:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 80
    .local v0, "defaultAsync":Z
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v2

    const-string v3, "log4j2.jmx.notify.async"

    invoke-virtual {v2, v3, v0}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v2

    .line 81
    .local v2, "async":Z
    if-eqz v2, :cond_0

    const-string v3, "jmx.notif"

    invoke-static {v3}, Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;->createDaemonThreadFactory(Ljava/lang/String;)Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 94
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 95
    .local v1, "needsQuotes":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x22

    if-ge v2, v3, :cond_4

    .line 96
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 97
    .local v3, "c":C
    const/16 v5, 0xa

    if-eq v3, v5, :cond_3

    const/16 v5, 0xd

    if-eq v3, v5, :cond_2

    const/16 v5, 0x5c

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_0

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_0

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_0

    const/16 v4, 0x3f

    if-eq v3, v4, :cond_1

    if-eq v3, v5, :cond_1

    goto :goto_1

    .line 110
    :cond_0
    const/4 v1, 0x1

    .line 111
    goto :goto_1

    .line 103
    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    const/4 v1, 0x1

    .line 105
    nop

    .line 121
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 114
    :cond_2
    goto :goto_2

    .line 117
    :cond_3
    const-string v4, "\\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const/4 v1, 0x1

    .line 119
    nop

    .line 95
    .end local v3    # "c":C
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    .end local v2    # "i":I
    :cond_4
    if-eqz v1, :cond_5

    .line 124
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getContextSelector()Lorg/apache/logging/log4j/core/selector/ContextSelector;
    .locals 2

    .line 229
    invoke-static {}, Lorg/apache/logging/log4j/LogManager;->getFactory()Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    move-result-object v0

    .line 230
    .local v0, "factory":Lorg/apache/logging/log4j/spi/LoggerContextFactory;
    instance-of v1, v0, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;

    if-eqz v1, :cond_0

    .line 231
    move-object v1, v0

    check-cast v1, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->getSelector()Lorg/apache/logging/log4j/core/selector/ContextSelector;

    move-result-object v1

    .line 232
    .local v1, "selector":Lorg/apache/logging/log4j/core/selector/ContextSelector;
    return-object v1

    .line 234
    .end local v1    # "selector":Lorg/apache/logging/log4j/core/selector/ContextSelector;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static isJmxDisabled()Z
    .locals 2

    .line 131
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    const-string v1, "log4j2.disable.jmx"

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static register(Ljavax/management/MBeanServer;Ljava/lang/Object;Ljavax/management/ObjectName;)V
    .locals 3
    .param p0, "mbs"    # Ljavax/management/MBeanServer;
    .param p1, "mbean"    # Ljava/lang/Object;
    .param p2, "objectName"    # Ljavax/management/ObjectName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "mbs",
            "mbean",
            "objectName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/InstanceAlreadyExistsException;,
            Ljavax/management/MBeanRegistrationException;,
            Ljavax/management/NotCompliantMBeanException;
        }
    .end annotation

    .line 392
    invoke-interface {p0, p2}, Ljavax/management/MBeanServer;->isRegistered(Ljavax/management/ObjectName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    :try_start_0
    invoke-interface {p0, p2}, Ljavax/management/MBeanServer;->unregisterMBean(Ljavax/management/ObjectName;)V
    :try_end_0
    .catch Ljavax/management/MBeanRegistrationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/management/InstanceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    goto :goto_0

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "ex":Ljavax/management/JMException;
    sget-object v1, Lorg/apache/logging/log4j/core/jmx/Server;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v2, "Failed to unregister MBean {}"

    invoke-virtual {v1, v2, p2}, Lorg/apache/logging/log4j/status/StatusLogger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 399
    .end local v0    # "ex":Ljavax/management/JMException;
    :cond_0
    :goto_0
    sget-object v0, Lorg/apache/logging/log4j/core/jmx/Server;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v1, "Registering MBean {}"

    invoke-virtual {v0, v1, p2}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 400
    invoke-interface {p0, p1, p2}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;

    .line 401
    return-void
.end method

.method private static registerAppenders(Lorg/apache/logging/log4j/core/LoggerContext;Ljavax/management/MBeanServer;Ljava/util/concurrent/Executor;)V
    .locals 7
    .param p0, "ctx"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p1, "mbs"    # Ljavax/management/MBeanServer;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "ctx",
            "mbs",
            "executor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/InstanceAlreadyExistsException;,
            Ljavax/management/MBeanRegistrationException;,
            Ljavax/management/NotCompliantMBeanException;
        }
    .end annotation

    .line 375
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/LoggerContext;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getAppenders()Ljava/util/Map;

    move-result-object v0

    .line 376
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/core/Appender;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 377
    .local v2, "name":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/core/Appender;

    .line 379
    .local v3, "appender":Lorg/apache/logging/log4j/core/Appender;
    instance-of v4, v3, Lorg/apache/logging/log4j/core/appender/AsyncAppender;

    if-eqz v4, :cond_0

    .line 380
    move-object v4, v3

    check-cast v4, Lorg/apache/logging/log4j/core/appender/AsyncAppender;

    .line 381
    .local v4, "async":Lorg/apache/logging/log4j/core/appender/AsyncAppender;
    new-instance v5, Lorg/apache/logging/log4j/core/jmx/AsyncAppenderAdmin;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lorg/apache/logging/log4j/core/jmx/AsyncAppenderAdmin;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/AsyncAppender;)V

    .line 382
    .local v5, "mbean":Lorg/apache/logging/log4j/core/jmx/AsyncAppenderAdmin;
    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/jmx/AsyncAppenderAdmin;->getObjectName()Ljavax/management/ObjectName;

    move-result-object v6

    invoke-static {p1, v5, v6}, Lorg/apache/logging/log4j/core/jmx/Server;->register(Ljavax/management/MBeanServer;Ljava/lang/Object;Ljavax/management/ObjectName;)V

    .line 383
    .end local v4    # "async":Lorg/apache/logging/log4j/core/appender/AsyncAppender;
    .end local v5    # "mbean":Lorg/apache/logging/log4j/core/jmx/AsyncAppenderAdmin;
    goto :goto_1

    .line 384
    :cond_0
    new-instance v4, Lorg/apache/logging/log4j/core/jmx/AppenderAdmin;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/apache/logging/log4j/core/jmx/AppenderAdmin;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Appender;)V

    .line 385
    .local v4, "mbean":Lorg/apache/logging/log4j/core/jmx/AppenderAdmin;
    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/jmx/AppenderAdmin;->getObjectName()Ljavax/management/ObjectName;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lorg/apache/logging/log4j/core/jmx/Server;->register(Ljavax/management/MBeanServer;Ljava/lang/Object;Ljavax/management/ObjectName;)V

    .line 387
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "appender":Lorg/apache/logging/log4j/core/Appender;
    .end local v4    # "mbean":Lorg/apache/logging/log4j/core/jmx/AppenderAdmin;
    :goto_1
    goto :goto_0

    .line 388
    :cond_1
    return-void
.end method

.method private static registerContextSelector(Ljava/lang/String;Lorg/apache/logging/log4j/core/selector/ContextSelector;Ljavax/management/MBeanServer;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p0, "contextName"    # Ljava/lang/String;
    .param p1, "selector"    # Lorg/apache/logging/log4j/core/selector/ContextSelector;
    .param p2, "mbs"    # Ljavax/management/MBeanServer;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "contextName",
            "selector",
            "mbs",
            "executor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/InstanceAlreadyExistsException;,
            Ljavax/management/MBeanRegistrationException;,
            Ljavax/management/NotCompliantMBeanException;
        }
    .end annotation

    .line 284
    new-instance v0, Lorg/apache/logging/log4j/core/jmx/ContextSelectorAdmin;

    invoke-direct {v0, p0, p1}, Lorg/apache/logging/log4j/core/jmx/ContextSelectorAdmin;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/selector/ContextSelector;)V

    .line 285
    .local v0, "mbean":Lorg/apache/logging/log4j/core/jmx/ContextSelectorAdmin;
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/jmx/ContextSelectorAdmin;->getObjectName()Ljavax/management/ObjectName;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lorg/apache/logging/log4j/core/jmx/Server;->register(Ljavax/management/MBeanServer;Ljava/lang/Object;Ljavax/management/ObjectName;)V

    .line 286
    return-void
.end method

.method private static registerLoggerConfigs(Lorg/apache/logging/log4j/core/LoggerContext;Ljavax/management/MBeanServer;Ljava/util/concurrent/Executor;)V
    .locals 8
    .param p0, "ctx"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p1, "mbs"    # Ljavax/management/MBeanServer;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "ctx",
            "mbs",
            "executor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/InstanceAlreadyExistsException;,
            Ljavax/management/MBeanRegistrationException;,
            Ljavax/management/NotCompliantMBeanException;
        }
    .end annotation

    .line 358
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/LoggerContext;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getLoggers()Ljava/util/Map;

    move-result-object v0

    .line 359
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/core/config/LoggerConfig;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 360
    .local v2, "name":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/core/config/LoggerConfig;

    .line 361
    .local v3, "cfg":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    new-instance v4, Lorg/apache/logging/log4j/core/jmx/LoggerConfigAdmin;

    invoke-direct {v4, p0, v3}, Lorg/apache/logging/log4j/core/jmx/LoggerConfigAdmin;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/LoggerConfig;)V

    .line 362
    .local v4, "mbean":Lorg/apache/logging/log4j/core/jmx/LoggerConfigAdmin;
    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/jmx/LoggerConfigAdmin;->getObjectName()Ljavax/management/ObjectName;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lorg/apache/logging/log4j/core/jmx/Server;->register(Ljavax/management/MBeanServer;Ljava/lang/Object;Ljavax/management/ObjectName;)V

    .line 364
    instance-of v5, v3, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;

    if-eqz v5, :cond_0

    .line 365
    move-object v5, v3

    check-cast v5, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;

    .line 366
    .local v5, "async":Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->createRingBufferAdmin(Ljava/lang/String;)Lorg/apache/logging/log4j/core/jmx/RingBufferAdmin;

    move-result-object v6

    .line 367
    .local v6, "rbmbean":Lorg/apache/logging/log4j/core/jmx/RingBufferAdmin;
    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/jmx/RingBufferAdmin;->getObjectName()Ljavax/management/ObjectName;

    move-result-object v7

    invoke-static {p1, v6, v7}, Lorg/apache/logging/log4j/core/jmx/Server;->register(Ljavax/management/MBeanServer;Ljava/lang/Object;Ljavax/management/ObjectName;)V

    .line 369
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "cfg":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    .end local v4    # "mbean":Lorg/apache/logging/log4j/core/jmx/LoggerConfigAdmin;
    .end local v5    # "async":Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;
    .end local v6    # "rbmbean":Lorg/apache/logging/log4j/core/jmx/RingBufferAdmin;
    :cond_0
    goto :goto_0

    .line 370
    :cond_1
    return-void
.end method

.method private static registerStatusLogger(Ljava/lang/String;Ljavax/management/MBeanServer;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p0, "contextName"    # Ljava/lang/String;
    .param p1, "mbs"    # Ljavax/management/MBeanServer;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "contextName",
            "mbs",
            "executor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/InstanceAlreadyExistsException;,
            Ljavax/management/MBeanRegistrationException;,
            Ljavax/management/NotCompliantMBeanException;
        }
    .end annotation

    .line 276
    new-instance v0, Lorg/apache/logging/log4j/core/jmx/StatusLoggerAdmin;

    invoke-direct {v0, p0, p2}, Lorg/apache/logging/log4j/core/jmx/StatusLoggerAdmin;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    .line 277
    .local v0, "mbean":Lorg/apache/logging/log4j/core/jmx/StatusLoggerAdmin;
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/jmx/StatusLoggerAdmin;->getObjectName()Ljavax/management/ObjectName;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/apache/logging/log4j/core/jmx/Server;->register(Ljavax/management/MBeanServer;Ljava/lang/Object;Ljavax/management/ObjectName;)V

    .line 278
    return-void
.end method

.method public static reregisterMBeansAfterReconfigure()V
    .locals 2

    .line 136
    invoke-static {}, Lorg/apache/logging/log4j/core/jmx/Server;->isJmxDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Lorg/apache/logging/log4j/core/jmx/Server;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v1, "JMX disabled for Log4j2. Not registering MBeans."

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;)V

    .line 138
    return-void

    .line 140
    :cond_0
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getPlatformMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v0

    .line 141
    .local v0, "mbs":Ljavax/management/MBeanServer;
    invoke-static {v0}, Lorg/apache/logging/log4j/core/jmx/Server;->reregisterMBeansAfterReconfigure(Ljavax/management/MBeanServer;)V

    .line 142
    return-void
.end method

.method public static reregisterMBeansAfterReconfigure(Ljavax/management/MBeanServer;)V
    .locals 11
    .param p0, "mbs"    # Ljavax/management/MBeanServer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mbs"
        }
    .end annotation

    .line 145
    invoke-static {}, Lorg/apache/logging/log4j/core/jmx/Server;->isJmxDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lorg/apache/logging/log4j/core/jmx/Server;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v1, "JMX disabled for Log4j2. Not registering MBeans."

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;)V

    .line 147
    return-void

    .line 153
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/apache/logging/log4j/core/jmx/Server;->getContextSelector()Lorg/apache/logging/log4j/core/selector/ContextSelector;

    move-result-object v0

    .line 154
    .local v0, "selector":Lorg/apache/logging/log4j/core/selector/ContextSelector;
    if-nez v0, :cond_1

    .line 155
    sget-object v1, Lorg/apache/logging/log4j/core/jmx/Server;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v2, "Could not register MBeans: no ContextSelector found."

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;)V

    .line 156
    return-void

    .line 158
    :cond_1
    sget-object v1, Lorg/apache/logging/log4j/core/jmx/Server;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v2, "Reregistering MBeans after reconfigure. Selector={}"

    invoke-virtual {v1, v2, v0}, Lorg/apache/logging/log4j/status/StatusLogger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    invoke-interface {v0}, Lorg/apache/logging/log4j/core/selector/ContextSelector;->getLoggerContexts()Ljava/util/List;

    move-result-object v1

    .line 160
    .local v1, "contexts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/LoggerContext;>;"
    const/4 v2, 0x0

    .line 161
    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/logging/log4j/core/LoggerContext;

    .line 162
    .local v4, "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    sget-object v5, Lorg/apache/logging/log4j/core/jmx/Server;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v6, "Reregistering context ({}/{}): \'{}\' {}"

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Lorg/apache/logging/log4j/status/StatusLogger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 165
    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0}, Lorg/apache/logging/log4j/core/jmx/Server;->unregisterLoggerContext(Ljava/lang/String;Ljavax/management/MBeanServer;)V

    .line 167
    new-instance v5, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;

    sget-object v6, Lorg/apache/logging/log4j/core/jmx/Server;->executor:Ljava/util/concurrent/Executor;

    invoke-direct {v5, v4, v6}, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/util/concurrent/Executor;)V

    .line 168
    .local v5, "mbean":Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;
    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->getObjectName()Ljavax/management/ObjectName;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lorg/apache/logging/log4j/core/jmx/Server;->register(Ljavax/management/MBeanServer;Ljava/lang/Object;Ljavax/management/ObjectName;)V

    .line 170
    instance-of v6, v4, Lorg/apache/logging/log4j/core/async/AsyncLoggerContext;

    if-eqz v6, :cond_2

    .line 171
    move-object v6, v4

    check-cast v6, Lorg/apache/logging/log4j/core/async/AsyncLoggerContext;

    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/async/AsyncLoggerContext;->createRingBufferAdmin()Lorg/apache/logging/log4j/core/jmx/RingBufferAdmin;

    move-result-object v6

    .line 172
    .local v6, "rbmbean":Lorg/apache/logging/log4j/core/jmx/RingBufferAdmin;
    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/jmx/RingBufferAdmin;->getBufferSize()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    .line 174
    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/jmx/RingBufferAdmin;->getObjectName()Ljavax/management/ObjectName;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lorg/apache/logging/log4j/core/jmx/Server;->register(Ljavax/management/MBeanServer;Ljava/lang/Object;Ljavax/management/ObjectName;)V

    .line 183
    .end local v6    # "rbmbean":Lorg/apache/logging/log4j/core/jmx/RingBufferAdmin;
    :cond_2
    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/apache/logging/log4j/core/jmx/Server;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v6, p0, v7}, Lorg/apache/logging/log4j/core/jmx/Server;->registerStatusLogger(Ljava/lang/String;Ljavax/management/MBeanServer;Ljava/util/concurrent/Executor;)V

    .line 184
    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/apache/logging/log4j/core/jmx/Server;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v6, v0, p0, v7}, Lorg/apache/logging/log4j/core/jmx/Server;->registerContextSelector(Ljava/lang/String;Lorg/apache/logging/log4j/core/selector/ContextSelector;Ljavax/management/MBeanServer;Ljava/util/concurrent/Executor;)V

    .line 186
    sget-object v6, Lorg/apache/logging/log4j/core/jmx/Server;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v4, p0, v6}, Lorg/apache/logging/log4j/core/jmx/Server;->registerLoggerConfigs(Lorg/apache/logging/log4j/core/LoggerContext;Ljavax/management/MBeanServer;Ljava/util/concurrent/Executor;)V

    .line 187
    sget-object v6, Lorg/apache/logging/log4j/core/jmx/Server;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v4, p0, v6}, Lorg/apache/logging/log4j/core/jmx/Server;->registerAppenders(Lorg/apache/logging/log4j/core/LoggerContext;Ljavax/management/MBeanServer;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v4    # "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    .end local v5    # "mbean":Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;
    goto :goto_0

    .line 191
    .end local v0    # "selector":Lorg/apache/logging/log4j/core/selector/ContextSelector;
    .end local v1    # "contexts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/LoggerContext;>;"
    .end local v2    # "i":I
    :cond_3
    goto :goto_1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lorg/apache/logging/log4j/core/jmx/Server;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v2, "Could not register mbeans"

    invoke-virtual {v1, v2, v0}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private static unregisterAllMatching(Ljava/lang/String;Ljavax/management/MBeanServer;)V
    .locals 6
    .param p0, "search"    # Ljava/lang/String;
    .param p1, "mbs"    # Ljavax/management/MBeanServer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "search",
            "mbs"
        }
    .end annotation

    .line 336
    const-string v0, "Could not unregister MBeans for "

    :try_start_0
    new-instance v1, Ljavax/management/ObjectName;

    invoke-direct {v1, p0}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V

    .line 337
    .local v1, "pattern":Ljavax/management/ObjectName;
    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Ljavax/management/MBeanServer;->queryNames(Ljavax/management/ObjectName;Ljavax/management/QueryExp;)Ljava/util/Set;

    move-result-object v2

    .line 338
    .local v2, "found":Ljava/util/Set;, "Ljava/util/Set<Ljavax/management/ObjectName;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 341
    :cond_0
    sget-object v3, Lorg/apache/logging/log4j/core/jmx/Server;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v4, "Unregistering {} MBeans: {}"

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lorg/apache/logging/log4j/status/StatusLogger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 339
    :cond_1
    :goto_0
    sget-object v3, Lorg/apache/logging/log4j/core/jmx/Server;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v4, "Unregistering but no MBeans found matching \'{}\'"

    invoke-virtual {v3, v4, p0}, Lorg/apache/logging/log4j/status/StatusLogger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 343
    :goto_1
    if-eqz v2, :cond_2

    .line 344
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/management/ObjectName;

    .line 345
    .local v4, "objectName":Ljavax/management/ObjectName;
    invoke-interface {p1, v4}, Ljavax/management/MBeanServer;->unregisterMBean(Ljavax/management/ObjectName;)V
    :try_end_0
    .catch Ljavax/management/InstanceNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    .end local v4    # "objectName":Ljavax/management/ObjectName;
    goto :goto_2

    .line 350
    .end local v1    # "pattern":Ljavax/management/ObjectName;
    .end local v2    # "found":Ljava/util/Set;, "Ljava/util/Set<Ljavax/management/ObjectName;>;"
    :catch_0
    move-exception v1

    .line 351
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/logging/log4j/core/jmx/Server;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 348
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 349
    .local v1, "ex":Ljavax/management/InstanceNotFoundException;
    sget-object v2, Lorg/apache/logging/log4j/core/jmx/Server;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Ignoring "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;)V

    .line 352
    .end local v1    # "ex":Ljavax/management/InstanceNotFoundException;
    :cond_2
    nop

    .line 353
    :goto_3
    return-void
.end method

.method private static unregisterAppenders(Ljava/lang/String;Ljavax/management/MBeanServer;)V
    .locals 4
    .param p0, "contextName"    # Ljava/lang/String;
    .param p1, "mbs"    # Ljavax/management/MBeanServer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "contextName",
            "mbs"
        }
    .end annotation

    .line 311
    const-string v0, "org.apache.logging.log4j2:type=%s,component=Appenders,name=%s"

    .line 312
    .local v0, "pattern":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Lorg/apache/logging/log4j/core/jmx/Server;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "*"

    aput-object v3, v1, v2

    const-string v2, "org.apache.logging.log4j2:type=%s,component=Appenders,name=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "search":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/apache/logging/log4j/core/jmx/Server;->unregisterAllMatching(Ljava/lang/String;Ljavax/management/MBeanServer;)V

    .line 314
    return-void
.end method

.method private static unregisterAsyncAppenders(Ljava/lang/String;Ljavax/management/MBeanServer;)V
    .locals 4
    .param p0, "contextName"    # Ljava/lang/String;
    .param p1, "mbs"    # Ljavax/management/MBeanServer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "contextName",
            "mbs"
        }
    .end annotation

    .line 317
    const-string v0, "org.apache.logging.log4j2:type=%s,component=AsyncAppenders,name=%s"

    .line 318
    .local v0, "pattern":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Lorg/apache/logging/log4j/core/jmx/Server;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "*"

    aput-object v3, v1, v2

    const-string v2, "org.apache.logging.log4j2:type=%s,component=AsyncAppenders,name=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "search":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/apache/logging/log4j/core/jmx/Server;->unregisterAllMatching(Ljava/lang/String;Ljavax/management/MBeanServer;)V

    .line 320
    return-void
.end method

.method private static unregisterAsyncLoggerConfigRingBufferAdmins(Ljava/lang/String;Ljavax/management/MBeanServer;)V
    .locals 4
    .param p0, "contextName"    # Ljava/lang/String;
    .param p1, "mbs"    # Ljavax/management/MBeanServer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "contextName",
            "mbs"
        }
    .end annotation

    .line 329
    const-string v0, "org.apache.logging.log4j2:type=%s,component=Loggers,name=%s,subtype=RingBuffer"

    .line 330
    .local v0, "pattern2":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Lorg/apache/logging/log4j/core/jmx/Server;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "*"

    aput-object v3, v1, v2

    const-string v2, "org.apache.logging.log4j2:type=%s,component=Loggers,name=%s,subtype=RingBuffer"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, "search2":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/apache/logging/log4j/core/jmx/Server;->unregisterAllMatching(Ljava/lang/String;Ljavax/management/MBeanServer;)V

    .line 332
    return-void
.end method

.method private static unregisterAsyncLoggerRingBufferAdmins(Ljava/lang/String;Ljavax/management/MBeanServer;)V
    .locals 4
    .param p0, "contextName"    # Ljava/lang/String;
    .param p1, "mbs"    # Ljavax/management/MBeanServer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "contextName",
            "mbs"
        }
    .end annotation

    .line 323
    const-string v0, "org.apache.logging.log4j2:type=%s,component=AsyncLoggerRingBuffer"

    .line 324
    .local v0, "pattern1":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Lorg/apache/logging/log4j/core/jmx/Server;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "org.apache.logging.log4j2:type=%s,component=AsyncLoggerRingBuffer"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "search1":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/apache/logging/log4j/core/jmx/Server;->unregisterAllMatching(Ljava/lang/String;Ljavax/management/MBeanServer;)V

    .line 326
    return-void
.end method

.method private static unregisterContextSelector(Ljava/lang/String;Ljavax/management/MBeanServer;)V
    .locals 3
    .param p0, "contextName"    # Ljava/lang/String;
    .param p1, "mbs"    # Ljavax/management/MBeanServer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "contextName",
            "mbs"
        }
    .end annotation

    .line 294
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lorg/apache/logging/log4j/core/jmx/Server;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "*"

    aput-object v2, v0, v1

    const-string v1, "org.apache.logging.log4j2:type=%s,component=ContextSelector"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "search":Ljava/lang/String;
    invoke-static {v0, p1}, Lorg/apache/logging/log4j/core/jmx/Server;->unregisterAllMatching(Ljava/lang/String;Ljavax/management/MBeanServer;)V

    .line 296
    return-void
.end method

.method private static unregisterContexts(Ljavax/management/MBeanServer;)V
    .locals 4
    .param p0, "mbs"    # Ljavax/management/MBeanServer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mbs"
        }
    .end annotation

    .line 305
    const-string v0, "org.apache.logging.log4j2:type=%s"

    .line 306
    .local v0, "pattern":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "*"

    aput-object v3, v1, v2

    const-string v2, "org.apache.logging.log4j2:type=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "search":Ljava/lang/String;
    invoke-static {v1, p0}, Lorg/apache/logging/log4j/core/jmx/Server;->unregisterAllMatching(Ljava/lang/String;Ljavax/management/MBeanServer;)V

    .line 308
    return-void
.end method

.method private static unregisterLoggerConfigs(Ljava/lang/String;Ljavax/management/MBeanServer;)V
    .locals 4
    .param p0, "contextName"    # Ljava/lang/String;
    .param p1, "mbs"    # Ljavax/management/MBeanServer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "contextName",
            "mbs"
        }
    .end annotation

    .line 299
    const-string v0, "org.apache.logging.log4j2:type=%s,component=Loggers,name=%s"

    .line 300
    .local v0, "pattern":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Lorg/apache/logging/log4j/core/jmx/Server;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "*"

    aput-object v3, v1, v2

    const-string v2, "org.apache.logging.log4j2:type=%s,component=Loggers,name=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "search":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/apache/logging/log4j/core/jmx/Server;->unregisterAllMatching(Ljava/lang/String;Ljavax/management/MBeanServer;)V

    .line 302
    return-void
.end method

.method public static unregisterLoggerContext(Ljava/lang/String;)V
    .locals 2
    .param p0, "loggerContextName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "loggerContextName"
        }
    .end annotation

    .line 244
    invoke-static {}, Lorg/apache/logging/log4j/core/jmx/Server;->isJmxDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    sget-object v0, Lorg/apache/logging/log4j/core/jmx/Server;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v1, "JMX disabled for Log4j2. Not unregistering MBeans."

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;)V

    .line 246
    return-void

    .line 248
    :cond_0
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getPlatformMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v0

    .line 249
    .local v0, "mbs":Ljavax/management/MBeanServer;
    invoke-static {p0, v0}, Lorg/apache/logging/log4j/core/jmx/Server;->unregisterLoggerContext(Ljava/lang/String;Ljavax/management/MBeanServer;)V

    .line 250
    return-void
.end method

.method public static unregisterLoggerContext(Ljava/lang/String;Ljavax/management/MBeanServer;)V
    .locals 3
    .param p0, "contextName"    # Ljava/lang/String;
    .param p1, "mbs"    # Ljavax/management/MBeanServer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "contextName",
            "mbs"
        }
    .end annotation

    .line 260
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lorg/apache/logging/log4j/core/jmx/Server;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "*"

    aput-object v2, v0, v1

    const-string v1, "org.apache.logging.log4j2:type=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "search":Ljava/lang/String;
    invoke-static {v0, p1}, Lorg/apache/logging/log4j/core/jmx/Server;->unregisterAllMatching(Ljava/lang/String;Ljavax/management/MBeanServer;)V

    .line 264
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/core/jmx/Server;->unregisterStatusLogger(Ljava/lang/String;Ljavax/management/MBeanServer;)V

    .line 265
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/core/jmx/Server;->unregisterContextSelector(Ljava/lang/String;Ljavax/management/MBeanServer;)V

    .line 266
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/core/jmx/Server;->unregisterLoggerConfigs(Ljava/lang/String;Ljavax/management/MBeanServer;)V

    .line 267
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/core/jmx/Server;->unregisterAppenders(Ljava/lang/String;Ljavax/management/MBeanServer;)V

    .line 268
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/core/jmx/Server;->unregisterAsyncAppenders(Ljava/lang/String;Ljavax/management/MBeanServer;)V

    .line 269
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/core/jmx/Server;->unregisterAsyncLoggerRingBufferAdmins(Ljava/lang/String;Ljavax/management/MBeanServer;)V

    .line 270
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/core/jmx/Server;->unregisterAsyncLoggerConfigRingBufferAdmins(Ljava/lang/String;Ljavax/management/MBeanServer;)V

    .line 271
    return-void
.end method

.method public static unregisterMBeans()V
    .locals 2

    .line 198
    invoke-static {}, Lorg/apache/logging/log4j/core/jmx/Server;->isJmxDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    sget-object v0, Lorg/apache/logging/log4j/core/jmx/Server;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v1, "JMX disabled for Log4j2. Not unregistering MBeans."

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;)V

    .line 200
    return-void

    .line 202
    :cond_0
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getPlatformMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/jmx/Server;->unregisterMBeans(Ljavax/management/MBeanServer;)V

    .line 203
    return-void
.end method

.method public static unregisterMBeans(Ljavax/management/MBeanServer;)V
    .locals 1
    .param p0, "mbs"    # Ljavax/management/MBeanServer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mbs"
        }
    .end annotation

    .line 211
    if-eqz p0, :cond_0

    .line 212
    const-string v0, "*"

    invoke-static {v0, p0}, Lorg/apache/logging/log4j/core/jmx/Server;->unregisterStatusLogger(Ljava/lang/String;Ljavax/management/MBeanServer;)V

    .line 213
    invoke-static {v0, p0}, Lorg/apache/logging/log4j/core/jmx/Server;->unregisterContextSelector(Ljava/lang/String;Ljavax/management/MBeanServer;)V

    .line 214
    invoke-static {p0}, Lorg/apache/logging/log4j/core/jmx/Server;->unregisterContexts(Ljavax/management/MBeanServer;)V

    .line 215
    invoke-static {v0, p0}, Lorg/apache/logging/log4j/core/jmx/Server;->unregisterLoggerConfigs(Ljava/lang/String;Ljavax/management/MBeanServer;)V

    .line 216
    invoke-static {v0, p0}, Lorg/apache/logging/log4j/core/jmx/Server;->unregisterAsyncLoggerRingBufferAdmins(Ljava/lang/String;Ljavax/management/MBeanServer;)V

    .line 217
    invoke-static {v0, p0}, Lorg/apache/logging/log4j/core/jmx/Server;->unregisterAsyncLoggerConfigRingBufferAdmins(Ljava/lang/String;Ljavax/management/MBeanServer;)V

    .line 218
    invoke-static {v0, p0}, Lorg/apache/logging/log4j/core/jmx/Server;->unregisterAppenders(Ljava/lang/String;Ljavax/management/MBeanServer;)V

    .line 219
    invoke-static {v0, p0}, Lorg/apache/logging/log4j/core/jmx/Server;->unregisterAsyncAppenders(Ljava/lang/String;Ljavax/management/MBeanServer;)V

    .line 221
    :cond_0
    return-void
.end method

.method private static unregisterStatusLogger(Ljava/lang/String;Ljavax/management/MBeanServer;)V
    .locals 3
    .param p0, "contextName"    # Ljava/lang/String;
    .param p1, "mbs"    # Ljavax/management/MBeanServer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "contextName",
            "mbs"
        }
    .end annotation

    .line 289
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lorg/apache/logging/log4j/core/jmx/Server;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "*"

    aput-object v2, v0, v1

    const-string v1, "org.apache.logging.log4j2:type=%s,component=StatusLogger"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "search":Ljava/lang/String;
    invoke-static {v0, p1}, Lorg/apache/logging/log4j/core/jmx/Server;->unregisterAllMatching(Ljava/lang/String;Ljavax/management/MBeanServer;)V

    .line 291
    return-void
.end method
