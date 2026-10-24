.class public Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter;
.super Ljava/lang/Object;
.source "ScriptArbiter.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter$Builder;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    deferChildren = true
    elementType = "Arbiter"
    name = "ScriptArbiter"
    printObject = true
.end annotation


# instance fields
.field private final configuration:Lorg/apache/logging/log4j/core/config/Configuration;

.field private final script:Lorg/apache/logging/log4j/core/script/AbstractScript;


# direct methods
.method private constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/script/AbstractScript;)V
    .locals 0
    .param p1, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "script"    # Lorg/apache/logging/log4j/core/script/AbstractScript;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "configuration",
            "script"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 46
    iput-object p2, p0, Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter;->script:Lorg/apache/logging/log4j/core/script/AbstractScript;

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/script/AbstractScript;Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "x1"    # Lorg/apache/logging/log4j/core/script/AbstractScript;
    .param p3, "x2"    # Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter$1;

    .line 39
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/script/AbstractScript;)V

    return-void
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter$Builder;
    .locals 1
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 63
    new-instance v0, Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public isCondition()Z
    .locals 3

    .line 54
    new-instance v0, Ljavax/script/SimpleBindings;

    invoke-direct {v0}, Ljavax/script/SimpleBindings;-><init>()V

    .line 55
    .local v0, "bindings":Ljavax/script/SimpleBindings;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getProperties()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/script/SimpleBindings;->putAll(Ljava/util/Map;)V

    .line 56
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v1

    const-string v2, "substitutor"

    invoke-virtual {v0, v2, v1}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getScriptManager()Lorg/apache/logging/log4j/core/script/ScriptManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/arbiters/ScriptArbiter;->script:Lorg/apache/logging/log4j/core/script/AbstractScript;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/apache/logging/log4j/core/script/ScriptManager;->execute(Ljava/lang/String;Ljavax/script/Bindings;)Ljava/lang/Object;

    move-result-object v1

    .line 58
    .local v1, "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method
