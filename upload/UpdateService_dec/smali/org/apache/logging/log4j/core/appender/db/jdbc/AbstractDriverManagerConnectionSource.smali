.class public Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource;
.super Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractConnectionSource;
.source "AbstractDriverManagerConnectionSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final actualConnectionString:Ljava/lang/String;

.field private final connectionString:Ljava/lang/String;

.field private final driverClassName:Ljava/lang/String;

.field private final password:[C

.field private final properties:[Lorg/apache/logging/log4j/core/config/Property;

.field private final userName:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 116
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[C[C[Lorg/apache/logging/log4j/core/config/Property;)V
    .locals 0
    .param p1, "driverClassName"    # Ljava/lang/String;
    .param p2, "connectionString"    # Ljava/lang/String;
    .param p3, "actualConnectionString"    # Ljava/lang/String;
    .param p4, "userName"    # [C
    .param p5, "password"    # [C
    .param p6, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
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
            "driverClassName",
            "connectionString",
            "actualConnectionString",
            "userName",
            "password",
            "properties"
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractConnectionSource;-><init>()V

    .line 131
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource;->driverClassName:Ljava/lang/String;

    .line 132
    iput-object p2, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource;->connectionString:Ljava/lang/String;

    .line 133
    iput-object p3, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource;->actualConnectionString:Ljava/lang/String;

    .line 134
    iput-object p4, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource;->userName:[C

    .line 135
    iput-object p5, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource;->password:[C

    .line 136
    iput-object p6, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource;->properties:[Lorg/apache/logging/log4j/core/config/Property;

    .line 137
    return-void
.end method

.method public static getLogger()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 119
    sget-object v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method


# virtual methods
.method public getActualConnectionString()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource;->actualConnectionString:Ljava/lang/String;

    return-object v0
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 146
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource;->loadDriver()V

    .line 147
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource;->getActualConnectionString()Ljava/lang/String;

    move-result-object v7

    .line 148
    .local v7, "actualConnectionString":Ljava/lang/String;
    sget-object v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{} getting connection for \'{}\'"

    invoke-interface {v0, v2, v1, v7}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource;->properties:[Lorg/apache/logging/log4j/core/config/Property;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 151
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource;->userName:[C

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource;->password:[C

    if-nez v1, :cond_0

    .line 154
    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource;->toProperties([Lorg/apache/logging/log4j/core/config/Property;)Ljava/util/Properties;

    move-result-object v0

    invoke-static {v7, v0}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v0

    move-object v8, v0

    .local v0, "connection":Ljava/sql/Connection;
    goto :goto_0

    .line 152
    .end local v0    # "connection":Ljava/sql/Connection;
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Either set the userName and password, or set the Properties, but not both."

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource;->userName:[C

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource;->toString([C)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource;->password:[C

    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource;->toString([C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v0, v1}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v0

    move-object v8, v0

    .line 158
    .local v8, "connection":Ljava/sql/Connection;
    :goto_0
    sget-object v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 158
    const-string v1, "{} acquired connection for \'{}\': {} ({}@{})"

    move-object v3, v7

    move-object v4, v8

    invoke-interface/range {v0 .. v6}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    return-object v8
.end method

.method public getConnectionString()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource;->connectionString:Ljava/lang/String;

    return-object v0
.end method

.method public getDriverClassName()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource;->driverClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()[C
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource;->password:[C

    return-object v0
.end method

.method public getProperties()[Lorg/apache/logging/log4j/core/config/Property;
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource;->properties:[Lorg/apache/logging/log4j/core/config/Property;

    return-object v0
.end method

.method public getUserName()[C
    .locals 1

    .line 180
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource;->userName:[C

    return-object v0
.end method

.method protected loadDriver()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource;->driverClassName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource;->loadDriver(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method protected loadDriver(Ljava/lang/String;)V
    .locals 5
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "className"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 196
    if-eqz p1, :cond_0

    .line 198
    sget-object v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "Loading driver class {}"

    invoke-interface {v0, v1, p1}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/sql/SQLException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 203
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 202
    const-string v3, "The %s could not load the JDBC driver %s: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 206
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method protected toProperties([Lorg/apache/logging/log4j/core/config/Property;)Ljava/util/Properties;
    .locals 6
    .param p1, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "properties"
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 210
    .local v0, "props":Ljava/util/Properties;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 211
    .local v3, "property":Lorg/apache/logging/log4j/core/config/Property;
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/Property;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/Property;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 210
    .end local v3    # "property":Lorg/apache/logging/log4j/core/config/Property;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource;->connectionString:Ljava/lang/String;

    return-object v0
.end method

.method protected toString([C)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 222
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
