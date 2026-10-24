.class Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;
.super Ljava/lang/Object;
.source "DefaultComponentBuilder.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder<",
        "TT;>;CB::",
        "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
        "+",
        "Lorg/apache/logging/log4j/core/config/Configuration;",
        ">;>",
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder<",
        "TT;>;"
    }
.end annotation


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

.field private final builder:Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCB;"
        }
    .end annotation
.end field

.field private final components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/builder/api/Component;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final type:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;Ljava/lang/String;)V
    .locals 1
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "builder",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCB;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 47
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder<TT;TCB;>;"
    .local p1, "builder":Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;, "TCB;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, v0}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "builder",
            "name",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCB;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder<TT;TCB;>;"
    .local p1, "builder":Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;, "TCB;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "builder",
            "name",
            "type",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCB;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 55
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder<TT;TCB;>;"
    .local p1, "builder":Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;, "TCB;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;->attributes:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;->components:Ljava/util/List;

    .line 56
    iput-object p3, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;->type:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;->builder:Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    .line 58
    iput-object p2, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;->name:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;->value:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;I)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder<TT;TCB;>;"
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/Enum;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Enum<",
            "*>;)TT;"
        }
    .end annotation

    .line 69
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder<TT;TCB;>;"
    .local p2, "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 85
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder<TT;TCB;>;"
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 91
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder<TT;TCB;>;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addAttribute(Ljava/lang/String;Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "level"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/Level;",
            ")TT;"
        }
    .end annotation

    .line 80
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder<TT;TCB;>;"
    invoke-virtual {p2}, Lorg/apache/logging/log4j/Level;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addAttribute(Ljava/lang/String;Z)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .line 64
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder<TT;TCB;>;"
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addComponent(Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder<",
            "*>;)TT;"
        }
    .end annotation

    .line 97
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder<TT;TCB;>;"
    .local p1, "builder":Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;, "Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder<*>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;->components:Ljava/util/List;

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;->build()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-object p0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 36
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder<TT;TCB;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;->build()Lorg/apache/logging/log4j/core/config/builder/api/Component;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/config/builder/api/Component;
    .locals 4

    .line 103
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder<TT;TCB;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/api/Component;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;->type:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;->name:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;->value:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/logging/log4j/core/config/builder/api/Component;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .local v0, "component":Lorg/apache/logging/log4j/core/config/builder/api/Component;
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/builder/api/Component;->getAttributes()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;->attributes:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 105
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/builder/api/Component;->getComponents()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;->components:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 106
    return-object v0
.end method

.method public getBuilder()Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCB;"
        }
    .end annotation

    .line 111
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder<TT;TCB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;->builder:Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 116
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder<TT;TCB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected put(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 121
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder<TT;TCB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-object p0
.end method
