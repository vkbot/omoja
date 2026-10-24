.class Lorg/apache/logging/log4j/core/config/builder/impl/DefaultKeyValuePairComponentBuilder;
.super Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentAndConfigurationBuilder;
.source "DefaultKeyValuePairComponentBuilder.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/config/builder/api/KeyValuePairComponentBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentAndConfigurationBuilder<",
        "Lorg/apache/logging/log4j/core/config/builder/api/KeyValuePairComponentBuilder;",
        ">;",
        "Lorg/apache/logging/log4j/core/config/builder/api/KeyValuePairComponentBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "builder",
            "key",
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
            ")V"
        }
    .end annotation

    .line 30
    .local p1, "builder":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<+Lorg/apache/logging/log4j/core/config/Configuration;>;"
    const-string v0, "KeyValuePair"

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentAndConfigurationBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;)V

    .line 31
    const-string v0, "key"

    invoke-virtual {p0, v0, p2}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultKeyValuePairComponentBuilder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    .line 32
    const-string v0, "value"

    invoke-virtual {p0, v0, p3}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultKeyValuePairComponentBuilder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    .line 33
    return-void
.end method
