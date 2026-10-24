.class public interface abstract Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
.super Ljava/lang/Object;
.source "ConfigurationBuilder.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/logging/log4j/core/config/Configuration;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract add(Lorg/apache/logging/log4j/core/config/builder/api/AppenderComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/builder/api/AppenderComponentBuilder;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract add(Lorg/apache/logging/log4j/core/config/builder/api/CustomLevelComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/builder/api/CustomLevelComponentBuilder;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract add(Lorg/apache/logging/log4j/core/config/builder/api/FilterComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/builder/api/FilterComponentBuilder;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract add(Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract add(Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract add(Lorg/apache/logging/log4j/core/config/builder/api/ScriptComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/builder/api/ScriptComponentBuilder;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract add(Lorg/apache/logging/log4j/core/config/builder/api/ScriptFileComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/builder/api/ScriptFileComponentBuilder;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract addProperty(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract addRootProperty(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract build(Z)Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initialize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation
.end method

.method public abstract newAppender(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/AppenderComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "pluginName"
        }
    .end annotation
.end method

.method public abstract newAppenderRef(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/AppenderRefComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation
.end method

.method public abstract newAsyncLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation
.end method

.method public abstract newAsyncLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "level"
        }
    .end annotation
.end method

.method public abstract newAsyncLogger(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "level",
            "includeLocation"
        }
    .end annotation
.end method

.method public abstract newAsyncLogger(Ljava/lang/String;Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "level"
        }
    .end annotation
.end method

.method public abstract newAsyncLogger(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Z)Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "level",
            "includeLocation"
        }
    .end annotation
.end method

.method public abstract newAsyncLogger(Ljava/lang/String;Z)Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "includeLocation"
        }
    .end annotation
.end method

.method public abstract newAsyncRootLogger()Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;
.end method

.method public abstract newAsyncRootLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method public abstract newAsyncRootLogger(Ljava/lang/String;Z)Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "level",
            "includeLocation"
        }
    .end annotation
.end method

.method public abstract newAsyncRootLogger(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method public abstract newAsyncRootLogger(Lorg/apache/logging/log4j/Level;Z)Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "level",
            "includeLocation"
        }
    .end annotation
.end method

.method public abstract newAsyncRootLogger(Z)Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "includeLocation"
        }
    .end annotation
.end method

.method public abstract newComponent(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pluginName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder<",
            "TB;>;>(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder<",
            "TB;>;"
        }
    .end annotation
.end method

.method public abstract newComponent(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "pluginName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder<",
            "TB;>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder<",
            "TB;>;"
        }
    .end annotation
.end method

.method public abstract newComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "pluginName",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder<",
            "TB;>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder<",
            "TB;>;"
        }
    .end annotation
.end method

.method public abstract newCustomLevel(Ljava/lang/String;I)Lorg/apache/logging/log4j/core/config/builder/api/CustomLevelComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "level"
        }
    .end annotation
.end method

.method public abstract newFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/FilterComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pluginName",
            "onMatch",
            "onMismatch"
        }
    .end annotation
.end method

.method public abstract newFilter(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;)Lorg/apache/logging/log4j/core/config/builder/api/FilterComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pluginName",
            "onMatch",
            "onMismatch"
        }
    .end annotation
.end method

.method public abstract newKeyValuePair(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/KeyValuePairComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation
.end method

.method public abstract newLayout(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/LayoutComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pluginName"
        }
    .end annotation
.end method

.method public abstract newLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation
.end method

.method public abstract newLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "level"
        }
    .end annotation
.end method

.method public abstract newLogger(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "level",
            "includeLocation"
        }
    .end annotation
.end method

.method public abstract newLogger(Ljava/lang/String;Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "level"
        }
    .end annotation
.end method

.method public abstract newLogger(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Z)Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "level",
            "includeLocation"
        }
    .end annotation
.end method

.method public abstract newLogger(Ljava/lang/String;Z)Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "includeLocation"
        }
    .end annotation
.end method

.method public abstract newProperty(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/PropertyComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation
.end method

.method public abstract newRootLogger()Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;
.end method

.method public abstract newRootLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method public abstract newRootLogger(Ljava/lang/String;Z)Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "level",
            "includeLocation"
        }
    .end annotation
.end method

.method public abstract newRootLogger(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method public abstract newRootLogger(Lorg/apache/logging/log4j/Level;Z)Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "level",
            "includeLocation"
        }
    .end annotation
.end method

.method public abstract newRootLogger(Z)Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "includeLocation"
        }
    .end annotation
.end method

.method public abstract newScript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ScriptComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "language",
            "text"
        }
    .end annotation
.end method

.method public abstract newScriptFile(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ScriptFileComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation
.end method

.method public abstract newScriptFile(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ScriptFileComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "path"
        }
    .end annotation
.end method

.method public abstract setAdvertiser(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "advertiser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract setConfigurationName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
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
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract setConfigurationSource(Lorg/apache/logging/log4j/core/config/ConfigurationSource;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configurationSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/ConfigurationSource;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract setDestination(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "destination"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract setLoggerContext(Lorg/apache/logging/log4j/core/LoggerContext;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loggerContext"
        }
    .end annotation
.end method

.method public abstract setMonitorInterval(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intervalSeconds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract setPackages(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract setShutdownHook(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract setShutdownTimeout(JLjava/util/concurrent/TimeUnit;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeout",
            "timeUnit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract setStatusLevel(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/Level;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract setVerbosity(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "verbosity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract toXmlConfiguration()Ljava/lang/String;
.end method

.method public abstract writeXmlConfiguration(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
