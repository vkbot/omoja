.class public Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginAttributeVisitor;
.super Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor;
.source "PluginAttributeVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor<",
        "Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    const-class v0, Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor;-><init>(Ljava/lang/Class;)V

    .line 34
    return-void
.end method

.method private findDefaultValue(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/Object;
    .locals 2
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginAttributeVisitor;->conversionType:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginAttributeVisitor;->conversionType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_0

    goto/16 :goto_7

    .line 54
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginAttributeVisitor;->conversionType:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginAttributeVisitor;->conversionType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_1

    goto/16 :goto_6

    .line 57
    :cond_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginAttributeVisitor;->conversionType:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginAttributeVisitor;->conversionType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_2

    goto/16 :goto_5

    .line 60
    :cond_2
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginAttributeVisitor;->conversionType:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginAttributeVisitor;->conversionType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_3

    goto/16 :goto_4

    .line 63
    :cond_3
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginAttributeVisitor;->conversionType:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginAttributeVisitor;->conversionType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_4

    goto :goto_3

    .line 66
    :cond_4
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginAttributeVisitor;->conversionType:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginAttributeVisitor;->conversionType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Byte;

    if-ne v0, v1, :cond_5

    goto :goto_2

    .line 69
    :cond_5
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginAttributeVisitor;->conversionType:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginAttributeVisitor;->conversionType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Character;

    if-ne v0, v1, :cond_6

    goto :goto_1

    .line 72
    :cond_6
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginAttributeVisitor;->conversionType:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginAttributeVisitor;->conversionType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Short;

    if-ne v0, v1, :cond_7

    goto :goto_0

    .line 75
    :cond_7
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginAttributeVisitor;->conversionType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Class;

    if-ne v0, v1, :cond_8

    .line 76
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginAttributeVisitor;->annotation:Ljava/lang/annotation/Annotation;

    check-cast v0, Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;->defaultClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 78
    :cond_8
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginAttributeVisitor;->substitutor:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginAttributeVisitor;->annotation:Ljava/lang/annotation/Annotation;

    check-cast v1, Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;->defaultString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replace(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 73
    :cond_9
    :goto_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginAttributeVisitor;->annotation:Ljava/lang/annotation/Annotation;

    check-cast v0, Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;->defaultShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 70
    :cond_a
    :goto_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginAttributeVisitor;->annotation:Ljava/lang/annotation/Annotation;

    check-cast v0, Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;->defaultChar()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    .line 67
    :cond_b
    :goto_2
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginAttributeVisitor;->annotation:Ljava/lang/annotation/Annotation;

    check-cast v0, Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;->defaultByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 64
    :cond_c
    :goto_3
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginAttributeVisitor;->annotation:Ljava/lang/annotation/Annotation;

    check-cast v0, Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;->defaultDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 61
    :cond_d
    :goto_4
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginAttributeVisitor;->annotation:Ljava/lang/annotation/Annotation;

    check-cast v0, Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;->defaultFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 58
    :cond_e
    :goto_5
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginAttributeVisitor;->annotation:Ljava/lang/annotation/Annotation;

    check-cast v0, Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;->defaultBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 55
    :cond_f
    :goto_6
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginAttributeVisitor;->annotation:Ljava/lang/annotation/Annotation;

    check-cast v0, Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;->defaultLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 52
    :cond_10
    :goto_7
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginAttributeVisitor;->annotation:Ljava/lang/annotation/Annotation;

    check-cast v0, Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;->defaultInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
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

    .line 39
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginAttributeVisitor;->annotation:Ljava/lang/annotation/Annotation;

    check-cast v0, Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;->value()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v1

    .line 41
    .local v1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginAttributeVisitor;->aliases:[Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginAttributeVisitor;->removeAttributeValue(Ljava/util/Map;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "rawValue":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginAttributeVisitor;->substitutor:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    invoke-virtual {v3, p3, v2}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replace(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, "replacedValue":Ljava/lang/String;
    invoke-direct {p0, p3}, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginAttributeVisitor;->findDefaultValue(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/Object;

    move-result-object v4

    .line 44
    .local v4, "defaultValue":Ljava/lang/Object;
    invoke-virtual {p0, v3, v4}, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginAttributeVisitor;->convert(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 45
    .local v5, "value":Ljava/lang/Object;
    iget-object v6, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginAttributeVisitor;->annotation:Ljava/lang/annotation/Annotation;

    check-cast v6, Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;

    invoke-interface {v6}, Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;->sensitive()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "*****"

    goto :goto_0

    :cond_0
    move-object v6, v5

    .line 46
    .local v6, "debugValue":Ljava/lang/Object;
    :goto_0
    invoke-static {p4, v0, v6}, Lorg/apache/logging/log4j/util/StringBuilders;->appendKeyDqValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    return-object v5
.end method
