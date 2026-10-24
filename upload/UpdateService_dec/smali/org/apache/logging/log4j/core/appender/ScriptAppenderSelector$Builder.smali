.class public final Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector$Builder;
.super Ljava/lang/Object;
.source "ScriptAppenderSelector.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/Appender;",
        ">;"
    }
.end annotation


# instance fields
.field private appenderSet:Lorg/apache/logging/log4j/core/appender/AppenderSet;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "AppenderSet"
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;
    .end annotation
.end field

.field private configuration:Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginConfiguration;
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;
    .end annotation
.end field

.field private script:Lorg/apache/logging/log4j/core/script/AbstractScript;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "Script"
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector$Builder;->build()Lorg/apache/logging/log4j/core/Appender;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/Appender;
    .locals 9

    .line 66
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector$Builder;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 67
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector;->access$000()Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    const-string v2, "Name missing."

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 68
    return-object v1

    .line 70
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector$Builder;->script:Lorg/apache/logging/log4j/core/script/AbstractScript;

    if-nez v0, :cond_1

    .line 71
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector;->access$100()Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector$Builder;->name:Ljava/lang/String;

    const-string v3, "Script missing for ScriptAppenderSelector appender {}"

    invoke-interface {v0, v3, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    return-object v1

    .line 74
    :cond_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector$Builder;->appenderSet:Lorg/apache/logging/log4j/core/appender/AppenderSet;

    if-nez v0, :cond_2

    .line 75
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector;->access$200()Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector$Builder;->name:Ljava/lang/String;

    const-string v3, "AppenderSet missing for ScriptAppenderSelector appender {}"

    invoke-interface {v0, v3, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    return-object v1

    .line 78
    :cond_2
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector$Builder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    if-nez v0, :cond_3

    .line 79
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector;->access$300()Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector$Builder;->name:Ljava/lang/String;

    const-string v3, "Configuration missing for ScriptAppenderSelector appender {}"

    invoke-interface {v0, v3, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    return-object v1

    .line 82
    :cond_3
    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getScriptManager()Lorg/apache/logging/log4j/core/script/ScriptManager;

    move-result-object v0

    .line 83
    .local v0, "scriptManager":Lorg/apache/logging/log4j/core/script/ScriptManager;
    if-nez v0, :cond_4

    .line 84
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector;->access$400()Lorg/apache/logging/log4j/Logger;

    move-result-object v2

    const-string v3, "Script support is not enabled"

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 85
    return-object v1

    .line 87
    :cond_4
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector$Builder;->script:Lorg/apache/logging/log4j/core/script/AbstractScript;

    invoke-virtual {v0, v2}, Lorg/apache/logging/log4j/core/script/ScriptManager;->addScript(Lorg/apache/logging/log4j/core/script/AbstractScript;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 88
    return-object v1

    .line 90
    :cond_5
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector$Builder;->script:Lorg/apache/logging/log4j/core/script/AbstractScript;

    invoke-virtual {v0, v2}, Lorg/apache/logging/log4j/core/script/ScriptManager;->createBindings(Lorg/apache/logging/log4j/core/script/AbstractScript;)Ljavax/script/Bindings;

    move-result-object v2

    .line 91
    .local v2, "bindings":Ljavax/script/Bindings;
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector;->access$500()Lorg/apache/logging/log4j/Logger;

    move-result-object v3

    iget-object v5, p0, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector$Builder;->name:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector$Builder;->script:Lorg/apache/logging/log4j/core/script/AbstractScript;

    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getLanguage()Ljava/lang/String;

    move-result-object v6

    iget-object v4, p0, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector$Builder;->script:Lorg/apache/logging/log4j/core/script/AbstractScript;

    .line 92
    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v4, p0, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector$Builder;->script:Lorg/apache/logging/log4j/core/script/AbstractScript;

    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getScriptText()Ljava/lang/String;

    move-result-object v8

    .line 91
    const-string v4, "ScriptAppenderSelector \'{}\' executing {} \'{}\': {}"

    invoke-interface/range {v3 .. v8}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector$Builder;->script:Lorg/apache/logging/log4j/core/script/AbstractScript;

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lorg/apache/logging/log4j/core/script/ScriptManager;->execute(Ljava/lang/String;Ljavax/script/Bindings;)Ljava/lang/Object;

    move-result-object v3

    .line 94
    .local v3, "object":Ljava/lang/Object;
    invoke-static {v3, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "actualAppenderName":Ljava/lang/String;
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector;->access$600()Lorg/apache/logging/log4j/Logger;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector$Builder;->name:Ljava/lang/String;

    const-string v6, "ScriptAppenderSelector \'{}\' selected \'{}\'"

    invoke-interface {v4, v6, v5, v1}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    iget-object v4, p0, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector$Builder;->appenderSet:Lorg/apache/logging/log4j/core/appender/AppenderSet;

    iget-object v5, p0, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector$Builder;->name:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Lorg/apache/logging/log4j/core/appender/AppenderSet;->createAppender(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/Appender;

    move-result-object v4

    return-object v4
.end method

.method public getAppenderSet()Lorg/apache/logging/log4j/core/appender/AppenderSet;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector$Builder;->appenderSet:Lorg/apache/logging/log4j/core/appender/AppenderSet;

    return-object v0
.end method

.method public getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector$Builder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector$Builder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getScript()Lorg/apache/logging/log4j/core/script/AbstractScript;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector$Builder;->script:Lorg/apache/logging/log4j/core/script/AbstractScript;

    return-object v0
.end method

.method public withAppenderNodeSet(Lorg/apache/logging/log4j/core/appender/AppenderSet;)Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector$Builder;
    .locals 0
    .param p1, "appenderSet"    # Lorg/apache/logging/log4j/core/appender/AppenderSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "appenderSet"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector$Builder;->appenderSet:Lorg/apache/logging/log4j/core/appender/AppenderSet;

    .line 117
    return-object p0
.end method

.method public withConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector$Builder;
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

    .line 121
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector$Builder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 122
    return-object p0
.end method

.method public withName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector$Builder;->name:Ljava/lang/String;

    .line 127
    return-object p0
.end method

.method public withScript(Lorg/apache/logging/log4j/core/script/AbstractScript;)Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector$Builder;
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

    .line 131
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector$Builder;->script:Lorg/apache/logging/log4j/core/script/AbstractScript;

    .line 132
    return-object p0
.end method
