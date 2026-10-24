.class public Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;
.super Ljava/lang/Object;
.source "ColumnConfig.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private configuration:Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginConfiguration;
    .end annotation
.end field

.field private isClob:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private isEventTimestamp:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private isUnicode:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
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
        message = "No name provided"
    .end annotation
.end field

.field private pattern:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;->isUnicode:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;->build()Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;
    .locals 21

    .line 66
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;->name:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 67
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;->access$000()Lorg/apache/logging/log4j/Logger;

    move-result-object v1

    const-string v3, "The column config is not valid because it does not contain a column name."

    invoke-interface {v1, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 68
    return-object v2

    .line 71
    :cond_0
    iget-object v1, v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;->pattern:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/logging/log4j/util/Strings;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 72
    .local v1, "isPattern":Z
    iget-object v3, v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;->literal:Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/logging/log4j/util/Strings;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 74
    .local v3, "isLiteralValue":Z
    if-eqz v1, :cond_1

    if-nez v3, :cond_3

    :cond_1
    if-eqz v1, :cond_2

    iget-boolean v4, v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;->isEventTimestamp:Z

    if-nez v4, :cond_3

    :cond_2
    if-eqz v3, :cond_4

    iget-boolean v4, v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;->isEventTimestamp:Z

    if-eqz v4, :cond_4

    .line 75
    :cond_3
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;->access$000()Lorg/apache/logging/log4j/Logger;

    move-result-object v4

    const-string v5, "The pattern, literal, and isEventTimestamp attributes are mutually exclusive."

    invoke-interface {v4, v5}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 76
    return-object v2

    .line 79
    :cond_4
    iget-boolean v4, v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;->isEventTimestamp:Z

    if-eqz v4, :cond_5

    .line 80
    new-instance v2, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;

    iget-object v6, v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;->name:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/layout/PatternLayout;Ljava/lang/String;ZZZLorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$1;)V

    return-object v2

    .line 83
    :cond_5
    if-eqz v3, :cond_6

    .line 84
    new-instance v2, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;

    iget-object v14, v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;->name:Ljava/lang/String;

    const/4 v15, 0x0

    iget-object v4, v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;->literal:Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v13, v2

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v20}, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/layout/PatternLayout;Ljava/lang/String;ZZZLorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$1;)V

    return-object v2

    .line 87
    :cond_6
    if-eqz v1, :cond_7

    .line 89
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->newBuilder()Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;

    move-result-object v2

    iget-object v4, v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;->pattern:Ljava/lang/String;

    .line 90
    invoke-virtual {v2, v4}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->withPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;

    move-result-object v2

    iget-object v4, v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 91
    invoke-virtual {v2, v4}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->withConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;

    move-result-object v2

    const/4 v4, 0x0

    .line 92
    invoke-virtual {v2, v4}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->withAlwaysWriteExceptions(Z)Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;

    move-result-object v2

    .line 93
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->build()Lorg/apache/logging/log4j/core/layout/PatternLayout;

    move-result-object v2

    .line 94
    .local v2, "layout":Lorg/apache/logging/log4j/core/layout/PatternLayout;
    new-instance v12, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;

    iget-object v5, v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;->name:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-boolean v9, v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;->isUnicode:Z

    iget-boolean v10, v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;->isClob:Z

    const/4 v11, 0x0

    move-object v4, v12

    move-object v6, v2

    invoke-direct/range {v4 .. v11}, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/layout/PatternLayout;Ljava/lang/String;ZZZLorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$1;)V

    return-object v12

    .line 97
    .end local v2    # "layout":Lorg/apache/logging/log4j/core/layout/PatternLayout;
    :cond_7
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;->access$000()Lorg/apache/logging/log4j/Logger;

    move-result-object v4

    const-string v5, "To configure a column you must specify a pattern or literal or set isEventDate to true."

    invoke-interface {v4, v5}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 98
    return-object v2
.end method

.method public setClob(Z)Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;
    .locals 0
    .param p1, "clob"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "clob"
        }
    .end annotation

    .line 107
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;->isClob:Z

    .line 108
    return-object p0
.end method

.method public setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;
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

    .line 117
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 118
    return-object p0
.end method

.method public setEventTimestamp(Z)Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;
    .locals 0
    .param p1, "eventTimestamp"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "eventTimestamp"
        }
    .end annotation

    .line 128
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;->isEventTimestamp:Z

    .line 129
    return-object p0
.end method

.method public setLiteral(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;
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

    .line 139
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;->literal:Ljava/lang/String;

    .line 140
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;
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

    .line 149
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;->name:Ljava/lang/String;

    .line 150
    return-object p0
.end method

.method public setPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;
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

    .line 160
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;->pattern:Ljava/lang/String;

    .line 161
    return-object p0
.end method

.method public setUnicode(Z)Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;
    .locals 0
    .param p1, "unicode"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unicode"
        }
    .end annotation

    .line 170
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;->isUnicode:Z

    .line 171
    return-object p0
.end method
