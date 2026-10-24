.class public interface abstract Lorg/apache/logging/log4j/core/config/builder/api/AppenderComponentBuilder;
.super Ljava/lang/Object;
.source "AppenderComponentBuilder.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/config/builder/api/FilterableComponentBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/config/builder/api/FilterableComponentBuilder<",
        "Lorg/apache/logging/log4j/core/config/builder/api/AppenderComponentBuilder;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract add(Lorg/apache/logging/log4j/core/config/builder/api/LayoutComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/AppenderComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method
