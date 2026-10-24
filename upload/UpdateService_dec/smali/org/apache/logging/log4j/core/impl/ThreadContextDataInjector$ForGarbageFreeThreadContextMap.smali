.class public Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector$ForGarbageFreeThreadContextMap;
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
    name = "ForGarbageFreeThreadContextMap"
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

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-static {}, Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector;->access$000()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector$ForGarbageFreeThreadContextMap;->providers:Ljava/util/List;

    .line 180
    return-void
.end method


# virtual methods
.method public injectContextData(Ljava/util/List;Lorg/apache/logging/log4j/util/StringMap;)Lorg/apache/logging/log4j/util/StringMap;
    .locals 2
    .param p2, "reusable"    # Lorg/apache/logging/log4j/util/StringMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "props",
            "reusable"
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

    .line 195
    .local p1, "props":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Property;>;"
    invoke-static {p1, p2}, Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector;->copyProperties(Ljava/util/List;Lorg/apache/logging/log4j/util/StringMap;)V

    .line 196
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector$ForGarbageFreeThreadContextMap;->providers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 197
    iget-object v1, p0, Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector$ForGarbageFreeThreadContextMap;->providers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/util/ContextDataProvider;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/util/ContextDataProvider;->supplyStringMap()Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v1

    invoke-interface {p2, v1}, Lorg/apache/logging/log4j/util/StringMap;->putAll(Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)V

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    .end local v0    # "i":I
    :cond_0
    return-object p2
.end method

.method public rawContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;
    .locals 1

    .line 204
    invoke-static {}, Lorg/apache/logging/log4j/ThreadContext;->getThreadContextMap()Lorg/apache/logging/log4j/spi/ReadOnlyThreadContextMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/logging/log4j/spi/ReadOnlyThreadContextMap;->getReadOnlyContextData()Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v0

    return-object v0
.end method
