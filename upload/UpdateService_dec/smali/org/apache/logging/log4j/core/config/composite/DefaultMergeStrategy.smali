.class public Lorg/apache/logging/log4j/core/config/composite/DefaultMergeStrategy;
.super Ljava/lang/Object;
.source "DefaultMergeStrategy.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/config/composite/MergeStrategy;


# static fields
.field private static final APPENDERS:Ljava/lang/String; = "appenders"

.field private static final FILTERS:Ljava/lang/String; = "filters"

.field private static final LOGGERS:Ljava/lang/String; = "loggers"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final PROPERTIES:Ljava/lang/String; = "properties"

.field private static final REF:Ljava/lang/String; = "ref"

.field private static final SCRIPTS:Ljava/lang/String; = "scripts"

.field private static final STATUS:Ljava/lang/String; = "status"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getLoggerNode(Lorg/apache/logging/log4j/core/config/Node;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/Node;
    .locals 4
    .param p1, "parentNode"    # Lorg/apache/logging/log4j/core/config/Node;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "parentNode",
            "name"
        }
    .end annotation

    .line 241
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/config/Node;

    .line 242
    .local v1, "node":Lorg/apache/logging/log4j/core/config/Node;
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v2

    const-string v3, "name"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 243
    .local v2, "nodeName":Ljava/lang/String;
    if-nez p2, :cond_0

    if-nez v2, :cond_0

    .line 244
    return-object v1

    .line 246
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 247
    return-object v1

    .line 249
    .end local v1    # "node":Lorg/apache/logging/log4j/core/config/Node;
    .end local v2    # "nodeName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 250
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private isFilterNode(Lorg/apache/logging/log4j/core/config/Node;)Z
    .locals 2
    .param p1, "node"    # Lorg/apache/logging/log4j/core/config/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "node"
        }
    .end annotation

    .line 275
    const-class v0, Lorg/apache/logging/log4j/core/Filter;

    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/Node;->getType()Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getPluginClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private isSameName(Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/config/Node;)Z
    .locals 4
    .param p1, "node1"    # Lorg/apache/logging/log4j/core/config/Node;
    .param p2, "node2"    # Lorg/apache/logging/log4j/core/config/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "node1",
            "node2"
        }
    .end annotation

    .line 279
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v0

    const-string v1, "name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 280
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isSameReference(Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/config/Node;)Z
    .locals 4
    .param p1, "node1"    # Lorg/apache/logging/log4j/core/config/Node;
    .param p2, "node2"    # Lorg/apache/logging/log4j/core/config/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "node1",
            "node2"
        }
    .end annotation

    .line 284
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ref"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 285
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private updateFilterNode(Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;)V
    .locals 5
    .param p1, "target"    # Lorg/apache/logging/log4j/core/config/Node;
    .param p2, "targetChildNode"    # Lorg/apache/logging/log4j/core/config/Node;
    .param p3, "sourceChildNode"    # Lorg/apache/logging/log4j/core/config/Node;
    .param p4, "pluginManager"    # Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "target",
            "targetChildNode",
            "sourceChildNode",
            "pluginManager"
        }
    .end annotation

    .line 255
    const-class v0, Lorg/apache/logging/log4j/core/filter/CompositeFilter;

    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/Node;->getType()Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getPluginClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    new-instance v0, Lorg/apache/logging/log4j/core/config/Node;

    invoke-virtual {p3}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lorg/apache/logging/log4j/core/config/Node;->getType()Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    move-result-object v2

    invoke-direct {v0, p2, v1, v2}, Lorg/apache/logging/log4j/core/config/Node;-><init>(Lorg/apache/logging/log4j/core/config/Node;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;)V

    .line 257
    .local v0, "node":Lorg/apache/logging/log4j/core/config/Node;
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p3}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 258
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p3}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 259
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    .end local v0    # "node":Lorg/apache/logging/log4j/core/config/Node;
    goto :goto_0

    .line 261
    :cond_0
    const-string v0, "filters"

    invoke-virtual {p4, v0}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->getPluginType(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    move-result-object v1

    .line 262
    .local v1, "pluginType":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;
    new-instance v2, Lorg/apache/logging/log4j/core/config/Node;

    invoke-direct {v2, p2, v0, v1}, Lorg/apache/logging/log4j/core/config/Node;-><init>(Lorg/apache/logging/log4j/core/config/Node;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;)V

    move-object v0, v2

    .line 263
    .local v0, "filtersNode":Lorg/apache/logging/log4j/core/config/Node;
    new-instance v2, Lorg/apache/logging/log4j/core/config/Node;

    invoke-virtual {p3}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lorg/apache/logging/log4j/core/config/Node;->getType()Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/logging/log4j/core/config/Node;-><init>(Lorg/apache/logging/log4j/core/config/Node;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;)V

    .line 264
    .local v2, "node":Lorg/apache/logging/log4j/core/config/Node;
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p3}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 265
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v3

    .line 266
    .local v3, "children":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Node;>;"
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v4

    .line 269
    .local v4, "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Node;>;"
    invoke-interface {v4, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 270
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    .end local v0    # "filtersNode":Lorg/apache/logging/log4j/core/config/Node;
    .end local v1    # "pluginType":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;
    .end local v2    # "node":Lorg/apache/logging/log4j/core/config/Node;
    .end local v3    # "children":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Node;>;"
    .end local v4    # "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Node;>;"
    :goto_0
    return-void
.end method


# virtual methods
.method public mergConfigurations(Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;)V
    .locals 21
    .param p1, "target"    # Lorg/apache/logging/log4j/core/config/Node;
    .param p2, "source"    # Lorg/apache/logging/log4j/core/config/Node;
    .param p3, "pluginManager"    # Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "target",
            "source",
            "pluginManager"
        }
    .end annotation

    .line 128
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual/range {p2 .. p2}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/core/config/Node;

    .line 129
    .local v3, "sourceChildNode":Lorg/apache/logging/log4j/core/config/Node;
    invoke-direct {v0, v3}, Lorg/apache/logging/log4j/core/config/composite/DefaultMergeStrategy;->isFilterNode(Lorg/apache/logging/log4j/core/config/Node;)Z

    move-result v4

    .line 130
    .local v4, "isFilter":Z
    const/4 v5, 0x0

    .line 131
    .local v5, "isMerged":Z
    invoke-virtual/range {p1 .. p1}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_16

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/logging/log4j/core/config/Node;

    .line 132
    .local v7, "targetChildNode":Lorg/apache/logging/log4j/core/config/Node;
    if-eqz v4, :cond_1

    .line 133
    invoke-direct {v0, v7}, Lorg/apache/logging/log4j/core/config/composite/DefaultMergeStrategy;->isFilterNode(Lorg/apache/logging/log4j/core/config/Node;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 134
    move-object/from16 v9, p1

    invoke-direct {v0, v9, v7, v3, v1}, Lorg/apache/logging/log4j/core/config/composite/DefaultMergeStrategy;->updateFilterNode(Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;)V

    .line 135
    const/4 v5, 0x1

    .line 136
    move-object/from16 v16, v2

    move/from16 v20, v4

    goto/16 :goto_14

    .line 133
    :cond_0
    move-object/from16 v9, p1

    goto :goto_1

    .line 141
    :cond_1
    move-object/from16 v9, p1

    invoke-virtual {v7}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 142
    goto :goto_1

    .line 145
    :cond_2
    invoke-virtual {v7}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    sparse-switch v12, :sswitch_data_0

    :cond_3
    goto :goto_2

    :sswitch_0
    const-string v8, "appenders"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v14

    goto :goto_3

    :sswitch_1
    const-string v8, "scripts"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v15

    goto :goto_3

    :sswitch_2
    const-string v8, "loggers"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v13

    goto :goto_3

    :sswitch_3
    const-string v12, "properties"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_3

    :goto_2
    move v8, v11

    :goto_3
    const-string v10, "name"

    if-eqz v8, :cond_12

    if-eq v8, v15, :cond_12

    if-eq v8, v14, :cond_12

    if-eq v8, v13, :cond_4

    .line 223
    invoke-virtual {v7}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 224
    const/4 v5, 0x1

    move-object/from16 v16, v2

    move/from16 v20, v4

    goto/16 :goto_13

    .line 162
    :cond_4
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 163
    .local v8, "targetLoggers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Node;>;"
    invoke-virtual {v7}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/logging/log4j/core/config/Node;

    .line 164
    .local v12, "node":Lorg/apache/logging/log4j/core/config/Node;
    invoke-virtual {v12}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .end local v12    # "node":Lorg/apache/logging/log4j/core/config/Node;
    goto :goto_4

    .line 166
    :cond_5
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/logging/log4j/core/config/Node;

    .line 167
    .restart local v12    # "node":Lorg/apache/logging/log4j/core/config/Node;
    invoke-virtual {v12}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {v0, v7, v13}, Lorg/apache/logging/log4j/core/config/composite/DefaultMergeStrategy;->getLoggerNode(Lorg/apache/logging/log4j/core/config/Node;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/Node;

    move-result-object v13

    .line 168
    .local v13, "targetNode":Lorg/apache/logging/log4j/core/config/Node;
    new-instance v14, Lorg/apache/logging/log4j/core/config/Node;

    invoke-virtual {v12}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v2

    invoke-virtual {v12}, Lorg/apache/logging/log4j/core/config/Node;->getType()Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    move-result-object v2

    invoke-direct {v14, v7, v15, v2}, Lorg/apache/logging/log4j/core/config/Node;-><init>(Lorg/apache/logging/log4j/core/config/Node;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;)V

    move-object v2, v14

    .line 169
    .local v2, "loggerNode":Lorg/apache/logging/log4j/core/config/Node;
    if-eqz v13, :cond_10

    .line 170
    invoke-virtual {v13}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v14

    invoke-virtual {v12}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 171
    invoke-virtual {v12}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/logging/log4j/core/config/Node;

    .line 172
    .local v15, "sourceLoggerChild":Lorg/apache/logging/log4j/core/config/Node;
    invoke-direct {v0, v15}, Lorg/apache/logging/log4j/core/config/composite/DefaultMergeStrategy;->isFilterNode(Lorg/apache/logging/log4j/core/config/Node;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 173
    const/16 v17, 0x0

    .line 174
    .local v17, "foundFilter":Z
    invoke-virtual {v13}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move/from16 v20, v4

    .end local v4    # "isFilter":Z
    .local v20, "isFilter":Z
    move-object/from16 v4, v19

    check-cast v4, Lorg/apache/logging/log4j/core/config/Node;

    .line 175
    .local v4, "targetChild":Lorg/apache/logging/log4j/core/config/Node;
    invoke-direct {v0, v4}, Lorg/apache/logging/log4j/core/config/composite/DefaultMergeStrategy;->isFilterNode(Lorg/apache/logging/log4j/core/config/Node;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 176
    invoke-direct {v0, v2, v4, v15, v1}, Lorg/apache/logging/log4j/core/config/composite/DefaultMergeStrategy;->updateFilterNode(Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;)V

    .line 178
    const/16 v17, 0x1

    .line 179
    goto :goto_8

    .line 181
    .end local v4    # "targetChild":Lorg/apache/logging/log4j/core/config/Node;
    :cond_6
    move/from16 v4, v20

    goto :goto_7

    .line 174
    .end local v20    # "isFilter":Z
    .local v4, "isFilter":Z
    :cond_7
    move/from16 v20, v4

    .line 182
    .end local v4    # "isFilter":Z
    .restart local v20    # "isFilter":Z
    :goto_8
    if-nez v17, :cond_8

    .line 183
    new-instance v4, Lorg/apache/logging/log4j/core/config/Node;

    invoke-virtual {v15}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v1

    .line 184
    move/from16 v18, v5

    .end local v5    # "isMerged":Z
    .local v18, "isMerged":Z
    invoke-virtual {v15}, Lorg/apache/logging/log4j/core/config/Node;->getType()Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    move-result-object v5

    invoke-direct {v4, v2, v1, v5}, Lorg/apache/logging/log4j/core/config/Node;-><init>(Lorg/apache/logging/log4j/core/config/Node;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;)V

    move-object v1, v4

    .line 185
    .local v1, "childNode":Lorg/apache/logging/log4j/core/config/Node;
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v15}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 186
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v15}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 187
    invoke-virtual {v13}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 182
    .end local v1    # "childNode":Lorg/apache/logging/log4j/core/config/Node;
    .end local v18    # "isMerged":Z
    .restart local v5    # "isMerged":Z
    :cond_8
    move/from16 v18, v5

    .line 189
    .end local v5    # "isMerged":Z
    .end local v17    # "foundFilter":Z
    .restart local v18    # "isMerged":Z
    :goto_9
    goto/16 :goto_e

    .line 190
    .end local v18    # "isMerged":Z
    .end local v20    # "isFilter":Z
    .restart local v4    # "isFilter":Z
    .restart local v5    # "isMerged":Z
    :cond_9
    move/from16 v20, v4

    move/from16 v18, v5

    .end local v4    # "isFilter":Z
    .end local v5    # "isMerged":Z
    .restart local v18    # "isMerged":Z
    .restart local v20    # "isFilter":Z
    new-instance v1, Lorg/apache/logging/log4j/core/config/Node;

    invoke-virtual {v15}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v4

    .line 191
    invoke-virtual {v15}, Lorg/apache/logging/log4j/core/config/Node;->getType()Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    move-result-object v5

    invoke-direct {v1, v2, v4, v5}, Lorg/apache/logging/log4j/core/config/Node;-><init>(Lorg/apache/logging/log4j/core/config/Node;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;)V

    .line 192
    .restart local v1    # "childNode":Lorg/apache/logging/log4j/core/config/Node;
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v15}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 193
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v15}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 194
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AppenderRef"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 195
    invoke-virtual {v13}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/logging/log4j/core/config/Node;

    .line 196
    .local v5, "targetChild":Lorg/apache/logging/log4j/core/config/Node;
    invoke-direct {v0, v5, v1}, Lorg/apache/logging/log4j/core/config/composite/DefaultMergeStrategy;->isSameReference(Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/config/Node;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 197
    invoke-virtual {v13}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 198
    goto :goto_b

    .line 200
    .end local v5    # "targetChild":Lorg/apache/logging/log4j/core/config/Node;
    :cond_a
    goto :goto_a

    :cond_b
    :goto_b
    goto :goto_d

    .line 202
    :cond_c
    invoke-virtual {v13}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/logging/log4j/core/config/Node;

    .line 203
    .restart local v5    # "targetChild":Lorg/apache/logging/log4j/core/config/Node;
    invoke-direct {v0, v5, v1}, Lorg/apache/logging/log4j/core/config/composite/DefaultMergeStrategy;->isSameName(Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/config/Node;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 204
    invoke-virtual {v13}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 205
    goto :goto_d

    .line 207
    .end local v5    # "targetChild":Lorg/apache/logging/log4j/core/config/Node;
    :cond_d
    goto :goto_c

    .line 210
    :cond_e
    :goto_d
    invoke-virtual {v13}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    .end local v1    # "childNode":Lorg/apache/logging/log4j/core/config/Node;
    .end local v15    # "sourceLoggerChild":Lorg/apache/logging/log4j/core/config/Node;
    :goto_e
    move-object/from16 v1, p3

    move/from16 v5, v18

    move/from16 v4, v20

    goto/16 :goto_6

    .end local v18    # "isMerged":Z
    .end local v20    # "isFilter":Z
    .restart local v4    # "isFilter":Z
    .local v5, "isMerged":Z
    :cond_f
    move/from16 v20, v4

    move/from16 v18, v5

    .end local v4    # "isFilter":Z
    .end local v5    # "isMerged":Z
    .restart local v18    # "isMerged":Z
    .restart local v20    # "isFilter":Z
    goto :goto_f

    .line 214
    .end local v18    # "isMerged":Z
    .end local v20    # "isFilter":Z
    .restart local v4    # "isFilter":Z
    .restart local v5    # "isMerged":Z
    :cond_10
    move/from16 v20, v4

    move/from16 v18, v5

    .end local v4    # "isFilter":Z
    .end local v5    # "isMerged":Z
    .restart local v18    # "isMerged":Z
    .restart local v20    # "isFilter":Z
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v12}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 215
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v12}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 216
    invoke-virtual {v7}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    .end local v2    # "loggerNode":Lorg/apache/logging/log4j/core/config/Node;
    .end local v12    # "node":Lorg/apache/logging/log4j/core/config/Node;
    .end local v13    # "targetNode":Lorg/apache/logging/log4j/core/config/Node;
    :goto_f
    move-object/from16 v1, p3

    move-object/from16 v2, v16

    move/from16 v5, v18

    move/from16 v4, v20

    goto/16 :goto_5

    .line 219
    .end local v18    # "isMerged":Z
    .end local v20    # "isFilter":Z
    .restart local v4    # "isFilter":Z
    .restart local v5    # "isMerged":Z
    :cond_11
    move-object/from16 v16, v2

    move/from16 v20, v4

    move/from16 v18, v5

    .end local v4    # "isFilter":Z
    .end local v5    # "isMerged":Z
    .restart local v18    # "isMerged":Z
    .restart local v20    # "isFilter":Z
    const/4 v1, 0x1

    .line 220
    .end local v18    # "isMerged":Z
    .local v1, "isMerged":Z
    move v5, v1

    goto :goto_13

    .line 145
    .end local v1    # "isMerged":Z
    .end local v8    # "targetLoggers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Node;>;"
    .end local v20    # "isFilter":Z
    .restart local v4    # "isFilter":Z
    .restart local v5    # "isMerged":Z
    :cond_12
    move-object/from16 v16, v2

    move/from16 v20, v4

    move/from16 v18, v5

    .line 149
    .end local v4    # "isFilter":Z
    .end local v5    # "isMerged":Z
    .restart local v18    # "isMerged":Z
    .restart local v20    # "isFilter":Z
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/config/Node;

    .line 150
    .local v2, "node":Lorg/apache/logging/log4j/core/config/Node;
    invoke-virtual {v7}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/logging/log4j/core/config/Node;

    .line 151
    .local v5, "targetNode":Lorg/apache/logging/log4j/core/config/Node;
    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v8, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 152
    invoke-virtual {v7}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 153
    goto :goto_12

    .line 155
    .end local v5    # "targetNode":Lorg/apache/logging/log4j/core/config/Node;
    :cond_13
    goto :goto_11

    .line 156
    :cond_14
    :goto_12
    invoke-virtual {v7}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    .end local v2    # "node":Lorg/apache/logging/log4j/core/config/Node;
    goto :goto_10

    .line 158
    :cond_15
    const/4 v1, 0x1

    .line 159
    .end local v18    # "isMerged":Z
    .restart local v1    # "isMerged":Z
    move v5, v1

    .line 229
    .end local v1    # "isMerged":Z
    .end local v7    # "targetChildNode":Lorg/apache/logging/log4j/core/config/Node;
    .local v5, "isMerged":Z
    :goto_13
    move-object/from16 v1, p3

    move-object/from16 v2, v16

    move/from16 v4, v20

    goto/16 :goto_1

    .line 131
    .end local v20    # "isFilter":Z
    .restart local v4    # "isFilter":Z
    :cond_16
    move-object/from16 v9, p1

    move-object/from16 v16, v2

    move/from16 v20, v4

    move/from16 v18, v5

    .line 230
    .end local v4    # "isFilter":Z
    .restart local v20    # "isFilter":Z
    :goto_14
    if-nez v5, :cond_18

    .line 231
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Properties"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 232
    invoke-virtual/range {p1 .. p1}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_15

    .line 234
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    .end local v3    # "sourceChildNode":Lorg/apache/logging/log4j/core/config/Node;
    .end local v5    # "isMerged":Z
    .end local v20    # "isFilter":Z
    :cond_18
    :goto_15
    move-object/from16 v1, p3

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 238
    :cond_19
    move-object/from16 v9, p1

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x373272cd -> :sswitch_3
        0x1466bce3 -> :sswitch_2
        0x72d44908 -> :sswitch_1
        0x77c22c0c -> :sswitch_0
    .end sparse-switch
