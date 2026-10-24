.class public interface abstract Lorg/apache/logging/log4j/core/filter/Filterable;
.super Ljava/lang/Object;
.source "Filterable.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/LifeCycle;


# virtual methods
.method public abstract addFilter(Lorg/apache/logging/log4j/core/Filter;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation
.end method

.method public abstract getFilter()Lorg/apache/logging/log4j/core/Filter;
.end method

.method public abstract hasFilter()Z
.end method

.method public abstract isFiltered(Lorg/apache/logging/log4j/core/LogEvent;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation
.end method

.method public abstract removeFilter(Lorg/apache/logging/log4j/core/Filter;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation
.end method
