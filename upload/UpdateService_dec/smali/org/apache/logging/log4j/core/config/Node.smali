.class public Lorg/apache/logging/log4j/core/config/Node;
.super Ljava/lang/Object;
.source "Node.java"


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "Core"


# instance fields
.field private final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/Node;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private object:Ljava/lang/Object;

.field private parent:Lorg/apache/logging/log4j/core/config/Node;

.field private final type:Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<",
            "*>;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/Node;->attributes:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/Node;->children:Ljava/util/List;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/Node;->parent:Lorg/apache/logging/log4j/core/config/Node;

    .line 64
    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/Node;->name:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/Node;->type:Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/config/Node;)V
    .locals 4
    .param p1, "node"    # Lorg/apache/logging/log4j/core/config/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "node"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/Node;->attributes:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/Node;->children:Ljava/util/List;

    .line 69
    iget-object v0, p1, Lorg/apache/logging/log4j/core/config/Node;->parent:Lorg/apache/logging/log4j/core/config/Node;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/Node;->parent:Lorg/apache/logging/log4j/core/config/Node;

    .line 70
    iget-object v0, p1, Lorg/apache/logging/log4j/core/config/Node;->name:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/Node;->name:Ljava/lang/String;

    .line 71
    iget-object v0, p1, Lorg/apache/logging/log4j/core/config/Node;->type:Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/Node;->type:Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    .line 72
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/Node;->attributes:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 73
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/Node;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/Node;->value:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/config/Node;

    .line 75
    .local v1, "child":Lorg/apache/logging/log4j/core/config/Node;
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/Node;->children:Ljava/util/List;

    new-instance v3, Lorg/apache/logging/log4j/core/config/Node;

    invoke-direct {v3, v1}, Lorg/apache/logging/log4j/core/config/Node;-><init>(Lorg/apache/logging/log4j/core/config/Node;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .end local v1    # "child":Lorg/apache/logging/log4j/core/config/Node;
    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p1, Lorg/apache/logging/log4j/core/config/Node;->object:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/Node;->object:Ljava/lang/Object;

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/config/Node;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;)V
    .locals 1
    .param p1, "parent"    # Lorg/apache/logging/log4j/core/config/Node;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "parent",
            "name",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/Node;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<",
            "*>;)V"
        }
    .end annotation

    .line 56
    .local p3, "type":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/Node;->attributes:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/Node;->children:Ljava/util/List;

    .line 57
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/Node;->parent:Lorg/apache/logging/log4j/core/config/Node;

    .line 58
    iput-object p2, p0, Lorg/apache/logging/log4j/core/config/Node;->name:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lorg/apache/logging/log4j/core/config/Node;->type:Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    .line 60
    return-void
.end method


# virtual methods
.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/Node;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/Node;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/Node;->children:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/Node;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/Node;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 134
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/Node;->object:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/apache/logging/log4j/core/config/Node;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/Node;->parent:Lorg/apache/logging/log4j/core/config/Node;

    return-object v0
.end method

.method public getType()Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<",
            "*>;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/Node;->type:Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/Node;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasChildren()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/Node;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isInstanceOf(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 145
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/Node;->object:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRoot()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/Node;->parent:Lorg/apache/logging/log4j/core/config/Node;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/Node;->object:Ljava/lang/Object;

    .line 118
    return-void
.end method

.method public setParent(Lorg/apache/logging/log4j/core/config/Node;)V
    .locals 0
    .param p1, "parent"    # Lorg/apache/logging/log4j/core/config/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/Node;->parent:Lorg/apache/logging/log4j/core/config/Node;

    .line 82
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/Node;->value:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 154
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/Node;->object:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 155
    const-string v0, "null"

    return-object v0

    .line 157
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/Node;->type:Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->isObjectPrintable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/Node;->object:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/Node;->type:Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    .line 158
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getPluginClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/Node;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0
.end method
