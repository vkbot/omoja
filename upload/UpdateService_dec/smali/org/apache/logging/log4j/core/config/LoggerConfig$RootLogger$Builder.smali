.class public Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;
.super Ljava/lang/Object;
.source "LoggerConfig.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder<",
        "TB;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/config/LoggerConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private additivity:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private config:Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginConfiguration;
    .end annotation
.end field

.field private filter:Lorg/apache/logging/log4j/core/Filter;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "Filter"
    .end annotation
.end field

.field private includeLocation:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private level:Lorg/apache/logging/log4j/Level;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private levelAndRefs:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private properties:[Lorg/apache/logging/log4j/core/config/Property;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "Properties"
    .end annotation
.end field

.field private refs:[Lorg/apache/logging/log4j/core/config/AppenderRef;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "AppenderRef"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 800
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBuilder()Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 901
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder<TB;>;"
    return-object p0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 800
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder<TB;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;->build()Lorg/apache/logging/log4j/core/config/LoggerConfig;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/config/LoggerConfig;
    .locals 11

    .line 894
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;->level:Lorg/apache/logging/log4j/Level;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;->refs:[Lorg/apache/logging/log4j/core/config/AppenderRef;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;->levelAndRefs:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-static {v0, v1, v2, v3}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getLevelAndRefs(Lorg/apache/logging/log4j/Level;[Lorg/apache/logging/log4j/core/config/AppenderRef;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/config/LoggerConfig$LevelAndRefs;

    move-result-object v0

    .line 895
    .local v0, "container":Lorg/apache/logging/log4j/core/config/LoggerConfig$LevelAndRefs;
    new-instance v10, Lorg/apache/logging/log4j/core/config/LoggerConfig;

    iget-object v3, v0, Lorg/apache/logging/log4j/core/config/LoggerConfig$LevelAndRefs;->refs:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;->filter:Lorg/apache/logging/log4j/core/Filter;

    iget-object v5, v0, Lorg/apache/logging/log4j/core/config/LoggerConfig$LevelAndRefs;->level:Lorg/apache/logging/log4j/Level;

    iget-boolean v6, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;->additivity:Z

    iget-object v7, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;->properties:[Lorg/apache/logging/log4j/core/config/Property;

    iget-object v8, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;->includeLocation:Ljava/lang/String;

    .line 896
    invoke-static {v1, v8}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->includeLocation(Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)Z

    move-result v9

    const-string v2, ""

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lorg/apache/logging/log4j/core/config/LoggerConfig;-><init>(Ljava/lang/String;Ljava/util/List;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/Level;Z[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/config/Configuration;Z)V

    .line 895
    return-object v10
.end method

.method public getConfig()Lorg/apache/logging/log4j/core/config/Configuration;
    .locals 1

    .line 875
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    return-object v0
.end method

.method public getFilter()Lorg/apache/logging/log4j/core/Filter;
    .locals 1

    .line 884
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;->filter:Lorg/apache/logging/log4j/core/Filter;

    return-object v0
.end method

.method public getIncludeLocation()Ljava/lang/String;
    .locals 1

    .line 848
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;->includeLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Lorg/apache/logging/log4j/Level;
    .locals 1

    .line 830
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;->level:Lorg/apache/logging/log4j/Level;

    return-object v0
.end method

.method public getLevelAndRefs()Ljava/lang/String;
    .locals 1

    .line 839
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;->levelAndRefs:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()[Lorg/apache/logging/log4j/core/config/Property;
    .locals 1

    .line 866
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;->properties:[Lorg/apache/logging/log4j/core/config/Property;

    return-object v0
.end method

.method public getRefs()[Lorg/apache/logging/log4j/core/config/AppenderRef;
    .locals 1

    .line 857
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;->refs:[Lorg/apache/logging/log4j/core/config/AppenderRef;

    return-object v0
.end method

.method public isAdditivity()Z
    .locals 1

    .line 821
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;->additivity:Z

    return v0
.end method

.method public withAdditivity(Z)Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;
    .locals 1
    .param p1, "additivity"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "additivity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 825
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;->additivity:Z

    .line 826
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;->asBuilder()Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withConfig(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;
    .locals 1
    .param p1, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            ")TB;"
        }
    .end annotation

    .line 879
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 880
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;->asBuilder()Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withIncludeLocation(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;
    .locals 1
    .param p1, "includeLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "includeLocation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 852
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;->includeLocation:Ljava/lang/String;

    .line 853
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;->asBuilder()Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withLevel(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;
    .locals 1
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/Level;",
            ")TB;"
        }
    .end annotation

    .line 834
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;->level:Lorg/apache/logging/log4j/Level;

    .line 835
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;->asBuilder()Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withLevelAndRefs(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;
    .locals 1
    .param p1, "levelAndRefs"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "levelAndRefs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 843
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;->levelAndRefs:Ljava/lang/String;

    .line 844
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;->asBuilder()Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withProperties([Lorg/apache/logging/log4j/core/config/Property;)Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;
    .locals 1
    .param p1, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "properties"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/logging/log4j/core/config/Property;",
            ")TB;"
        }
    .end annotation

    .line 870
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;->properties:[Lorg/apache/logging/log4j/core/config/Property;

    .line 871
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;->asBuilder()Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withRefs([Lorg/apache/logging/log4j/core/config/AppenderRef;)Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;
    .locals 1
    .param p1, "refs"    # [Lorg/apache/logging/log4j/core/config/AppenderRef;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "refs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/logging/log4j/core/config/AppenderRef;",
            ")TB;"
        }
    .end annotation

    .line 861
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;->refs:[Lorg/apache/logging/log4j/core/config/AppenderRef;

    .line 862
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;->asBuilder()Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withtFilter(Lorg/apache/logging/log4j/core/Filter;)Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;
    .locals 1
    .param p1, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/Filter;",
            ")TB;"
        }
    .end annotation

    .line 888
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;->filter:Lorg/apache/logging/log4j/core/Filter;

    .line 889
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;->asBuilder()Lorg/apache/logging/log4j/core/config/LoggerConfig$RootLogger$Builder;

    move-result-object v0

    return-object v0
.end method
