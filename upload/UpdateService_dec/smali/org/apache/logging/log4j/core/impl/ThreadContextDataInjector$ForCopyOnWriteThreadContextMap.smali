.class public Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector$ForCopyOnWriteThreadContextMap;
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
    name = "ForCopyOnWriteThreadContextMap"
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

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    invoke-static {}, Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector;->access$000()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector$ForCopyOnWriteThreadContextMap;->providers:Ljava/util/List;

    .line 221
    return-void
.end method


# virtual methods
.method public injectContextData(Ljava/util/List;Lorg/apache/logging/log4j/util/StringMap;)Lorg/apache/logging/log4j/util/StringMap;
    .locals 6
    .param p2, "ignore"    # Lorg/apache/logging/log4j/util/StringMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "props",
            "ignore"
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

    .line 235
    .local p1, "props":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Property;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector$ForCopyOnWriteThreadContextMap;->providers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector$ForCopyOnWriteThreadContextMap;->providers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/util/ContextDataProvider;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/util/ContextDataProvider;->supplyStringMap()Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v0

    return-object v0

    .line 239
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 240
    .local v0, "count":I
    :goto_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector$ForCopyOnWriteThreadContextMap;->providers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/apache/logging/log4j/util/StringMap;

    .line 241
    .local v2, "maps":[Lorg/apache/logging/log4j/util/StringMap;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector$ForCopyOnWriteThreadContextMap;->providers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 242
    iget-object v4, p0, Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector$ForCopyOnWriteThreadContextMap;->providers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/logging/log4j/core/util/ContextDataProvider;

    invoke-interface {v4}, Lorg/apache/logging/log4j/core/util/ContextDataProvider;->supplyStringMap()Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 243
    aget-object v4, v2, v3

    invoke-interface {v4}, Lorg/apache/logging/log4j/util/StringMap;->size()I

    move-result v4

    add-int/2addr v0, v4

    .line 241
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 249
    .end local v3    # "i":I
    :cond_3
    invoke-static {v0}, Lorg/apache/logging/log4j/core/impl/ContextDataFactory;->createContextData(I)Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v3

    .line 250
    .local v3, "result":Lorg/apache/logging/log4j/util/StringMap;
    invoke-static {p1, v3}, Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector;->copyProperties(Ljava/util/List;Lorg/apache/logging/log4j/util/StringMap;)V

    .line 251
    array-length v4, v2

    :goto_2
    if-ge v1, v4, :cond_4

    aget-object v5, v2, v1

    .line 252
    .local v5, "map":Lorg/apache/logging/log4j/util/StringMap;
    invoke-interface {v3, v5}, Lorg/apache/logging/log4j/util/StringMap;->putAll(Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)V

    .line 251
    .end local v5    # "map":Lorg/apache/logging/log4j/util/StringMap;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 254
    :cond_4
    return-object v3
.end method

.method public rawContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;
    .locals 1

    .line 259
    invoke-static {}, Lorg/apache/logging/log4j/ThreadContext;->getThreadContextMap()Lorg/apache/logging/log4j/spi/ReadOnlyThreadContextMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/logging/log4j/spi/ReadOnlyThreadContextMap;->getReadOnlyContextData()Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v0

    return-object v0
.end method
