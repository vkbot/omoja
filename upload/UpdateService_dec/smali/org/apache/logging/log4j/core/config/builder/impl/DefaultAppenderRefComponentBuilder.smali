.class Lorg/apache/logging/log4j/core/config/builder/impl/DefaultAppenderRefComponentBuilder;
.super Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentAndConfigurationBuilder;
.source "DefaultAppenderRefComponentBuilder.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/config/builder/api/AppenderRefComponentBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentAndConfigurationBuilder<",
        "Lorg/apache/logging/log4j/core/config/builder/api/AppenderRefComponentBuilder;",
        ">;",
        "Lorg/apache/logging/log4j/core/config/builder/api/AppenderRefComponentBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;)V
    .locals 1
    .param p2, "ref"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "builder",
            "ref"
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

    .line 33
    .local p1, "builder":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<+Lorg/apache/logging/log4j/core/config/Configuration;>;"
    const-string v0, "AppenderRef"

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentAndConfigurationBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;)V

    .line 34
    const-string v0, "ref"

    invoke-virtual {p0, v0, p2}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultAppenderRefComponentBuilder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    .line 35
    return-void
.end method


# virtual methods
.method public add(Lorg/apache/logging/log4j/core/config/builder/api/FilterComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/AppenderRefComponentBuilder;
    .locals 1
    .param p1, "builder"    # Lorg/apache/logging/log4j/core/config/builder/api/FilterComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "builder"
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultAppenderRefComponentBuilder;->addComponent(Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/config/builder/api/AppenderRefComponentBuilder;

    return-object v0
.end method

.method public bridge synthetic add(Lorg/apache/logging/log4j/core/config/builder/api/FilterComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "builder"
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultAppenderRefComponentBuilder;->add(Lorg/apache/logging/log4j/core/config/builder/api/FilterComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/AppenderRefComponentBuilder;

    move-result-object p1

    return-object p1
.end method
