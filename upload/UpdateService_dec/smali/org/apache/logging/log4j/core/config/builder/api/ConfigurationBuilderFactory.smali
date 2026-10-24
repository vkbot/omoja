.class public abstract Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilderFactory;
.super Ljava/lang/Object;
.source "ConfigurationBuilderFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newConfigurationBuilder()Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;-><init>()V

    return-object v0
.end method

.method public static newConfigurationBuilder(Ljava/lang/Class;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 38
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
