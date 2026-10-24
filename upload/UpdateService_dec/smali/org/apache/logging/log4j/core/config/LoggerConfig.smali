.class public Lorg/apache/logging/log4j/core/config/LoggerConfig;
.super Lorg/apache/logging/log4j/core/filter/AbstractFilterable;
.source "LoggerConfig.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/impl/LocationAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;,
        Lorg/apache/logging/log4j/core/config/LoggerConfig$LevelAndRefs;,
        Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger;,
        Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "logger"
    printObject = true
.end annotation


# static fields
.field private static LOG_EVENT_FACTORY:Lorg/apache/logging/log4j/core/impl/LogEventFactory; = null

.field public static final ROOT:Ljava/lang/String; = "root"


# instance fields
.field private additive:Z

.field private appenderRefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/AppenderRef;",
            ">;"
        }
    .end annotation
.end field

.field private final appenders:Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;

.field private final config:Lorg/apache/logging/log4j/core/config/Configuration;

.field private includeLocation:Z

.field private level:Lorg/apache/logging/log4j/Level;

.field private logEventFactory:Lorg/apache/logging/log4j/core/impl/LogEventFactory;

.field private final name:Ljava/lang/String;

.field private parent:Lorg/apache/logging/log4j/core/config/LoggerConfig;

.field private final properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/Property;",
            ">;"
        }
    .end annotation
.end field

.field private propertiesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/logging/log4j/core/config/Property;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final propertiesRequireLookup:Z

