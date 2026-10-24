.class final Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;
.super Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager$AbstractFactoryData;
.source "JdbcDatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FactoryData"
.end annotation


# instance fields
.field private final columnConfigs:[Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;

.field private final columnMappings:[Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;

.field private final connectionSource:Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;

.field private final immediateFail:Z

.field private final reconnectIntervalMillis:J

.field private final retry:Z

.field private final tableName:Ljava/lang/String;

.field private final truncateStrings:Z


# direct methods
.method protected constructor <init>(ILorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;Ljava/lang/String;[Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;[Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;ZJZ)V
    .locals 2
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
            0x10
        }
        names = {
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
            "(I",
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
            "ZJZ)V"
        }
    .end annotation

    .line 83
    .local p2, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager$AbstractFactoryData;-><init>(ILorg/apache/logging/log4j/core/Layout;)V

    .line 84
    iput-object p3, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->connectionSource:Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;

    .line 85
    iput-object p4, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->tableName:Ljava/lang/String;

    .line 86
    iput-object p5, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->columnConfigs:[Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;

    .line 87
    iput-object p6, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->columnMappings:[Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;

    .line 88
    iput-boolean p7, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->immediateFail:Z

    .line 89
    const-wide/16 v0, 0x0

    cmp-long v0, p8, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->retry:Z

    .line 90
    iput-wide p8, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->reconnectIntervalMillis:J

    .line 91
    iput-boolean p10, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->truncateStrings:Z

    .line 92
    return-void
.end method

.method static synthetic access$000(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;

    .line 69
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;

    .line 69
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->reconnectIntervalMillis:J

    return-wide v0
.end method

.method static synthetic access$1500(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;

    .line 69
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->immediateFail:Z

    return v0
.end method

.method static synthetic access$1600(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;

    .line 69
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->connectionSource:Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;

    .line 69
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->truncateStrings:Z

    return v0
.end method

.method static synthetic access$1900(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;

    .line 69
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->retry:Z

    return v0
.end method

.method static synthetic access$200(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)[Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;

    .line 69
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->columnMappings:[Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)[Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;

    .line 69
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->columnConfigs:[Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 96
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->connectionSource:Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->tableName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->columnConfigs:[Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;

    .line 98
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->columnMappings:[Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->immediateFail:Z

    .line 99
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->retry:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->reconnectIntervalMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->truncateStrings:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 96
    const-string v1, "FactoryData [connectionSource=%s, tableName=%s, columnConfigs=%s, columnMappings=%s, immediateFail=%s, retry=%s, reconnectIntervalMillis=%s, truncateStrings=%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
