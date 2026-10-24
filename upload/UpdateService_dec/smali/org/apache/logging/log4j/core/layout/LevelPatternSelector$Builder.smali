.class public Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;
.super Ljava/lang/Object;
.source "LevelPatternSelector.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/layout/LevelPatternSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/layout/LevelPatternSelector;",
        ">;"
    }
.end annotation


# instance fields
.field private alwaysWriteExceptions:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "alwaysWriteExceptions"
    .end annotation
.end field

.field private configuration:Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginConfiguration;
    .end annotation
.end field

.field private defaultPattern:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "defaultPattern"
    .end annotation
.end field

.field private disableAnsi:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "disableAnsi"
    .end annotation
.end field

.field private noConsoleNoAnsi:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "noConsoleNoAnsi"
    .end annotation
.end field

.field private properties:[Lorg/apache/logging/log4j/core/layout/PatternMatch;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "PatternMatch"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;->alwaysWriteExceptions:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;->build()Lorg/apache/logging/log4j/core/layout/LevelPatternSelector;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/layout/LevelPatternSelector;
    .locals 9

    .line 69
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;->defaultPattern:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 70
    const-string v0, "%m%n"

    iput-object v0, p0, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;->defaultPattern:Ljava/lang/String;

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;->properties:[Lorg/apache/logging/log4j/core/layout/PatternMatch;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 76
    :cond_1
    new-instance v0, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;->properties:[Lorg/apache/logging/log4j/core/layout/PatternMatch;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;->defaultPattern:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;->alwaysWriteExceptions:Z

    iget-boolean v5, p0, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;->disableAnsi:Z

    iget-boolean v6, p0, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;->noConsoleNoAnsi:Z

    iget-object v7, p0, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector;-><init>([Lorg/apache/logging/log4j/core/layout/PatternMatch;Ljava/lang/String;ZZZLorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$1;)V

    return-object v0

    .line 73
    :cond_2
    :goto_0
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector;->access$000()Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    const-string v1, "No marker patterns were provided with PatternMatch"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAlwaysWriteExceptions(Z)Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;
    .locals 0
    .param p1, "alwaysWriteExceptions"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "alwaysWriteExceptions"
        }
    .end annotation

    .line 91
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;->alwaysWriteExceptions:Z

    .line 92
    return-object p0
.end method

.method public setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;
    .locals 0
    .param p1, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 107
    return-object p0
.end method

.method public setDefaultPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;
    .locals 0
    .param p1, "defaultPattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "defaultPattern"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;->defaultPattern:Ljava/lang/String;

    .line 87
    return-object p0
.end method

.method public setDisableAnsi(Z)Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;
    .locals 0
    .param p1, "disableAnsi"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "disableAnsi"
        }
    .end annotation

    .line 96
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;->disableAnsi:Z

    .line 97
    return-object p0
.end method

.method public setNoConsoleNoAnsi(Z)Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;
    .locals 0
    .param p1, "noConsoleNoAnsi"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "noConsoleNoAnsi"
        }
    .end annotation

    .line 101
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;->noConsoleNoAnsi:Z

    .line 102
    return-object p0
.end method

.method public setProperties([Lorg/apache/logging/log4j/core/layout/PatternMatch;)Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;
    .locals 0
    .param p1, "properties"    # [Lorg/apache/logging/log4j/core/layout/PatternMatch;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "properties"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;->properties:[Lorg/apache/logging/log4j/core/layout/PatternMatch;

    .line 82
    return-object p0
.end method
