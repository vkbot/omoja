.class public Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;
.super Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender$Builder;
.source "JdbcAppender.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder<",
        "TB;>;>",
        "Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender$Builder<",
        "TB;>;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender;",
        ">;"
    }
.end annotation


# instance fields
.field private bufferSize:I
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private columnConfigs:[Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "ColumnConfigs"
    .end annotation
.end field

.field private columnMappings:[Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "ColumnMappings"
    .end annotation
.end field

.field private connectionSource:Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "ConnectionSource"
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;
        message = "No ConnectionSource provided"
    .end annotation
.end field

.field private immediateFail:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private reconnectIntervalMillis:J
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private tableName:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;
        message = "No table name provided"
    .end annotation
.end field

.field private truncateStrings:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder<TB;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender$Builder;-><init>()V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->truncateStrings:Z

    .line 83
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->reconnectIntervalMillis:J

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 56
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder<TB;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->build()Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender;
    .locals 23

    .line 88
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder<TB;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->columnConfigs:[Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;

    invoke-static {v1}, Lorg/apache/logging/log4j/core/util/Assert;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->columnMappings:[Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;

    invoke-static {v1}, Lorg/apache/logging/log4j/core/util/Assert;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender;->access$000()Lorg/apache/logging/log4j/Logger;

    move-result-object v1

    const-string v3, "Cannot create JdbcAppender without any columns."

    invoke-interface {v1, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 90
    return-object v2

    .line 92
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JdbcManager{name="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", bufferSize="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->bufferSize:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", tableName="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->tableName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", columnConfigs="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->columnConfigs:[Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;

    .line 93
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", columnMappings="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->columnMappings:[Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;

    .line 94
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x7d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "managerName":Ljava/lang/String;
    iget v5, v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->bufferSize:I

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->getLayout()Lorg/apache/logging/log4j/core/Layout;

    move-result-object v6

    iget-object v7, v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->connectionSource:Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;

    iget-object v8, v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->tableName:Ljava/lang/String;

    iget-object v9, v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->columnConfigs:[Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;

    iget-object v10, v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->columnMappings:[Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;

    iget-boolean v11, v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->immediateFail:Z

    iget-wide v12, v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->reconnectIntervalMillis:J

    iget-boolean v14, v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->truncateStrings:Z

    move-object v4, v1

    invoke-static/range {v4 .. v14}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->getManager(Ljava/lang/String;ILorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;Ljava/lang/String;[Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;[Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;ZJZ)Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;

    move-result-object v3

    .line 98
    .local v3, "manager":Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;
    if-nez v3, :cond_1

    .line 99
    return-object v2

    .line 101
    :cond_1
    new-instance v2, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->getLayout()Lorg/apache/logging/log4j/core/Layout;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->isIgnoreExceptions()Z

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->getPropertyArray()[Lorg/apache/logging/log4j/core/config/Property;

    move-result-object v20

    const/16 v22, 0x0

    move-object v15, v2

    move-object/from16 v21, v3

    invoke-direct/range {v15 .. v22}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Z[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$1;)V

    return-object v2
.end method

.method public getReconnectIntervalMillis()J
    .locals 2

    .line 106
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder<TB;>;"
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->reconnectIntervalMillis:J

    return-wide v0
.end method

.method public isImmediateFail()Z
    .locals 1

    .line 110
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->immediateFail:Z

    return v0
.end method

.method public setBufferSize(I)Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;
    .locals 1
    .param p1, "bufferSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 122
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder<TB;>;"
    iput p1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->bufferSize:I

    .line 123
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;

    return-object v0
.end method

.method public varargs setColumnConfigs([Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;)Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;
    .locals 1
    .param p1, "columnConfigs"    # [Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "columnConfigs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;",
            ")TB;"
        }
    .end annotation

    .line 134
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->columnConfigs:[Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;

    .line 135
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;

    return-object v0
.end method

.method public varargs setColumnMappings([Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;)Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;
    .locals 1
    .param p1, "columnMappings"    # [Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "columnMappings"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;",
            ")TB;"
        }
    .end annotation

    .line 139
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->columnMappings:[Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;

    .line 140
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;

    return-object v0
.end method

.method public setConnectionSource(Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;)Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;
    .locals 1
    .param p1, "connectionSource"    # Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "connectionSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;",
            ")TB;"
        }
    .end annotation

    .line 151
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->connectionSource:Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;

    .line 152
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;

    return-object v0
.end method

.method public setImmediateFail(Z)V
    .locals 0
    .param p1, "immediateFail"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "immediateFail"
        }
    .end annotation

    .line 156
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->immediateFail:Z

    .line 157
    return-void
.end method

.method public setReconnectIntervalMillis(J)V
    .locals 0
    .param p1, "reconnectIntervalMillis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "reconnectIntervalMillis"
        }
    .end annotation

    .line 160
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder<TB;>;"
    iput-wide p1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->reconnectIntervalMillis:J

    .line 161
    return-void
.end method

.method public setTableName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tableName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 171
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->tableName:Ljava/lang/String;

    .line 172
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;

    return-object v0
.end method

.method public setTruncateStrings(Z)Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;
    .locals 1
    .param p1, "truncateStrings"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "truncateStrings"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 176
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->truncateStrings:Z

    .line 177
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;

    return-object v0
.end method
