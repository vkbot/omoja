.class final Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$JdbcDatabaseManagerFactory;
.super Ljava/lang/Object;
.source "JdbcDatabaseManager.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/appender/ManagerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JdbcDatabaseManagerFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/appender/ManagerFactory<",
        "Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;",
        "Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;",
        ">;"
    }
.end annotation


# static fields
.field private static final PARAMETER_MARKER:C = '?'


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$1;

    .line 106
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$JdbcDatabaseManagerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createManager(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "name",
            "data"
        }
    .end annotation

    .line 106
    check-cast p2, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$JdbcDatabaseManagerFactory;->createManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;

    move-result-object p1

    return-object p1
.end method

.method public createManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;
    .locals 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "data"
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "insert into "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->access$000(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "INSERT"

    move-object/from16 v8, p2

    invoke-static {v1, v8, v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->access$100(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;Ljava/lang/StringBuilder;)V

    .line 116
    const-string v1, ") values ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const/4 v1, 0x1

    .line 118
    .local v1, "i":I
    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->access$200(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)[Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;

    move-result-object v2

    const/16 v3, 0x2c

    const/16 v4, 0x3f

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 119
    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->access$200(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)[Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;

    move-result-object v2

    array-length v6, v2

    move v7, v5

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v9, v2, v7

    .line 120
    .local v9, "mapping":Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;
    invoke-virtual {v9}, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->getName()Ljava/lang/String;

    move-result-object v10

    .line 121
    .local v10, "mappingName":Ljava/lang/String;
    invoke-virtual {v9}, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->getLiteralValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/logging/log4j/util/Strings;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 122
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->access$300()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 123
    invoke-virtual {v9}, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->getLiteralValue()Ljava/lang/String;

    move-result-object v13

    .line 122
    const-string v14, "Adding INSERT VALUES literal for ColumnMapping[{}]: {}={} "

    invoke-virtual {v11, v14, v12, v10, v13}, Lorg/apache/logging/log4j/status/StatusLogger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    invoke-virtual {v9}, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->getLiteralValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 125
    :cond_0
    invoke-virtual {v9}, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->getParameter()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/logging/log4j/util/Strings;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 126
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->access$400()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 127
    invoke-virtual {v9}, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->getParameter()Ljava/lang/String;

    move-result-object v13

    .line 126
    const-string v14, "Adding INSERT VALUES parameter for ColumnMapping[{}]: {}={} "

    invoke-virtual {v11, v14, v12, v10, v13}, Lorg/apache/logging/log4j/status/StatusLogger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    invoke-virtual {v9}, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->getParameter()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 130
    :cond_1
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->access$500()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 131
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    .line 130
    const-string v14, "Adding INSERT VALUES parameter marker for ColumnMapping[{}]: {}={} "

    invoke-virtual {v11, v14, v12, v10, v13}, Lorg/apache/logging/log4j/status/StatusLogger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    nop

    .end local v9    # "mapping":Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;
    .end local v10    # "mappingName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 119
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 138
    :cond_2
    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->access$600(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)[Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v5

    goto :goto_2

    :cond_3
    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->access$600(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)[Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;

    move-result-object v2

    array-length v2, v2

    :goto_2
    move v9, v2

    .line 139
    .local v9, "columnConfigsLen":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(I)V

    move-object v10, v2

    .line 140
    .local v10, "columnConfigs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;>;"
    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->access$600(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)[Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 141
    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->access$600(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)[Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;

    move-result-object v2

    array-length v6, v2

    :goto_3
    if-ge v5, v6, :cond_5

    aget-object v7, v2, v5

    .line 142
    .local v7, "config":Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;
    invoke-virtual {v7}, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;->getLiteralValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/logging/log4j/util/Strings;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 143
    invoke-virtual {v7}, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;->getLiteralValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 145
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    :goto_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    .end local v7    # "config":Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 152
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x29

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 155
    .local v11, "sqlStatement":Ljava/lang/String;
    new-instance v12, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;

    const/4 v7, 0x0

    move-object v2, v12

    move-object/from16 v3, p1

    move-object v4, v11

    move-object v5, v10

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$1;)V

    return-object v12
.end method
