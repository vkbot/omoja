.class public Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector$ForDefaultThreadContextMap;
.super Ljava/lang/Object;
.source "ThreadContextDataInjector.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/ContextDataInjector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForDefaultThreadContextMap"
.end annotation


# instance fields
.field private final providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/util/ContextDataProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {}, Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector;->access$000()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector$ForDefaultThreadContextMap;->providers:Ljava/util/List;

    .line 103
    return-void
.end method

.method private static frozenStringMap(Ljava/util/Map;)Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "copy"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;"
        }
    .end annotation

    .line 152
    .local p0, "copy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;-><init>(Ljava/util/Map;)V

    .line 153
    .local v0, "result":Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->freeze()V

    .line 154
    return-object v0
.end method


# virtual methods
.method public injectContextData(Ljava/util/List;Lorg/apache/logging/log4j/util/StringMap;)Lorg/apache/logging/log4j/util/StringMap;
    .locals 6
    .param p2, "contextData"    # Lorg/apache/logging/log4j/util/StringMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "props",
            "contextData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/Property;",
            ">;",
            "Lorg/apache/logging/log4j/util/StringMap;",
            ")",
            "Lorg/apache/logging/log4j/util/StringMap;"
        }
    .end annotation

    .line 118
    .local p1, "props":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Property;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector$ForDefaultThreadContextMap;->providers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector$ForDefaultThreadContextMap;->providers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/util/ContextDataProvider;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/util/ContextDataProvider;->supplyContextData()Ljava/util/Map;

    move-result-object v0

    .local v0, "copy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 121
    .end local v0    # "copy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 122
    .restart local v0    # "copy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector$ForDefaultThreadContextMap;->providers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/util/ContextDataProvider;

    .line 123
    .local v2, "provider":Lorg/apache/logging/log4j/core/util/ContextDataProvider;
    invoke-interface {v2}, Lorg/apache/logging/log4j/core/util/ContextDataProvider;->supplyContextData()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 124
    .end local v2    # "provider":Lorg/apache/logging/log4j/core/util/ContextDataProvider;
    goto :goto_0

    .line 131
    :cond_1
    :goto_1
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    .line 140
    :cond_2
    new-instance v1, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v1, v2}, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;-><init>(Ljava/util/Map;)V

    .line 141
    .local v1, "result":Lorg/apache/logging/log4j/util/StringMap;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 142
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/core/config/Property;

    .line 143
    .local v3, "prop":Lorg/apache/logging/log4j/core/config/Property;
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/Property;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 144
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/Property;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/Property;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lorg/apache/logging/log4j/util/StringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    .end local v3    # "prop":Lorg/apache/logging/log4j/core/config/Property;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 147
    .end local v2    # "i":I
    :cond_4
    invoke-interface {v1}, Lorg/apache/logging/log4j/util/StringMap;->freeze()V

    .line 148
    return-object v1

    .line 134
    .end local v1    # "result":Lorg/apache/logging/log4j/util/StringMap;
    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lorg/apache/logging/log4j/core/impl/ContextDataFactory;->emptyFrozenContextData()Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v1

    goto :goto_4

    :cond_6
    invoke-static {v0}, Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector$ForDefaultThreadContextMap;->frozenStringMap(Ljava/util/Map;)Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;

    move-result-object v1

    :goto_4
    return-object v1
.end method

.method public rawContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;
    .locals 3

    .line 159
    invoke-static {}, Lorg/apache/logging/log4j/ThreadContext;->getThreadContextMap()Lorg/apache/logging/log4j/spi/ReadOnlyThreadContextMap;

    move-result-object v0

    .line 160
    .local v0, "map":Lorg/apache/logging/log4j/spi/ReadOnlyThreadContextMap;
    instance-of v1, v0, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    if-eqz v1, :cond_0

    .line 161
    move-object v1, v0

    check-cast v1, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    return-object v1

    .line 164
    :cond_0
    invoke-static {}, Lorg/apache/logging/log4j/ThreadContext;->getImmutableContext()Ljava/util/Map;

    move-result-object v1

    .line 165
    .local v1, "copy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lorg/apache/logging/log4j/core/impl/ContextDataFactory;->emptyFrozenContextData()Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v2, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;

    invoke-direct {v2, v1}, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;-><init>(Ljava/util/Map;)V

    :goto_0
    return-object v2
.end method
