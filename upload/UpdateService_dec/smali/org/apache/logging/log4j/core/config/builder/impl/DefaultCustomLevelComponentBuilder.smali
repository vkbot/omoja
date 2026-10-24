.class Lorg/apache/logging/log4j/core/config/builder/impl/DefaultCustomLevelComponentBuilder;
.super Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentAndConfigurationBuilder;
.source "DefaultCustomLevelComponentBuilder.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/config/builder/api/CustomLevelComponentBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentAndConfigurationBuilder<",
        "Lorg/apache/logging/log4j/core/config/builder/api/CustomLevelComponentBuilder;",
        ">;",
        "Lorg/apache/logging/log4j/core/config/builder/api/CustomLevelComponentBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;I)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "builder",
            "name",
            "level"
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
            "I)V"
        }
    .end annotation

    .line 30
    .local p1, "builder":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<+Lorg/apache/logging/log4j/core/config/Configuration;>;"
    const-string v0, "CustomLevel"

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentAndConfigurationBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v0, "intLevel"

    invoke-virtual {p0, v0, p3}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultCustomLevelComponentBuilder;->addAttribute(Ljava/lang/String;I)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    .line 32
    return-void
.end method
