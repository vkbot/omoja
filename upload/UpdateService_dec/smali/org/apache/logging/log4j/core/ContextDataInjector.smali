.class public interface abstract Lorg/apache/logging/log4j/core/ContextDataInjector;
.super Ljava/lang/Object;
.source "ContextDataInjector.java"


# virtual methods
.method public abstract injectContextData(Ljava/util/List;Lorg/apache/logging/log4j/util/StringMap;)Lorg/apache/logging/log4j/util/StringMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "properties",
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
.end method

.method public abstract rawContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;
.end method
