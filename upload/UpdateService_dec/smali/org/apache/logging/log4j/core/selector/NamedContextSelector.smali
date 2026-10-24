.class public interface abstract Lorg/apache/logging/log4j/core/selector/NamedContextSelector;
.super Ljava/lang/Object;
.source "NamedContextSelector.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/selector/ContextSelector;


# virtual methods
.method public abstract locateContext(Ljava/lang/String;Ljava/lang/Object;Ljava/net/URI;)Lorg/apache/logging/log4j/core/LoggerContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "externalContext",
            "configLocation"
        }
    .end annotation
.end method

.method public abstract removeContext(Ljava/lang/String;)Lorg/apache/logging/log4j/core/LoggerContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation
.end method