.end method

.method public mergeRootProperties(Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/config/AbstractConfiguration;)V
    .locals 9
    .param p1, "rootNode"    # Lorg/apache/logging/log4j/core/config/Node;
    .param p2, "configuration"    # Lorg/apache/logging/log4j/core/config/AbstractConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "rootNode",
            "configuration"
        }
    .end annotation

    .line 74
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->getRootNode()Lorg/apache/logging/log4j/core/config/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 75
    .local v1, "attribute":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 76
    .local v2, "isFound":Z
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 77
    .local v4, "targetAttribute":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 78
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "status"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 79
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/logging/log4j/Level;->getLevel(Ljava/lang/String;)Lorg/apache/logging/log4j/Level;

    move-result-object v5

    .line 80
    .local v5, "targetLevel":Lorg/apache/logging/log4j/Level;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/logging/log4j/Level;->getLevel(Ljava/lang/String;)Lorg/apache/logging/log4j/Level;

    move-result-object v6

    .line 81
    .local v6, "sourceLevel":Lorg/apache/logging/log4j/Level;
    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    .line 82
    invoke-virtual {v6, v5}, Lorg/apache/logging/log4j/Level;->isLessSpecificThan(Lorg/apache/logging/log4j/Level;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 83
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 86
    :cond_0
    if-eqz v6, :cond_1

    .line 87
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .end local v5    # "targetLevel":Lorg/apache/logging/log4j/Level;
    .end local v6    # "sourceLevel":Lorg/apache/logging/log4j/Level;
    :cond_1
    :goto_2
    goto :goto_4

    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "monitorInterval"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 90
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lorg/apache/logging/log4j/core/util/Integers;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 91
    .local v5, "sourceInterval":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lorg/apache/logging/log4j/core/util/Integers;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 92
    .local v6, "targetInterval":I
    if-eqz v6, :cond_3

    if-ge v5, v6, :cond_4

    .line 93
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .end local v5    # "sourceInterval":I
    .end local v6    # "targetInterval":I
    :cond_4
    goto :goto_4

    :cond_5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "packages"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 96
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 97
    .local v5, "sourcePackages":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 98
    .local v6, "targetPackages":Ljava/lang/String;
    if-eqz v5, :cond_7

    .line 99
    if-eqz v6, :cond_6

    .line 100
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 103
    :cond_6
    invoke-interface {v4, v5}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .end local v5    # "sourcePackages":Ljava/lang/String;
    .end local v6    # "targetPackages":Ljava/lang/String;
    :cond_7
    :goto_3
    goto :goto_4

    .line 108
    :cond_8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :goto_4
    const/4 v2, 0x1

    .line 112
    .end local v4    # "targetAttribute":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    goto/16 :goto_1

    .line 113
    :cond_a
    if-nez v2, :cond_b

    .line 114
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .end local v1    # "attribute":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "isFound":Z
    :cond_b
    goto/16 :goto_0

    .line 117
    :cond_c
    return-void
.end method
