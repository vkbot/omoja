.class public final Lorg/apache/logging/log4j/core/appender/rewrite/PropertiesRewritePolicy;
.super Ljava/lang/Object;
.source "PropertiesRewritePolicy.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/appender/rewrite/RewritePolicy;


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "rewritePolicy"
    name = "PropertiesRewritePolicy"
    printObject = true
.end annotation


# static fields
.field protected static final LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final config:Lorg/apache/logging/log4j/core/config/Configuration;

.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/logging/log4j/core/config/Property;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rewrite/PropertiesRewritePolicy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method private constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/util/List;)V
    .locals 4
    .param p1, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "config",
            "props"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/Property;",
            ">;)V"
        }
    .end annotation

    .line 53
    .local p2, "props":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Property;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rewrite/PropertiesRewritePolicy;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/rewrite/PropertiesRewritePolicy;->properties:Ljava/util/Map;

    .line 56
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/config/Property;

    .line 57
    .local v1, "property":Lorg/apache/logging/log4j/core/config/Property;
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/Property;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "${"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 58
    .local v2, "interpolate":Ljava/lang/Boolean;
    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/rewrite/PropertiesRewritePolicy;->properties:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .end local v1    # "property":Lorg/apache/logging/log4j/core/config/Property;
    .end local v2    # "interpolate":Ljava/lang/Boolean;
    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method

.method public static createPolicy(Lorg/apache/logging/log4j/core/config/Configuration;[Lorg/apache/logging/log4j/core/config/Property;)Lorg/apache/logging/log4j/core/appender/rewrite/PropertiesRewritePolicy;
    .locals 2
    .param p0, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginConfiguration;
        .end annotation
    .end param
    .param p1, "props"    # [Lorg/apache/logging/log4j/core/config/Property;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "Properties"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "config",
            "props"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 106
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 111
    .local v0, "properties":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Property;>;"
    new-instance v1, Lorg/apache/logging/log4j/core/appender/rewrite/PropertiesRewritePolicy;

    invoke-direct {v1, p0, v0}, Lorg/apache/logging/log4j/core/appender/rewrite/PropertiesRewritePolicy;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/util/List;)V

    return-object v1

    .line 107
    .end local v0    # "properties":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Property;>;"
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rewrite/PropertiesRewritePolicy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "Properties must be specified for the PropertiesRewritePolicy"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public rewrite(Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/LogEvent;
    .locals 7
    .param p1, "source"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "source"
        }
    .end annotation

    .line 70
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/impl/ContextDataFactory;->createContextData(Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v0

    .line 71
    .local v0, "newContextData":Lorg/apache/logging/log4j/util/StringMap;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rewrite/PropertiesRewritePolicy;->properties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 72
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/logging/log4j/core/config/Property;Ljava/lang/Boolean;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/core/config/Property;

    .line 73
    .local v3, "prop":Lorg/apache/logging/log4j/core/config/Property;
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/Property;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/apache/logging/log4j/core/appender/rewrite/PropertiesRewritePolicy;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 74
    invoke-interface {v5}, Lorg/apache/logging/log4j/core/config/Configuration;->getStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v5

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/Property;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/Property;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 73
    :goto_1
    invoke-interface {v0, v4, v5}, Lorg/apache/logging/log4j/util/StringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/logging/log4j/core/config/Property;Ljava/lang/Boolean;>;"
    .end local v3    # "prop":Lorg/apache/logging/log4j/core/config/Property;
    goto :goto_0

    .line 77
    :cond_1
    new-instance v1, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    invoke-direct {v1, p1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;-><init>(Lorg/apache/logging/log4j/core/LogEvent;)V

    invoke-virtual {v1, v0}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setContextData(Lorg/apache/logging/log4j/util/StringMap;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->build()Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const/4 v1, 0x1

    .line 85
    .local v1, "first":Z
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/rewrite/PropertiesRewritePolicy;->properties:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 86
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/logging/log4j/core/config/Property;Ljava/lang/Boolean;>;"
    if-nez v1, :cond_0

    .line 87
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/logging/log4j/core/config/Property;

    .line 90
    .local v4, "prop":Lorg/apache/logging/log4j/core/config/Property;
    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/config/Property;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/config/Property;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const/4 v1, 0x0

    .line 92
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/logging/log4j/core/config/Property;Ljava/lang/Boolean;>;"
    .end local v4    # "prop":Lorg/apache/logging/log4j/core/config/Property;
    goto :goto_0

    .line 93
    :cond_1
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
