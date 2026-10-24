.class public final Lorg/apache/logging/log4j/core/config/Configurator;
.super Ljava/lang/Object;
.source "Configurator.java"


# static fields
.field private static final FQCN:Ljava/lang/String;

.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lorg/apache/logging/log4j/core/config/Configurator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/config/Configurator;->FQCN:Ljava/lang/String;

    .line 44
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/config/Configurator;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    return-void
.end method

.method private static getFactory()Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;
    .locals 5

    .line 47
    invoke-static {}, Lorg/apache/logging/log4j/LogManager;->getFactory()Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    move-result-object v0

    .line 48
    .local v0, "factory":Lorg/apache/logging/log4j/spi/LoggerContextFactory;
    instance-of v1, v0, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;

    if-eqz v1, :cond_0

    .line 49
    move-object v1, v0

    check-cast v1, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;

    return-object v1

    .line 51
    :cond_0
    if-eqz v0, :cond_1

    .line 52
    sget-object v1, Lorg/apache/logging/log4j/core/config/Configurator;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 52
    const-string v4, "LogManager returned an instance of {} which does not implement {}. Unable to initialize Log4j."

    invoke-interface {v1, v4, v2, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 55
    :cond_1
    sget-object v1, Lorg/apache/logging/log4j/core/config/Configurator;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "LogManager did not return a LoggerContextFactory. This indicates something has gone terribly wrong!"

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->fatal(Ljava/lang/String;)V

    .line 57
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static initialize(Ljava/lang/ClassLoader;Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 1
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "loader",
            "configuration"
        }
    .end annotation

    .line 230
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/logging/log4j/core/config/Configurator;->initialize(Ljava/lang/ClassLoader;Lorg/apache/logging/log4j/core/config/Configuration;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Ljava/lang/ClassLoader;Lorg/apache/logging/log4j/core/config/Configuration;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 8
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "externalContext"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "loader",
            "configuration",
            "externalContext"
        }
    .end annotation

    .line 242
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lorg/apache/logging/log4j/core/config/Configurator;->getFactory()Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;

    move-result-object v1

    .line 243
    .local v1, "factory":Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;
    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Lorg/apache/logging/log4j/core/config/Configurator;->FQCN:Ljava/lang/String;

    const/4 v6, 0x0

    .line 244
    move-object v2, v1

    move-object v4, p0

    move-object v5, p2

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;ZLorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    return-object v0

    .line 245
    .end local v1    # "factory":Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;
    :catch_0
    move-exception v1

    .line 246
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/logging/log4j/core/config/Configurator;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 247
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/config/Configuration;->getName()Ljava/lang/String;

    move-result-object v3

    .line 246
    const-string v4, "There was a problem initializing the LoggerContext using configuration {}"

    invoke-interface {v2, v4, v3, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 249
    .end local v1    # "ex":Ljava/lang/Exception;
    return-object v0
.end method

.method public static initialize(Ljava/lang/ClassLoader;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 1
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "source"    # Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "loader",
            "source"
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/logging/log4j/core/config/Configurator;->initialize(Ljava/lang/ClassLoader;Lorg/apache/logging/log4j/core/config/ConfigurationSource;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Ljava/lang/ClassLoader;Lorg/apache/logging/log4j/core/config/ConfigurationSource;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 8
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "source"    # Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    .param p2, "externalContext"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "loader",
            "source",
            "externalContext"
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lorg/apache/logging/log4j/core/config/Configurator;->getFactory()Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;

    move-result-object v1

    .line 86
    .local v1, "factory":Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;
    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Lorg/apache/logging/log4j/core/config/Configurator;->FQCN:Ljava/lang/String;

    const/4 v6, 0x0

    .line 87
    move-object v2, v1

    move-object v4, p0

    move-object v5, p2

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;ZLorg/apache/logging/log4j/core/config/ConfigurationSource;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-object v0

    .line 88
    .end local v1    # "factory":Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;
    :catch_0
    move-exception v1

    .line 89
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/logging/log4j/core/config/Configurator;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "There was a problem obtaining a LoggerContext using the configuration source [{}]"

    invoke-interface {v2, v3, p1, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    .end local v1    # "ex":Ljava/lang/Exception;
    return-object v0
.end method

.method public static initialize(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "configLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "loader",
            "configLocation"
        }
    .end annotation

    .line 102
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/logging/log4j/core/config/Configurator;->initialize(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "configLocation"    # Ljava/lang/String;
    .param p3, "externalContext"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "loader",
            "configLocation",
            "externalContext"
        }
    .end annotation

    .line 116
    invoke-static {p2}, Lorg/apache/logging/log4j/util/Strings;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x0

    check-cast v0, Ljava/net/URI;

    invoke-static {p0, p1, v0, p3}, Lorg/apache/logging/log4j/core/config/Configurator;->initialize(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/net/URI;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    return-object v0

    .line 119
    :cond_0
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 120
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "parts":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 122
    .local v1, "scheme":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    .local v2, "uris":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 124
    .local v5, "part":Ljava/lang/String;
    if-eqz v1, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-static {v6}, Lorg/apache/logging/log4j/core/util/NetUtils;->toURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    .line 125
    .local v6, "uri":Ljava/net/URI;
    if-nez v1, :cond_2

    invoke-virtual {v6}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 126
    invoke-virtual {v6}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 128
    :cond_2
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v5    # "part":Ljava/lang/String;
    .end local v6    # "uri":Ljava/net/URI;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 130
    :cond_3
    invoke-static {p0, p1, v2, p3}, Lorg/apache/logging/log4j/core/config/Configurator;->initialize(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/List;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v3

    return-object v3

    .line 132
    .end local v0    # "parts":[Ljava/lang/String;
    .end local v1    # "scheme":Ljava/lang/String;
    .end local v2    # "uris":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    :cond_4
    invoke-static {p2}, Lorg/apache/logging/log4j/core/util/NetUtils;->toURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lorg/apache/logging/log4j/core/config/Configurator;->initialize(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/net/URI;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/net/URI;)Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "configLocation"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "loader",
            "configLocation"
        }
    .end annotation

    .line 143
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/logging/log4j/core/config/Configurator;->initialize(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/net/URI;Ljava/util/Map$Entry;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/net/URI;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 9
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "configLocation"    # Ljava/net/URI;
    .param p3, "externalContext"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "loader",
            "configLocation",
            "externalContext"
        }
    .end annotation

    .line 158
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lorg/apache/logging/log4j/core/config/Configurator;->getFactory()Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;

    move-result-object v1

    .line 159
    .local v1, "factory":Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;
    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Lorg/apache/logging/log4j/core/config/Configurator;->FQCN:Ljava/lang/String;

    const/4 v6, 0x0

    .line 160
    move-object v2, v1

    move-object v4, p1

    move-object v5, p3

    move-object v7, p2

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;ZLjava/net/URI;Ljava/lang/String;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-object v0

    .line 161
    .end local v1    # "factory":Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;
    :catch_0
    move-exception v1

    .line 162
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/logging/log4j/core/config/Configurator;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "There was a problem initializing the LoggerContext [{}] using configuration at [{}]."

    invoke-interface {v2, v3, p0, p2, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 165
    .end local v1    # "ex":Ljava/lang/Exception;
    return-object v0
.end method

.method public static initialize(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/net/URI;Ljava/util/Map$Entry;)Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 9
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "configLocation"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "loader",
            "configLocation",
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/net/URI;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/logging/log4j/core/LoggerContext;"
        }
    .end annotation

    .line 180
    .local p3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lorg/apache/logging/log4j/core/config/Configurator;->getFactory()Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;

    move-result-object v1

    .line 181
    .local v1, "factory":Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;
    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Lorg/apache/logging/log4j/core/config/Configurator;->FQCN:Ljava/lang/String;

    const/4 v6, 0x0

    .line 182
    move-object v2, v1

    move-object v4, p1

    move-object v5, p3

    move-object v7, p2

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Map$Entry;ZLjava/net/URI;Ljava/lang/String;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-object v0

    .line 183
    .end local v1    # "factory":Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;
    :catch_0
    move-exception v1

    .line 184
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/logging/log4j/core/config/Configurator;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "There was a problem initializing the LoggerContext [{}] using configuration at [{}]."

    invoke-interface {v2, v3, p0, p2, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 187
    .end local v1    # "ex":Ljava/lang/Exception;
    return-object v0
.end method

.method public static initialize(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/List;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 9
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "externalContext"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "loader",
            "configLocations",
            "externalContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Ljava/net/URI;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/logging/log4j/core/LoggerContext;"
        }
    .end annotation

    .line 193
    .local p2, "configLocations":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lorg/apache/logging/log4j/core/config/Configurator;->getFactory()Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;

    move-result-object v1

    .line 194
    .local v1, "factory":Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;
    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Lorg/apache/logging/log4j/core/config/Configurator;->FQCN:Ljava/lang/String;

    const/4 v6, 0x0

    .line 196
    move-object v2, v1

    move-object v4, p1

    move-object v5, p3

    move-object v7, p2

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;ZLjava/util/List;Ljava/lang/String;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-object v0

    .line 197
    .end local v1    # "factory":Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;
    :catch_0
    move-exception v1

    .line 198
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/logging/log4j/core/config/Configurator;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "There was a problem initializing the LoggerContext [{}] using configurations at [{}]."

    invoke-interface {v2, v3, p0, p2, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 201
    .end local v1    # "ex":Ljava/lang/Exception;
    return-object v0
.end method

.method public static initialize(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "configLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "configLocation"
        }
    .end annotation

    .line 211
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/logging/log4j/core/config/Configurator;->initialize(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 1
    .param p0, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 220
    const/4 v0, 0x0

    invoke-static {v0, p0, v0}, Lorg/apache/logging/log4j/core/config/Configurator;->initialize(Ljava/lang/ClassLoader;Lorg/apache/logging/log4j/core/config/Configuration;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    return-object v0
.end method

.method public static reconfigure()V
    .locals 5

    .line 276
    :try_start_0
    invoke-static {}, Lorg/apache/logging/log4j/core/config/Configurator;->getFactory()Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;

    move-result-object v0

    .line 277
    .local v0, "factory":Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;
    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->getSelector()Lorg/apache/logging/log4j/core/selector/ContextSelector;

    move-result-object v1

    sget-object v2, Lorg/apache/logging/log4j/core/config/Configurator;->FQCN:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lorg/apache/logging/log4j/core/selector/ContextSelector;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/LoggerContext;->reconfigure()V

    goto :goto_0

    .line 280
    :cond_0
    sget-object v1, Lorg/apache/logging/log4j/core/config/Configurator;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Unable to reconfigure - Log4j has not been initialized."

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .end local v0    # "factory":Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;
    :goto_0
    goto :goto_1

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lorg/apache/logging/log4j/core/config/Configurator;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Error encountered trying to reconfigure logging"

    invoke-interface {v1, v2, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static reconfigure(Ljava/net/URI;)V
    .locals 5
    .param p0, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "uri"
        }
    .end annotation

    .line 294
    :try_start_0
    invoke-static {}, Lorg/apache/logging/log4j/core/config/Configurator;->getFactory()Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;

    move-result-object v0

    .line 295
    .local v0, "factory":Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;
    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->getSelector()Lorg/apache/logging/log4j/core/selector/ContextSelector;

    move-result-object v1

    sget-object v2, Lorg/apache/logging/log4j/core/config/Configurator;->FQCN:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lorg/apache/logging/log4j/core/selector/ContextSelector;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/logging/log4j/core/LoggerContext;->setConfigLocation(Ljava/net/URI;)V

    goto :goto_0

    .line 298
    :cond_0
    sget-object v1, Lorg/apache/logging/log4j/core/config/Configurator;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Unable to reconfigure - Log4j has not been initialized."

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    .end local v0    # "factory":Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;
    :goto_0
    goto :goto_1

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lorg/apache/logging/log4j/core/config/Configurator;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Error encountered trying to reconfigure logging"

    invoke-interface {v1, v2, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 303
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static reconfigure(Lorg/apache/logging/log4j/core/config/Configuration;)V
    .locals 4
    .param p0, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 259
    :try_start_0
    invoke-static {}, Lorg/apache/logging/log4j/core/config/Configurator;->getFactory()Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;

    move-result-object v0

    .line 260
    .local v0, "factory":Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;
    if-eqz v0, :cond_0

    .line 261
    sget-object v1, Lorg/apache/logging/log4j/core/config/Configurator;->FQCN:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v1

    .line 262
    invoke-virtual {v1, p0}, Lorg/apache/logging/log4j/core/LoggerContext;->reconfigure(Lorg/apache/logging/log4j/core/config/Configuration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .end local v0    # "factory":Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;
    :cond_0
    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lorg/apache/logging/log4j/core/config/Configurator;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 266
    invoke-interface {p0}, Lorg/apache/logging/log4j/core/config/Configuration;->getName()Ljava/lang/String;

    move-result-object v2

    .line 265
    const-string v3, "There was a problem initializing the LoggerContext using configuration {}"

    invoke-interface {v1, v3, v2, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 268
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static setAllLevels(Ljava/lang/String;Lorg/apache/logging/log4j/Level;)V
    .locals 6
    .param p0, "parentLogger"    # Ljava/lang/String;
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "parentLogger",
            "level"
        }
    .end annotation

    .line 317
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClassLoader(I)Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/apache/logging/log4j/core/LoggerContext;->getContext(Ljava/lang/ClassLoader;ZLjava/net/URI;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    .line 318
    .local v0, "loggerContext":Lorg/apache/logging/log4j/core/LoggerContext;
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v1

    .line 319
    .local v1, "config":Lorg/apache/logging/log4j/core/config/Configuration;
    invoke-static {p0, p1, v1}, Lorg/apache/logging/log4j/core/config/Configurator;->setLevel(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/core/config/Configuration;)Z

    move-result v2

    .line 320
    .local v2, "set":Z
    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getLoggers()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 321
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/logging/log4j/core/config/LoggerConfig;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 322
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-static {v5, p1}, Lorg/apache/logging/log4j/core/config/Configurator;->setLevel(Lorg/apache/logging/log4j/core/config/LoggerConfig;Lorg/apache/logging/log4j/Level;)Z

    move-result v5

    or-int/2addr v2, v5

    .line 324
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/logging/log4j/core/config/LoggerConfig;>;"
    :cond_0
    goto :goto_0

    .line 325
    :cond_1
    if-eqz v2, :cond_2

    .line 326
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->updateLoggers()V

    .line 328
    :cond_2
    return-void
.end method

.method public static setLevel(Lorg/apache/logging/log4j/Logger;Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/Logger;
    .locals 3
    .param p0, "logger"    # Lorg/apache/logging/log4j/Logger;
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "logger",
            "level"
        }
    .end annotation

    .line 340
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClassLoader(I)Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/apache/logging/log4j/core/LoggerContext;->getContext(Ljava/lang/ClassLoader;ZLjava/net/URI;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/apache/logging/log4j/core/config/Configurator;->setLevel(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Lorg/apache/logging/log4j/Level;)V

    .line 341
    return-object p0
.end method

.method public static setLevel(Ljava/lang/Class;Lorg/apache/logging/log4j/Level;)V
    .locals 3
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "clazz",
            "level"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/logging/log4j/Level;",
            ")V"
        }
    .end annotation

    .line 353
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClassLoader(I)Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/apache/logging/log4j/core/LoggerContext;->getContext(Ljava/lang/ClassLoader;ZLjava/net/URI;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/apache/logging/log4j/core/config/Configurator;->setLevel(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Lorg/apache/logging/log4j/Level;)V

    .line 354
    return-void
.end method

.method public static setLevel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "loggerName"    # Ljava/lang/String;
    .param p1, "level"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "loggerName",
            "level"
        }
    .end annotation

    .line 414
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClassLoader(I)Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/apache/logging/log4j/core/LoggerContext;->getContext(Ljava/lang/ClassLoader;ZLjava/net/URI;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/logging/log4j/Level;->toLevel(Ljava/lang/String;)Lorg/apache/logging/log4j/Level;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/logging/log4j/core/config/Configurator;->setLevel(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Lorg/apache/logging/log4j/Level;)V

    .line 415
    return-void
.end method

.method public static setLevel(Ljava/lang/String;Lorg/apache/logging/log4j/Level;)V
    .locals 3
    .param p0, "loggerName"    # Ljava/lang/String;
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "loggerName",
            "level"
        }
    .end annotation

    .line 402
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClassLoader(I)Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/apache/logging/log4j/core/LoggerContext;->getContext(Ljava/lang/ClassLoader;ZLjava/net/URI;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lorg/apache/logging/log4j/core/config/Configurator;->setLevel(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Lorg/apache/logging/log4j/Level;)V

    .line 403
    return-void
.end method

.method public static setLevel(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "levelMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/Level;",
            ">;)V"
        }
    .end annotation

    .line 380
    .local p0, "levelMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/Level;>;"
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClassLoader(I)Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/apache/logging/log4j/core/LoggerContext;->getContext(Ljava/lang/ClassLoader;ZLjava/net/URI;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    .line 381
    .local v0, "loggerContext":Lorg/apache/logging/log4j/core/LoggerContext;
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v1

    .line 382
    .local v1, "config":Lorg/apache/logging/log4j/core/config/Configuration;
    const/4 v2, 0x0

    .line 383
    .local v2, "set":Z
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 384
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/logging/log4j/Level;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 385
    .local v5, "loggerName":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/logging/log4j/Level;

    .line 386
    .local v6, "level":Lorg/apache/logging/log4j/Level;
    invoke-static {v5, v6, v1}, Lorg/apache/logging/log4j/core/config/Configurator;->setLevel(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/core/config/Configuration;)Z

    move-result v7

    or-int/2addr v2, v7

    .line 387
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/logging/log4j/Level;>;"
    .end local v5    # "loggerName":Ljava/lang/String;
    .end local v6    # "level":Lorg/apache/logging/log4j/Level;
    goto :goto_0

    .line 388
    :cond_0
    if-eqz v2, :cond_1

    .line 389
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->updateLoggers()V

    .line 391
    :cond_1
    return-void
.end method

.method private static setLevel(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Lorg/apache/logging/log4j/Level;)V
    .locals 1
    .param p0, "loggerContext"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p1, "loggerName"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "loggerContext",
            "loggerName",
            "level"
        }
    .end annotation

    .line 365
    invoke-static {p1}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    invoke-static {p2, p0}, Lorg/apache/logging/log4j/core/config/Configurator;->setRootLevel(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/core/LoggerContext;)V

    goto :goto_0

    .line 367
    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/LoggerContext;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lorg/apache/logging/log4j/core/config/Configurator;->setLevel(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/core/config/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/LoggerContext;->updateLoggers()V

    .line 370
    :cond_1
    :goto_0
    return-void
.end method

.method private static setLevel(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/core/config/Configuration;)Z
    .locals 3
    .param p0, "loggerName"    # Ljava/lang/String;
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "loggerName",
            "level",
            "config"
        }
    .end annotation

    .line 419
    invoke-interface {p2, p0}, Lorg/apache/logging/log4j/core/config/Configuration;->getLoggerConfig(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/LoggerConfig;

    move-result-object v0

    .line 420
    .local v0, "loggerConfig":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 422
    new-instance v1, Lorg/apache/logging/log4j/core/config/LoggerConfig;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lorg/apache/logging/log4j/core/config/LoggerConfig;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Z)V

    move-object v0, v1

    .line 423
    invoke-interface {p2, p0, v0}, Lorg/apache/logging/log4j/core/config/Configuration;->addLogger(Ljava/lang/String;Lorg/apache/logging/log4j/core/config/LoggerConfig;)V

    .line 424
    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->setLevel(Lorg/apache/logging/log4j/Level;)V

    .line 425
    const/4 v1, 0x1

    .local v1, "set":Z
    goto :goto_0

    .line 427
    .end local v1    # "set":Z
    :cond_0
    invoke-static {v0, p1}, Lorg/apache/logging/log4j/core/config/Configurator;->setLevel(Lorg/apache/logging/log4j/core/config/LoggerConfig;Lorg/apache/logging/log4j/Level;)Z

    move-result v1

    .line 429
    .restart local v1    # "set":Z
    :goto_0
    return v1
.end method

.method private static setLevel(Lorg/apache/logging/log4j/core/config/LoggerConfig;Lorg/apache/logging/log4j/Level;)Z
    .locals 1
    .param p0, "loggerConfig"    # Lorg/apache/logging/log4j/core/config/LoggerConfig;
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "loggerConfig",
            "level"
        }
    .end annotation

    .line 357
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 358
    .local v0, "set":Z
    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->setLevel(Lorg/apache/logging/log4j/Level;)V

    .line 361
    :cond_0
    return v0
.end method

.method public static setRootLevel(Lorg/apache/logging/log4j/Level;)V
    .locals 3
    .param p0, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "level"
        }
    .end annotation

    .line 439
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClassLoader(I)Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/apache/logging/log4j/core/LoggerContext;->getContext(Ljava/lang/ClassLoader;ZLjava/net/URI;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/logging/log4j/core/config/Configurator;->setRootLevel(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/core/LoggerContext;)V

    .line 440
    return-void
.end method

.method private static setRootLevel(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/core/LoggerContext;)V
    .locals 2
    .param p0, "level"    # Lorg/apache/logging/log4j/Level;
    .param p1, "loggerContext"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "level",
            "loggerContext"
        }
    .end annotation

    .line 443
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/LoggerContext;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getRootLogger()Lorg/apache/logging/log4j/core/config/LoggerConfig;

    move-result-object v0

    .line 444
    .local v0, "loggerConfig":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/logging/log4j/Level;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 445
    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->setLevel(Lorg/apache/logging/log4j/Level;)V

    .line 446
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/LoggerContext;->updateLoggers()V

    .line 448
    :cond_0
    return-void
.end method

.method public static shutdown(Lorg/apache/logging/log4j/core/LoggerContext;)V
    .locals 0
    .param p0, "ctx"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 462
    if-eqz p0, :cond_0

    .line 463
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/LoggerContext;->stop()V

    .line 465
    :cond_0
    return-void
.end method

.method public static shutdown(Lorg/apache/logging/log4j/core/LoggerContext;JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p0, "ctx"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "ctx",
            "timeout",
            "timeUnit"
        }
    .end annotation

    .line 488
    if-eqz p0, :cond_0

    .line 489
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/LoggerContext;->stop(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0

    .line 491
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
