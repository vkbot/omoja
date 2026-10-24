.class public final Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender;
.super Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;
.source "JdbcAppender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender<",
        "Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "appender"
    name = "JDBC"
    printObject = true
.end annotation


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Z[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p4, "ignoreExceptions"    # Z
    .param p5, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
    .param p6, "manager"    # Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "filter",
            "layout",
            "ignoreExceptions",
            "properties",
            "manager"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Filter;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;Z[",
            "Lorg/apache/logging/log4j/core/config/Property;",
            "Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;",
            ")V"
        }
    .end annotation

    .line 219
    .local p3, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    invoke-direct/range {p0 .. p6}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Z[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;)V

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{ manager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender;->getManager()Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender;->description:Ljava/lang/String;

    .line 221
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Z[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/logging/log4j/core/Filter;
    .param p3, "x2"    # Lorg/apache/logging/log4j/core/Layout;
    .param p4, "x3"    # Z
    .param p5, "x4"    # [Lorg/apache/logging/log4j/core/config/Property;
    .param p6, "x5"    # Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;
    .param p7, "x6"    # Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$1;

    .line 54
    invoke-direct/range {p0 .. p6}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Z[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;)V

    return-void
.end method

.method static synthetic access$000()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 54
    sget-object v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method public static createAppender(Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;)Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "ignore"    # Ljava/lang/String;
    .param p2, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p3, "connectionSource"    # Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;
    .param p4, "bufferSize"    # Ljava/lang/String;
    .param p5, "tableName"    # Ljava/lang/String;
    .param p6, "columnConfigs"    # [Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "ignore",
            "filter",
            "connectionSource",
            "bufferSize",
            "tableName",
            "columnConfigs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder<",
            "TB;>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Filter;",
            "Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;",
            ")",
            "Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    const-string v0, "Name cannot be empty"

    invoke-static {p0, v0}, Lorg/apache/logging/log4j/core/util/Assert;->requireNonEmpty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 195
    const-string v0, "ConnectionSource cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 196
    const-string v0, "Table name cannot be empty"

    invoke-static {p5, v0}, Lorg/apache/logging/log4j/core/util/Assert;->requireNonEmpty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 197
    const-string v0, "ColumnConfigs cannot be empty"

    invoke-static {p6, v0}, Lorg/apache/logging/log4j/core/util/Assert;->requireNonEmpty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 199
    const/4 v0, 0x0

    invoke-static {p4, v0}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 200
    .local v0, "bufferSizeInt":I
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lorg/apache/logging/log4j/core/util/Booleans;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 202
    .local v1, "ignoreExceptions":Z
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender;->newBuilder()Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;

    move-result-object v2

    .line 203
    invoke-virtual {v2, v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->setBufferSize(I)Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;

    move-result-object v2

    .line 204
    invoke-virtual {v2, p6}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->setColumnConfigs([Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;)Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;

    move-result-object v2

    .line 205
    invoke-virtual {v2, p3}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->setConnectionSource(Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;)Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;

    move-result-object v2

    .line 206
    invoke-virtual {v2, p5}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->setTableName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->setName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;

    invoke-virtual {v2, v1}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->setIgnoreExceptions(Z)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;

    invoke-virtual {v2, p2}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->setFilter(Lorg/apache/logging/log4j/core/Filter;)Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;

    .line 207
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->build()Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender;

    move-result-object v2

    .line 202
    return-object v2
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder<",
            "TB;>;>()TB;"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 212
    new-instance v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender$Builder;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcAppender;->description:Ljava/lang/String;

    return-object v0
.end method
