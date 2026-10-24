.class Lorg/apache/logging/log4j/core/config/builder/impl/DefaultScriptFileComponentBuilder;
.super Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentAndConfigurationBuilder;
.source "DefaultScriptFileComponentBuilder.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/config/builder/api/ScriptFileComponentBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentAndConfigurationBuilder<",
        "Lorg/apache/logging/log4j/core/config/builder/api/ScriptFileComponentBuilder;",
        ">;",
        "Lorg/apache/logging/log4j/core/config/builder/api/ScriptFileComponentBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "builder",
            "name",
            "path"
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

    .line 32
    .local p1, "builder":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<+Lorg/apache/logging/log4j/core/config/Configuration;>;"
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    const-string v1, "ScriptFile"

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentAndConfigurationBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v0, "path"

    invoke-virtual {p0, v0, p3}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultScriptFileComponentBuilder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    .line 34
    return-void
.end method


# virtual methods
.method public bridge synthetic addCharset(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ScriptFileComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "charset"
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultScriptFileComponentBuilder;->addCharset(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/impl/DefaultScriptFileComponentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addCharset(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/impl/DefaultScriptFileComponentBuilder;
    .locals 1
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "charset"
        }
    .end annotation

    .line 56
    const-string v0, "charset"

    invoke-virtual {p0, v0, p1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultScriptFileComponentBuilder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    .line 57
    return-object p0
.end method

.method public bridge synthetic addIsWatched(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ScriptFileComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "isWatched"
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultScriptFileComponentBuilder;->addIsWatched(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/impl/DefaultScriptFileComponentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addIsWatched(Z)Lorg/apache/logging/log4j/core/config/builder/api/ScriptFileComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "isWatched"
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultScriptFileComponentBuilder;->addIsWatched(Z)Lorg/apache/logging/log4j/core/config/builder/impl/DefaultScriptFileComponentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addIsWatched(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/impl/DefaultScriptFileComponentBuilder;
    .locals 1
    .param p1, "isWatched"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "isWatched"
        }
    .end annotation

    .line 50
    const-string v0, "isWatched"

    invoke-virtual {p0, v0, p1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultScriptFileComponentBuilder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    .line 51
    return-object p0
.end method

.method public addIsWatched(Z)Lorg/apache/logging/log4j/core/config/builder/impl/DefaultScriptFileComponentBuilder;
    .locals 2
    .param p1, "isWatched"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "isWatched"
        }
    .end annotation

    .line 44
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isWatched"

    invoke-virtual {p0, v1, v0}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultScriptFileComponentBuilder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    .line 45
    return-object p0
.end method

.method public bridge synthetic addLanguage(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ScriptFileComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "language"
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultScriptFileComponentBuilder;->addLanguage(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/impl/DefaultScriptFileComponentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addLanguage(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/impl/DefaultScriptFileComponentBuilder;
    .locals 1
    .param p1, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "language"
        }
    .end annotation

    .line 38
    const-string v0, "language"

    invoke-virtual {p0, v0, p1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultScriptFileComponentBuilder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    .line 39
    return-object p0
.end method
