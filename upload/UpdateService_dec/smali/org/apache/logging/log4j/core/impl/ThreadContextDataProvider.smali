.class public Lorg/apache/logging/log4j/core/impl/ThreadContextDataProvider;
.super Ljava/lang/Object;
.source "ThreadContextDataProvider.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/ContextDataProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public supplyContextData()Ljava/util/Map;
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

    .line 32
    invoke-static {}, Lorg/apache/logging/log4j/ThreadContext;->getImmutableContext()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public supplyStringMap()Lorg/apache/logging/log4j/util/StringMap;
    .locals 1

    .line 37
    invoke-static {}, Lorg/apache/logging/log4j/ThreadContext;->getThreadContextMap()Lorg/apache/logging/log4j/spi/ReadOnlyThreadContextMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/logging/log4j/spi/ReadOnlyThreadContextMap;->getReadOnlyContextData()Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v0

    return-object v0
.end method
