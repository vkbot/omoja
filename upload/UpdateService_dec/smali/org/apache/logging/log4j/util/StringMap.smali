.class public interface abstract Lorg/apache/logging/log4j/util/StringMap;
.super Ljava/lang/Object;
.source "StringMap.java"

# interfaces
.implements Lorg/apache/logging/log4j/util/ReadOnlyStringMap;


# virtual methods
.method public abstract clear()V
.end method

.method public abstract equals(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation
.end method

.method public abstract freeze()V
.end method

.method public abstract hashCode()I
.end method

.method public abstract isFrozen()Z
.end method

.method public abstract putAll(Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "source"
        }
    .end annotation
.end method

.method public abstract putValue(Ljava/lang/String;Ljava/lang/Object;)V
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
.end method

.method public abstract remove(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation
.end method
