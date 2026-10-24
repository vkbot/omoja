.class public interface abstract Lorg/apache/logging/log4j/core/config/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/filter/Filterable;


# static fields
.field public static final CONTEXT_PROPERTIES:Ljava/lang/String; = "ContextProperties"


# virtual methods
.method public abstract addAppender(Lorg/apache/logging/log4j/core/Appender;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "appender"
        }
    .end annotation
.end method

.method public abstract addComponent(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "object"
        }
    .end annotation
.end method

.method public abstract addListener(Lorg/apache/logging/log4j/core/config/ConfigurationListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract addLogger(Ljava/lang/String;Lorg/apache/logging/log4j/core/config/LoggerConfig;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "loggerConfig"
        }
    .end annotation
.end method

.method public abstract addLoggerAppender(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/core/Appender;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "logger",
            "appender"
        }
    .end annotation
.end method

.method public abstract addLoggerFilter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/core/Filter;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "logger",
            "filter"
        }
    .end annotation
.end method

.method public abstract createConfiguration(Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/LogEvent;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "event"
        }
    .end annotation
.end method

.method public abstract getAdvertiser()Lorg/apache/logging/log4j/core/net/Advertiser;
.end method

.method public abstract getAppender(Ljava/lang/String;)Lorg/apache/logging/log4j/core/Appender;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/logging/log4j/core/Appender;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getAppenders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Appender;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAsyncLoggerConfigDelegate()Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDelegate;
.end method

.method public abstract getComponent(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getConfigurationSource()Lorg/apache/logging/log4j/core/config/ConfigurationSource;
.end method

.method public getConfigurationStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    .locals 2

    .line 121
    invoke-interface {p0}, Lorg/apache/logging/log4j/core/config/Configuration;->getStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v0

    .line 122
    .local v0, "defaultSubstitutor":Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    if-nez v0, :cond_0

    .line 123
    new-instance v1, Lorg/apache/logging/log4j/core/lookup/ConfigurationStrSubstitutor;

    invoke-direct {v1}, Lorg/apache/logging/log4j/core/lookup/ConfigurationStrSubstitutor;-><init>()V

    return-object v1

    .line 125
    :cond_0
    new-instance v1, Lorg/apache/logging/log4j/core/lookup/ConfigurationStrSubstitutor;

    invoke-direct {v1, v0}, Lorg/apache/logging/log4j/core/lookup/ConfigurationStrSubstitutor;-><init>(Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;)V

    return-object v1
.end method

.method public abstract getCustomLevels()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/CustomLevelConfig;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLoggerConfig(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/LoggerConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation
.end method

.method public abstract getLoggerContext()Lorg/apache/logging/log4j/core/LoggerContext;
.end method

.method public abstract getLoggers()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/config/LoggerConfig;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNanoClock()Lorg/apache/logging/log4j/core/util/NanoClock;
.end method

.method public abstract getPluginPackages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProperties()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getReliabilityStrategy(Lorg/apache/logging/log4j/core/config/LoggerConfig;)Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loggerConfig"
        }
    .end annotation
.end method

.method public abstract getRootLogger()Lorg/apache/logging/log4j/core/config/LoggerConfig;
.end method

.method public abstract getScheduler()Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;
.end method

.method public abstract getScriptManager()Lorg/apache/logging/log4j/core/script/ScriptManager;
.end method

.method public abstract getShutdownTimeoutMillis()J
.end method

.method public abstract getStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
.end method

.method public abstract getWatchManager()Lorg/apache/logging/log4j/core/util/WatchManager;
.end method

.method public abstract isShutdownHookEnabled()Z
.end method

.method public abstract removeListener(Lorg/apache/logging/log4j/core/config/ConfigurationListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract removeLogger(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation
.end method

.method public abstract setAdvertiser(Lorg/apache/logging/log4j/core/net/Advertiser;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "advertiser"
        }
    .end annotation
.end method

.method public abstract setLoggerAdditive(Lorg/apache/logging/log4j/core/Logger;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "logger",
            "additive"
        }
    .end annotation
.end method

.method public abstract setNanoClock(Lorg/apache/logging/log4j/core/util/NanoClock;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nanoClock"
        }
    .end annotation
.end method
