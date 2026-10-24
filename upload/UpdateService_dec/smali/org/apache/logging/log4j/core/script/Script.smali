.class public Lorg/apache/logging/log4j/core/script/Script;
.super Lorg/apache/logging/log4j/core/script/AbstractScript;
.source "Script.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "Script"
    printObject = true
.end annotation


# static fields
.field private static final ATTR_LANGUAGE:Ljava/lang/String; = "language"

.field private static final ATTR_SCRIPT_TEXT:Ljava/lang/String; = "scriptText"

.field static final PLUGIN_NAME:Ljava/lang/String; = "Script"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "scriptText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "language",
            "scriptText"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/script/AbstractScript;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static createScript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/script/Script;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "name"
        .end annotation
    .end param
    .param p1, "language"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "language"
        .end annotation
    .end param
    .param p2, "scriptText"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginValue;
            value = "scriptText"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "name",
            "language",
            "scriptText"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 46
    const-string v0, "Script"

    const-string v1, "No \'{}\' attribute provided for {} plugin \'{}\'"

    if-nez p1, :cond_0

    .line 47
    sget-object v2, Lorg/apache/logging/log4j/core/script/Script;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "language"

    invoke-interface {v2, v1, v3, v0, p0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    const-string p1, "JavaScript"

    .line 50
    :cond_0
    if-nez p2, :cond_1

    .line 51
    sget-object v2, Lorg/apache/logging/log4j/core/script/Script;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "scriptText"

    invoke-interface {v2, v1, v3, v0, p0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_1
    new-instance v0, Lorg/apache/logging/log4j/core/script/Script;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/logging/log4j/core/script/Script;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/script/Script;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/script/Script;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
