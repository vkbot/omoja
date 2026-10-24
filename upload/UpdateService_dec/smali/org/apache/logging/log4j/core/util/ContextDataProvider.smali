.class public interface abstract Lorg/apache/logging/log4j/core/util/ContextDataProvider;
.super Ljava/lang/Object;
.source "ContextDataProvider.java"


# virtual methods
.method public abstract supplyContextData()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public supplyStringMap()Lorg/apache/logging/log4j/util/StringMap;
    .locals 2

    .line 40
    new-instance v0, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;

    invoke-interface {p0}, Lorg/apache/logging/log4j/core/util/ContextDataProvider;->supplyContextData()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
