.class public Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginValueVisitor;
.super Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor;
.source "PluginValueVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor<",
        "Lorg/apache/logging/log4j/core/config/plugins/PluginValue;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    const-class v0, Lorg/apache/logging/log4j/core/config/plugins/PluginValue;

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor;-><init>(Ljava/lang/Class;)V

    .line 33
    return-void
.end method


# virtual methods
.method public visit(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)Ljava/lang/Object;
    .locals 7
    .param p1, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "node"    # Lorg/apache/logging/log4j/core/config/Node;
    .param p3, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p4, "log"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "configuration",
            "node",
            "event",
            "log"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginValueVisitor;->annotation:Ljava/lang/annotation/Annotation;

    check-cast v0, Lorg/apache/logging/log4j/core/config/plugins/PluginValue;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/plugins/PluginValue;->value()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/Node;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "elementValue":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 41
    .local v2, "attributeValue":Ljava/lang/String;
    const/4 v3, 0x0

    .line 42
    .local v3, "rawValue":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/logging/log4j/util/Strings;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 43
    invoke-static {v2}, Lorg/apache/logging/log4j/util/Strings;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 44
    sget-object v4, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginValueVisitor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 46
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v5

    .line 44
    const-string v6, "Configuration contains {} with both attribute value ({}) AND element value ({}). Please specify only one value. Using the element value."

    invoke-interface {v4, v6, v5, v2, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    :cond_0
    move-object v3, v1

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v4, v0, v5}, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginValueVisitor;->removeAttributeValue(Ljava/util/Map;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    :goto_0
    iget-object v4, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginValueVisitor;->annotation:Ljava/lang/annotation/Annotation;

    check-cast v4, Lorg/apache/logging/log4j/core/config/plugins/PluginValue;

    invoke-interface {v4}, Lorg/apache/logging/log4j/core/config/plugins/PluginValue;->substitute()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginValueVisitor;->substitutor:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    .line 53
    invoke-virtual {v4, p3, v3}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replace(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v3

    .line 55
    .local v4, "value":Ljava/lang/String;
    :goto_1
    invoke-static {p4, v0, v4}, Lorg/apache/logging/log4j/util/StringBuilders;->appendKeyDqValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    return-object v4
.end method
