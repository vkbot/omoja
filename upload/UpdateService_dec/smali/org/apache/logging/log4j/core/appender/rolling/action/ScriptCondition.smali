.class public Lorg/apache/logging/log4j/core/appender/rolling/action/ScriptCondition;
.super Ljava/lang/Object;
.source "ScriptCondition.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "ScriptCondition"
    printObject = true
.end annotation


# static fields
.field private static LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final configuration:Lorg/apache/logging/log4j/core/config/Configuration;

.field private final script:Lorg/apache/logging/log4j/core/script/AbstractScript;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/ScriptCondition;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/script/AbstractScript;Lorg/apache/logging/log4j/core/config/Configuration;)V
    .locals 1
    .param p1, "script"    # Lorg/apache/logging/log4j/core/script/AbstractScript;
    .param p2, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "script",
            "configuration"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, "script"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/core/script/AbstractScript;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/ScriptCondition;->script:Lorg/apache/logging/log4j/core/script/AbstractScript;

    .line 59
    const-string v0, "configuration"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lorg/apache/logging/log4j/core/config/Configuration;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/ScriptCondition;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 60
    return-void
.end method

.method public static createCondition(Lorg/apache/logging/log4j/core/script/AbstractScript;Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/rolling/action/ScriptCondition;
    .locals 4
    .param p0, "script"    # Lorg/apache/logging/log4j/core/script/AbstractScript;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "Script"
        .end annotation
    .end param
    .param p1, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginConfiguration;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "script",
            "configuration"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 105
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 106
    sget-object v1, Lorg/apache/logging/log4j/core/appender/rolling/action/ScriptCondition;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "A Script, ScriptFile or ScriptRef element must be provided for this ScriptCondition"

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 107
    return-object v0

    .line 109
    :cond_0
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/config/Configuration;->getScriptManager()Lorg/apache/logging/log4j/core/script/ScriptManager;

    move-result-object v1

    if-nez v1, :cond_1

    .line 110
    sget-object v1, Lorg/apache/logging/log4j/core/appender/rolling/action/ScriptCondition;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Script support is not enabled"

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 111
    return-object v0

    .line 113
    :cond_1
    instance-of v1, p0, Lorg/apache/logging/log4j/core/script/ScriptRef;

    if-eqz v1, :cond_2

    .line 114
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/config/Configuration;->getScriptManager()Lorg/apache/logging/log4j/core/script/ScriptManager;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/core/script/ScriptManager;->getScript(Ljava/lang/String;)Lorg/apache/logging/log4j/core/script/AbstractScript;

    move-result-object v1

    if-nez v1, :cond_3

    .line 115
    sget-object v1, Lorg/apache/logging/log4j/core/appender/rolling/action/ScriptCondition;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScriptCondition: No script with name {} has been declared."

    invoke-interface {v1, v3, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    return-object v0

    .line 119
    :cond_2
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/config/Configuration;->getScriptManager()Lorg/apache/logging/log4j/core/script/ScriptManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/logging/log4j/core/script/ScriptManager;->addScript(Lorg/apache/logging/log4j/core/script/AbstractScript;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 120
    return-object v0

    .line 123
    :cond_3
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/action/ScriptCondition;

    invoke-direct {v0, p0, p1}, Lorg/apache/logging/log4j/core/appender/rolling/action/ScriptCondition;-><init>(Lorg/apache/logging/log4j/core/script/AbstractScript;Lorg/apache/logging/log4j/core/config/Configuration;)V

    return-object v0
.end method


# virtual methods
.method public selectFilesToDelete(Ljava/nio/file/Path;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p1, "basePath"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "basePath",
            "candidates"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;",
            ">;"
        }
    .end annotation

    .line 71
    .local p2, "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;>;"
    new-instance v0, Ljavax/script/SimpleBindings;

    invoke-direct {v0}, Ljavax/script/SimpleBindings;-><init>()V

    .line 72
    .local v0, "bindings":Ljavax/script/SimpleBindings;
    const-string v1, "basePath"

    invoke-virtual {v0, v1, p1}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v1, "pathList"

    invoke-virtual {v0, v1, p2}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/ScriptCondition;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getProperties()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/script/SimpleBindings;->putAll(Ljava/util/Map;)V

    .line 75
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/ScriptCondition;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    const-string v2, "configuration"

    invoke-virtual {v0, v2, v1}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/ScriptCondition;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v1

    const-string v2, "substitutor"

    invoke-virtual {v0, v2, v1}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v1, Lorg/apache/logging/log4j/core/appender/rolling/action/ScriptCondition;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "statusLogger"

    invoke-virtual {v0, v2, v1}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/ScriptCondition;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getScriptManager()Lorg/apache/logging/log4j/core/script/ScriptManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/ScriptCondition;->script:Lorg/apache/logging/log4j/core/script/AbstractScript;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/apache/logging/log4j/core/script/ScriptManager;->execute(Ljava/lang/String;Ljavax/script/Bindings;)Ljava/lang/Object;

    move-result-object v1

    .line 79
    .local v1, "object":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/util/List;

    return-object v2
.end method
