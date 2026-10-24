.class public Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;
.super Ljava/lang/Object;
.source "ColumnMapping.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;",
        ">;"
    }
.end annotation


# instance fields
.field private configuration:Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginConfiguration;
    .end annotation
.end field

.field private layout:Lorg/apache/logging/log4j/core/StringLayout;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "Layout"
    .end annotation
.end field

.field private literal:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;
        message = "No column name provided"
    .end annotation
.end field

.field private parameter:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private pattern:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private source:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;
        message = "No conversion type provided"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-class v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;->type:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;->build()Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;
    .locals 11

    .line 84
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;->pattern:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->newBuilder()Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;->pattern:Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->withPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 87
    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->withConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 88
    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->withAlwaysWriteExceptions(Z)Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->build()Lorg/apache/logging/log4j/core/layout/PatternLayout;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;->layout:Lorg/apache/logging/log4j/core/StringLayout;

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;->layout:Lorg/apache/logging/log4j/core/StringLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;->literal:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-class v0, Ljava/util/Date;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;->type:Ljava/lang/Class;

    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;->type:Ljava/lang/Class;

    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lorg/apache/logging/log4j/spi/ThreadContextMap;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;->type:Ljava/lang/Class;

    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lorg/apache/logging/log4j/spi/ThreadContextStack;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;->type:Ljava/lang/Class;

    .line 96
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->access$000()Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;->type:Ljava/lang/Class;

    const-string v3, "No \'layout\' or \'literal\' value specified and type ({}) is not compatible with ThreadContextMap, ThreadContextStack, or java.util.Date for the mapping"

    invoke-interface {v0, v3, v2, p0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    return-object v1

    .line 100
    :cond_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;->literal:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;->parameter:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 101
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->access$000()Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    const-string v2, "Only one of \'literal\' or \'parameter\' can be set on the column mapping {}"

    invoke-interface {v0, v2, p0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    return-object v1

    .line 104
    :cond_2
    new-instance v0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;

    iget-object v4, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;->name:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;->source:Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;->layout:Lorg/apache/logging/log4j/core/StringLayout;

    iget-object v7, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;->literal:Ljava/lang/String;

    iget-object v8, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;->parameter:Ljava/lang/String;

    iget-object v9, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;->type:Ljava/lang/Class;

    const/4 v10, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/StringLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$1;)V

    return-object v0
.end method

.method public setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;
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

    .line 108
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 109
    return-object p0
.end method

.method public setLayout(Lorg/apache/logging/log4j/core/StringLayout;)Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;
    .locals 0
    .param p1, "layout"    # Lorg/apache/logging/log4j/core/StringLayout;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "layout"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;->layout:Lorg/apache/logging/log4j/core/StringLayout;

    .line 120
    return-object p0
.end method

.method public setLiteral(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;
    .locals 0
    .param p1, "literal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "literal"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;->literal:Ljava/lang/String;

    .line 131
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;->name:Ljava/lang/String;

    .line 141
    return-object p0
.end method

.method public setParameter(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;
    .locals 0
    .param p1, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "parameter"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;->parameter:Ljava/lang/String;

    .line 152
    return-object p0
.end method

.method public setPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pattern"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;->pattern:Ljava/lang/String;

    .line 163
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;
    .locals 0
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "source"
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;->source:Ljava/lang/String;

    .line 174
    return-object p0
.end method

.method public setType(Ljava/lang/Class;)Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;"
        }
    .end annotation

    .line 185
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;->type:Ljava/lang/Class;

    .line 186
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Builder [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", literal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;->literal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", parameter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;->parameter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", layout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;->layout:Lorg/apache/logging/log4j/core/StringLayout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
