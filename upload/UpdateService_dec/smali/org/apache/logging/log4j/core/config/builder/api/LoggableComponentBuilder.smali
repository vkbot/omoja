.class public interface abstract Lorg/apache/logging/log4j/core/config/builder/api/LoggableComponentBuilder;
.super Ljava/lang/Object;
.source "LoggableComponentBuilder.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/config/builder/api/FilterableComponentBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/config/builder/api/FilterableComponentBuilder<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract add(Lorg/apache/logging/log4j/core/config/builder/api/AppenderRefComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "assembler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/builder/api/AppenderRefComponentBuilder;",
            ")TT;"
        }
    .end annotation
.end method
