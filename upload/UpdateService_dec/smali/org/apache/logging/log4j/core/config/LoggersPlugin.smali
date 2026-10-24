.class public final Lorg/apache/logging/log4j/core/config/LoggersPlugin;
.super Ljava/lang/Object;
.source "LoggersPlugin.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "loggers"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static createLoggers([Lorg/apache/logging/log4j/core/config/LoggerConfig;)Lorg/apache/logging/log4j/core/config/Loggers;
    .locals 6
    .param p0, "loggers"    # [Lorg/apache/logging/log4j/core/config/LoggerConfig;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "Loggers"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "loggers"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 43
    .local v0, "loggerMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Lorg/apache/logging/log4j/core/config/LoggerConfig;>;"
    const/4 v1, 0x0

    .line 45
    .local v1, "root":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p0, v3

    .line 46
    .local v4, "logger":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    if-eqz v4, :cond_2

    .line 47
    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 48
    if-nez v1, :cond_0

    .line 51
    move-object v1, v4

    goto :goto_1

    .line 49
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Configuration has multiple root loggers. There can be only one."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_1
    :goto_1
    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .end local v4    # "logger":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 57
    :cond_3
    new-instance v2, Lorg/apache/logging/log4j/core/config/Loggers;

    invoke-direct {v2, v0, v1}, Lorg/apache/logging/log4j/core/config/Loggers;-><init>(Ljava/util/concurrent/ConcurrentMap;Lorg/apache/logging/log4j/core/config/LoggerConfig;)V

    return-object v2
.end method
