.class public Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$RootLogger$Builder;
.super Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;
.source "AsyncLoggerConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$RootLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$RootLogger$Builder<",
        "TB;>;>",
        "Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder<",
        "TB;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 310
    .local p0, "this":Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$RootLogger$Builder;, "Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$RootLogger$Builder<TB;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 310
    .local p0, "this":Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$RootLogger$Builder;, "Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$RootLogger$Builder<TB;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$RootLogger$Builder;->build()Lorg/apache/logging/log4j/core/config/LoggerConfig;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/config/LoggerConfig;
    .locals 11

    .line 314
    .local p0, "this":Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$RootLogger$Builder;, "Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$RootLogger$Builder<TB;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$RootLogger$Builder;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$RootLogger$Builder;->getRefs()[Lorg/apache/logging/log4j/core/config/AppenderRef;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$RootLogger$Builder;->getLevelAndRefs()Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$RootLogger$Builder;->getConfig()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v3

    .line 314
    invoke-static {v0, v1, v2, v3}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$RootLogger;->access$200(Lorg/apache/logging/log4j/Level;[Lorg/apache/logging/log4j/core/config/AppenderRef;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/config/LoggerConfig$LevelAndRefs;

    move-result-object v0

    .line 316
    .local v0, "container":Lorg/apache/logging/log4j/core/config/LoggerConfig$LevelAndRefs;
    new-instance v10, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;

    iget-object v3, v0, Lorg/apache/logging/log4j/core/config/LoggerConfig$LevelAndRefs;->refs:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$RootLogger$Builder;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v4

    iget-object v5, v0, Lorg/apache/logging/log4j/core/config/LoggerConfig$LevelAndRefs;->level:Lorg/apache/logging/log4j/Level;

    .line 317
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$RootLogger$Builder;->isAdditivity()Z

    move-result v6

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$RootLogger$Builder;->getProperties()[Lorg/apache/logging/log4j/core/config/Property;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$RootLogger$Builder;->getConfig()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v8

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$RootLogger$Builder;->getIncludeLocation()Ljava/lang/String;

    move-result-object v1

    .line 318
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$RootLogger$Builder;->getConfig()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v2

    .line 317
    invoke-static {v1, v2}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$RootLogger;->access$300(Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)Z

    move-result v9

    const-string v2, ""

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;-><init>(Ljava/lang/String;Ljava/util/List;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/Level;Z[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/config/Configuration;Z)V

    .line 316
    return-object v10
.end method
