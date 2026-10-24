.class public Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;
.super Ljava/lang/Object;
.source "LoggerConfig.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/config/LoggerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder<",
        "TB;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/config/LoggerConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private additivity:Ljava/lang/Boolean;
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

.field private loggerName:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "name"
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;
        message = "Loggers cannot be configured without a name"
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

    .line 118
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBuilder()Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 233
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder<TB;>;"
    return-object p0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 118
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder<TB;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->build()Lorg/apache/logging/log4j/core/config/LoggerConfig;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/config/LoggerConfig;
    .locals 12

    .line 224
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->loggerName:Ljava/lang/String;

    const-string v1, "root"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->loggerName:Ljava/lang/String;

    :goto_0
    move-object v2, v0

    .line 225
    .local v2, "name":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->level:Lorg/apache/logging/log4j/Level;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->refs:[Lorg/apache/logging/log4j/core/config/AppenderRef;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->levelAndRefs:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-static {v0, v1, v3, v4}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getLevelAndRefs(Lorg/apache/logging/log4j/Level;[Lorg/apache/logging/log4j/core/config/AppenderRef;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/config/LoggerConfig$LevelAndRefs;

    move-result-object v0

    .line 226
    .local v0, "container":Lorg/apache/logging/log4j/core/config/LoggerConfig$LevelAndRefs;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->includeLocation:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-static {v1, v3}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->includeLocation(Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)Z

    move-result v10

    .line 227
    .local v10, "useLocation":Z
    new-instance v11, Lorg/apache/logging/log4j/core/config/LoggerConfig;

    iget-object v3, v0, Lorg/apache/logging/log4j/core/config/LoggerConfig$LevelAndRefs;->refs:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->filter:Lorg/apache/logging/log4j/core/Filter;

    iget-object v5, v0, Lorg/apache/logging/log4j/core/config/LoggerConfig$LevelAndRefs;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->isAdditivity()Z

    move-result v6

    iget-object v7, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->properties:[Lorg/apache/logging/log4j/core/config/Property;

    iget-object v8, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    move-object v1, v11

    move v9, v10

    invoke-direct/range {v1 .. v9}, Lorg/apache/logging/log4j/core/config/LoggerConfig;-><init>(Ljava/lang/String;Ljava/util/List;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/Level;Z[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/config/Configuration;Z)V

    return-object v11
.end method

.method public getConfig()Lorg/apache/logging/log4j/core/config/Configuration;
    .locals 1

    .line 205
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    return-object v0
.end method

.method public getFilter()Lorg/apache/logging/log4j/core/Filter;
    .locals 1

    .line 214
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->filter:Lorg/apache/logging/log4j/core/Filter;

    return-object v0
.end method

.method public getIncludeLocation()Ljava/lang/String;
    .locals 1

    .line 178
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->includeLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Lorg/apache/logging/log4j/Level;
    .locals 1

    .line 151
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->level:Lorg/apache/logging/log4j/Level;

    return-object v0
.end method

.method public getLevelAndRefs()Ljava/lang/String;
    .locals 1

    .line 160
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->levelAndRefs:Ljava/lang/String;

    return-object v0
.end method

.method public getLoggerName()Ljava/lang/String;
    .locals 1

    .line 169
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->loggerName:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()[Lorg/apache/logging/log4j/core/config/Property;
    .locals 1

    .line 196
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->properties:[Lorg/apache/logging/log4j/core/config/Property;

    return-object v0
.end method

.method public getRefs()[Lorg/apache/logging/log4j/core/config/AppenderRef;
    .locals 1

    .line 187
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->refs:[Lorg/apache/logging/log4j/core/config/AppenderRef;

    return-object v0
.end method

.method public isAdditivity()Z
    .locals 1

    .line 142
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->additivity:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public withAdditivity(Z)Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;
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

    .line 146
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder<TB;>;"
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->additivity:Ljava/lang/Boolean;

    .line 147
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->asBuilder()Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withConfig(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;
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

    .line 209
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 210
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->asBuilder()Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withIncludeLocation(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;
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

    .line 182
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->includeLocation:Ljava/lang/String;

    .line 183
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->asBuilder()Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withLevel(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;
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

    .line 155
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->level:Lorg/apache/logging/log4j/Level;

    .line 156
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->asBuilder()Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withLevelAndRefs(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;
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

    .line 164
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->levelAndRefs:Ljava/lang/String;

    .line 165
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->asBuilder()Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withLoggerName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;
    .locals 1
    .param p1, "loggerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loggerName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 173
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->loggerName:Ljava/lang/String;

    .line 174
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->asBuilder()Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withProperties([Lorg/apache/logging/log4j/core/config/Property;)Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;
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

    .line 200
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->properties:[Lorg/apache/logging/log4j/core/config/Property;

    .line 201
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->asBuilder()Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withRefs([Lorg/apache/logging/log4j/core/config/AppenderRef;)Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;
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

    .line 191
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->refs:[Lorg/apache/logging/log4j/core/config/AppenderRef;

    .line 192
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->asBuilder()Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withtFilter(Lorg/apache/logging/log4j/core/Filter;)Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;
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

    .line 218
    .local p0, "this":Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;, "Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->filter:Lorg/apache/logging/log4j/core/Filter;

    .line 219
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;->asBuilder()Lorg/apache/logging/log4j/core/config/LoggerConfig$Builder;

    move-result-object v0

    return-object v0
.end method
