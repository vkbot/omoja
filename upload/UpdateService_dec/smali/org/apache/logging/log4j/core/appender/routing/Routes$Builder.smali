.class public Lorg/apache/logging/log4j/core/appender/routing/Routes$Builder;
.super Ljava/lang/Object;
.source "Routes.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/routing/Routes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/appender/routing/Routes;",
        ">;"
    }
.end annotation


# instance fields
.field private configuration:Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginConfiguration;
    .end annotation
.end field

.field private pattern:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
        value = "pattern"
    .end annotation
.end field

.field private patternScript:Lorg/apache/logging/log4j/core/script/AbstractScript;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "Script"
    .end annotation
.end field

.field private routes:[Lorg/apache/logging/log4j/core/appender/routing/Route;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "Routes"
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/routing/Routes$Builder;->build()Lorg/apache/logging/log4j/core/appender/routing/Routes;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/appender/routing/Routes;
    .locals 8

    .line 66
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/Routes$Builder;->routes:[Lorg/apache/logging/log4j/core/appender/routing/Route;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    array-length v0, v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 70
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/Routes$Builder;->patternScript:Lorg/apache/logging/log4j/core/script/AbstractScript;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/Routes$Builder;->pattern:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/Routes$Builder;->patternScript:Lorg/apache/logging/log4j/core/script/AbstractScript;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/Routes$Builder;->pattern:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 71
    :cond_2
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/routing/Routes;->access$000()Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    const-string v2, "In a Routes element, you must configure either a Script element or a pattern attribute."

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 73
    :cond_3
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/Routes$Builder;->patternScript:Lorg/apache/logging/log4j/core/script/AbstractScript;

    if-eqz v0, :cond_6

    .line 74
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/Routes$Builder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    if-nez v0, :cond_4

    .line 75
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/routing/Routes;->access$000()Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    const-string v1, "No Configuration defined for Routes; required for Script"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_4
    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getScriptManager()Lorg/apache/logging/log4j/core/script/ScriptManager;

    move-result-object v0

    if-nez v0, :cond_5

    .line 78
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/routing/Routes;->access$000()Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    const-string v2, "Script support is not enabled"

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 79
    return-object v1

    .line 81
    :cond_5
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/Routes$Builder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getScriptManager()Lorg/apache/logging/log4j/core/script/ScriptManager;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/routing/Routes$Builder;->patternScript:Lorg/apache/logging/log4j/core/script/AbstractScript;

    invoke-virtual {v0, v2}, Lorg/apache/logging/log4j/core/script/ScriptManager;->addScript(Lorg/apache/logging/log4j/core/script/AbstractScript;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 82
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/Routes$Builder;->patternScript:Lorg/apache/logging/log4j/core/script/AbstractScript;

    instance-of v0, v0, Lorg/apache/logging/log4j/core/script/ScriptRef;

    if-nez v0, :cond_6

    .line 83
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/routing/Routes$Builder;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getScriptManager()Lorg/apache/logging/log4j/core/script/ScriptManager;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/routing/Routes$Builder;->patternScript:Lorg/apache/logging/log4j/core/script/AbstractScript;

    invoke-virtual {v0, v2}, Lorg/apache/logging/log4j/core/script/ScriptManager;->addScript(Lorg/apache/logging/log4j/core/script/AbstractScript;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 84
    return-object v1

    .line 90
    :cond_6
    :goto_0
    new-instance v0, Lorg/apache/logging/log4j/core/appender/routing/Routes;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/routing/Routes$Builder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    iget-object v4, p0, Lorg/apache/logging/log4j/core/appender/routing/Routes$Builder;->patternScript:Lorg/apache/logging/log4j/core/script/AbstractScript;

    iget-object v5, p0, Lorg/apache/logging/log4j/core/appender/routing/Routes$Builder;->pattern:Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/logging/log4j/core/appender/routing/Routes$Builder;->routes:[Lorg/apache/logging/log4j/core/appender/routing/Route;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/apache/logging/log4j/core/appender/routing/Routes;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/script/AbstractScript;Ljava/lang/String;[Lorg/apache/logging/log4j/core/appender/routing/Route;Lorg/apache/logging/log4j/core/appender/routing/Routes$1;)V

    return-object v0

    .line 67
    :cond_7
    :goto_1
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/routing/Routes;->access$000()Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    const-string v2, "No Routes configured."

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 68
    return-object v1
.end method

.method public getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/Routes$Builder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/Routes$Builder;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getPatternScript()Lorg/apache/logging/log4j/core/script/AbstractScript;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/Routes$Builder;->patternScript:Lorg/apache/logging/log4j/core/script/AbstractScript;

    return-object v0
.end method

.method public getRoutes()[Lorg/apache/logging/log4j/core/appender/routing/Route;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/Routes$Builder;->routes:[Lorg/apache/logging/log4j/core/appender/routing/Route;

    return-object v0
.end method

.method public withConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/routing/Routes$Builder;
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

    .line 110
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/routing/Routes$Builder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 111
    return-object p0
.end method

.method public withPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/routing/Routes$Builder;
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pattern"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/routing/Routes$Builder;->pattern:Ljava/lang/String;

    .line 116
    return-object p0
.end method

.method public withPatternScript(Lorg/apache/logging/log4j/core/script/AbstractScript;)Lorg/apache/logging/log4j/core/appender/routing/Routes$Builder;
    .locals 0
    .param p1, "patternScript"    # Lorg/apache/logging/log4j/core/script/AbstractScript;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "patternScript"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/routing/Routes$Builder;->patternScript:Lorg/apache/logging/log4j/core/script/AbstractScript;

    .line 121
    return-object p0
.end method

.method public withRoutes([Lorg/apache/logging/log4j/core/appender/routing/Route;)Lorg/apache/logging/log4j/core/appender/routing/Routes$Builder;
    .locals 0
    .param p1, "routes"    # [Lorg/apache/logging/log4j/core/appender/routing/Route;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "routes"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/routing/Routes$Builder;->routes:[Lorg/apache/logging/log4j/core/appender/routing/Route;

    .line 126
    return-object p0
.end method
