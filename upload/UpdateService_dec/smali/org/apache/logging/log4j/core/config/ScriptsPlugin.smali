.class public final Lorg/apache/logging/log4j/core/config/ScriptsPlugin;
.super Ljava/lang/Object;
.source "ScriptsPlugin.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "scripts"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static createScripts([Lorg/apache/logging/log4j/core/script/AbstractScript;)[Lorg/apache/logging/log4j/core/script/AbstractScript;
    .locals 0
    .param p0, "scripts"    # [Lorg/apache/logging/log4j/core/script/AbstractScript;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "Scripts"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "scripts"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 42
    return-object p0
.end method
