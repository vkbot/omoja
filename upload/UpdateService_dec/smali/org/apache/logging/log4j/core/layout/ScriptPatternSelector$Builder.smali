.class public Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;
.super Ljava/lang/Object;
.source "ScriptPatternSelector.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;",
        ">;"
    }
.end annotation


# instance fields
.field private alwaysWriteExceptions:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "alwaysWriteExceptions"
    .end annotation
.end field

.field private configuration:Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginConfiguration;
    .end annotation
.end field

.field private defaultPattern:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "defaultPattern"
    .end annotation
.end field

.field private disableAnsi:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "disableAnsi"
    .end annotation
.end field

.field private noConsoleNoAnsi:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "noConsoleNoAnsi"
    .end annotation
.end field

.field private properties:[Lorg/apache/logging/log4j/core/layout/PatternMatch;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "PatternMatch"
    .end annotation
.end field

.field private script:Lorg/apache/logging/log4j/core/script/AbstractScript;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "Script"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;->alwaysWriteExceptions:Z

    .line 77
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$1;

    .line 52
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;->build()Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;
    .locals 11

    .line 81
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;->script:Lorg/apache/logging/log4j/core/script/AbstractScript;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 82
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->access$000()Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    const-string v2, "A Script, ScriptFile or ScriptRef element must be provided for this ScriptFilter"

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 83
    return-object v1

    .line 85
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getScriptManager()Lorg/apache/logging/log4j/core/script/ScriptManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 86
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->access$000()Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    const-string v2, "Script support is not enabled"

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 87
    return-object v1

    .line 89
    :cond_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;->script:Lorg/apache/logging/log4j/core/script/AbstractScript;

    instance-of v0, v0, Lorg/apache/logging/log4j/core/script/ScriptRef;

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getScriptManager()Lorg/apache/logging/log4j/core/script/ScriptManager;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;->script:Lorg/apache/logging/log4j/core/script/AbstractScript;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/logging/log4j/core/script/ScriptManager;->getScript(Ljava/lang/String;)Lorg/apache/logging/log4j/core/script/AbstractScript;

    move-result-object v0

    if-nez v0, :cond_3

    .line 91
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->access$000()Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;->script:Lorg/apache/logging/log4j/core/script/AbstractScript;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "No script with name {} has been declared."

    invoke-interface {v0, v3, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    return-object v1

    .line 95
    :cond_2
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getScriptManager()Lorg/apache/logging/log4j/core/script/ScriptManager;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;->script:Lorg/apache/logging/log4j/core/script/AbstractScript;

    invoke-virtual {v0, v2}, Lorg/apache/logging/log4j/core/script/ScriptManager;->addScript(Lorg/apache/logging/log4j/core/script/AbstractScript;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 96
    return-object v1

    .line 99
    :cond_3
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;->defaultPattern:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 100
    const-string v0, "%m%n"

    iput-object v0, p0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;->defaultPattern:Ljava/lang/String;

    .line 102
    :cond_4
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;->properties:[Lorg/apache/logging/log4j/core/layout/PatternMatch;

    if-eqz v0, :cond_6

    array-length v0, v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 106
    :cond_5
    new-instance v0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    iget-object v4, p0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;->script:Lorg/apache/logging/log4j/core/script/AbstractScript;

    iget-object v5, p0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;->properties:[Lorg/apache/logging/log4j/core/layout/PatternMatch;

    iget-object v6, p0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;->defaultPattern:Ljava/lang/String;

    iget-boolean v7, p0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;->alwaysWriteExceptions:Z

    iget-boolean v8, p0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;->disableAnsi:Z

    iget-boolean v9, p0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;->noConsoleNoAnsi:Z

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/script/AbstractScript;[Lorg/apache/logging/log4j/core/layout/PatternMatch;Ljava/lang/String;ZZZLorg/apache/logging/log4j/core/layout/ScriptPatternSelector$1;)V

    return-object v0

    .line 103
    :cond_6
    :goto_0
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->access$000()Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    const-string v2, "No marker patterns were provided"

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 104
    return-object v1
.end method

.method public setAlwaysWriteExceptions(Z)Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;
    .locals 0
    .param p1, "alwaysWriteExceptions"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "alwaysWriteExceptions"
        }
    .end annotation

    .line 126
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;->alwaysWriteExceptions:Z

    .line 127
    return-object p0
.end method

.method public setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;
    .locals 0
    .param p1, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "config"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 142
    return-object p0
.end method

.method public setDefaultPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;
    .locals 0
    .param p1, "defaultPattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "defaultPattern"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;->defaultPattern:Ljava/lang/String;

    .line 122
    return-object p0
.end method

.method public setDisableAnsi(Z)Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;
    .locals 0
    .param p1, "disableAnsi"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "disableAnsi"
        }
    .end annotation

    .line 131
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;->disableAnsi:Z

    .line 132
    return-object p0
.end method

.method public setNoConsoleNoAnsi(Z)Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;
    .locals 0
    .param p1, "noConsoleNoAnsi"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "noConsoleNoAnsi"
        }
    .end annotation

    .line 136
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;->noConsoleNoAnsi:Z

    .line 137
    return-object p0
.end method

.method public setProperties([Lorg/apache/logging/log4j/core/layout/PatternMatch;)Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;
    .locals 0
    .param p1, "properties"    # [Lorg/apache/logging/log4j/core/layout/PatternMatch;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "properties"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;->properties:[Lorg/apache/logging/log4j/core/layout/PatternMatch;

    .line 117
    return-object p0
.end method

.method public setScript(Lorg/apache/logging/log4j/core/script/AbstractScript;)Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;
    .locals 0
    .param p1, "script"    # Lorg/apache/logging/log4j/core/script/AbstractScript;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "script"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;->script:Lorg/apache/logging/log4j/core/script/AbstractScript;

    .line 112
    return-object p0
.end method
