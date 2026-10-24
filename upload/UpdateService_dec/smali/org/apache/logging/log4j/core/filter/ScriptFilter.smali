.class public final Lorg/apache/logging/log4j/core/filter/ScriptFilter;
.super Lorg/apache/logging/log4j/core/filter/AbstractFilter;
.source "ScriptFilter.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "filter"
    name = "ScriptFilter"
    printObject = true
.end annotation


# static fields
.field private static logger:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final configuration:Lorg/apache/logging/log4j/core/config/Configuration;

.field private final script:Lorg/apache/logging/log4j/core/script/AbstractScript;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/filter/ScriptFilter;->logger:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method private constructor <init>(Lorg/apache/logging/log4j/core/script/AbstractScript;Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;)V
    .locals 0
    .param p1, "script"    # Lorg/apache/logging/log4j/core/script/AbstractScript;
    .param p2, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p3, "onMatch"    # Lorg/apache/logging/log4j/core/Filter$Result;
    .param p4, "onMismatch"    # Lorg/apache/logging/log4j/core/Filter$Result;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "script",
            "configuration",
            "onMatch",
            "onMismatch"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p3, p4}, Lorg/apache/logging/log4j/core/filter/AbstractFilter;-><init>(Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;)V

    .line 54
    iput-object p1, p0, Lorg/apache/logging/log4j/core/filter/ScriptFilter;->script:Lorg/apache/logging/log4j/core/script/AbstractScript;

    .line 55
    iput-object p2, p0, Lorg/apache/logging/log4j/core/filter/ScriptFilter;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 56
    return-void
.end method

