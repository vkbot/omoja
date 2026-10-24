.class public Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger;
.super Lorg/apache/logging/log4j/core/config/LoggerConfig;
.source "LoggerConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/config/LoggerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RootLogger"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "root"
    printObject = true
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 787
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;-><init>()V

    return-void
.end method

.method public static createLogger(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Ljava/lang/String;[Lorg/apache/logging/log4j/core/config/AppenderRef;[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/Filter;)Lorg/apache/logging/log4j/core/config/LoggerConfig;
    .locals 15
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

    .line 917
    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 918
    .local v9, "appenderRefs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/AppenderRef;>;"
    if-nez p1, :cond_0

    sget-object v0, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    .line 919
    .local v4, "actualLevel":Lorg/apache/logging/log4j/Level;
    :goto_0
    const/4 v0, 0x1

    move-object v10, p0

    invoke-static {p0, v0}, Lorg/apache/logging/log4j/core/util/Booleans;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 920
    .local v11, "additive":Z
    new-instance v12, Lorg/apache/logging/log4j/core/config/LoggerConfig;

    .line 921
    move-object/from16 v13, p2

    move-object/from16 v14, p5

    invoke-static {v13, v14}, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger;->includeLocation(Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)Z

    move-result v8

    const-string v1, ""

    move-object v0, v12

    move-object v2, v9

    move-object/from16 v3, p6

    move v5, v11

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v8}, Lorg/apache/logging/log4j/core/config/LoggerConfig;-><init>(Ljava/lang/String;Ljava/util/List;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/Level;Z[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/config/Configuration;Z)V

    .line 920
    return-object v12
.end method

.method public static newRootBuilder()Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder<",
            "TB;>;>()TB;"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 791
    new-instance v0, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;->asBuilder()Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;

    move-result-object v0

    return-object v0
.end method
