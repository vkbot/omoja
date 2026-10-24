.class public Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$RootLogger;
.super Lorg/apache/logging/log4j/core/config/LoggerConfig;
.source "AsyncLoggerConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RootLogger"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$RootLogger$Builder;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "asyncRoot"
    printObject = true
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 303
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/logging/log4j/Level;[Lorg/apache/logging/log4j/core/config/AppenderRef;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/config/LoggerConfig$LevelAndRefs;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/Level;
    .param p1, "x1"    # [Lorg/apache/logging/log4j/core/config/AppenderRef;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lorg/apache/logging/log4j/core/config/Configuration;

    .line 303
    invoke-static {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$RootLogger;->getLevelAndRefs(Lorg/apache/logging/log4j/Level;[Lorg/apache/logging/log4j/core/config/AppenderRef;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/config/LoggerConfig$LevelAndRefs;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lorg/apache/logging/log4j/core/config/Configuration;

    .line 303
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$RootLogger;->includeLocation(Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)Z

    move-result v0

    return v0
.end method

.method public static createLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/logging/log4j/core/config/AppenderRef;[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/Filter;)Lorg/apache/logging/log4j/core/config/LoggerConfig;
    .locals 15
    .param p0, "additivity"    # Ljava/lang/String;
    .param p1, "levelName"    # Ljava/lang/String;
    .param p2, "includeLocation"    # Ljava/lang/String;
    .param p3, "refs"    # [Lorg/apache/logging/log4j/core/config/AppenderRef;
    .param p4, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
    .param p5, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p6, "filter"    # Lorg/apache/logging/log4j/core/Filter;
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
            "additivity",
            "levelName",
            "includeLocation",
            "refs",
            "properties",
            "config",
            "filter"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 334
    move-object/from16 v1, p1

    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 335
    .local v11, "appenderRefs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/AppenderRef;>;"
    const/4 v2, 0x0

    .line 337
    .local v2, "level":Lorg/apache/logging/log4j/Level;
    :try_start_0
    sget-object v0, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    invoke-static {v1, v0}, Lorg/apache/logging/log4j/Level;->toLevel(Ljava/lang/String;Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/Level;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    .end local v2    # "level":Lorg/apache/logging/log4j/Level;
    .local v0, "level":Lorg/apache/logging/log4j/Level;
    goto :goto_0

    .line 338
    .end local v0    # "level":Lorg/apache/logging/log4j/Level;
    .restart local v2    # "level":Lorg/apache/logging/log4j/Level;
    :catch_0
    move-exception v0

    .line 339
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v3, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$RootLogger;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v4, "Invalid Log level specified: {}. Defaulting to Error"

    invoke-interface {v3, v4, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 340
    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    move-object v0, v2

    .line 342
    .end local v2    # "level":Lorg/apache/logging/log4j/Level;
    .local v0, "level":Lorg/apache/logging/log4j/Level;
    :goto_0
    const/4 v2, 0x1

    move-object v12, p0

    invoke-static {p0, v2}, Lorg/apache/logging/log4j/core/util/Booleans;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 343
    .local v13, "additive":Z
    new-instance v14, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;

    .line 345
    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->includeLocation(Ljava/lang/String;)Z

    move-result v10

    const-string v3, ""

    move-object v2, v14

    move-object v4, v11

    move-object/from16 v5, p6

    move-object v6, v0

    move v7, v13

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v2 .. v10}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;-><init>(Ljava/lang/String;Ljava/util/List;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/Level;Z[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/config/Configuration;Z)V

    .line 343
    return-object v14
.end method

.method public static createLogger(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Ljava/lang/String;[Lorg/apache/logging/log4j/core/config/AppenderRef;[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/Filter;)Lorg/apache/logging/log4j/core/config/LoggerConfig;
    .locals 13
    .param p0, "additivity"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "additivity"
        .end annotation
    .end param
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "level"
        .end annotation
    .end param
    .param p2, "includeLocation"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "includeLocation"
        .end annotation
    .end param
    .param p3, "refs"    # [Lorg/apache/logging/log4j/core/config/AppenderRef;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "AppenderRef"
        .end annotation
    .end param
    .param p4, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "Properties"
        .end annotation
    .end param
    .param p5, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginConfiguration;
        .end annotation
    .end param
    .param p6, "filter"    # Lorg/apache/logging/log4j/core/Filter;
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
            0x10
        }
        names = {
            "additivity",
            "level",
            "includeLocation",
            "refs",
            "properties",
            "config",
            "filter"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 360
    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 361
    .local v9, "appenderRefs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/AppenderRef;>;"
    if-nez p1, :cond_0

    sget-object v0, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p1

    .line 362
    .local v4, "actualLevel":Lorg/apache/logging/log4j/Level;
    :goto_0
    const/4 v0, 0x1

    move-object v10, p0

    invoke-static {p0, v0}, Lorg/apache/logging/log4j/core/util/Booleans;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 363
    .local v11, "additive":Z
    new-instance v12, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;

    .line 364
    invoke-static {p2}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->includeLocation(Ljava/lang/String;)Z

    move-result v8

    const-string v1, ""

    move-object v0, v12

    move-object v2, v9

    move-object/from16 v3, p6

    move v5, v11

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v8}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;-><init>(Ljava/lang/String;Ljava/util/List;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/Level;Z[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/config/Configuration;Z)V

    .line 363
    return-object v12
.end method

.method public static newAsyncRootBuilder()Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$RootLogger$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$RootLogger$Builder<",
            "TB;>;>()TB;"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 307
    new-instance v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$RootLogger$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$RootLogger$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$RootLogger$Builder;->asBuilder()Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$RootLogger$Builder;

    return-object v0
.end method
