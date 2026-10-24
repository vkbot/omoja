.class public interface abstract Lorg/apache/logging/log4j/spi/ThreadContextMap2;
.super Ljava/lang/Object;
.source "ThreadContextMap2.java"

# interfaces
.implements Lorg/apache/logging/log4j/spi/ThreadContextMap;


# virtual methods
.method public abstract getReadOnlyContextData()Lorg/apache/logging/log4j/util/StringMap;
.end method

.method public abstract putAll(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
