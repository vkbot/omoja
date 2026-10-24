.class public final Lorg/apache/logging/log4j/core/appender/db/jdbc/FactoryMethodConnectionSource;
.super Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractConnectionSource;
.source "FactoryMethodConnectionSource.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "connectionSource"
    name = "ConnectionFactory"
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

    sput-object v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/FactoryMethodConnectionSource;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method private constructor <init>(Ljavax/sql/DataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "dataSource"    # Ljavax/sql/DataSource;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "returnType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "dataSource",
            "className",
            "methodName",
            "returnType"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractConnectionSource;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/FactoryMethodConnectionSource;->dataSource:Ljavax/sql/DataSource;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "factory{ public static "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "() }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/FactoryMethodConnectionSource;->description:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public static createConnectionSource(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/db/jdbc/FactoryMethodConnectionSource;
    .locals 7
    .param p0, "className"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "class"
        .end annotation
    .end param
    .param p1, "methodName"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "method"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "className",
            "methodName"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 75
    invoke-static {p0}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p1}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 82
    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/apache/logging/log4j/core/util/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 83
    .local v0, "factoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v3

    .line 87
    .local v0, "method":Ljava/lang/reflect/Method;
    nop

    .line 89
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    .line 90
    .local v3, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "returnTypeString":Ljava/lang/String;
    const-class v5, Ljavax/sql/DataSource;

    if-ne v3, v5, :cond_1

    .line 94
    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/sql/DataSource;

    .line 95
    .local v2, "dataSource":Ljavax/sql/DataSource;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v1

    .line 99
    goto :goto_0

    .line 96
    .end local v2    # "dataSource":Ljavax/sql/DataSource;
    :catch_0
    move-exception v2

    .line 97
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Lorg/apache/logging/log4j/core/appender/db/jdbc/FactoryMethodConnectionSource;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    return-object v1

    .line 100
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const-class v2, Ljava/sql/Connection;

    if-ne v3, v2, :cond_2

    .line 101
    new-instance v1, Lorg/apache/logging/log4j/core/appender/db/jdbc/FactoryMethodConnectionSource$1;

    invoke-direct {v1, v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/FactoryMethodConnectionSource$1;-><init>(Ljava/lang/reflect/Method;)V

    move-object v2, v1

    .line 158
    .local v2, "dataSource":Ljavax/sql/DataSource;
    :goto_0
    new-instance v1, Lorg/apache/logging/log4j/core/appender/db/jdbc/FactoryMethodConnectionSource;

    invoke-direct {v1, v2, p0, p1, v4}, Lorg/apache/logging/log4j/core/appender/db/jdbc/FactoryMethodConnectionSource;-><init>(Ljavax/sql/DataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 153
    .end local v2    # "dataSource":Ljavax/sql/DataSource;
    :cond_2
    sget-object v2, Lorg/apache/logging/log4j/core/appender/db/jdbc/FactoryMethodConnectionSource;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 154
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 153
    const-string v6, "Method [{}.{}()] returns unsupported type [{}]."

    invoke-interface {v2, v6, p0, p1, v5}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    return-object v1

    .line 84
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "returnTypeString":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/logging/log4j/core/appender/db/jdbc/FactoryMethodConnectionSource;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    return-object v1

    .line 76
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    sget-object v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/FactoryMethodConnectionSource;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "No class name or method name specified for the connection factory method."

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 77
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

    .line 53
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/FactoryMethodConnectionSource;->dataSource:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/FactoryMethodConnectionSource;->description:Ljava/lang/String;

    return-object v0
.end method
