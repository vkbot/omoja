.class public Lorg/apache/logging/log4j/core/appender/rewrite/LoggerNameLevelRewritePolicy;
.super Ljava/lang/Object;
.source "LoggerNameLevelRewritePolicy.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/appender/rewrite/RewritePolicy;


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "rewritePolicy"
    name = "LoggerNameLevelRewritePolicy"
    printObject = true
.end annotation


# instance fields
.field private final loggerName:Ljava/lang/String;

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/logging/log4j/Level;",
            "Lorg/apache/logging/log4j/Level;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "loggerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "loggerName",
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lorg/apache/logging/log4j/Level;",
            "Lorg/apache/logging/log4j/Level;",
            ">;)V"
        }
    .end annotation

    .line 72
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Level;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rewrite/LoggerNameLevelRewritePolicy;->loggerName:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lorg/apache/logging/log4j/core/appender/rewrite/LoggerNameLevelRewritePolicy;->map:Ljava/util/Map;

    .line 75
    return-void
.end method

.method public static createPolicy(Ljava/lang/String;[Lorg/apache/logging/log4j/core/util/KeyValuePair;)Lorg/apache/logging/log4j/core/appender/rewrite/LoggerNameLevelRewritePolicy;
    .locals 6
    .param p0, "loggerNamePrefix"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "logger"
        .end annotation
    .end param
    .param p1, "levelPairs"    # [Lorg/apache/logging/log4j/core/util/KeyValuePair;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "KeyValuePair"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "loggerNamePrefix",
            "levelPairs"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 57
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 58
    .local v0, "newMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Level;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 59
    .local v3, "keyValuePair":Lorg/apache/logging/log4j/core/util/KeyValuePair;
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/util/KeyValuePair;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/logging/log4j/core/appender/rewrite/LoggerNameLevelRewritePolicy;->getLevel(Ljava/lang/String;)Lorg/apache/logging/log4j/Level;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/util/KeyValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/logging/log4j/core/appender/rewrite/LoggerNameLevelRewritePolicy;->getLevel(Ljava/lang/String;)Lorg/apache/logging/log4j/Level;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .end local v3    # "keyValuePair":Lorg/apache/logging/log4j/core/util/KeyValuePair;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :cond_0
    new-instance v1, Lorg/apache/logging/log4j/core/appender/rewrite/LoggerNameLevelRewritePolicy;

    invoke-direct {v1, p0, v0}, Lorg/apache/logging/log4j/core/appender/rewrite/LoggerNameLevelRewritePolicy;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method

.method private static getLevel(Ljava/lang/String;)Lorg/apache/logging/log4j/Level;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 65
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/Level;->getLevel(Ljava/lang/String;)Lorg/apache/logging/log4j/Level;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public rewrite(Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/LogEvent;
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

    .line 79
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rewrite/LoggerNameLevelRewritePolicy;->loggerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 82
    :cond_0
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v0

    .line 83
    .local v0, "sourceLevel":Lorg/apache/logging/log4j/Level;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rewrite/LoggerNameLevelRewritePolicy;->map:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/Level;

    .line 84
    .local v1, "newLevel":Lorg/apache/logging/log4j/Level;
    if-eqz v1, :cond_2

    if-ne v1, v0, :cond_1

    goto :goto_0

    .line 87
    :cond_1
    new-instance v2, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    invoke-direct {v2, p1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;-><init>(Lorg/apache/logging/log4j/core/LogEvent;)V

    invoke-virtual {v2, v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setLevel(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->build()Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    move-result-object v2

    .line 88
    .local v2, "result":Lorg/apache/logging/log4j/core/LogEvent;
    return-object v2

    .line 85
    .end local v2    # "result":Lorg/apache/logging/log4j/core/LogEvent;
    :cond_2
    :goto_0
    return-object p1

    .line 80
    .end local v0    # "sourceLevel":Lorg/apache/logging/log4j/Level;
    .end local v1    # "newLevel":Lorg/apache/logging/log4j/Level;
    :cond_3
    :goto_1
    return-object p1
.end method
