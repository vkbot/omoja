.class public Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginElementVisitor;
.super Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor;
.source "PluginElementVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor<",
        "Lorg/apache/logging/log4j/core/config/plugins/PluginElement;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    const-class v0, Lorg/apache/logging/log4j/core/config/plugins/PluginElement;

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor;-><init>(Ljava/lang/Class;)V

    .line 38
    return-void
.end method

.method private findNamedNode(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/logging/log4j/core/config/Node;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "children"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Lorg/apache/logging/log4j/core/config/Node;",
            ">;)",
            "Lorg/apache/logging/log4j/core/config/Node;"
        }
    .end annotation

    .line 99
    .local p2, "children":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/logging/log4j/core/config/Node;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/config/Node;

    .line 100
    .local v1, "child":Lorg/apache/logging/log4j/core/config/Node;
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/Node;->getType()Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    move-result-object v2

    .line 101
    .local v2, "childType":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    nop

    .line 104
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginElementVisitor;->conversionType:Ljava/lang/Class;

    .line 105
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getPluginClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 110
    .end local v1    # "child":Lorg/apache/logging/log4j/core/config/Node;
    .end local v2    # "childType":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    :cond_0
    goto :goto_0

    .line 108
    .restart local v1    # "child":Lorg/apache/logging/log4j/core/config/Node;
    .restart local v2    # "childType":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    :cond_1
    :goto_1
    return-object v1

    .line 111
    .end local v1    # "child":Lorg/apache/logging/log4j/core/config/Node;
    .end local v2    # "childType":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public visit(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)Ljava/lang/Object;
    .locals 15
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

    .line 43
    move-object v0, p0

    move-object/from16 v1, p4

    iget-object v2, v0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginElementVisitor;->annotation:Ljava/lang/annotation/Annotation;

    check-cast v2, Lorg/apache/logging/log4j/core/config/plugins/PluginElement;

    invoke-interface {v2}, Lorg/apache/logging/log4j/core/config/plugins/PluginElement;->value()Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "name":Ljava/lang/String;
    iget-object v3, v0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginElementVisitor;->conversionType:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    .line 45
    iget-object v3, v0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginElementVisitor;->conversionType:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginElementVisitor;->setConversionType(Ljava/lang/Class;)Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;

    .line 46
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v5, "used":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/logging/log4j/core/config/Node;>;"
    const-string v6, "={"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const/4 v6, 0x1

    .line 50
    .local v6, "first":Z
    invoke-virtual/range {p2 .. p2}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/16 v9, 0x7d

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/logging/log4j/core/config/Node;

    .line 51
    .local v8, "child":Lorg/apache/logging/log4j/core/config/Node;
    invoke-virtual {v8}, Lorg/apache/logging/log4j/core/config/Node;->getType()Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    move-result-object v10

    .line 52
    .local v10, "childType":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    invoke-virtual {v10}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getElementName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, v0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginElementVisitor;->conversionType:Ljava/lang/Class;

    .line 53
    invoke-virtual {v10}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getPluginClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 54
    :cond_0
    if-nez v6, :cond_1

    .line 55
    const-string v11, ", "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_1
    const/4 v6, 0x0

    .line 58
    invoke-interface {v5, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {v8}, Lorg/apache/logging/log4j/core/config/Node;->getObject()Ljava/lang/Object;

    move-result-object v11

    .line 60
    .local v11, "childObject":Ljava/lang/Object;
    if-nez v11, :cond_2

    .line 61
    sget-object v9, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginElementVisitor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {v8}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "Null object returned for {} in {}."

    invoke-interface {v9, v14, v12, v13}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->isArray()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 65
    move-object v4, v11

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual/range {p2 .. p2}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 67
    return-object v11

    .line 69
    :cond_3
    invoke-virtual {v8}, Lorg/apache/logging/log4j/core/config/Node;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .end local v8    # "child":Lorg/apache/logging/log4j/core/config/Node;
    .end local v10    # "childType":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    .end local v11    # "childObject":Ljava/lang/Object;
    :cond_4
    goto :goto_0

    .line 73
    :cond_5
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, v0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginElementVisitor;->conversionType:Ljava/lang/Class;

    const/4 v8, 0x0

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 76
    sget-object v7, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginElementVisitor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 77
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    iget-object v9, v0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginElementVisitor;->conversionType:Ljava/lang/Class;

    .line 76
    const-string v10, "Attempted to assign attribute {} to list of type {} which is incompatible with {}."

    invoke-interface {v7, v10, v2, v8, v9}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    return-object v4

    .line 80
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 82
    iget-object v4, v0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginElementVisitor;->conversionType:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    .line 83
    .local v4, "array":[Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v8, v4

    if-ge v7, v8, :cond_7

    .line 84
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v4, v7

    .line 83
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 86
    .end local v7    # "i":I
    :cond_7
    return-object v4

    .line 88
    .end local v3    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v4    # "array":[Ljava/lang/Object;
    .end local v5    # "used":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/logging/log4j/core/config/Node;>;"
    .end local v6    # "first":Z
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginElementVisitor;->findNamedNode(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/logging/log4j/core/config/Node;

    move-result-object v3

    .line 89
    .local v3, "namedNode":Lorg/apache/logging/log4j/core/config/Node;
    if-nez v3, :cond_9

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=null"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    return-object v4

    .line 93
    :cond_9
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x28

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/Node;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual/range {p2 .. p2}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/Node;->getObject()Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method
