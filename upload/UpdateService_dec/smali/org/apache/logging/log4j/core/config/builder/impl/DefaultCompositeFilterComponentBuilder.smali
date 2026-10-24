.class Lorg/apache/logging/log4j/core/config/builder/impl/DefaultCompositeFilterComponentBuilder;
.super Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentAndConfigurationBuilder;
.source "DefaultCompositeFilterComponentBuilder.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/config/builder/api/CompositeFilterComponentBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentAndConfigurationBuilder<",
        "Lorg/apache/logging/log4j/core/config/builder/api/CompositeFilterComponentBuilder;",
        ">;",
        "Lorg/apache/logging/log4j/core/config/builder/api/CompositeFilterComponentBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "onMatch"    # Ljava/lang/String;
    .param p3, "onMismatch"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "builder",
            "onMatch",
            "onMismatch"
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

    .line 33
    .local p1, "builder":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<+Lorg/apache/logging/log4j/core/config/Configuration;>;"
    const-string v0, "Filters"

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentAndConfigurationBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;)V

    .line 34
    const-string v0, "onMatch"

    invoke-virtual {p0, v0, p2}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultCompositeFilterComponentBuilder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    .line 35
    const-string v0, "onMismatch"

    invoke-virtual {p0, v0, p3}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultCompositeFilterComponentBuilder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    .line 36
    return-void
.end method


# virtual methods
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

    .line 27
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultCompositeFilterComponentBuilder;->add(Lorg/apache/logging/log4j/core/config/builder/api/FilterComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/CompositeFilterComponentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public add(Lorg/apache/logging/log4j/core/config/builder/api/FilterComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/CompositeFilterComponentBuilder;
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
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultCompositeFilterComponentBuilder;->addComponent(Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/config/builder/api/CompositeFilterComponentBuilder;

    return-object v0
.end method
