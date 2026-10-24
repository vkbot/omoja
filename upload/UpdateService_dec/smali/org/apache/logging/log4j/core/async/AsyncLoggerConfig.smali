.class public Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;
.super Lorg/apache/logging/log4j/core/config/LoggerConfig;
.source "AsyncLoggerConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$RootLogger;,
        Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$Builder;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "asyncLogger"
    printObject = true
.end annotation


# static fields
.field private static final ASYNC_LOGGER_ENTERED:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final delegate:Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    new-instance v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$1;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$1;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->ASYNC_LOGGER_ENTERED:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/List;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/Level;Z[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/config/Configuration;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p4, "level"    # Lorg/apache/logging/log4j/Level;
    .param p5, "additive"    # Z
    .param p6, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
    .param p7, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p8, "includeLocation"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "appenders",
            "filter",
            "level",
            "additive",
            "properties",
            "config",
            "includeLocation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/AppenderRef;",
            ">;",
            "Lorg/apache/logging/log4j/core/Filter;",
            "Lorg/apache/logging/log4j/Level;",
            "Z[",
            "Lorg/apache/logging/log4j/core/config/Property;",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            "Z)V"
        }
    .end annotation

    .line 106
    .local p2, "appenders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/AppenderRef;>;"
    invoke-direct/range {p0 .. p8}, Lorg/apache/logging/log4j/core/config/LoggerConfig;-><init>(Ljava/lang/String;Ljava/util/List;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/Level;Z[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/config/Configuration;Z)V

    .line 108
    invoke-interface {p7}, Lorg/apache/logging/log4j/core/config/Configuration;->getAsyncLoggerConfigDelegate()Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDelegate;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->delegate:Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDelegate;

    .line 109
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->getLogEventFactory()Lorg/apache/logging/log4j/core/impl/LogEventFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDelegate;->setLogEventFactory(Lorg/apache/logging/log4j/core/impl/LogEventFactory;)V

    .line 110
    return-void
.end method

.method static synthetic access$000(Lorg/apache/logging/log4j/Level;[Lorg/apache/logging/log4j/core/config/AppenderRef;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/config/LoggerConfig$LevelAndRefs;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/Level;
    .param p1, "x1"    # [Lorg/apache/logging/log4j/core/config/AppenderRef;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lorg/apache/logging/log4j/core/config/Configuration;

    .line 73
    invoke-static {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->getLevelAndRefs(Lorg/apache/logging/log4j/Level;[Lorg/apache/logging/log4j/core/config/AppenderRef;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/config/LoggerConfig$LevelAndRefs;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lorg/apache/logging/log4j/core/config/Configuration;

    .line 73
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->includeLocation(Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)Z

    move-result v0

    return v0
.end method

.method public static createLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/logging/log4j/core/config/AppenderRef;[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/Filter;)Lorg/apache/logging/log4j/core/config/LoggerConfig;
    .locals 16
    .param p0, "additivity"    # Ljava/lang/String;
    .param p1, "levelName"    # Ljava/lang/String;
    .param p2, "loggerName"    # Ljava/lang/String;
    .param p3, "includeLocation"    # Ljava/lang/String;
    .param p4, "refs"    # [Lorg/apache/logging/log4j/core/config/AppenderRef;
    .param p5, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
    .param p6, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p7, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "additivity",
            "levelName",
            "loggerName",
            "includeLocation",
            "refs",
            "properties",
            "config",
            "filter"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 243
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v2, :cond_0

    .line 244
    sget-object v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Loggers cannot be configured without a name"

    invoke-interface {v0, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 245
    const/4 v0, 0x0

    return-object v0

    .line 248
    :cond_0
    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 251
    .local v12, "appenderRefs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/AppenderRef;>;"
    :try_start_0
    sget-object v0, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    invoke-static {v1, v0}, Lorg/apache/logging/log4j/Level;->toLevel(Ljava/lang/String;Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/Level;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .local v0, "level":Lorg/apache/logging/log4j/Level;
    goto :goto_0

    .line 252
    .end local v0    # "level":Lorg/apache/logging/log4j/Level;
    :catch_0
    move-exception v0

    .line 253
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v3, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v4, "Invalid Log level specified: {}. Defaulting to Error"

    invoke-interface {v3, v4, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 256
    sget-object v3, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    move-object v0, v3

    .line 258
    .local v0, "level":Lorg/apache/logging/log4j/Level;
    :goto_0
    const-string v3, "root"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ""

    move-object v4, v3

    goto :goto_1

    :cond_1
    move-object v4, v2

    .line 259
    .local v4, "name":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x1

    move-object/from16 v13, p0

    invoke-static {v13, v3}, Lorg/apache/logging/log4j/core/util/Booleans;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 261
    .local v14, "additive":Z
    new-instance v15, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;

    .line 262
    invoke-static/range {p3 .. p3}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->includeLocation(Ljava/lang/String;)Z

    move-result v11

    move-object v3, v15

    move-object v5, v12

    move-object/from16 v6, p7

    move-object v7, v0

    move v8, v14

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v3 .. v11}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;-><init>(Ljava/lang/String;Ljava/util/List;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/Level;Z[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/config/Configuration;Z)V

    .line 261
    return-object v15
.end method

.method public static createLogger(ZLorg/apache/logging/log4j/Level;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/logging/log4j/core/config/AppenderRef;[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/Filter;)Lorg/apache/logging/log4j/core/config/LoggerConfig;
    .locals 11
    .param p0, "additivity"    # Z
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultBoolean = true
            value = "additivity"
        .end annotation
    .end param
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "level"
        .end annotation
    .end param
    .param p2, "loggerName"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "name"
        .end annotation

        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;
            message = "Loggers cannot be configured without a name"
        .end annotation
    .end param
    .param p3, "includeLocation"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "includeLocation"
        .end annotation
    .end param
    .param p4, "refs"    # [Lorg/apache/logging/log4j/core/config/AppenderRef;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "AppenderRef"
        .end annotation
    .end param
    .param p5, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "Properties"
        .end annotation
    .end param
    .param p6, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginConfiguration;
        .end annotation
    .end param
    .param p7, "filter"    # Lorg/apache/logging/log4j/core/Filter;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "Filter"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "additivity",
            "level",
            "loggerName",
            "includeLocation",
            "refs",
            "properties",
            "config",
            "filter"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 289
    const-string v0, "root"

    move-object v1, p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 290
    .local v3, "name":Ljava/lang/String;
    :goto_0
    new-instance v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 291
    invoke-static {p3}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->includeLocation(Ljava/lang/String;)Z

    move-result v10

    move-object v2, v0

    move-object/from16 v5, p7

    move-object v6, p1

    move v7, p0

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v10}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;-><init>(Ljava/lang/String;Ljava/util/List;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/Level;Z[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/config/Configuration;Z)V

    .line 290
    return-object v0
.end method

.method private displayName()Ljava/lang/String;
    .locals 2

    .line 190
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "root"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private handleQueueFull(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 2
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 159
    invoke-static {}, Lorg/apache/logging/log4j/spi/AbstractLogger;->getRecursionDepth()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 161
    invoke-static {}, Lorg/apache/logging/log4j/core/async/AsyncQueueFullMessageUtil;->logWarningToStatusLogger()V

    .line 162
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->logToAsyncLoggerConfigsOnCurrentThread(Lorg/apache/logging/log4j/core/LogEvent;)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->delegate:Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDelegate;

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDelegate;->getEventRoute(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/async/EventRoute;

    move-result-object v0

    .line 166
    .local v0, "eventRoute":Lorg/apache/logging/log4j/core/async/EventRoute;
    invoke-virtual {v0, p0, p1}, Lorg/apache/logging/log4j/core/async/EventRoute;->logMessage(Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 168
    .end local v0    # "eventRoute":Lorg/apache/logging/log4j/core/async/EventRoute;
    :goto_0
    return-void
.end method

.method protected static includeLocation(Ljava/lang/String;)Z
    .locals 1
    .param p0, "includeLocationConfigValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "includeLocationConfigValue"
        }
    .end annotation

    .line 296
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private logToAsyncDelegate(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 1
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 148
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->isFiltered(Lorg/apache/logging/log4j/core/LogEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->populateLazilyInitializedFields(Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 152
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->delegate:Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDelegate;

    invoke-interface {v0, p1, p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDelegate;->tryEnqueue(Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->handleQueueFull(Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 156
    :cond_0
    return-void
.end method

.method public static newAsyncBuilder()Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$Builder<",
            "TB;>;>()TB;"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 77
    new-instance v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$Builder;->asBuilder()Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$Builder;

    return-object v0
.end method

.method private populateLazilyInitializedFields(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 0
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 171
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getSource()Ljava/lang/StackTraceElement;

    .line 172
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThreadName()Ljava/lang/String;

    .line 173
    return-void
.end method


# virtual methods
.method protected callAppenders(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 0
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 144
    invoke-super {p0, p1}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->callAppenders(Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 145
    return-void
.end method

.method public createRingBufferAdmin(Ljava/lang/String;)Lorg/apache/logging/log4j/core/jmx/RingBufferAdmin;
    .locals 2
    .param p1, "contextName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "contextName"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->delegate:Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDelegate;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDelegate;->createRingBufferAdmin(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/jmx/RingBufferAdmin;

    move-result-object v0

    return-object v0
.end method

.method protected log(Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;)V
    .locals 3
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "predicate"    # Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "predicate"
        }
    .end annotation

    .line 115
    sget-object v0, Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;->ALL:Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;

    if-ne p2, v0, :cond_0

    sget-object v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->ASYNC_LOGGER_ENTERED:Ljava/lang/ThreadLocal;

    .line 116
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    .line 121
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->hasAppenders()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->ASYNC_LOGGER_ENTERED:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 127
    :try_start_0
    sget-object v0, Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;->SYNCHRONOUS_ONLY:Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;

    invoke-super {p0, p1, v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->log(Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;)V

    .line 133
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->logToAsyncDelegate(Lorg/apache/logging/log4j/core/LogEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    sget-object v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->ASYNC_LOGGER_ENTERED:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 136
    nop

    .line 135
    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->ASYNC_LOGGER_ENTERED:Ljava/lang/ThreadLocal;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v0

    .line 138
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->log(Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;)V

    .line 140
    :goto_0
    return-void
.end method

.method logInBackgroundThread(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 1
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->delegate:Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDelegate;

    invoke-interface {v0, p1, p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDelegate;->enqueueEvent(Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;)V

    .line 177
    return-void
.end method

.method logToAsyncLoggerConfigsOnCurrentThread(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 1
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 186
    sget-object v0, Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;->ASYNCHRONOUS_ONLY:Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;

    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->log(Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;)V

    .line 187
    return-void
.end method

.method public start()V
    .locals 3

    .line 195
    sget-object v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-direct {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->displayName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AsyncLoggerConfig[{}] starting..."

    invoke-interface {v0, v2, v1}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    invoke-super {p0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->start()V

    .line 197
    return-void
.end method

.method public stop(JLjava/util/concurrent/TimeUnit;)Z
    .locals 3
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

    .line 201
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->setStopping()V

    .line 202
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->stop(JLjava/util/concurrent/TimeUnit;Z)Z

    .line 203
    sget-object v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-direct {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->displayName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AsyncLoggerConfig[{}] stopping..."

    invoke-interface {v0, v2, v1}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->setStopped()V

    .line 205
    const/4 v0, 0x1

    return v0
.end method
