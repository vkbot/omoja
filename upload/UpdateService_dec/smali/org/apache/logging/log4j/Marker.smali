.class public interface abstract Lorg/apache/logging/log4j/Marker;
.super Ljava/lang/Object;
.source "Marker.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public varargs abstract addParents([Lorg/apache/logging/log4j/Marker;)Lorg/apache/logging/log4j/Marker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "markers"
        }
    .end annotation
.end method

.method public abstract equals(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getParents()[Lorg/apache/logging/log4j/Marker;
.end method

.method public abstract hasParents()Z
.end method

.method public abstract hashCode()I
.end method

.method public abstract isInstanceOf(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation
.end method

.method public abstract isInstanceOf(Lorg/apache/logging/log4j/Marker;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "m"
        }
    .end annotation
.end method

.method public abstract remove(Lorg/apache/logging/log4j/Marker;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "marker"
        }
    .end annotation
.end method

.method public varargs abstract setParents([Lorg/apache/logging/log4j/Marker;)Lorg/apache/logging/log4j/Marker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "markers"
        }
    .end annotation
.end method