.method public static createFilter(Lorg/apache/logging/log4j/core/script/AbstractScript;Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/filter/ScriptFilter;
    .locals 4
    .param p0, "script"    # Lorg/apache/logging/log4j/core/script/AbstractScript;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "Script"
        .end annotation
    .end param
    .param p1, "match"    # Lorg/apache/logging/log4j/core/Filter$Result;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "onMatch"
        .end annotation
    .end param
    .param p2, "mismatch"    # Lorg/apache/logging/log4j/core/Filter$Result;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "onMismatch"
        .end annotation
    .end param
    .param p3, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginConfiguration;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "script",
            "match",
            "mismatch",
            "configuration"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 138
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 139
    sget-object v1, Lorg/apache/logging/log4j/core/filter/ScriptFilter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "A Script, ScriptFile or ScriptRef element must be provided for this ScriptFilter"

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 140
    return-object v0

    .line 142
    :cond_0
    invoke-interface {p3}, Lorg/apache/logging/log4j/core/config/Configuration;->getScriptManager()Lorg/apache/logging/log4j/core/script/ScriptManager;

    move-result-object v1

    if-nez v1, :cond_1

    .line 143
    sget-object v1, Lorg/apache/logging/log4j/core/filter/ScriptFilter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Script support is not enabled"

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 144
    return-object v0

    .line 146
    :cond_1
    instance-of v1, p0, Lorg/apache/logging/log4j/core/script/ScriptRef;

    if-eqz v1, :cond_2

    .line 147
    invoke-interface {p3}, Lorg/apache/logging/log4j/core/config/Configuration;->getScriptManager()Lorg/apache/logging/log4j/core/script/ScriptManager;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/core/script/ScriptManager;->getScript(Ljava/lang/String;)Lorg/apache/logging/log4j/core/script/AbstractScript;

    move-result-object v1

    if-nez v1, :cond_3

    .line 148
    sget-object v1, Lorg/apache/logging/log4j/core/filter/ScriptFilter;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "No script with name {} has been declared."

    invoke-interface {v1, v3, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    return-object v0

    .line 152
    :cond_2
    invoke-interface {p3}, Lorg/apache/logging/log4j/core/config/Configuration;->getScriptManager()Lorg/apache/logging/log4j/core/script/ScriptManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/logging/log4j/core/script/ScriptManager;->addScript(Lorg/apache/logging/log4j/core/script/AbstractScript;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 153
    return-object v0

    .line 157
    :cond_3
    new-instance v0, Lorg/apache/logging/log4j/core/filter/ScriptFilter;

    invoke-direct {v0, p0, p3, p1, p2}, Lorg/apache/logging/log4j/core/filter/ScriptFilter;-><init>(Lorg/apache/logging/log4j/core/script/AbstractScript;Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;)V

    return-object v0
.end method


# virtual methods
.method public filter(Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/Filter$Result;
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

    .line 108
    new-instance v0, Ljavax/script/SimpleBindings;

    invoke-direct {v0}, Ljavax/script/SimpleBindings;-><init>()V

    .line 109
    .local v0, "bindings":Ljavax/script/SimpleBindings;
    const-string v1, "logEvent"

    invoke-virtual {v0, v1, p1}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/ScriptFilter;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getProperties()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/script/SimpleBindings;->putAll(Ljava/util/Map;)V

    .line 111
    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/ScriptFilter;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v1

    const-string v2, "substitutor"

    invoke-virtual {v0, v2, v1}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/ScriptFilter;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getScriptManager()Lorg/apache/logging/log4j/core/script/ScriptManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/filter/ScriptFilter;->script:Lorg/apache/logging/log4j/core/script/AbstractScript;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/apache/logging/log4j/core/script/ScriptManager;->execute(Ljava/lang/String;Ljavax/script/Bindings;)Ljava/lang/Object;

    move-result-object v1

    .line 113
    .local v1, "object":Ljava/lang/Object;
    if-eqz v1, :cond_1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/filter/ScriptFilter;->onMatch:Lorg/apache/logging/log4j/core/Filter$Result;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/filter/ScriptFilter;->onMismatch:Lorg/apache/logging/log4j/core/Filter$Result;

    :goto_1
    return-object v2
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 3
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/Object;
    .param p5, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "t"
        }
    .end annotation

    .line 77
    new-instance v0, Ljavax/script/SimpleBindings;

    invoke-direct {v0}, Ljavax/script/SimpleBindings;-><init>()V

    .line 78
    .local v0, "bindings":Ljavax/script/SimpleBindings;
    const-string v1, "logger"

    invoke-virtual {v0, v1, p1}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "level"

    invoke-virtual {v0, v1, p2}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "marker"

    invoke-virtual {v0, v1, p3}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    instance-of v1, p4, Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/logging/log4j/message/SimpleMessage;

    move-object v2, p4

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/logging/log4j/message/SimpleMessage;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/logging/log4j/message/ObjectMessage;

    invoke-direct {v1, p4}, Lorg/apache/logging/log4j/message/ObjectMessage;-><init>(Ljava/lang/Object;)V

    :goto_0
    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const/4 v1, 0x0

    const-string v2, "parameters"

    invoke-virtual {v0, v2, v1}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "throwable"

    invoke-virtual {v0, v1, p5}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/ScriptFilter;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getProperties()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/script/SimpleBindings;->putAll(Ljava/util/Map;)V

    .line 85
    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/ScriptFilter;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v1

    const-string v2, "substitutor"

    invoke-virtual {v0, v2, v1}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/ScriptFilter;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getScriptManager()Lorg/apache/logging/log4j/core/script/ScriptManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/filter/ScriptFilter;->script:Lorg/apache/logging/log4j/core/script/AbstractScript;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/apache/logging/log4j/core/script/ScriptManager;->execute(Ljava/lang/String;Ljavax/script/Bindings;)Ljava/lang/Object;

    move-result-object v1

    .line 87
    .local v1, "object":Ljava/lang/Object;
    if-eqz v1, :cond_2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/apache/logging/log4j/core/filter/ScriptFilter;->onMatch:Lorg/apache/logging/log4j/core/Filter$Result;

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v2, p0, Lorg/apache/logging/log4j/core/filter/ScriptFilter;->onMismatch:Lorg/apache/logging/log4j/core/Filter$Result;

    :goto_2
    return-object v2
.end method

.method public varargs filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 3
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "params"
        }
    .end annotation

    .line 61
    new-instance v0, Ljavax/script/SimpleBindings;

    invoke-direct {v0}, Ljavax/script/SimpleBindings;-><init>()V

    .line 62
    .local v0, "bindings":Ljavax/script/SimpleBindings;
    const-string v1, "logger"

    invoke-virtual {v0, v1, p1}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v1, "level"

    invoke-virtual {v0, v1, p2}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v1, "marker"

    invoke-virtual {v0, v1, p3}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v1, Lorg/apache/logging/log4j/message/SimpleMessage;

    invoke-direct {v1, p4}, Lorg/apache/logging/log4j/message/SimpleMessage;-><init>(Ljava/lang/String;)V

    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v1, "parameters"

    invoke-virtual {v0, v1, p5}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "throwable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/ScriptFilter;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getProperties()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/script/SimpleBindings;->putAll(Ljava/util/Map;)V

    .line 69
    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/ScriptFilter;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v1

    const-string v2, "substitutor"

    invoke-virtual {v0, v2, v1}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/ScriptFilter;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getScriptManager()Lorg/apache/logging/log4j/core/script/ScriptManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/filter/ScriptFilter;->script:Lorg/apache/logging/log4j/core/script/AbstractScript;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/apache/logging/log4j/core/script/ScriptManager;->execute(Ljava/lang/String;Ljavax/script/Bindings;)Ljava/lang/Object;

    move-result-object v1

    .line 71
    .local v1, "object":Ljava/lang/Object;
    if-eqz v1, :cond_1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/filter/ScriptFilter;->onMatch:Lorg/apache/logging/log4j/core/Filter$Result;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/filter/ScriptFilter;->onMismatch:Lorg/apache/logging/log4j/core/Filter$Result;

    :goto_1
    return-object v2
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 3
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Lorg/apache/logging/log4j/message/Message;
    .param p5, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "t"
        }
    .end annotation

    .line 93
    new-instance v0, Ljavax/script/SimpleBindings;

    invoke-direct {v0}, Ljavax/script/SimpleBindings;-><init>()V

    .line 94
    .local v0, "bindings":Ljavax/script/SimpleBindings;
    const-string v1, "logger"

    invoke-virtual {v0, v1, p1}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "level"

    invoke-virtual {v0, v1, p2}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "marker"

    invoke-virtual {v0, v1, p3}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "message"

    invoke-virtual {v0, v1, p4}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v1, "parameters"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "throwable"

    invoke-virtual {v0, v1, p5}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/ScriptFilter;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getProperties()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/script/SimpleBindings;->putAll(Ljava/util/Map;)V

    .line 101
    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/ScriptFilter;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v1

    const-string v2, "substitutor"

    invoke-virtual {v0, v2, v1}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/ScriptFilter;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getScriptManager()Lorg/apache/logging/log4j/core/script/ScriptManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/filter/ScriptFilter;->script:Lorg/apache/logging/log4j/core/script/AbstractScript;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/apache/logging/log4j/core/script/ScriptManager;->execute(Ljava/lang/String;Ljavax/script/Bindings;)Ljava/lang/Object;

    move-result-object v1

    .line 103
    .local v1, "object":Ljava/lang/Object;
    if-eqz v1, :cond_1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/filter/ScriptFilter;->onMatch:Lorg/apache/logging/log4j/core/Filter$Result;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/filter/ScriptFilter;->onMismatch:Lorg/apache/logging/log4j/core/Filter$Result;

    :goto_1
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/ScriptFilter;->script:Lorg/apache/logging/log4j/core/script/AbstractScript;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
