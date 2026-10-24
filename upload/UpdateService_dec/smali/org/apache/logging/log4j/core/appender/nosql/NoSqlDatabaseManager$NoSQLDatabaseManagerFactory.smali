.class final Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$NoSQLDatabaseManagerFactory;
.super Ljava/lang/Object;
.source "NoSqlDatabaseManager.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/appender/ManagerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoSQLDatabaseManagerFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/appender/ManagerFactory<",
        "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager<",
        "*>;",
        "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$FactoryData;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$1;

    .line 59
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$NoSQLDatabaseManagerFactory;-><init>()V

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

    .line 59
    check-cast p2, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$FactoryData;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$NoSQLDatabaseManagerFactory;->createManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$FactoryData;)Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;

    move-result-object p1

    return-object p1
.end method

.method public createManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$FactoryData;)Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$FactoryData;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$FactoryData;",
            ")",
            "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager<",
            "*>;"
        }
    .end annotation

    .line 63
    const-string v0, "data"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    new-instance v0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;

    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$FactoryData;->getBufferSize()I

    move-result v3

    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$FactoryData;->access$000(Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$FactoryData;)Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider;

    move-result-object v4

    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$FactoryData;->access$100(Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$FactoryData;)[Lorg/apache/logging/log4j/core/util/KeyValuePair;

    move-result-object v5

    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$FactoryData;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;-><init>(Ljava/lang/String;ILorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider;[Lorg/apache/logging/log4j/core/util/KeyValuePair;Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$1;)V

    return-object v0
.end method
