.class final Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$FactoryData;
.super Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager$AbstractFactoryData;
.source "NoSqlDatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FactoryData"
.end annotation


# instance fields
.field private final additionalFields:[Lorg/apache/logging/log4j/core/util/KeyValuePair;

.field private final provider:Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;ILorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider;[Lorg/apache/logging/log4j/core/util/KeyValuePair;)V
    .locals 1
    .param p1, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "bufferSize"    # I
    .param p4, "additionalFields"    # [Lorg/apache/logging/log4j/core/util/KeyValuePair;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "configuration",
            "bufferSize",
            "provider",
            "additionalFields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            "I",
            "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider<",
            "*>;[",
            "Lorg/apache/logging/log4j/core/util/KeyValuePair;",
            ")V"
        }
    .end annotation

    .line 50
    .local p3, "provider":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager$AbstractFactoryData;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;ILorg/apache/logging/log4j/core/Layout;)V

    .line 51
    const-string v0, "provider"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p3

    check-cast v0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$FactoryData;->provider:Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider;

    .line 52
    iput-object p4, p0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$FactoryData;->additionalFields:[Lorg/apache/logging/log4j/core/util/KeyValuePair;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$FactoryData;)Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$FactoryData;

    .line 45
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$FactoryData;->provider:Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$FactoryData;)[Lorg/apache/logging/log4j/core/util/KeyValuePair;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$FactoryData;

    .line 45
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$FactoryData;->additionalFields:[Lorg/apache/logging/log4j/core/util/KeyValuePair;

    return-object v0
.end method
