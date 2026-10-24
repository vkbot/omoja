.class public final Lorg/apache/logging/log4j/core/appender/rewrite/RewriteAppender;
.super Lorg/apache/logging/log4j/core/appender/AbstractAppender;
.source "RewriteAppender.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "appender"
    name = "Rewrite"
    printObject = true
.end annotation


# instance fields
.field private final appenderRefs:[Lorg/apache/logging/log4j/core/config/AppenderRef;

.field private final appenders:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/config/AppenderControl;",
            ">;"
        }
    .end annotation
.end field

.field private final config:Lorg/apache/logging/log4j/core/config/Configuration;

.field private final rewritePolicy:Lorg/apache/logging/log4j/core/appender/rewrite/RewritePolicy;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Z[Lorg/apache/logging/log4j/core/config/AppenderRef;Lorg/apache/logging/log4j/core/appender/rewrite/RewritePolicy;Lorg/apache/logging/log4j/core/config/Configuration;[Lorg/apache/logging/log4j/core/config/Property;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p3, "ignoreExceptions"    # Z
    .param p4, "appenderRefs"    # [Lorg/apache/logging/log4j/core/config/AppenderRef;
    .param p5, "rewritePolicy"    # Lorg/apache/logging/log4j/core/appender/rewrite/RewritePolicy;
    .param p6, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p7, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
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
            "name",
            "filter",
            "ignoreExceptions",
            "appenderRefs",
            "rewritePolicy",
            "config",
            "properties"
        }
    .end annotation

    .line 52
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Z[Lorg/apache/logging/log4j/core/config/Property;)V

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/rewrite/RewriteAppender;->appenders:Ljava/util/concurrent/ConcurrentMap;

    .line 53
    iput-object p6, p0, Lorg/apache/logging/log4j/core/appender/rewrite/RewriteAppender;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 54
    iput-object p5, p0, Lorg/apache/logging/log4j/core/appender/rewrite/RewriteAppender;->rewritePolicy:Lorg/apache/logging/log4j/core/appender/rewrite/RewritePolicy;

    .line 55
    iput-object p4, p0, Lorg/apache/logging/log4j/core/appender/rewrite/RewriteAppender;->appenderRefs:[Lorg/apache/logging/log4j/core/config/AppenderRef;

    .line 56
    return-void
.end method

.method public static createAppender(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/logging/log4j/core/config/AppenderRef;Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/appender/rewrite/RewritePolicy;Lorg/apache/logging/log4j/core/Filter;)Lorg/apache/logging/log4j/core/appender/rewrite/RewriteAppender;
    .locals 10
    .param p0, "name"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "name"
        .end annotation
    .end param
    .param p1, "ignore"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "ignoreExceptions"
        .end annotation
    .end param
    .param p2, "appenderRefs"    # [Lorg/apache/logging/log4j/core/config/AppenderRef;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "AppenderRef"
        .end annotation
    .end param
    .param p3, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginConfiguration;
        .end annotation
    .end param
    .param p4, "rewritePolicy"    # Lorg/apache/logging/log4j/core/appender/rewrite/RewritePolicy;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "RewritePolicy"
        .end annotation
    .end param
    .param p5, "filter"    # Lorg/apache/logging/log4j/core/Filter;
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
            0x10
        }
        names = {
            "name",
            "ignore",
            "appenderRefs",
            "config",
            "rewritePolicy",
            "filter"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 108
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/apache/logging/log4j/core/util/Booleans;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 109
    .local v0, "ignoreExceptions":Z
    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 110
    sget-object v2, Lorg/apache/logging/log4j/core/appender/rewrite/RewriteAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "No name provided for RewriteAppender"

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 111
    return-object v1

    .line 113
    :cond_0
    if-nez p2, :cond_1

    .line 114
    sget-object v2, Lorg/apache/logging/log4j/core/appender/rewrite/RewriteAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "No appender references defined for RewriteAppender"

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 115
    return-object v1

    .line 117
    :cond_1
    new-instance v9, Lorg/apache/logging/log4j/core/appender/rewrite/RewriteAppender;

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, p5

    move v4, v0

    move-object v5, p2

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v1 .. v8}, Lorg/apache/logging/log4j/core/appender/rewrite/RewriteAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Z[Lorg/apache/logging/log4j/core/config/AppenderRef;Lorg/apache/logging/log4j/core/appender/rewrite/RewritePolicy;Lorg/apache/logging/log4j/core/config/Configuration;[Lorg/apache/logging/log4j/core/config/Property;)V

    return-object v9
.end method


# virtual methods
.method public append(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 2
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rewrite/RewriteAppender;->rewritePolicy:Lorg/apache/logging/log4j/core/appender/rewrite/RewritePolicy;

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/core/appender/rewrite/RewritePolicy;->rewrite(Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/LogEvent;

    move-result-object p1

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rewrite/RewriteAppender;->appenders:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/config/AppenderControl;

    .line 84
    .local v1, "control":Lorg/apache/logging/log4j/core/config/AppenderControl;
    invoke-virtual {v1, p1}, Lorg/apache/logging/log4j/core/config/AppenderControl;->callAppender(Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 85
    .end local v1    # "control":Lorg/apache/logging/log4j/core/config/AppenderControl;
    goto :goto_0

    .line 86
    :cond_1
    return-void
.end method

.method public start()V
    .locals 10

    .line 60
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rewrite/RewriteAppender;->appenderRefs:[Lorg/apache/logging/log4j/core/config/AppenderRef;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 61
    .local v3, "ref":Lorg/apache/logging/log4j/core/config/AppenderRef;
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/AppenderRef;->getRef()Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/logging/log4j/core/appender/rewrite/RewriteAppender;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v5, v4}, Lorg/apache/logging/log4j/core/config/Configuration;->getAppender(Ljava/lang/String;)Lorg/apache/logging/log4j/core/Appender;

    move-result-object v5

    .line 63
    .local v5, "appender":Lorg/apache/logging/log4j/core/Appender;
    if-eqz v5, :cond_1

    .line 64
    instance-of v6, v5, Lorg/apache/logging/log4j/core/appender/AbstractAppender;

    if-eqz v6, :cond_0

    move-object v6, v5

    check-cast v6, Lorg/apache/logging/log4j/core/appender/AbstractAppender;

    .line 65
    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v6

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    .line 66
    .local v6, "filter":Lorg/apache/logging/log4j/core/Filter;
    :goto_1
    iget-object v7, p0, Lorg/apache/logging/log4j/core/appender/rewrite/RewriteAppender;->appenders:Ljava/util/concurrent/ConcurrentMap;

    new-instance v8, Lorg/apache/logging/log4j/core/config/AppenderControl;

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/AppenderRef;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v9

    invoke-direct {v8, v5, v9, v6}, Lorg/apache/logging/log4j/core/config/AppenderControl;-><init>(Lorg/apache/logging/log4j/core/Appender;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/core/Filter;)V

    invoke-interface {v7, v4, v8}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .end local v6    # "filter":Lorg/apache/logging/log4j/core/Filter;
    goto :goto_2

    .line 68
    :cond_1
    sget-object v6, Lorg/apache/logging/log4j/core/appender/rewrite/RewriteAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Appender "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " cannot be located. Reference ignored"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 60
    .end local v3    # "ref":Lorg/apache/logging/log4j/core/config/AppenderRef;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "appender":Lorg/apache/logging/log4j/core/Appender;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    :cond_2
    invoke-super {p0}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->start()V

    .line 72
    return-void
.end method
