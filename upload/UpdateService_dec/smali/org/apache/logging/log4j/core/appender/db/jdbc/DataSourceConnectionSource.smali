.class public final Lorg/apache/logging/log4j/core/appender/db/jdbc/DataSourceConnectionSource;
.super Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractConnectionSource;
.source "DataSourceConnectionSource.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "connectionSource"
    name = "DataSource"
    printObject = true
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final dataSource:Ljavax/sql/DataSource;

.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/DataSourceConnectionSource;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljavax/sql/DataSource;)V
    .locals 2
    .param p1, "dataSourceName"    # Ljava/lang/String;
    .param p2, "dataSource"    # Ljavax/sql/DataSource;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "dataSourceName",
            "dataSource"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractConnectionSource;-><init>()V

    .line 46
    const-string v0, "dataSource"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Ljavax/sql/DataSource;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/DataSourceConnectionSource;->dataSource:Ljavax/sql/DataSource;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dataSource{ name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/DataSourceConnectionSource;->description:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static createConnectionSource(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/db/jdbc/DataSourceConnectionSource;
    .locals 5
    .param p0, "jndiName"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "jndiName"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "jndiName"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 68
    invoke-static {}, Lorg/apache/logging/log4j/core/net/JndiManager;->isJndiJdbcEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 69
    sget-object v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/DataSourceConnectionSource;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "JNDI must be enabled by setting log4j2.enableJndiJdbc=true"

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 70
    return-object v1

    .line 72
    :cond_0
    invoke-static {p0}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    sget-object v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/DataSourceConnectionSource;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "No JNDI name provided."

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 74
    return-object v1

    .line 78
    :cond_1
    :try_start_0
    const-class v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/DataSourceConnectionSource;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/net/JndiManager;->getDefaultManager(Ljava/lang/String;)Lorg/apache/logging/log4j/core/net/JndiManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/core/net/JndiManager;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/sql/DataSource;

    .line 79
    .local v0, "dataSource":Ljavax/sql/DataSource;
    if-nez v0, :cond_2

    .line 80
    sget-object v2, Lorg/apache/logging/log4j/core/appender/db/jdbc/DataSourceConnectionSource;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No DataSource found with JNDI name ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 81
    return-object v1

    .line 83
    :cond_2
    new-instance v2, Lorg/apache/logging/log4j/core/appender/db/jdbc/DataSourceConnectionSource;

    invoke-direct {v2, p0, v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/DataSourceConnectionSource;-><init>(Ljava/lang/String;Ljavax/sql/DataSource;)V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 84
    .end local v0    # "dataSource":Ljavax/sql/DataSource;
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljavax/naming/NamingException;
    sget-object v2, Lorg/apache/logging/log4j/core/appender/db/jdbc/DataSourceConnectionSource;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {v0}, Ljavax/naming/NamingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    return-object v1
.end method


# virtual methods
.method public getConnection()Ljava/sql/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/DataSourceConnectionSource;->dataSource:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/DataSourceConnectionSource;->description:Ljava/lang/String;

    return-object v0
.end method