.field private final reliabilityStrategy:Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->LOG_EVENT_FACTORY:Lorg/apache/logging/log4j/core/impl/LogEventFactory;

    .line 89
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    const-string v1, "Log4jLogEventFactory"

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "factory":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 92
    :try_start_0
    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 93
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    const-class v2, Lorg/apache/logging/log4j/core/impl/LogEventFactory;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/impl/LogEventFactory;

    sput-object v2, Lorg/apache/logging/log4j/core/config/LoggerConfig;->LOG_EVENT_FACTORY:Lorg/apache/logging/log4j/core/impl/LogEventFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    goto :goto_0

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/logging/log4j/core/config/LoggerConfig;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Unable to create LogEventFactory {}"

    invoke-interface {v2, v3, v0, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_0
    sget-object v1, Lorg/apache/logging/log4j/core/config/LoggerConfig;->LOG_EVENT_FACTORY:Lorg/apache/logging/log4j/core/impl/LogEventFactory;

    if-nez v1, :cond_3

    .line 101
    sget-boolean v1, Lorg/apache/logging/log4j/core/util/Constants;->ENABLE_THREADLOCALS:Z

    if-eqz v1, :cond_2

    new-instance v1, Lorg/apache/logging/log4j/core/impl/ReusableLogEventFactory;

    invoke-direct {v1}, Lorg/apache/logging/log4j/core/impl/ReusableLogEventFactory;-><init>()V

    goto :goto_1

    :cond_2
    new-instance v1, Lorg/apache/logging/log4j/core/impl/DefaultLogEventFactory;

    invoke-direct {v1}, Lorg/apache/logging/log4j/core/impl/DefaultLogEventFactory;-><init>()V

    :goto_1
    sput-object v1, Lorg/apache/logging/log4j/core/config/LoggerConfig;->LOG_EVENT_FACTORY:Lorg/apache/logging/log4j/core/impl/LogEventFactory;

    .line 105
    .end local v0    # "factory":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 240
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->appenderRefs:Ljava/util/List;

    .line 75
    new-instance v0, Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->appenders:Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->additive:Z

    .line 80
    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->includeLocation:Z

    .line 241
    sget-object v0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->LOG_EVENT_FACTORY:Lorg/apache/logging/log4j/core/impl/LogEventFactory;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->logEventFactory:Lorg/apache/logging/log4j/core/impl/LogEventFactory;

    .line 242
    sget-object v0, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->level:Lorg/apache/logging/log4j/Level;

    .line 243
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->name:Ljava/lang/String;

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->properties:Ljava/util/List;

    .line 245
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->propertiesRequireLookup:Z

    .line 246
    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 247
    new-instance v0, Lorg/apache/logging/log4j/core/config/DefaultReliabilityStrategy;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/config/DefaultReliabilityStrategy;-><init>(Lorg/apache/logging/log4j/core/config/LoggerConfig;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->reliabilityStrategy:Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;

    .line 248
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/List;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/Level;Z[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/config/Configuration;Z)V
    .locals 1
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

    .line 271
    .local p2, "appenders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/AppenderRef;>;"
    invoke-direct {p0, p3}, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;-><init>(Lorg/apache/logging/log4j/core/Filter;)V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->appenderRefs:Ljava/util/List;

    .line 75
    new-instance v0, Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->appenders:Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->additive:Z

    .line 80
    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->includeLocation:Z

    .line 272
    sget-object v0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->LOG_EVENT_FACTORY:Lorg/apache/logging/log4j/core/impl/LogEventFactory;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->logEventFactory:Lorg/apache/logging/log4j/core/impl/LogEventFactory;

    .line 273
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->name:Ljava/lang/String;

    .line 274
    iput-object p2, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->appenderRefs:Ljava/util/List;

    .line 275
    iput-object p4, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->level:Lorg/apache/logging/log4j/Level;

    .line 276
    iput-boolean p5, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->additive:Z

    .line 277
    iput-boolean p8, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->includeLocation:Z

    .line 278
    iput-object p7, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 279
    if-eqz p6, :cond_0

    array-length v0, p6

    if-lez v0, :cond_0

    .line 280
    array-length v0, p6

    invoke-static {p6, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->properties:Ljava/util/List;

    goto :goto_0

    .line 283
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->properties:Ljava/util/List;

    .line 285
    :goto_0
    invoke-static {p6}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->containsPropertyRequiringLookup([Lorg/apache/logging/log4j/core/config/Property;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->propertiesRequireLookup:Z

    .line 286
    invoke-interface {p7, p0}, Lorg/apache/logging/log4j/core/config/Configuration;->getReliabilityStrategy(Lorg/apache/logging/log4j/core/config/LoggerConfig;)Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->reliabilityStrategy:Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;

    .line 287
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "additive"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "level",
            "additive"
        }
    .end annotation

    .line 257
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->appenderRefs:Ljava/util/List;

    .line 75
    new-instance v0, Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->appenders:Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->additive:Z

    .line 80
    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->includeLocation:Z

    .line 258
    sget-object v0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->LOG_EVENT_FACTORY:Lorg/apache/logging/log4j/core/impl/LogEventFactory;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->logEventFactory:Lorg/apache/logging/log4j/core/impl/LogEventFactory;

    .line 259
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->name:Ljava/lang/String;

    .line 260
    iput-object p2, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->level:Lorg/apache/logging/log4j/Level;

    .line 261
    iput-boolean p3, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->additive:Z

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->properties:Ljava/util/List;

    .line 263
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->propertiesRequireLookup:Z

    .line 264
    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 265
    new-instance v0, Lorg/apache/logging/log4j/core/config/DefaultReliabilityStrategy;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/config/DefaultReliabilityStrategy;-><init>(Lorg/apache/logging/log4j/core/config/LoggerConfig;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->reliabilityStrategy:Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;

    .line 266
    return-void
.end method

.method private cleanupFilter(Lorg/apache/logging/log4j/core/config/AppenderControl;)V
    .locals 1
    .param p1, "ctl"    # Lorg/apache/logging/log4j/core/config/AppenderControl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ctl"
        }
    .end annotation

    .line 378
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/AppenderControl;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v0

    .line 379
    .local v0, "filter":Lorg/apache/logging/log4j/core/Filter;
    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {p1, v0}, Lorg/apache/logging/log4j/core/config/AppenderControl;->removeFilter(Lorg/apache/logging/log4j/core/Filter;)V

    .line 381
    invoke-interface {v0}, Lorg/apache/logging/log4j/core/Filter;->stop()V

    .line 383
    :cond_0
    return-void
.end method

.method private static containsPropertyRequiringLookup([Lorg/apache/logging/log4j/core/config/Property;)Z
    .locals 3
    .param p0, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "properties"
        }
    .end annotation

    .line 290
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 291
    return v0

    .line 293
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 294
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/Property;->isValueNeedsLookup()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    const/4 v0, 0x1

    return v0

    .line 293
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public static createLogger(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/logging/log4j/core/config/AppenderRef;[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/Filter;)Lorg/apache/logging/log4j/core/config/LoggerConfig;
    .locals 16
    .param p0, "additivity"    # Ljava/lang/String;
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "loggerName"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "name"
        .end annotation
    .end param
    .param p3, "includeLocation"    # Ljava/lang/String;
    .param p4, "refs"    # [Lorg/apache/logging/log4j/core/config/AppenderRef;
    .param p5, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
    .param p6, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginConfiguration;
        .end annotation
    .end param
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

    .line 709
    move-object/from16 v0, p2

    if-nez v0, :cond_0

    .line 710
    sget-object v1, Lorg/apache/logging/log4j/core/config/LoggerConfig;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Loggers cannot be configured without a name"

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 711
    const/4 v1, 0x0

    return-object v1

    .line 714
    :cond_0
    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 715
    .local v1, "appenderRefs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/AppenderRef;>;"
    const-string v2, "root"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ""

    move-object v3, v2

    goto :goto_0

    :cond_1
    move-object v3, v0

    .line 716
    .local v3, "name":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x1

    move-object/from16 v11, p0

    invoke-static {v11, v2}, Lorg/apache/logging/log4j/core/util/Booleans;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 718
    .local v12, "additive":Z
    new-instance v13, Lorg/apache/logging/log4j/core/config/LoggerConfig;

    .line 719
    move-object/from16 v14, p3

    move-object/from16 v15, p6

    invoke-static {v14, v15}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->includeLocation(Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)Z

    move-result v10

    move-object v2, v13

    move-object v4, v1

    move-object/from16 v5, p7

    move-object/from16 v6, p1

    move v7, v12

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v10}, Lorg/apache/logging/log4j/core/config/LoggerConfig;-><init>(Ljava/lang/String;Ljava/util/List;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/Level;Z[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/config/Configuration;Z)V

    .line 718
    return-object v13
.end method

.method public static createLogger(ZLorg/apache/logging/log4j/Level;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/logging/log4j/core/config/AppenderRef;[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/Filter;)Lorg/apache/logging/log4j/core/config/LoggerConfig;
    .locals 13
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

    .line 749
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

    .line 750
    .local v3, "name":Ljava/lang/String;
    :goto_0
    new-instance v0, Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 751
    move-object/from16 v11, p3

    move-object/from16 v12, p6

    invoke-static {v11, v12}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->includeLocation(Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)Z

    move-result v10

    move-object v2, v0

    move-object/from16 v5, p7

    move-object v6, p1

    move v7, p0

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v10}, Lorg/apache/logging/log4j/core/config/LoggerConfig;-><init>(Ljava/lang/String;Ljava/util/List;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/Level;Z[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/config/Configuration;Z)V

    .line 750
    return-object v0
.end method

.method protected static getLevelAndRefs(Lorg/apache/logging/log4j/Level;[Lorg/apache/logging/log4j/core/config/AppenderRef;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/config/LoggerConfig$LevelAndRefs;
    .locals 6
    .param p0, "level"    # Lorg/apache/logging/log4j/Level;
    .param p1, "refs"    # [Lorg/apache/logging/log4j/core/config/AppenderRef;
    .param p2, "levelAndRefs"    # Ljava/lang/String;
    .param p3, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "level",
            "refs",
            "levelAndRefs",
            "config"
        }
    .end annotation

    .line 927
    new-instance v0, Lorg/apache/logging/log4j/core/config/LoggerConfig$LevelAndRefs;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig$LevelAndRefs;-><init>()V

    .line 928
    .local v0, "result":Lorg/apache/logging/log4j/core/config/LoggerConfig$LevelAndRefs;
    if-eqz p2, :cond_4

    .line 929
    instance-of v1, p3, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfiguration;

    if-eqz v1, :cond_3

    .line 930
    if-eqz p0, :cond_0

    .line 931
    sget-object v1, Lorg/apache/logging/log4j/core/config/LoggerConfig;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Level is ignored when levelAndRefs syntax is used."

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 933
    :cond_0
    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    .line 934
    sget-object v1, Lorg/apache/logging/log4j/core/config/LoggerConfig;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Appender references are ignored when levelAndRefs syntax is used"

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 936
    :cond_1
    invoke-static {p2}, Lorg/apache/logging/log4j/util/Strings;->splitList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 937
    .local v1, "parts":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Lorg/apache/logging/log4j/Level;->getLevel(Ljava/lang/String;)Lorg/apache/logging/log4j/Level;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/logging/log4j/core/config/LoggerConfig$LevelAndRefs;->level:Lorg/apache/logging/log4j/Level;

    .line 938
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 939
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 940
    .local v2, "refList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/AppenderRef;>;"
    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-interface {v3, v4, v5}, Ljava/util/stream/Stream;->skip(J)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/apache/logging/log4j/core/config/-$$Lambda$LoggerConfig$s980TdQ0NXyC24Y50dnUsY1Qtp4;

    invoke-direct {v4, v2}, Lorg/apache/logging/log4j/core/config/-$$Lambda$LoggerConfig$s980TdQ0NXyC24Y50dnUsY1Qtp4;-><init>(Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 942
    iput-object v2, v0, Lorg/apache/logging/log4j/core/config/LoggerConfig$LevelAndRefs;->refs:Ljava/util/List;

    .line 944
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v2    # "refList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/AppenderRef;>;"
    :cond_2
    goto :goto_0

    .line 945
    :cond_3
    sget-object v1, Lorg/apache/logging/log4j/core/config/LoggerConfig;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "levelAndRefs are only allowed in a properties configuration. The value is ignored."

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 946
    iput-object p0, v0, Lorg/apache/logging/log4j/core/config/LoggerConfig$LevelAndRefs;->level:Lorg/apache/logging/log4j/Level;

    .line 947
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/logging/log4j/core/config/LoggerConfig$LevelAndRefs;->refs:Ljava/util/List;

    goto :goto_0

    .line 950
    :cond_4
    iput-object p0, v0, Lorg/apache/logging/log4j/core/config/LoggerConfig$LevelAndRefs;->level:Lorg/apache/logging/log4j/Level;

    .line 951
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/logging/log4j/core/config/LoggerConfig$LevelAndRefs;->refs:Ljava/util/List;

    .line 953
    :goto_0
    return-object v0
.end method

.method private getProperties(Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)Ljava/util/List;
    .locals 9
    .param p1, "loggerName"    # Ljava/lang/String;
    .param p2, "fqcn"    # Ljava/lang/String;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "level"    # Lorg/apache/logging/log4j/Level;
    .param p5, "data"    # Lorg/apache/logging/log4j/message/Message;
    .param p6, "t"    # Ljava/lang/Throwable;
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
            "loggerName",
            "fqcn",
            "marker",
            "level",
            "data",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/Marker;",
            "Lorg/apache/logging/log4j/Level;",
            "Lorg/apache/logging/log4j/message/Message;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/Property;",
            ">;"
        }
    .end annotation

    .line 566
    iget-object v8, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->properties:Ljava/util/List;

    .line 567
    .local v8, "snapshot":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Property;>;"
    if-eqz v8, :cond_1

    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->propertiesRequireLookup:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 570
    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getPropertiesWithLookups(Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 568
    :cond_1
    :goto_0
    return-object v8
.end method

.method private getPropertiesWithLookups(Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .param p1, "loggerName"    # Ljava/lang/String;
    .param p2, "fqcn"    # Ljava/lang/String;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "level"    # Lorg/apache/logging/log4j/Level;
    .param p5, "data"    # Lorg/apache/logging/log4j/message/Message;
    .param p6, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "loggerName",
            "fqcn",
            "marker",
            "level",
            "data",
            "t",
            "props"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/Marker;",
            "Lorg/apache/logging/log4j/Level;",
            "Lorg/apache/logging/log4j/message/Message;",
            "Ljava/lang/Throwable;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/Property;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/Property;",
            ">;"
        }
    .end annotation

    .line 581
    .local p7, "props":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Property;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 582
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Property;>;"
    invoke-static {}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->newBuilder()Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v1

    .line 583
    invoke-virtual {v1, p5}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setMessage(Lorg/apache/logging/log4j/message/Message;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v1

    .line 584
    invoke-virtual {v1, p3}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setMarker(Lorg/apache/logging/log4j/Marker;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v1

    .line 585
    invoke-virtual {v1, p4}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setLevel(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v1

    .line 586
    invoke-virtual {v1, p1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setLoggerName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v1

    .line 587
    invoke-virtual {v1, p2}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setLoggerFqcn(Ljava/lang/String;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v1

    .line 588
    invoke-virtual {v1, p6}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setThrown(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v1

    .line 589
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->build()Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    move-result-object v1

    .line 590
    .local v1, "event":Lorg/apache/logging/log4j/core/LogEvent;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 591
    invoke-interface {p7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/core/config/Property;

    .line 592
    .local v3, "prop":Lorg/apache/logging/log4j/core/config/Property;
    iget-object v4, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v4}, Lorg/apache/logging/log4j/core/config/Configuration;->getStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/logging/log4j/core/config/Property;->evaluate(Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;)Ljava/lang/String;

    move-result-object v4

    .line 593
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/Property;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/Property;->getRawValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lorg/apache/logging/log4j/core/config/Property;->createProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/Property;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    .end local v3    # "prop":Lorg/apache/logging/log4j/core/config/Property;
    .end local v4    # "value":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 595
    .end local v2    # "i":I
    :cond_0
    return-object v0
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 759
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->includeLocation(Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)Z

    move-result v0

    return v0
.end method

.method protected static includeLocation(Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)Z
    .locals 2
    .param p0, "includeLocationConfigValue"    # Ljava/lang/String;
    .param p1, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "includeLocationConfigValue",
            "configuration"
        }
    .end annotation

    .line 765
    if-nez p0, :cond_2

    .line 766
    const/4 v0, 0x0

    .line 767
    .local v0, "context":Lorg/apache/logging/log4j/core/LoggerContext;
    if-eqz p1, :cond_0

    .line 768
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/config/Configuration;->getLoggerContext()Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    .line 770
    :cond_0
    if-eqz v0, :cond_1

    .line 771
    instance-of v1, v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerContext;

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 773
    :cond_1
    invoke-static {}, Lorg/apache/logging/log4j/core/async/AsyncLoggerContextSelector;->isSelected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 776
    .end local v0    # "context":Lorg/apache/logging/log4j/core/LoggerContext;
    :cond_2
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getLevelAndRefs$0(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p0, "refList"    # Ljava/util/List;
    .param p1, "ref"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "refList",
            "ref"
        }
    .end annotation

    .line 941
    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lorg/apache/logging/log4j/core/config/AppenderRef;->createAppenderRef(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/core/Filter;)Lorg/apache/logging/log4j/core/config/AppenderRef;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private location(Ljava/lang/String;)Ljava/lang/StackTraceElement;
    .locals 1
    .param p1, "fqcn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fqcn"
        }
    .end annotation

    .line 531
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->requiresLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    invoke-static {p1}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->calcLocation(Ljava/lang/String;)Ljava/lang/StackTraceElement;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 531
    :goto_0
    return-object v0
.end method

.method private logParent(Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;)V
    .locals 1
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

    .line 665
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->additive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->parent:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    if-eqz v0, :cond_0

    .line 666
    invoke-virtual {v0, p1, p2}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->log(Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;)V

    .line 668
    :cond_0
    return-void
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder<",
            "TB;>;>()TB;"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 109
    new-instance v0, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->asBuilder()Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method private processLogEvent(Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;)V
    .locals 1
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

    .line 631
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->isIncludeLocation()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/logging/log4j/core/LogEvent;->setIncludeLocation(Z)V

    .line 632
    invoke-virtual {p2, p0}, Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;->allow(Lorg/apache/logging/log4j/core/config/LoggerConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->callAppenders(Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 635
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->logParent(Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;)V

    .line 636
    return-void
.end method


# virtual methods
.method public addAppender(Lorg/apache/logging/log4j/core/Appender;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/core/Filter;)V
    .locals 2
    .param p1, "appender"    # Lorg/apache/logging/log4j/core/Appender;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "appender",
            "level",
            "filter"
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->appenders:Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;

    new-instance v1, Lorg/apache/logging/log4j/core/config/AppenderControl;

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/logging/log4j/core/config/AppenderControl;-><init>(Lorg/apache/logging/log4j/core/Appender;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/core/Filter;)V

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;->add(Lorg/apache/logging/log4j/core/config/AppenderControl;)Z

    .line 342
    return-void
.end method

.method protected callAppenders(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 3
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 672
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->appenders:Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;->get()[Lorg/apache/logging/log4j/core/config/AppenderControl;

    move-result-object v0

    .line 674
    .local v0, "controls":[Lorg/apache/logging/log4j/core/config/AppenderControl;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 675
    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Lorg/apache/logging/log4j/core/config/AppenderControl;->callAppender(Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 674
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 677
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected clearAppenders()V
    .locals 4

    .line 370
    :goto_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->appenders:Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;->clear()[Lorg/apache/logging/log4j/core/config/AppenderControl;

    move-result-object v0

    .line 371
    .local v0, "original":[Lorg/apache/logging/log4j/core/config/AppenderControl;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 372
    .local v3, "ctl":Lorg/apache/logging/log4j/core/config/AppenderControl;
    invoke-direct {p0, v3}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->cleanupFilter(Lorg/apache/logging/log4j/core/config/AppenderControl;)V

    .line 371
    .end local v3    # "ctl":Lorg/apache/logging/log4j/core/config/AppenderControl;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 374
    .end local v0    # "original":[Lorg/apache/logging/log4j/core/config/AppenderControl;
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->appenders:Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    return-void

    .line 374
    :cond_1
    goto :goto_0
.end method

.method public getAppenderRefs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/AppenderRef;",
            ">;"
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->appenderRefs:Ljava/util/List;

    return-object v0
.end method

.method public getAppenders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Appender;",
            ">;"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->appenders:Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Lorg/apache/logging/log4j/core/Filter;
    .locals 1

    .line 303
    invoke-super {p0}, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v0

    return-object v0
.end method

.method public getLevel()Lorg/apache/logging/log4j/Level;
    .locals 1

    .line 409
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->level:Lorg/apache/logging/log4j/Level;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->parent:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getLogEventFactory()Lorg/apache/logging/log4j/core/impl/LogEventFactory;
    .locals 1

    .line 418
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->logEventFactory:Lorg/apache/logging/log4j/core/impl/LogEventFactory;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 312
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lorg/apache/logging/log4j/core/config/LoggerConfig;
    .locals 1

    .line 330
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->parent:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    return-object v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/logging/log4j/core/config/Property;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 473
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->properties:Ljava/util/List;

    if-nez v0, :cond_0

    .line 474
    const/4 v0, 0x0

    return-object v0

    .line 476
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->propertiesMap:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 477
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->properties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 478
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/logging/log4j/core/config/Property;Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->properties:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 479
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->properties:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->properties:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/core/config/Property;

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/Property;->isValueNeedsLookup()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 481
    .end local v1    # "i":I
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->propertiesMap:Ljava/util/Map;

    .line 483
    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/logging/log4j/core/config/Property;Ljava/lang/Boolean;>;"
    :cond_2
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->propertiesMap:Ljava/util/Map;

    return-object v0
.end method

.method public getPropertyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/Property;",
            ">;"
        }
    .end annotation

    .line 499
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->properties:Ljava/util/List;

    return-object v0
.end method

.method public getReliabilityStrategy()Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;
    .locals 1

    .line 627
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->reliabilityStrategy:Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;

    return-object v0
.end method

.method protected final hasAppenders()Z
    .locals 1

    .line 780
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->appenders:Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isAdditive()Z
    .locals 1

    .line 436
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->additive:Z

    return v0
.end method

.method public isIncludeLocation()Z
    .locals 1

    .line 455
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->includeLocation:Z

    return v0
.end method

.method public isPropertiesRequireLookup()Z
    .locals 1

    .line 503
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->propertiesRequireLookup:Z

    return v0
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 18
    .param p1, "loggerName"    # Ljava/lang/String;
    .param p2, "fqcn"    # Ljava/lang/String;
    .param p3, "location"    # Ljava/lang/StackTraceElement;
    .param p4, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p5, "level"    # Lorg/apache/logging/log4j/Level;
    .param p6, "data"    # Lorg/apache/logging/log4j/message/Message;
    .param p7, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "loggerName",
            "fqcn",
            "location",
            "marker",
            "level",
            "data",
            "t"
        }
    .end annotation

    .line 549
    move-object/from16 v8, p0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getProperties(Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v1

    .line 550
    .local v1, "props":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Property;>;"
    iget-object v9, v8, Lorg/apache/logging/log4j/core/config/LoggerConfig;->logEventFactory:Lorg/apache/logging/log4j/core/impl/LogEventFactory;

    move-object/from16 v10, p1

    move-object/from16 v11, p4

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v16, v1

    move-object/from16 v17, p7

    invoke-interface/range {v9 .. v17}, Lorg/apache/logging/log4j/core/impl/LogEventFactory;->createEvent(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/util/List;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/core/LogEvent;

    move-result-object v2

    .line 552
    .local v2, "logEvent":Lorg/apache/logging/log4j/core/LogEvent;
    :try_start_0
    sget-object v0, Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;->ALL:Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;

    invoke-virtual {v8, v2, v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->log(Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    invoke-static {v2}, Lorg/apache/logging/log4j/core/impl/ReusableLogEventFactory;->release(Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 556
    nop

    .line 557
    return-void

    .line 555
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lorg/apache/logging/log4j/core/impl/ReusableLogEventFactory;->release(Lorg/apache/logging/log4j/core/LogEvent;)V

    throw v0
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 13
    .param p1, "loggerName"    # Ljava/lang/String;
    .param p2, "fqcn"    # Ljava/lang/String;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "level"    # Lorg/apache/logging/log4j/Level;
    .param p5, "data"    # Lorg/apache/logging/log4j/message/Message;
    .param p6, "t"    # Ljava/lang/Throwable;
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
            "loggerName",
            "fqcn",
            "marker",
            "level",
            "data",
            "t"
        }
    .end annotation

    .line 519
    move-object v1, p0

    invoke-direct/range {p0 .. p6}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getProperties(Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v11

    .line 520
    .local v11, "props":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Property;>;"
    iget-object v2, v1, Lorg/apache/logging/log4j/core/config/LoggerConfig;->logEventFactory:Lorg/apache/logging/log4j/core/impl/LogEventFactory;

    .line 521
    move-object v12, p2

    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->location(Ljava/lang/String;)Ljava/lang/StackTraceElement;

    move-result-object v6

    .line 520
    move-object v3, p1

    move-object/from16 v4, p3

    move-object v5, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object v9, v11

    move-object/from16 v10, p6

    invoke-interface/range {v2 .. v10}, Lorg/apache/logging/log4j/core/impl/LogEventFactory;->createEvent(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/util/List;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/core/LogEvent;

    move-result-object v2

    .line 523
    .local v2, "logEvent":Lorg/apache/logging/log4j/core/LogEvent;
    :try_start_0
    sget-object v0, Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;->ALL:Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;

    invoke-virtual {p0, v2, v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->log(Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    invoke-static {v2}, Lorg/apache/logging/log4j/core/impl/ReusableLogEventFactory;->release(Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 527
    nop

    .line 528
    return-void

    .line 526
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lorg/apache/logging/log4j/core/impl/ReusableLogEventFactory;->release(Lorg/apache/logging/log4j/core/LogEvent;)V

    throw v0
.end method

.method public log(Lorg/apache/logging/log4j/core/LogEvent;)V
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

    .line 604
    sget-object v0, Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;->ALL:Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;

    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->log(Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;)V

    .line 605
    return-void
.end method

.method protected log(Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;)V
    .locals 1
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

    .line 615
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->isFiltered(Lorg/apache/logging/log4j/core/LogEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 616
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->processLogEvent(Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;)V

    .line 618
    :cond_0
    return-void
.end method

.method public removeAppender(Ljava/lang/String;)V
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

    .line 350
    const/4 v0, 0x0

    .line 351
    .local v0, "removed":Lorg/apache/logging/log4j/core/config/AppenderControl;
    :goto_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->appenders:Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;

    invoke-virtual {v1, p1}, Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;->remove(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/AppenderControl;

    move-result-object v1

    move-object v0, v1

    if-eqz v1, :cond_0

    .line 352
    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->cleanupFilter(Lorg/apache/logging/log4j/core/config/AppenderControl;)V

    goto :goto_0

    .line 354
    :cond_0
    return-void
.end method

.method public requiresLocation()Z
    .locals 8

    .line 640
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->includeLocation:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 641
    return v1

    .line 643
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->appenders:Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;->get()[Lorg/apache/logging/log4j/core/config/AppenderControl;

    move-result-object v0

    .line 644
    .local v0, "controls":[Lorg/apache/logging/log4j/core/config/AppenderControl;
    move-object v2, p0

    .line 645
    .local v2, "loggerConfig":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    :cond_1
    :goto_0
    if-eqz v2, :cond_4

    .line 646
    array-length v3, v0

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 647
    .local v5, "control":Lorg/apache/logging/log4j/core/config/AppenderControl;
    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/config/AppenderControl;->getAppender()Lorg/apache/logging/log4j/core/Appender;

    move-result-object v6

    .line 648
    .local v6, "appender":Lorg/apache/logging/log4j/core/Appender;
    instance-of v7, v6, Lorg/apache/logging/log4j/core/impl/LocationAware;

    if-eqz v7, :cond_2

    move-object v7, v6

    check-cast v7, Lorg/apache/logging/log4j/core/impl/LocationAware;

    invoke-interface {v7}, Lorg/apache/logging/log4j/core/impl/LocationAware;->requiresLocation()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 649
    const/4 v1, 0x1

    return v1

    .line 646
    .end local v5    # "control":Lorg/apache/logging/log4j/core/config/AppenderControl;
    .end local v6    # "appender":Lorg/apache/logging/log4j/core/Appender;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 652
    :cond_3
    iget-boolean v3, v2, Lorg/apache/logging/log4j/core/config/LoggerConfig;->additive:Z

    if-eqz v3, :cond_4

    .line 653
    iget-object v2, v2, Lorg/apache/logging/log4j/core/config/LoggerConfig;->parent:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    .line 654
    if-eqz v2, :cond_1

    .line 655
    iget-object v3, v2, Lorg/apache/logging/log4j/core/config/LoggerConfig;->appenders:Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;->get()[Lorg/apache/logging/log4j/core/config/AppenderControl;

    move-result-object v0

    goto :goto_0

    .line 661
    :cond_4
    return v1
.end method

.method public setAdditive(Z)V
    .locals 0
    .param p1, "additive"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "additive"
        }
    .end annotation

    .line 445
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->additive:Z

    .line 446
    return-void
.end method

.method public setLevel(Lorg/apache/logging/log4j/Level;)V
    .locals 0
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "level"
        }
    .end annotation

    .line 400
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->level:Lorg/apache/logging/log4j/Level;

    .line 401
    return-void
.end method

.method public setLogEventFactory(Lorg/apache/logging/log4j/core/impl/LogEventFactory;)V
    .locals 0
    .param p1, "logEventFactory"    # Lorg/apache/logging/log4j/core/impl/LogEventFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "logEventFactory"
        }
    .end annotation

    .line 427
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->logEventFactory:Lorg/apache/logging/log4j/core/impl/LogEventFactory;

    .line 428
    return-void
.end method

.method public setParent(Lorg/apache/logging/log4j/core/config/LoggerConfig;)V
    .locals 0
    .param p1, "parent"    # Lorg/apache/logging/log4j/core/config/LoggerConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "parent"
        }
    .end annotation

    .line 321
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->parent:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    .line 322
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 681
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->name:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "root"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig;->name:Ljava/lang/String;

    :goto_0
    return-object v0
.end method
