.class public final Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender;
.super Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;
.source "NoSqlAppender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender<",
        "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager<",
        "*>;>;"
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "appender"
    name = "NoSql"
    printObject = true
.end annotation


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Z[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p4, "ignoreExceptions"    # Z
    .param p5, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
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
            "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager<",
            "*>;)V"
        }
    .end annotation

    .line 169
    .local p3, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    .local p6, "manager":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager<*>;"
    invoke-direct/range {p0 .. p6}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Z[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;)V

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{ manager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender;->getManager()Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender;->description:Ljava/lang/String;

    .line 171
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Z[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/logging/log4j/core/Filter;
    .param p3, "x2"    # Lorg/apache/logging/log4j/core/Layout;
    .param p4, "x3"    # Z
    .param p5, "x4"    # [Lorg/apache/logging/log4j/core/config/Property;
    .param p6, "x5"    # Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;
    .param p7, "x6"    # Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$1;

    .line 48
    invoke-direct/range {p0 .. p6}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Z[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;)V

    return-void
.end method

.method static synthetic access$000()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 48
    sget-object v0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method public static createAppender(Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider;)Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender;
    .locals 16
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "ignore"    # Ljava/lang/String;
    .param p2, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p3, "bufferSize"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "bufferSize",
            "provider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Filter;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider<",
            "*>;)",
            "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 142
    .local p4, "provider":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider<*>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p4

    const/4 v0, 0x0

    if-nez v8, :cond_0

    .line 143
    sget-object v1, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "NoSQL provider not specified for appender [{}]."

    invoke-interface {v1, v2, v7}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    return-object v0

    .line 147
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v9, p3

    invoke-static {v9, v1}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 148
    .local v10, "bufferSizeInt":I
    const/4 v1, 0x1

    move-object/from16 v11, p1

    invoke-static {v11, v1}, Lorg/apache/logging/log4j/core/util/Booleans;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 150
    .local v12, "ignoreExceptions":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noSqlManager{ description="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", bufferSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", provider="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 152
    .local v13, "managerName":Ljava/lang/String;
    invoke-static {v13, v10, v8, v0, v0}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;->getNoSqlDatabaseManager(Ljava/lang/String;ILorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider;[Lorg/apache/logging/log4j/core/util/KeyValuePair;Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;

    move-result-object v14

    .line 153
    .local v14, "manager":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager<*>;"
    if-nez v14, :cond_1

    .line 154
    return-object v0

    .line 157
    :cond_1
    new-instance v15, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v4, v12

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Z[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;)V

    return-object v15
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder<",
            "TB;>;>()TB;"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 162
    new-instance v0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender;->description:Ljava/lang/String;

    return-object v0
.end method
