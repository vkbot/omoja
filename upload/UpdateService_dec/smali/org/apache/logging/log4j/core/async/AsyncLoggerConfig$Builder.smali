.class public Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$Builder;
.super Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;
.source "AsyncLoggerConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$Builder<",
        "TB;>;>",
        "Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder<",
        "TB;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 80
    .local p0, "this":Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$Builder;, "Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$Builder<TB;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 80
    .local p0, "this":Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$Builder;, "Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$Builder<TB;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$Builder;->build()Lorg/apache/logging/log4j/core/config/LoggerConfig;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/config/LoggerConfig;
    .locals 11

    .line 84
    .local p0, "this":Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$Builder;, "Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$Builder<TB;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$Builder;->getLoggerName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "root"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$Builder;->getLoggerName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v2, v0

    .line 85
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$Builder;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$Builder;->getRefs()[Lorg/apache/logging/log4j/core/config/AppenderRef;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$Builder;->getLevelAndRefs()Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$Builder;->getConfig()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v4

    .line 85
    invoke-static {v0, v1, v3, v4}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->access$000(Lorg/apache/logging/log4j/Level;[Lorg/apache/logging/log4j/core/config/AppenderRef;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/config/LoggerConfig$LevelAndRefs;

    move-result-object v0

    .line 87
    .local v0, "container":Lorg/apache/logging/log4j/core/config/LoggerConfig$LevelAndRefs;
    new-instance v10, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;

    iget-object v3, v0, Lorg/apache/logging/log4j/core/config/LoggerConfig$LevelAndRefs;->refs:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$Builder;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v4

    iget-object v5, v0, Lorg/apache/logging/log4j/core/config/LoggerConfig$LevelAndRefs;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$Builder;->isAdditivity()Z

    move-result v6

    .line 88
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$Builder;->getProperties()[Lorg/apache/logging/log4j/core/config/Property;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$Builder;->getConfig()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v8

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$Builder;->getIncludeLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig$Builder;->getConfig()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v9

    invoke-static {v1, v9}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->access$100(Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)Z

    move-result v9

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;-><init>(Ljava/lang/String;Ljava/util/List;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/Level;Z[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/config/Configuration;Z)V

    .line 87
    return-object v10
.end method
