.class public interface abstract Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;
.super Ljava/lang/Object;
.source "ComponentBuilder.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/config/builder/api/Component;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract addAttribute(Ljava/lang/String;I)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation
.end method

.method public abstract addAttribute(Ljava/lang/String;Ljava/lang/Enum;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Enum<",
            "*>;)TT;"
        }
    .end annotation
.end method

.method public abstract addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract addAttribute(Ljava/lang/String;Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "level"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/Level;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract addAttribute(Ljava/lang/String;Z)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation
.end method

.method public abstract addComponent(Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder<",
            "*>;)TT;"
        }
    .end annotation
.end method

.method public abstract getBuilder()Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "+",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method
