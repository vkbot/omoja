.class public Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginBuilderAttributeVisitor;
.super Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor;
.source "PluginBuilderAttributeVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor<",
        "Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    const-class v0, Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor;-><init>(Ljava/lang/Class;)V

    .line 39
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

    .line 44
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginBuilderAttributeVisitor;->annotation:Ljava/lang/annotation/Annotation;

    check-cast v0, Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;->value()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "overridden":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginBuilderAttributeVisitor;->member:Ljava/lang/reflect/Member;

    invoke-interface {v1}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 46
    .local v1, "name":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v2

    .line 47
    .local v2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginBuilderAttributeVisitor;->aliases:[Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginBuilderAttributeVisitor;->removeAttributeValue(Ljava/util/Map;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "rawValue":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginBuilderAttributeVisitor;->substitutor:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    invoke-virtual {v4, p3, v3}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replace(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, "replacedValue":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginBuilderAttributeVisitor;->convert(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 50
    .local v5, "value":Ljava/lang/Object;
    iget-object v6, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginBuilderAttributeVisitor;->annotation:Ljava/lang/annotation/Annotation;

    check-cast v6, Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;

    invoke-interface {v6}, Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;->sensitive()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "*****"

    goto :goto_1

    :cond_1
    move-object v6, v5

    .line 51
    .local v6, "debugValue":Ljava/lang/Object;
    :goto_1
    invoke-static {p4, v1, v6}, Lorg/apache/logging/log4j/util/StringBuilders;->appendKeyDqValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    return-object v5
.end method
