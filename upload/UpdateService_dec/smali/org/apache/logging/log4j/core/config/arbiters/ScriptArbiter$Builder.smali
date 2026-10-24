.class public Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter$Builder;
.super Ljava/lang/Object;
.source "ScriptArbiter.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private configuration:Lorg/apache/logging/log4j/core/config/AbstractConfiguration;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginConfiguration;
    .end annotation
.end field

.field private node:Lorg/apache/logging/log4j/core/config/Node;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginNode;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter$Builder;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBuilder()Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter$Builder;
    .locals 0

    .line 87
    return-object p0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter$Builder;->build()Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter;
    .locals 7

    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, "script":Lorg/apache/logging/log4j/core/script/AbstractScript;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter$Builder;->node:Lorg/apache/logging/log4j/core/config/Node;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/config/Node;

    .line 93
    .local v2, "child":Lorg/apache/logging/log4j/core/config/Node;
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/Node;->getType()Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    move-result-object v3

    .line 94
    .local v3, "type":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    if-nez v3, :cond_0

    .line 95
    sget-object v4, Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter$Builder;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Node {} is missing a Plugintype"

    invoke-interface {v4, v6, v5}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    goto :goto_0

    .line 98
    :cond_0
    const-class v4, Lorg/apache/logging/log4j/core/script/AbstractScript;

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getPluginClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 99
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter$Builder;->configuration:Lorg/apache/logging/log4j/core/config/AbstractConfiguration;

    invoke-virtual {v1, v3, v2}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->createPluginObject(Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;Lorg/apache/logging/log4j/core/config/Node;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/apache/logging/log4j/core/script/AbstractScript;

    .line 100
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter$Builder;->node:Lorg/apache/logging/log4j/core/config/Node;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 101
    goto :goto_1

    .line 103
    .end local v2    # "child":Lorg/apache/logging/log4j/core/config/Node;
    .end local v3    # "type":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    :cond_1
    goto :goto_0

    .line 105
    :cond_2
    :goto_1
    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 106
    sget-object v2, Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter$Builder;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "A Script, ScriptFile or ScriptRef element must be provided for this ScriptFilter"

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 107
    return-object v1

    .line 109
    :cond_3
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter$Builder;->configuration:Lorg/apache/logging/log4j/core/config/AbstractConfiguration;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->getScriptManager()Lorg/apache/logging/log4j/core/script/ScriptManager;

    move-result-object v2

    if-nez v2, :cond_4

    .line 110
    sget-object v2, Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter$Builder;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Script support is not enabled"

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 111
    return-object v1

    .line 113
    :cond_4
    instance-of v2, v0, Lorg/apache/logging/log4j/core/script/ScriptRef;

    if-eqz v2, :cond_5

    .line 114
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter$Builder;->configuration:Lorg/apache/logging/log4j/core/config/AbstractConfiguration;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->getScriptManager()Lorg/apache/logging/log4j/core/script/ScriptManager;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/core/script/ScriptManager;->getScript(Ljava/lang/String;)Lorg/apache/logging/log4j/core/script/AbstractScript;

    move-result-object v2

    if-nez v2, :cond_6

    .line 115
    sget-object v2, Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter$Builder;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "No script with name {} has been declared."

    invoke-interface {v2, v4, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    return-object v1

    .line 119
    :cond_5
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter$Builder;->configuration:Lorg/apache/logging/log4j/core/config/AbstractConfiguration;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->getScriptManager()Lorg/apache/logging/log4j/core/script/ScriptManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/logging/log4j/core/script/ScriptManager;->addScript(Lorg/apache/logging/log4j/core/script/AbstractScript;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 120
    return-object v1

    .line 123
    :cond_6
    new-instance v2, Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter$Builder;->configuration:Lorg/apache/logging/log4j/core/config/AbstractConfiguration;

    invoke-direct {v2, v3, v0, v1}, Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/script/AbstractScript;Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter$1;)V

    return-object v2
.end method

.method public setConfiguration(Lorg/apache/logging/log4j/core/config/AbstractConfiguration;)Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter$Builder;
    .locals 1
    .param p1, "configuration"    # Lorg/apache/logging/log4j/core/config/AbstractConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter$Builder;->configuration:Lorg/apache/logging/log4j/core/config/AbstractConfiguration;

    .line 78
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter$Builder;->asBuilder()Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNode(Lorg/apache/logging/log4j/core/config/Node;)Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter$Builder;
    .locals 1
    .param p1, "node"    # Lorg/apache/logging/log4j/core/config/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "node"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter$Builder;->node:Lorg/apache/logging/log4j/core/config/Node;

    .line 83
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter$Builder;->asBuilder()Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter$Builder;

    move-result-object v0

    return-object v0
.end method
