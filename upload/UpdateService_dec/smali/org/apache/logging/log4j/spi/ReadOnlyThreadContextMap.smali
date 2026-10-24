.class public interface abstract Lorg/apache/logging/log4j/spi/ReadOnlyThreadContextMap;
.super Ljava/lang/Object;
.source "ReadOnlyThreadContextMap.java"


# virtual methods
.method public abstract clear()V
.end method

.method public abstract containsKey(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation
.end method

.method public abstract getCopy()Ljava/util/Map;
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

.method public abstract getImmutableMapOrNull()Ljava/util/Map;
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

.method public abstract getReadOnlyContextData()Lorg/apache/logging/log4j/util/StringMap;
.end method

.method public abstract isEmpty()Z
.end method
