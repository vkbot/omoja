.class public final Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;
.super Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;
.source "JdbcDatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;,
        Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;,
        Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$JdbcDatabaseManagerFactory;,
        Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$JdbcDatabaseManagerFactory;


# instance fields
.field private final columnConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;",
            ">;"
        }
    .end annotation
.end field

.field private volatile columnMetaData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private volatile connection:Ljava/sql/Connection;

.field private final factoryData:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;

.field private volatile isBatchSupported:Z

.field private volatile reconnector:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;

.field private final sqlStatement:Ljava/lang/String;

.field private volatile statement:Ljava/sql/PreparedStatement;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 336
    new-instance v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$JdbcDatabaseManagerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$JdbcDatabaseManagerFactory;-><init>(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$1;)V

    sput-object v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->INSTANCE:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$JdbcDatabaseManagerFactory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sqlStatement"    # Ljava/lang/String;
    .param p4, "factoryData"    # Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "sqlStatement",
            "columnConfigs",
            "factoryData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;",
            ">;",
            "Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;",
            ")V"
        }
    .end annotation

    .line 480
    .local p3, "columnConfigs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;>;"
    invoke-virtual {p4}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->getBufferSize()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;-><init>(Ljava/lang/String;I)V

    .line 481
    iput-object p2, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->sqlStatement:Ljava/lang/String;

    .line 482
    iput-object p3, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->columnConfigs:Ljava/util/List;

    .line 483
    iput-object p4, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->factoryData:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;

    .line 484
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/util/List;
    .param p4, "x3"    # Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;
    .param p5, "x4"    # Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$1;

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;Ljava/lang/StringBuilder;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;
    .param p2, "x2"    # Ljava/lang/StringBuilder;

    .line 64
    invoke-static {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->appendColumnNames(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;)Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;

    .line 64
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->factoryData:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;

    return-object v0
.end method

.method static synthetic access$1100()Lorg/apache/logging/log4j/status/StatusLogger;
    .locals 1

    .line 64
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->logger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300()Lorg/apache/logging/log4j/status/StatusLogger;
    .locals 1

    .line 64
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->logger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lorg/apache/logging/log4j/status/StatusLogger;
    .locals 1

    .line 64
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->logger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Lorg/apache/logging/log4j/status/StatusLogger;
    .locals 1

    .line 64
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->logger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Lorg/apache/logging/log4j/status/StatusLogger;
    .locals 1

    .line 64
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->logger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->connectAndPrepare()V

    return-void
.end method

.method static synthetic access$902(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;)Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;
    .locals 0
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;
    .param p1, "x1"    # Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;

    .line 64
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->reconnector:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;

    return-object p1
.end method

.method private static appendColumnName(ILjava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p0, "i"    # I
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "i",
            "columnName",
            "sb"
        }
    .end annotation

    .line 339
    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    .line 340
    const/16 v0, 0x2c

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    return-void
.end method

.method private static appendColumnNames(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;Ljava/lang/StringBuilder;)V
    .locals 16
    .param p0, "sqlVerb"    # Ljava/lang/String;
    .param p1, "data"    # Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "sqlVerb",
            "data",
            "sb"
        }
    .end annotation

    .line 352
    move-object/from16 v0, p2

    const/4 v1, 0x1

    .line 353
    .local v1, "i":I
    const-string v2, "Appending {} {}[{}]: {}={} "

    .line 354
    .local v2, "messagePattern":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->access$200(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)[Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 355
    invoke-static/range {p1 .. p1}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->access$200(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)[Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;

    move-result-object v3

    array-length v5, v3

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v14, v3, v6

    .line 356
    .local v14, "colMapping":Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;
    invoke-virtual {v14}, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->getName()Ljava/lang/String;

    move-result-object v15

    .line 357
    .local v15, "columnName":Ljava/lang/String;
    invoke-static {v1, v15, v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->appendColumnName(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 358
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->logger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v7

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v8, "Appending {} {}[{}]: {}={} "

    move-object/from16 v9, p0

    move-object v12, v15

    move-object v13, v14

    invoke-virtual/range {v7 .. v13}, Lorg/apache/logging/log4j/status/StatusLogger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 360
    nop

    .end local v14    # "colMapping":Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;
    .end local v15    # "columnName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 355
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 363
    :cond_0
    invoke-static/range {p1 .. p1}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->access$600(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)[Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 364
    invoke-static/range {p1 .. p1}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->access$600(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)[Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;

    move-result-object v3

    array-length v5, v3

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v13, v3, v4

    .line 365
    .local v13, "colConfig":Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;
    invoke-virtual {v13}, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;->getColumnName()Ljava/lang/String;

    move-result-object v14

    .line 366
    .local v14, "columnName":Ljava/lang/String;
    invoke-static {v1, v14, v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->appendColumnName(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 367
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->logger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v6

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v7, "Appending {} {}[{}]: {}={} "

    move-object/from16 v8, p0

    move-object v11, v14

    move-object v12, v13

    invoke-virtual/range {v6 .. v12}, Lorg/apache/logging/log4j/status/StatusLogger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 369
    nop

    .end local v13    # "colConfig":Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;
    .end local v14    # "columnName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 364
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 372
    :cond_1
    return-void
.end method

.method private checkConnection()V
    .locals 8

    .line 487
    const/4 v0, 0x1

    .line 489
    .local v0, "connClosed":Z
    :try_start_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->connection:Ljava/sql/Connection;

    invoke-direct {p0, v1}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->isClosed(Ljava/sql/Connection;)Z

    move-result v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 492
    goto :goto_0

    .line 490
    :catch_0
    move-exception v1

    .line 493
    :goto_0
    const/4 v1, 0x1

    .line 495
    .local v1, "stmtClosed":Z
    :try_start_1
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    invoke-direct {p0, v2}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->isClosed(Ljava/sql/Statement;)Z

    move-result v2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v2

    .line 498
    goto :goto_1

    .line 496
    :catch_1
    move-exception v2

    .line 499
    :goto_1
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    if-eqz v1, :cond_3

    .line 501
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->closeResources(Z)V

    .line 503
    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->reconnector:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->factoryData:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;

    invoke-static {v3}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->access$1500(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 504
    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->reconnector:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;->latch()V

    .line 505
    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->connection:Ljava/sql/Connection;

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v3, :cond_2

    .line 509
    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    if-eqz v3, :cond_1

    goto :goto_2

    .line 510
    :cond_1
    new-instance v3, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 511
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->connection:Ljava/sql/Connection;

    aput-object v2, v6, v4

    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->fieldsToString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v5

    const-string v2, "Error writing to JDBC Manager \'%s\': JDBC statement not available [%s]."

    invoke-direct {v3, v2, v6}, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 506
    :cond_2
    new-instance v3, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;

    new-array v5, v5, [Ljava/lang/Object;

    .line 507
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->fieldsToString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v4

    const-string v2, "Error writing to JDBC Manager \'%s\': JDBC connection not available [%s]"

    invoke-direct {v3, v2, v5}, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 515
    :cond_3
    :goto_2
    return-void
.end method

.method private commitAndCloseAll()Z
    .locals 8

    .line 572
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->connection:Ljava/sql/Connection;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    if-eqz v0, :cond_2

    .line 574
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->commitAndClose()Z
    :try_end_0
    .catch Lorg/apache/logging/log4j/core/appender/AppenderLoggingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    return v1

    .line 576
    :catch_0
    move-exception v7

    .line 578
    .local v7, "e":Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;
    invoke-virtual {v7}, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 579
    .local v0, "cause":Ljava/lang/Throwable;
    if-nez v0, :cond_1

    move-object v4, v7

    goto :goto_0

    :cond_1
    move-object v4, v0

    .line 580
    .local v4, "actual":Ljava/lang/Throwable;
    :goto_0
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->logger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 581
    invoke-virtual {v7}, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;->toString()Ljava/lang/String;

    move-result-object v6

    .line 580
    const-string v3, "{} committing and closing connection: {}"

    invoke-virtual/range {v2 .. v7}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 584
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v4    # "actual":Ljava/lang/Throwable;
    .end local v7    # "e":Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;
    :cond_2
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->factoryData:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->access$1600(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 585
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->factoryData:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->access$1600(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;->stop()V

    .line 587
    :cond_3
    return v1
.end method

.method private connectAndPrepare()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 591
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->logger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->getConnectionSource()Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;

    move-result-object v1

    const-string v2, "Acquiring JDBC connection from {}"

    invoke-virtual {v0, v2, v1}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 592
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->getConnectionSource()Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->connection:Ljava/sql/Connection;

    .line 593
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->logger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->connection:Ljava/sql/Connection;

    const-string v2, "Acquired JDBC connection {}"

    invoke-virtual {v0, v2, v1}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 594
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->logger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->connection:Ljava/sql/Connection;

    const-string v2, "Getting connection metadata {}"

    invoke-virtual {v0, v2, v1}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 595
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->connection:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v0

    .line 596
    .local v0, "databaseMetaData":Ljava/sql/DatabaseMetaData;
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->logger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v1

    const-string v2, "Connection metadata {}"

    invoke-virtual {v1, v2, v0}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 597
    invoke-interface {v0}, Ljava/sql/DatabaseMetaData;->supportsBatchUpdates()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->isBatchSupported:Z

    .line 598
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->logger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->isBatchSupported:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "Connection supportsBatchUpdates: {}"

    invoke-virtual {v1, v3, v2}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 599
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->connection:Ljava/sql/Connection;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 600
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->logger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->sqlStatement:Ljava/lang/String;

    const-string v3, "Preparing SQL {}"

    invoke-virtual {v1, v3, v2}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 601
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->connection:Ljava/sql/Connection;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->sqlStatement:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    .line 602
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->logger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    const-string v3, "Prepared SQL {}"

    invoke-virtual {v1, v3, v2}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 603
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->factoryData:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;

    invoke-static {v1}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->access$1700(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 604
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->initColumnMetaData()V

    .line 606
    :cond_0
    return-void
.end method

.method private createReconnector()Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;
    .locals 2

    .line 621
    new-instance v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;-><init>(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$1;)V

    .line 622
    .local v0, "recon":Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;->setDaemon(Z)V

    .line 623
    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;->setPriority(I)V

    .line 624
    return-object v0
.end method

.method private createSqlSelect()Ljava/lang/String;
    .locals 3

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 629
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->factoryData:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;

    const-string v2, "SELECT"

    invoke-static {v2, v1, v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->appendColumnNames(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;Ljava/lang/StringBuilder;)V

    .line 630
    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->factoryData:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;

    invoke-static {v1}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->access$000(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    const-string v1, " where 1=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private fieldsToString()Ljava/lang/String;
    .locals 3

    .line 637
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->columnConfigs:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->sqlStatement:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->factoryData:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->connection:Ljava/sql/Connection;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->reconnector:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->isBatchSupported:Z

    .line 639
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->columnMetaData:Ljava/util/Map;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 637
    const-string v1, "columnConfigs=%s, sqlStatement=%s, factoryData=%s, connection=%s, statement=%s, reconnector=%s, isBatchSupported=%s, columnMetaData=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFactory()Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$JdbcDatabaseManagerFactory;
    .locals 1

    .line 375
    sget-object v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->INSTANCE:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$JdbcDatabaseManagerFactory;

    return-object v0
.end method

.method public static getJDBCDatabaseManager(Ljava/lang/String;ILorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;Ljava/lang/String;[Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;)Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;
    .locals 12
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "bufferSize"    # I
    .param p2, "connectionSource"    # Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "columnConfigs"    # [Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;
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
            "bufferSize",
            "connectionSource",
            "tableName",
            "columnConfigs"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 393
    new-instance v11, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;

    sget-object v6, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;

    const/4 v2, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x1388

    const/4 v10, 0x1

    move-object v0, v11

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v10}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;-><init>(ILorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;Ljava/lang/String;[Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;[Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;ZJZ)V

    .line 396
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->getFactory()Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$JdbcDatabaseManagerFactory;

    move-result-object v0

    .line 393
    move-object v1, p0

    invoke-static {p0, v11, v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->getManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager$AbstractFactoryData;Lorg/apache/logging/log4j/core/appender/ManagerFactory;)Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;

    return-object v0
.end method

.method public static getManager(Ljava/lang/String;ILorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;Ljava/lang/String;[Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;[Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;)Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;
    .locals 12
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "bufferSize"    # I
    .param p3, "connectionSource"    # Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;
    .param p4, "tableName"    # Ljava/lang/String;
    .param p5, "columnConfigs"    # [Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;
    .param p6, "columnMappings"    # [Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;
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
            "bufferSize",
            "layout",
            "connectionSource",
            "tableName",
            "columnConfigs",
            "columnMappings"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;",
            "Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;",
            "[",
            "Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;",
            ")",
            "Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 415
    .local p2, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    new-instance v11, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;

    const/4 v7, 0x0

    const-wide/16 v8, 0x1388

    const/4 v10, 0x1

    move-object v0, v11

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v10}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;-><init>(ILorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;Ljava/lang/String;[Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;[Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;ZJZ)V

    .line 416
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->getFactory()Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$JdbcDatabaseManagerFactory;

    move-result-object v0

    .line 415
    move-object v1, p0

    invoke-static {p0, v11, v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->getManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager$AbstractFactoryData;Lorg/apache/logging/log4j/core/appender/ManagerFactory;)Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;

    return-object v0
.end method

.method public static getManager(Ljava/lang/String;ILorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;Ljava/lang/String;[Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;[Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;ZJ)Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;
    .locals 12
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "bufferSize"    # I
    .param p3, "connectionSource"    # Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;
    .param p4, "tableName"    # Ljava/lang/String;
    .param p5, "columnConfigs"    # [Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;
    .param p6, "columnMappings"    # [Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;
    .param p7, "immediateFail"    # Z
    .param p8, "reconnectIntervalMillis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
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
            "bufferSize",
            "layout",
            "connectionSource",
            "tableName",
            "columnConfigs",
            "columnMappings",
            "immediateFail",
            "reconnectIntervalMillis"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;",
            "Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;",
            "[",
            "Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;",
            "ZJ)",
            "Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 440
    .local p2, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    new-instance v11, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;

    const/4 v2, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x1388

    const/4 v10, 0x1

    move-object v0, v11

    move v1, p1

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v10}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;-><init>(ILorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;Ljava/lang/String;[Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;[Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;ZJZ)V

    .line 441
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->getFactory()Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$JdbcDatabaseManagerFactory;

    move-result-object v0

    .line 440
    move-object v1, p0

    invoke-static {p0, v11, v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->getManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager$AbstractFactoryData;Lorg/apache/logging/log4j/core/appender/ManagerFactory;)Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;

    return-object v0
.end method

.method public static getManager(Ljava/lang/String;ILorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;Ljava/lang/String;[Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;[Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;ZJZ)Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;
    .locals 12
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "bufferSize"    # I
    .param p3, "connectionSource"    # Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;
    .param p4, "tableName"    # Ljava/lang/String;
    .param p5, "columnConfigs"    # [Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;
    .param p6, "columnMappings"    # [Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;
    .param p7, "immediateFail"    # Z
    .param p8, "reconnectIntervalMillis"    # J
    .param p10, "truncateStrings"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
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
            "bufferSize",
            "layout",
            "connectionSource",
            "tableName",
            "columnConfigs",
            "columnMappings",
            "immediateFail",
            "reconnectIntervalMillis",
            "truncateStrings"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;",
            "Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;",
            "[",
            "Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;",
            "ZJZ)",
            "Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;"
        }
    .end annotation

    .line 464
    .local p2, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    new-instance v11, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;

    move-object v0, v11

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;-><init>(ILorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;Ljava/lang/String;[Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;[Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;ZJZ)V

    .line 465
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->getFactory()Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$JdbcDatabaseManagerFactory;

    move-result-object v0

    .line 464
    move-object v1, p0

    invoke-static {p0, v11, v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->getManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager$AbstractFactoryData;Lorg/apache/logging/log4j/core/appender/ManagerFactory;)Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;

    return-object v0
.end method

.method private initColumnMetaData()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 659
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->createSqlSelect()Ljava/lang/String;

    move-result-object v0

    .line 660
    .local v0, "sqlSelect":Ljava/lang/String;
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->logger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->factoryData:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;

    invoke-static {v2}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->access$000(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Getting SQL metadata for table {}: {}"

    invoke-virtual {v1, v3, v2, v0}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 661
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->connection:Ljava/sql/Connection;

    invoke-interface {v1, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    .line 662
    .local v1, "mdStatement":Ljava/sql/PreparedStatement;
    :try_start_0
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v2

    .line 663
    .local v2, "rsMetaData":Ljava/sql/ResultSetMetaData;
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->logger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v3

    const-string v4, "SQL metadata: {}"

    invoke-virtual {v3, v4, v2}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 664
    if-eqz v2, :cond_1

    .line 665
    invoke-interface {v2}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v3

    .line 666
    .local v3, "columnCount":I
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->columnMetaData:Ljava/util/Map;

    .line 667
    const/4 v4, 0x0

    .local v4, "i":I
    const/4 v5, 0x1

    .local v5, "j":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 668
    new-instance v6, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;

    invoke-direct {v6, v2, v5}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;-><init>(Ljava/sql/ResultSetMetaData;I)V

    .line 669
    .local v6, "value":Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;
    iget-object v7, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->columnMetaData:Ljava/util/Map;

    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->getNameKey()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    nop

    .end local v6    # "value":Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 671
    .end local v3    # "columnCount":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    :cond_0
    goto :goto_1

    .line 672
    :cond_1
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->logger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v3

    const-string v4, "{}: truncateStrings is true and ResultSetMetaData is null for statement: {}; manager will not perform truncation."

    .line 674
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 672
    invoke-virtual {v3, v4, v5, v1}, Lorg/apache/logging/log4j/status/StatusLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    .end local v2    # "rsMetaData":Ljava/sql/ResultSetMetaData;
    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    .line 677
    .end local v1    # "mdStatement":Ljava/sql/PreparedStatement;
    :cond_2
    return-void

    .line 661
    .restart local v1    # "mdStatement":Ljava/sql/PreparedStatement;
    :catchall_0
    move-exception v2

    .end local v0    # "sqlSelect":Ljava/lang/String;
    .end local v1    # "mdStatement":Ljava/sql/PreparedStatement;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 676
    .restart local v0    # "sqlSelect":Ljava/lang/String;
    .restart local v1    # "mdStatement":Ljava/sql/PreparedStatement;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_3

    :try_start_2
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v3
.end method

.method private isClosed(Ljava/sql/Connection;)Z
    .locals 1
    .param p1, "connection"    # Ljava/sql/Connection;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "connection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 698
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/sql/Connection;->isClosed()Z

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

.method private isClosed(Ljava/sql/Statement;)Z
    .locals 1
    .param p1, "statement"    # Ljava/sql/Statement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "statement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 687
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/sql/Statement;->isClosed()Z

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

.method private reconnectOn(Ljava/lang/Exception;)V
    .locals 7
    .param p1, "exception"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "exception"
        }
    .end annotation

    .line 702
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->factoryData:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->access$1900(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 705
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->reconnector:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;

    if-nez v0, :cond_1

    .line 706
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->createReconnector()Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->reconnector:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;

    .line 708
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->reconnector:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;->reconnect()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    goto :goto_0

    .line 709
    :catch_0
    move-exception v0

    move-object v4, v0

    .line 710
    .local v4, "reconnectEx":Ljava/sql/SQLException;
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->logger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->factoryData:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;

    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->reconnector:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;

    .line 711
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;->getName()Ljava/lang/String;

    move-result-object v5

    .line 710
    const-string v2, "Cannot reestablish JDBC connection to {}: {}; starting reconnector thread {}"

    move-object v6, v4

    invoke-virtual/range {v1 .. v6}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 712
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->reconnector:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;->start()V

    .line 713
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->reconnector:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;->latch()V

    .line 714
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->connection:Ljava/sql/Connection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 715
    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->factoryData:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 716
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->fieldsToString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Error sending to %s for %s [%s]"

    invoke-direct {v0, p1, v2, v1}, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 720
    .end local v4    # "reconnectEx":Ljava/sql/SQLException;
    :cond_1
    :goto_0
    return-void

    .line 703
    :cond_2
    new-instance v0, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;

    const-string v1, "Cannot connect and prepare"

    invoke-direct {v0, v1, p1}, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private setFields(Lorg/apache/logging/log4j/message/MapMessage;)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mapMessage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/message/MapMessage<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 723
    .local p1, "mapMessage":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<**>;"
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/logging/log4j/message/MapMessage;->getIndexedReadOnlyStringMap()Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;

    move-result-object v1

    .line 724
    .local v1, "map":Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;
    iget-object v2, v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 725
    .local v2, "simpleName":Ljava/lang/String;
    const/4 v3, 0x1

    .line 726
    .local v3, "j":I
    iget-object v4, v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->factoryData:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;

    invoke-static {v4}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->access$200(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)[Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 727
    iget-object v4, v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->factoryData:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;

    invoke-static {v4}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->access$200(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)[Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;

    move-result-object v10

    array-length v11, v10

    const/4 v4, 0x0

    move v12, v3

    move v13, v4

    .end local v3    # "j":I
    .local v12, "j":I
    :goto_0
    if-ge v13, v11, :cond_4

    aget-object v14, v10, v13

    .line 728
    .local v14, "mapping":Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;
    invoke-virtual {v14}, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->getLiteralValue()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 729
    invoke-virtual {v14}, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->getSource()Ljava/lang/String;

    move-result-object v15

    .line 730
    .local v15, "source":Ljava/lang/String;
    invoke-static {v15}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v14}, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, v15

    :goto_1
    move-object v9, v3

    .line 731
    .local v9, "key":Ljava/lang/String;
    invoke-interface {v1, v9}, Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 732
    .local v8, "value":Ljava/lang/Object;
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->logger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/logging/log4j/status/StatusLogger;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 733
    instance-of v3, v8, Ljava/lang/String;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    .line 734
    invoke-static {v8, v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    :goto_2
    nop

    .line 735
    .local v7, "valueStr":Ljava/lang/String;
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->logger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 736
    invoke-virtual {v14}, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->getName()Ljava/lang/String;

    move-result-object v16

    .line 735
    const-string v4, "{} setObject({}, {}) for key \'{}\' and mapping \'{}\'"

    move-object v5, v2

    move-object/from16 v17, v1

    move-object v1, v8

    .end local v8    # "value":Ljava/lang/Object;
    .local v1, "value":Ljava/lang/Object;
    .local v17, "map":Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;
    move-object v8, v9

    move-object/from16 v18, v9

    .end local v9    # "key":Ljava/lang/String;
    .local v18, "key":Ljava/lang/String;
    move-object/from16 v9, v16

    invoke-virtual/range {v3 .. v9}, Lorg/apache/logging/log4j/status/StatusLogger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 732
    .end local v7    # "valueStr":Ljava/lang/String;
    .end local v17    # "map":Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;
    .end local v18    # "key":Ljava/lang/String;
    .local v1, "map":Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;
    .restart local v8    # "value":Ljava/lang/Object;
    .restart local v9    # "key":Ljava/lang/String;
    :cond_2
    move-object/from16 v17, v1

    move-object v1, v8

    move-object/from16 v18, v9

    .line 738
    .end local v8    # "value":Ljava/lang/Object;
    .end local v9    # "key":Ljava/lang/String;
    .local v1, "value":Ljava/lang/Object;
    .restart local v17    # "map":Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;
    .restart local v18    # "key":Ljava/lang/String;
    :goto_3
    invoke-virtual {v14}, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->getNameKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v12, v3, v1}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->setStatementObject(ILjava/lang/String;Ljava/lang/Object;)V

    .line 739
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 728
    .end local v15    # "source":Ljava/lang/String;
    .end local v17    # "map":Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;
    .end local v18    # "key":Ljava/lang/String;
    .local v1, "map":Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;
    :cond_3
    move-object/from16 v17, v1

    .line 727
    .end local v1    # "map":Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;
    .end local v14    # "mapping":Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;
    .restart local v17    # "map":Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;
    :goto_4
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v17

    goto :goto_0

    .end local v17    # "map":Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;
    .restart local v1    # "map":Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;
    :cond_4
    move-object/from16 v17, v1

    .end local v1    # "map":Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;
    .restart local v17    # "map":Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;
    move v3, v12

    goto :goto_5

    .line 726
    .end local v12    # "j":I
    .end local v17    # "map":Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;
    .restart local v1    # "map":Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;
    .restart local v3    # "j":I
    :cond_5
    move-object/from16 v17, v1

    .line 743
    .end local v1    # "map":Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;
    .restart local v17    # "map":Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;
    :goto_5
    return-void
.end method

.method private setStatementObject(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "j"    # I
    .param p2, "nameKey"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "j",
            "nameKey",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 749
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    if-eqz v0, :cond_2

    .line 752
    if-nez p3, :cond_1

    .line 753
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->columnMetaData:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->columnMetaData:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->getType()I

    move-result v1

    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setNull(II)V

    goto :goto_0

    .line 754
    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;

    const-string v1, "Cannot set a value when the column metadata is null."

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 761
    :cond_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    invoke-direct {p0, p2, p3}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->truncate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;)V

    .line 763
    :goto_0
    return-void

    .line 750
    :cond_2
    new-instance v0, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;

    const-string v1, "Cannot set a value when the PreparedStatement is null."

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private truncate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "nameKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "nameKey",
            "value"
        }
    .end annotation

    .line 784
    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->factoryData:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->access$1700(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->columnMetaData:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 785
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->columnMetaData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;

    .line 786
    .local v0, "resultSetColumnMetaData":Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;
    if-eqz v0, :cond_0

    .line 787
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->isStringType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 788
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->truncate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 791
    :cond_0
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->logger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->connection:Ljava/sql/Connection;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    const-string v4, "Missing ResultSetColumnMetaData for {}, connection={}, statement={}"

    invoke-virtual {v1, v4, p1, v2, v3}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 795
    .end local v0    # "resultSetColumnMetaData":Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;
    :cond_1
    :goto_0
    return-object p2
.end method


# virtual methods
.method protected closeResources(Z)V
    .locals 4
    .param p1, "logExceptions"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "logExceptions"
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    .line 519
    .local v0, "tempPreparedStatement":Ljava/sql/PreparedStatement;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    .line 523
    :try_start_0
    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/Closer;->close(Ljava/lang/AutoCloseable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    goto :goto_0

    .line 524
    :catch_0
    move-exception v2

    .line 525
    .local v2, "e":Ljava/lang/Exception;
    if-eqz p1, :cond_0

    .line 526
    const-string v3, "Failed to close SQL statement logging event or flushing buffer"

    invoke-virtual {p0, v3, v2}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->logWarn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 530
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->connection:Ljava/sql/Connection;

    .line 531
    .local v2, "tempConnection":Ljava/sql/Connection;
    iput-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->connection:Ljava/sql/Connection;

    .line 535
    :try_start_1
    invoke-static {v2}, Lorg/apache/logging/log4j/core/util/Closer;->close(Ljava/lang/AutoCloseable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 540
    goto :goto_1

    .line 536
    :catch_1
    move-exception v1

    .line 537
    .local v1, "e":Ljava/lang/Exception;
    if-eqz p1, :cond_1

    .line 538
    const-string v3, "Failed to close database connection logging event or flushing buffer"

    invoke-virtual {p0, v3, v1}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->logWarn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 541
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method protected commitAndClose()Z
    .locals 8

    .line 545
    const/4 v0, 0x1

    .line 547
    .local v0, "closed":Z
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->connection:Ljava/sql/Connection;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->connection:Ljava/sql/Connection;

    invoke-interface {v2}, Ljava/sql/Connection;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 548
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->isBuffered()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->isBatchSupported:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    if-eqz v2, :cond_0

    .line 549
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->logger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v2

    const-string v3, "Executing batch PreparedStatement {}"

    iget-object v4, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    invoke-virtual {v2, v3, v4}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    :try_start_1
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeBatch()[I

    move-result-object v2
    :try_end_1
    .catch Ljava/sql/SQLTransactionRollbackException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 556
    .local v2, "result":[I
    goto :goto_0

    .line 553
    .end local v2    # "result":[I
    :catch_0
    move-exception v2

    .line 554
    .local v2, "e":Ljava/sql/SQLTransactionRollbackException;
    :try_start_2
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->logger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v3

    const-string v4, "{} executing batch PreparedStatement {}, retrying."

    iget-object v5, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    invoke-virtual {v3, v4, v2, v5}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 555
    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v3}, Ljava/sql/PreparedStatement;->executeBatch()[I

    move-result-object v3

    move-object v2, v3

    .line 557
    .local v2, "result":[I
    :goto_0
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->logger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v3

    const-string v4, "Batch result: {}"

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 559
    .end local v2    # "result":[I
    :cond_0
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->logger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v2

    const-string v3, "Committing Connection {}"

    iget-object v4, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->connection:Ljava/sql/Connection;

    invoke-virtual {v2, v3, v4}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 560
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->connection:Ljava/sql/Connection;

    invoke-interface {v2}, Ljava/sql/Connection;->commit()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 566
    :cond_1
    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->closeResources(Z)V

    .line 567
    nop

    .line 568
    return v1

    .line 566
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 562
    :catch_1
    move-exception v2

    .line 563
    .local v2, "e":Ljava/sql/SQLException;
    :try_start_3
    new-instance v3, Lorg/apache/logging/log4j/core/appender/db/DbAppenderLoggingException;

    const-string v4, "Failed to commit transaction logging event or flushing buffer [%s]"

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 564
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->fieldsToString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v3, v2, v4, v5}, Lorg/apache/logging/log4j/core/appender/db/DbAppenderLoggingException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v0    # "closed":Z
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 566
    .end local v2    # "e":Ljava/sql/SQLException;
    .restart local v0    # "closed":Z
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;
    :goto_1
    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->closeResources(Z)V

    throw v2
.end method

.method protected connectAndStart()V
    .locals 1

    .line 610
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->checkConnection()V

    .line 611
    monitor-enter p0

    .line 613
    :try_start_0
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->connectAndPrepare()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    goto :goto_0

    .line 617
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 614
    :catch_0
    move-exception v0

    .line 615
    .local v0, "e":Ljava/sql/SQLException;
    :try_start_1
    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->reconnectOn(Ljava/lang/Exception;)V

    .line 617
    .end local v0    # "e":Ljava/sql/SQLException;
    :goto_0
    monitor-exit p0

    .line 618
    return-void

    .line 617
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getConnectionSource()Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;
    .locals 1

    .line 644
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->factoryData:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->access$1600(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;

    move-result-object v0

    return-object v0
.end method

.method public getSqlStatement()Ljava/lang/String;
    .locals 1

    .line 648
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->sqlStatement:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 652
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->factoryData:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->access$000(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected shutdownInternal()Z
    .locals 1

    .line 767
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->reconnector:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->reconnector:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;->shutdown()V

    .line 769
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->reconnector:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;->interrupt()V

    .line 770
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->reconnector:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;

    .line 772
    :cond_0
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->commitAndCloseAll()Z

    move-result v0

    return v0
.end method

.method protected startupInternal()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 778
    return-void
.end method

.method protected writeInternal(Lorg/apache/logging/log4j/core/LogEvent;Ljava/io/Serializable;)V
    .locals 16
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "serializable"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "serializable"
        }
    .end annotation

    .line 800
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v4, 0x0

    .line 802
    .local v4, "reader":Ljava/io/StringReader;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->connection:Ljava/sql/Connection;

    invoke-direct {v1, v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->isClosed(Ljava/sql/Connection;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, v1, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    invoke-direct {v1, v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->isClosed(Ljava/sql/Statement;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 808
    iget-object v0, v1, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->clearParameters()V

    .line 809
    instance-of v0, v3, Lorg/apache/logging/log4j/message/MapMessage;

    if-eqz v0, :cond_0

    .line 810
    move-object v0, v3

    check-cast v0, Lorg/apache/logging/log4j/message/MapMessage;

    invoke-direct {v1, v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->setFields(Lorg/apache/logging/log4j/message/MapMessage;)V

    .line 812
    :cond_0
    const/4 v0, 0x1

    .line 813
    .local v0, "j":I
    iget-object v8, v1, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->factoryData:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;

    invoke-static {v8}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->access$200(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)[Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_8

    .line 814
    iget-object v8, v1, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->factoryData:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;

    invoke-static {v8}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->access$200(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)[Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;

    move-result-object v8

    array-length v10, v8

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_8

    aget-object v12, v8, v11

    .line 815
    .local v12, "mapping":Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;
    const-class v13, Lorg/apache/logging/log4j/spi/ThreadContextMap;

    invoke-virtual {v12}, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->getType()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-nez v13, :cond_6

    const-class v13, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    .line 816
    invoke-virtual {v12}, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->getType()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_1

    goto/16 :goto_1

    .line 818
    :cond_1
    const-class v13, Lorg/apache/logging/log4j/spi/ThreadContextStack;

    invoke-virtual {v12}, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->getType()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 819
    iget-object v13, v1, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    add-int/lit8 v14, v0, 0x1

    .end local v0    # "j":I
    .local v14, "j":I
    invoke-interface/range {p1 .. p1}, Lorg/apache/logging/log4j/core/LogEvent;->getContextStack()Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/logging/log4j/ThreadContext$ContextStack;->asList()Ljava/util/List;

    move-result-object v15

    invoke-interface {v13, v0, v15}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;)V

    move v0, v14

    goto/16 :goto_2

    .line 820
    .end local v14    # "j":I
    .restart local v0    # "j":I
    :cond_2
    const-class v13, Ljava/util/Date;

    invoke-virtual {v12}, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->getType()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 821
    iget-object v13, v1, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    add-int/lit8 v14, v0, 0x1

    .end local v0    # "j":I
    .restart local v14    # "j":I
    invoke-interface/range {p1 .. p1}, Lorg/apache/logging/log4j/core/LogEvent;->getTimeMillis()J

    move-result-wide v5

    .line 822
    invoke-virtual {v12}, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->getType()Ljava/lang/Class;

    move-result-object v15

    const-class v7, Ljava/util/Date;

    invoke-virtual {v15, v7}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v7

    .line 821
    invoke-static {v5, v6, v7}, Lorg/apache/logging/log4j/core/config/plugins/convert/DateTypeConverter;->fromMillis(JLjava/lang/Class;)Ljava/util/Date;

    move-result-object v5

    invoke-interface {v13, v0, v5}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;)V

    move v0, v14

    goto/16 :goto_2

    .line 824
    .end local v14    # "j":I
    .restart local v0    # "j":I
    :cond_3
    invoke-virtual {v12}, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->getLayout()Lorg/apache/logging/log4j/core/StringLayout;

    move-result-object v5

    .line 825
    .local v5, "layout":Lorg/apache/logging/log4j/core/StringLayout;
    if-eqz v5, :cond_7

    .line 826
    const-class v6, Ljava/sql/Clob;

    invoke-virtual {v12}, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 827
    iget-object v6, v1, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    add-int/lit8 v7, v0, 0x1

    .end local v0    # "j":I
    .local v7, "j":I
    new-instance v13, Ljava/io/StringReader;

    invoke-interface {v5, v2}, Lorg/apache/logging/log4j/core/StringLayout;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/io/Serializable;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v13, v14}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v0, v13}, Ljava/sql/PreparedStatement;->setClob(ILjava/io/Reader;)V

    move v0, v7

    goto :goto_2

    .line 828
    .end local v7    # "j":I
    .restart local v0    # "j":I
    :cond_4
    const-class v6, Ljava/sql/NClob;

    invoke-virtual {v12}, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 829
    iget-object v6, v1, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    add-int/lit8 v7, v0, 0x1

    .end local v0    # "j":I
    .restart local v7    # "j":I
    new-instance v13, Ljava/io/StringReader;

    invoke-interface {v5, v2}, Lorg/apache/logging/log4j/core/StringLayout;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/io/Serializable;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v13, v14}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v0, v13}, Ljava/sql/PreparedStatement;->setNClob(ILjava/io/Reader;)V

    move v0, v7

    goto :goto_2

    .line 831
    .end local v7    # "j":I
    .restart local v0    # "j":I
    :cond_5
    invoke-interface {v5, v2}, Lorg/apache/logging/log4j/core/StringLayout;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 832
    invoke-virtual {v12}, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->getType()Ljava/lang/Class;

    move-result-object v7

    .line 831
    invoke-static {v6, v7, v9}, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters;->convert(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 833
    .local v6, "value":Ljava/lang/Object;
    add-int/lit8 v7, v0, 0x1

    .end local v0    # "j":I
    .restart local v7    # "j":I
    invoke-virtual {v12}, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->getNameKey()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v0, v13, v6}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->setStatementObject(ILjava/lang/String;Ljava/lang/Object;)V

    move v0, v7

    goto :goto_2

    .line 817
    .end local v5    # "layout":Lorg/apache/logging/log4j/core/StringLayout;
    .end local v6    # "value":Ljava/lang/Object;
    .end local v7    # "j":I
    .restart local v0    # "j":I
    :cond_6
    :goto_1
    iget-object v5, v1, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    add-int/lit8 v6, v0, 0x1

    .end local v0    # "j":I
    .local v6, "j":I
    invoke-interface/range {p1 .. p1}, Lorg/apache/logging/log4j/core/LogEvent;->getContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->toMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v5, v0, v7}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;)V

    move v0, v6

    .line 814
    .end local v6    # "j":I
    .end local v12    # "mapping":Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;
    .restart local v0    # "j":I
    :cond_7
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 839
    :cond_8
    iget-object v5, v1, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->columnConfigs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;

    .line 840
    .local v6, "column":Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;
    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;->isEventTimestamp()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 841
    iget-object v7, v1, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    add-int/lit8 v8, v0, 0x1

    .end local v0    # "j":I
    .local v8, "j":I
    new-instance v10, Ljava/sql/Timestamp;

    invoke-interface/range {p1 .. p1}, Lorg/apache/logging/log4j/core/LogEvent;->getTimeMillis()J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-interface {v7, v0, v10}, Ljava/sql/PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;)V

    move v0, v8

    goto/16 :goto_4

    .line 842
    .end local v8    # "j":I
    .restart local v0    # "j":I
    :cond_9
    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;->isClob()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 843
    new-instance v7, Ljava/io/StringReader;

    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;->getLayout()Lorg/apache/logging/log4j/core/layout/PatternLayout;

    move-result-object v8

    invoke-virtual {v8, v2}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object v4, v7

    .line 844
    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;->isUnicode()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 845
    iget-object v7, v1, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    add-int/lit8 v8, v0, 0x1

    .end local v0    # "j":I
    .restart local v8    # "j":I
    invoke-interface {v7, v0, v4}, Ljava/sql/PreparedStatement;->setNClob(ILjava/io/Reader;)V

    move v0, v8

    goto :goto_4

    .line 847
    .end local v8    # "j":I
    .restart local v0    # "j":I
    :cond_a
    iget-object v7, v1, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    add-int/lit8 v8, v0, 0x1

    .end local v0    # "j":I
    .restart local v8    # "j":I
    invoke-interface {v7, v0, v4}, Ljava/sql/PreparedStatement;->setClob(ILjava/io/Reader;)V

    move v0, v8

    goto :goto_4

    .line 849
    .end local v8    # "j":I
    .restart local v0    # "j":I
    :cond_b
    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;->isUnicode()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 850
    iget-object v7, v1, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    add-int/lit8 v8, v0, 0x1

    .line 851
    .end local v0    # "j":I
    .restart local v8    # "j":I
    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;->getColumnNameKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;->getLayout()Lorg/apache/logging/log4j/core/layout/PatternLayout;

    move-result-object v11

    invoke-virtual {v11, v2}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v10, v11}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->truncate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 850
    invoke-static {v10, v9}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v0, v10}, Ljava/sql/PreparedStatement;->setNString(ILjava/lang/String;)V

    move v0, v8

    goto :goto_4

    .line 853
    .end local v8    # "j":I
    .restart local v0    # "j":I
    :cond_c
    iget-object v7, v1, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    add-int/lit8 v8, v0, 0x1

    .line 854
    .end local v0    # "j":I
    .restart local v8    # "j":I
    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;->getColumnNameKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;->getLayout()Lorg/apache/logging/log4j/core/layout/PatternLayout;

    move-result-object v11

    invoke-virtual {v11, v2}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v10, v11}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->truncate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 853
    invoke-static {v10, v9}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v0, v10}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    move v0, v8

    .line 856
    .end local v6    # "column":Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;
    .end local v8    # "j":I
    .restart local v0    # "j":I
    :goto_4
    goto/16 :goto_3

    .line 858
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->isBuffered()Z

    move-result v5

    if-eqz v5, :cond_e

    iget-boolean v5, v1, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->isBatchSupported:Z

    if-eqz v5, :cond_e

    .line 859
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->logger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v5

    const-string v6, "addBatch for {}"

    iget-object v7, v1, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    invoke-virtual {v5, v6, v7}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 860
    iget-object v5, v1, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v5}, Ljava/sql/PreparedStatement;->addBatch()V

    goto :goto_5

    .line 862
    :cond_e
    iget-object v5, v1, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v5}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v5

    .line 863
    .local v5, "executeUpdate":I
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->logger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v6

    const-string v7, "executeUpdate = {} for {}"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v1, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 864
    if-eqz v5, :cond_10

    .line 876
    .end local v0    # "j":I
    .end local v5    # "executeUpdate":I
    :goto_5
    :try_start_1
    iget-object v0, v1, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    if-eqz v0, :cond_f

    .line 877
    iget-object v0, v1, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->clearParameters()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 881
    :cond_f
    goto :goto_6

    .line 879
    :catch_0
    move-exception v0

    .line 882
    :goto_6
    invoke-static {v4}, Lorg/apache/logging/log4j/core/util/Closer;->closeSilently(Ljava/lang/AutoCloseable;)Z

    .line 883
    nop

    .line 884
    return-void

    .line 865
    .restart local v0    # "j":I
    .restart local v5    # "executeUpdate":I
    :cond_10
    :try_start_2
    new-instance v6, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;

    const-string v7, "No records inserted in database table for log event in JDBC manager [%s]."

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    .line 866
    invoke-direct/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->fieldsToString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v9, v10

    invoke-direct {v6, v7, v9}, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v4    # "reader":Ljava/io/StringReader;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;
    .end local p1    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    .end local p2    # "serializable":Ljava/io/Serializable;
    throw v6

    .line 803
    .end local v0    # "j":I
    .end local v5    # "executeUpdate":I
    .restart local v4    # "reader":Ljava/io/StringReader;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;
    .restart local p1    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    .restart local p2    # "serializable":Ljava/io/Serializable;
    :cond_11
    new-instance v0, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;

    const-string v5, "Cannot write logging event; JDBC manager not connected to the database, running=%s, [%s])."

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    .line 805
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->isRunning()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-direct/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->fieldsToString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v7, v8

    invoke-direct {v0, v5, v7}, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v4    # "reader":Ljava/io/StringReader;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;
    .end local p1    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    .end local p2    # "serializable":Ljava/io/Serializable;
    throw v0
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 874
    .restart local v4    # "reader":Ljava/io/StringReader;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;
    .restart local p1    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    .restart local p2    # "serializable":Ljava/io/Serializable;
    :catchall_0
    move-exception v0

    move-object v5, v0

    goto :goto_7

    .line 869
    :catch_1
    move-exception v0

    .line 870
    .local v0, "e":Ljava/sql/SQLException;
    :try_start_3
    new-instance v5, Lorg/apache/logging/log4j/core/appender/db/DbAppenderLoggingException;

    const-string v6, "Failed to insert record for log event in JDBC manager: %s [%s]"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    .line 871
    invoke-direct/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->fieldsToString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-direct {v5, v0, v6, v7}, Lorg/apache/logging/log4j/core/appender/db/DbAppenderLoggingException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v4    # "reader":Ljava/io/StringReader;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;
    .end local p1    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    .end local p2    # "serializable":Ljava/io/Serializable;
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 876
    .end local v0    # "e":Ljava/sql/SQLException;
    .restart local v4    # "reader":Ljava/io/StringReader;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;
    .restart local p1    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    .restart local p2    # "serializable":Ljava/io/Serializable;
    :goto_7
    :try_start_4
    iget-object v0, v1, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    if-eqz v0, :cond_12

    .line 877
    iget-object v0, v1, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->statement:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->clearParameters()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_2

    .line 881
    :cond_12
    goto :goto_8

    .line 879
    :catch_2
    move-exception v0

    .line 882
    :goto_8
    invoke-static {v4}, Lorg/apache/logging/log4j/core/util/Closer;->closeSilently(Ljava/lang/AutoCloseable;)Z

    throw v5
.end method

.method protected writeThrough(Lorg/apache/logging/log4j/core/LogEvent;Ljava/io/Serializable;)V
    .locals 2
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "serializable"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "serializable"
        }
    .end annotation

    .line 888
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->connectAndStart()V

    .line 891
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->writeInternal(Lorg/apache/logging/log4j/core/LogEvent;Ljava/io/Serializable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 893
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->commitAndClose()Z

    .line 894
    nop

    .line 902
    goto :goto_1

    .line 895
    :catch_0
    move-exception v0

    goto :goto_0

    .line 893
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->commitAndClose()Z

    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;
    .end local p1    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    .end local p2    # "serializable":Ljava/io/Serializable;
    throw v0
    :try_end_1
    .catch Lorg/apache/logging/log4j/core/appender/db/DbAppenderLoggingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 896
    .local v0, "e":Lorg/apache/logging/log4j/core/appender/db/DbAppenderLoggingException;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;
    .restart local p1    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    .restart local p2    # "serializable":Ljava/io/Serializable;
    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->reconnectOn(Ljava/lang/Exception;)V

    .line 898
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->writeInternal(Lorg/apache/logging/log4j/core/LogEvent;Ljava/io/Serializable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 900
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->commitAndClose()Z

    .line 901
    nop

    .line 903
    .end local v0    # "e":Lorg/apache/logging/log4j/core/appender/db/DbAppenderLoggingException;
    :goto_1
    return-void

    .line 900
    .restart local v0    # "e":Lorg/apache/logging/log4j/core/appender/db/DbAppenderLoggingException;
    :catchall_1
    move-exception v1

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->commitAndClose()Z

    throw v1
.end method
