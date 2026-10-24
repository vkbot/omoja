.class Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentAndConfigurationBuilder;
.super Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;
.source "DefaultComponentAndConfigurationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder<",
        "TT;>;>",
        "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder<",
        "TT;",
        "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<",
        "+",
        "Lorg/apache/logging/log4j/core/config/Configuration;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;)V
    .locals 0
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "builder",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<",
            "+",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentAndConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentAndConfigurationBuilder<TT;>;"
    .local p1, "builder":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<+Lorg/apache/logging/log4j/core/config/Configuration;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method constructor <init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "builder",
            "name",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<",
            "+",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentAndConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentAndConfigurationBuilder<TT;>;"
    .local p1, "builder":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<+Lorg/apache/logging/log4j/core/config/Configuration;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method constructor <init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "builder",
            "name",
            "type",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<",
            "+",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 34
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentAndConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentAndConfigurationBuilder<TT;>;"
    .local p1, "builder":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<+Lorg/apache/logging/log4j/core/config/Configuration;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method
