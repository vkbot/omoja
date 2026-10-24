.class public Lorg/apache/logging/log4j/core/script/ScriptRef;
.super Lorg/apache/logging/log4j/core/script/AbstractScript;
.source "ScriptRef.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "ScriptRef"
    printObject = true
.end annotation


# instance fields
.field private final scriptManager:Lorg/apache/logging/log4j/core/script/ScriptManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/script/ScriptManager;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "scriptManager"    # Lorg/apache/logging/log4j/core/script/ScriptManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "scriptManager"
        }
    .end annotation

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/apache/logging/log4j/core/script/AbstractScript;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iput-object p2, p0, Lorg/apache/logging/log4j/core/script/ScriptRef;->scriptManager:Lorg/apache/logging/log4j/core/script/ScriptManager;

    .line 37
    return-void
.end method

.method public static createReference(Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/script/ScriptRef;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "ref"
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
            "name",
            "configuration"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 58
    if-nez p0, :cond_0

    .line 59
    sget-object v0, Lorg/apache/logging/log4j/core/script/ScriptRef;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "No script name provided"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/core/script/ScriptRef;

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/config/Configuration;->getScriptManager()Lorg/apache/logging/log4j/core/script/ScriptManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/logging/log4j/core/script/ScriptRef;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/script/ScriptManager;)V

    return-object v0
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 2

    .line 41
    iget-object v0, p0, Lorg/apache/logging/log4j/core/script/ScriptRef;->scriptManager:Lorg/apache/logging/log4j/core/script/ScriptManager;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/script/ScriptRef;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/script/ScriptManager;->getScript(Ljava/lang/String;)Lorg/apache/logging/log4j/core/script/AbstractScript;

    move-result-object v0

    .line 42
    .local v0, "script":Lorg/apache/logging/log4j/core/script/AbstractScript;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getLanguage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getScriptText()Ljava/lang/String;
    .locals 2

    .line 48
    iget-object v0, p0, Lorg/apache/logging/log4j/core/script/ScriptRef;->scriptManager:Lorg/apache/logging/log4j/core/script/ScriptManager;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/script/ScriptRef;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/script/ScriptManager;->getScript(Ljava/lang/String;)Lorg/apache/logging/log4j/core/script/AbstractScript;

    move-result-object v0

    .line 49
    .local v0, "script":Lorg/apache/logging/log4j/core/script/AbstractScript;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getScriptText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ref="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/script/ScriptRef;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
