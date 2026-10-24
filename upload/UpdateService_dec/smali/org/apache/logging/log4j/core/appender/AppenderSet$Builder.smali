.class public Lorg/apache/logging/log4j/core/appender/AppenderSet$Builder;
.super Ljava/lang/Object;
.source "AppenderSet.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/AppenderSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/appender/AppenderSet;",
        ">;"
    }
.end annotation


# instance fields
.field private configuration:Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginConfiguration;
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;
    .end annotation
.end field

.field private node:Lorg/apache/logging/log4j/core/config/Node;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginNode;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AppenderSet$Builder;->build()Lorg/apache/logging/log4j/core/appender/AppenderSet;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/appender/AppenderSet;
    .locals 8

    .line 51
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AppenderSet$Builder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 52
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/AppenderSet;->access$000()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    const-string v2, "Configuration is missing from AppenderSet {}"

    invoke-virtual {v0, v2, p0}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    return-object v1

    .line 55
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AppenderSet$Builder;->node:Lorg/apache/logging/log4j/core/config/Node;

    if-nez v0, :cond_1

    .line 56
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/AppenderSet;->access$000()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    const-string v2, "No node in AppenderSet {}"

    invoke-virtual {v0, v2, p0}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    return-object v1

    .line 59
    :cond_1
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v0

    .line 60
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Node;>;"
    if-nez v0, :cond_2

    .line 61
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/AppenderSet;->access$000()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v2

    const-string v3, "No children node in AppenderSet {}"

    invoke-virtual {v2, v3, p0}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    return-object v1

    .line 64
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 65
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Node;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/logging/log4j/core/config/Node;

    .line 66
    .local v4, "childNode":Lorg/apache/logging/log4j/core/config/Node;
    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v5

    const-string v6, "name"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 67
    .local v5, "key":Ljava/lang/String;
    if-nez v5, :cond_3

    .line 68
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/AppenderSet;->access$000()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v6

    const-string v7, "The attribute \'name\' is missing from from the node {} in AppenderSet {}"

    invoke-virtual {v6, v7, v4, v0}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 71
    :cond_3
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .end local v4    # "childNode":Lorg/apache/logging/log4j/core/config/Node;
    .end local v5    # "key":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 74
    :cond_4
    new-instance v3, Lorg/apache/logging/log4j/core/appender/AppenderSet;

    iget-object v4, p0, Lorg/apache/logging/log4j/core/appender/AppenderSet$Builder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-direct {v3, v4, v2, v1}, Lorg/apache/logging/log4j/core/appender/AppenderSet;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/util/Map;Lorg/apache/logging/log4j/core/appender/AppenderSet$1;)V

    return-object v3
.end method

.method public getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AppenderSet$Builder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    return-object v0
.end method

.method public getNode()Lorg/apache/logging/log4j/core/config/Node;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AppenderSet$Builder;->node:Lorg/apache/logging/log4j/core/config/Node;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [node="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/AppenderSet$Builder;->node:Lorg/apache/logging/log4j/core/config/Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", configuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/AppenderSet$Builder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/AppenderSet$Builder;
    .locals 0
    .param p1, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/AppenderSet$Builder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 92
    return-object p0
.end method

.method public withNode(Lorg/apache/logging/log4j/core/config/Node;)Lorg/apache/logging/log4j/core/appender/AppenderSet$Builder;
    .locals 0
    .param p1, "node"    # Lorg/apache/logging/log4j/core/config/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "node"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/AppenderSet$Builder;->node:Lorg/apache/logging/log4j/core/config/Node;

    .line 87
    return-object p0
.end method
