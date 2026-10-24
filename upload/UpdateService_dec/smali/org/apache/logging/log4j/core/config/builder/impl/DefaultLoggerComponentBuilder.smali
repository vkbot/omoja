.class Lorg/apache/logging/log4j/core/config/builder/impl/DefaultLoggerComponentBuilder;
.super Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentAndConfigurationBuilder;
.source "DefaultLoggerComponentBuilder.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentAndConfigurationBuilder<",
        "Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;",
        ">;",
        "Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "level"    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 38
    .local p1, "builder":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<+Lorg/apache/logging/log4j/core/config/Configuration;>;"
    const-string v0, "Logger"

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentAndConfigurationBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    if-eqz p3, :cond_0

    .line 40
    const-string v0, "level"

    invoke-virtual {p0, v0, p3}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultLoggerComponentBuilder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    .line 42
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "level"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
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
            "level",
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
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 69
    .local p1, "builder":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<+Lorg/apache/logging/log4j/core/config/Configuration;>;"
    invoke-direct {p0, p1, p2, p4}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentAndConfigurationBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    if-eqz p3, :cond_0

    .line 71
    const-string v0, "level"

    invoke-virtual {p0, v0, p3}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultLoggerComponentBuilder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    .line 73
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "level"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "includeLocation"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "builder",
            "name",
            "level",
            "type",
            "includeLocation"
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
            "Z)V"
        }
    .end annotation

    .line 85
    .local p1, "builder":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<+Lorg/apache/logging/log4j/core/config/Configuration;>;"
    invoke-direct {p0, p1, p2, p4}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentAndConfigurationBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    if-eqz p3, :cond_0

    .line 87
    const-string v0, "level"

    invoke-virtual {p0, v0, p3}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultLoggerComponentBuilder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    .line 89
    :cond_0
    const-string v0, "includeLocation"

    invoke-virtual {p0, v0, p5}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultLoggerComponentBuilder;->addAttribute(Ljava/lang/String;Z)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    .line 90
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "level"    # Ljava/lang/String;
    .param p4, "includeLocation"    # Z
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
            "level",
            "includeLocation"
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
            "Z)V"
        }
    .end annotation

    .line 53
    .local p1, "builder":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<+Lorg/apache/logging/log4j/core/config/Configuration;>;"
    const-string v0, "Logger"

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentAndConfigurationBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    if-eqz p3, :cond_0

    .line 55
    const-string v0, "level"

    invoke-virtual {p0, v0, p3}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultLoggerComponentBuilder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    .line 57
    :cond_0
    const-string v0, "includeLocation"

    invoke-virtual {p0, v0, p4}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultLoggerComponentBuilder;->addAttribute(Ljava/lang/String;Z)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    .line 58
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Lorg/apache/logging/log4j/core/config/builder/api/AppenderRefComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;
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
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultLoggerComponentBuilder;->add(Lorg/apache/logging/log4j/core/config/builder/api/AppenderRefComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;

    move-result-object p1

    return-object p1
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

    .line 27
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultLoggerComponentBuilder;->add(Lorg/apache/logging/log4j/core/config/builder/api/FilterComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public add(Lorg/apache/logging/log4j/core/config/builder/api/AppenderRefComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;
    .locals 1
    .param p1, "builder"    # Lorg/apache/logging/log4j/core/config/builder/api/AppenderRefComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "builder"
        }
    .end annotation

    .line 94
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultLoggerComponentBuilder;->addComponent(Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;

    return-object v0
.end method

.method public add(Lorg/apache/logging/log4j/core/config/builder/api/FilterComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;
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

    .line 99
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultLoggerComponentBuilder;->addComponent(Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;

    return-object v0
.end method
