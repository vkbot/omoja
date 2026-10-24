.class public Lorg/apache/logging/log4j/LogManager;
.super Ljava/lang/Object;
.source "LogManager.java"


# static fields
.field public static final FACTORY_PROPERTY_NAME:Ljava/lang/String; = "log4j2.loggerContextFactory"

.field private static final FQCN:Ljava/lang/String;

.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field public static final ROOT_LOGGER_NAME:Ljava/lang/String; = ""

.field private static volatile factory:Lorg/apache/logging/log4j/spi/LoggerContextFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 61
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/LogManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 64
    const-class v0, Lorg/apache/logging/log4j/LogManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/LogManager;->FQCN:Ljava/lang/String;

    .line 74
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    .line 75
    .local v0, "managerProps":Lorg/apache/logging/log4j/util/PropertiesUtil;
    const-string v1, "log4j2.loggerContextFactory"

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "factoryClassName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 78
    :try_start_0
    const-class v2, Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    invoke-static {v1, v2}, Lorg/apache/logging/log4j/util/LoaderUtil;->newCheckedInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    sput-object v2, Lorg/apache/logging/log4j/LogManager;->factory:Lorg/apache/logging/log4j/spi/LoggerContextFactory;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v2

    .line 82
    .local v2, "ex":Ljava/lang/Exception;
    sget-object v3, Lorg/apache/logging/log4j/LogManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v4, "Unable to create configured LoggerContextFactory {}"

    invoke-interface {v3, v4, v1, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 80
    .local v2, "cnfe":Ljava/lang/ClassNotFoundException;
    sget-object v3, Lorg/apache/logging/log4j/LogManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v4, "Unable to locate configured LoggerContextFactory {}"

    invoke-interface {v3, v4, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    .end local v2    # "cnfe":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_0
    sget-object v2, Lorg/apache/logging/log4j/LogManager;->factory:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    const/4 v3, 0x1

    if-nez v2, :cond_7

    .line 87
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 90
    .local v2, "factories":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Lorg/apache/logging/log4j/spi/LoggerContextFactory;>;"
    invoke-static {}, Lorg/apache/logging/log4j/util/ProviderUtil;->hasProviders()Z

    move-result v4

    const-string v5, "Log4j2 could not find a logging implementation. Please add log4j-core to the classpath. Using SimpleLogger to log to the console..."

    if-eqz v4, :cond_6

    .line 91
    invoke-static {}, Lorg/apache/logging/log4j/util/ProviderUtil;->getProviders()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/logging/log4j/spi/Provider;

    .line 92
    .local v6, "provider":Lorg/apache/logging/log4j/spi/Provider;
    invoke-virtual {v6}, Lorg/apache/logging/log4j/spi/Provider;->loadLoggerContextFactory()Ljava/lang/Class;

    move-result-object v7

    .line 93
    .local v7, "factoryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/logging/log4j/spi/LoggerContextFactory;>;"
    if-eqz v7, :cond_1

    .line 95
    :try_start_1
    invoke-virtual {v6}, Lorg/apache/logging/log4j/spi/Provider;->getPriority()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 99
    goto :goto_2

    .line 96
    :catch_2
    move-exception v8

    .line 97
    .local v8, "e":Ljava/lang/Exception;
    sget-object v9, Lorg/apache/logging/log4j/LogManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    .line 98
    invoke-virtual {v6}, Lorg/apache/logging/log4j/spi/Provider;->getUrl()Ljava/net/URL;

    move-result-object v11

    .line 97
    const-string v12, "Unable to create class {} specified in provider URL {}"

    invoke-interface {v9, v12, v10, v11, v8}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    .end local v6    # "provider":Lorg/apache/logging/log4j/spi/Provider;
    .end local v7    # "factoryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/logging/log4j/spi/LoggerContextFactory;>;"
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    goto :goto_1

    .line 103
    :cond_2
    invoke-interface {v2}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 104
    sget-object v4, Lorg/apache/logging/log4j/LogManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v4, v5}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 106
    sget-object v4, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;->INSTANCE:Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;

    sput-object v4, Lorg/apache/logging/log4j/LogManager;->factory:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    goto/16 :goto_4

    .line 107
    :cond_3
    invoke-interface {v2}, Ljava/util/SortedMap;->size()I

    move-result v4

    if-ne v4, v3, :cond_4

    .line 108
    invoke-interface {v2}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    sput-object v4, Lorg/apache/logging/log4j/LogManager;->factory:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    goto :goto_4

    .line 110
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Multiple logging implementations found: \n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 112
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/apache/logging/log4j/spi/LoggerContextFactory;>;"
    const-string v7, "Factory: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v7, ", Weighting: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v7, 0xa

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/apache/logging/log4j/spi/LoggerContextFactory;>;"
    goto :goto_3

    .line 115
    :cond_5
    invoke-interface {v2}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    sput-object v5, Lorg/apache/logging/log4j/LogManager;->factory:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    .line 116
    const-string v5, "Using factory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lorg/apache/logging/log4j/LogManager;->factory:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    sget-object v5, Lorg/apache/logging/log4j/LogManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 119
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    goto :goto_4

    .line 121
    :cond_6
    sget-object v4, Lorg/apache/logging/log4j/LogManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v4, v5}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 123
    sget-object v4, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;->INSTANCE:Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;

    sput-object v4, Lorg/apache/logging/log4j/LogManager;->factory:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    .line 126
    .end local v2    # "factories":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Lorg/apache/logging/log4j/spi/LoggerContextFactory;>;"
    :cond_7
    :goto_4
    invoke-static {v3}, Lorg/apache/logging/log4j/internal/LogManagerStatus;->setInitialized(Z)V

    .line 127
    .end local v0    # "managerProps":Lorg/apache/logging/log4j/util/PropertiesUtil;
    .end local v1    # "factoryClassName":Ljava/lang/String;
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    return-void
.end method

.method private static callerClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 568
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    .line 569
    return-object p0

    .line 571
    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v0

    .line 572
    .local v0, "candidate":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_1

    .line 575
    return-object v0

    .line 573
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "No class provided, and an appropriate one cannot be found."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static exists(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 143
    invoke-static {}, Lorg/apache/logging/log4j/LogManager;->getContext()Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/logging/log4j/spi/LoggerContext;->hasLogger(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getContext()Lorg/apache/logging/log4j/spi/LoggerContext;
    .locals 6

    .line 157
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lorg/apache/logging/log4j/LogManager;->factory:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    sget-object v3, Lorg/apache/logging/log4j/LogManager;->FQCN:Ljava/lang/String;

    invoke-interface {v2, v3, v1, v1, v0}, Lorg/apache/logging/log4j/spi/LoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 158
    :catch_0
    move-exception v2

    .line 159
    .local v2, "ex":Ljava/lang/IllegalStateException;
    sget-object v3, Lorg/apache/logging/log4j/LogManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Using SimpleLogger"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 160
    sget-object v3, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;->INSTANCE:Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;

    sget-object v4, Lorg/apache/logging/log4j/LogManager;->FQCN:Ljava/lang/String;

    invoke-virtual {v3, v4, v1, v1, v0}, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v0

    return-object v0
.end method

.method public static getContext(Ljava/lang/ClassLoader;Z)Lorg/apache/logging/log4j/spi/LoggerContext;
    .locals 5
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "currentContext"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "loader",
            "currentContext"
        }
    .end annotation

    .line 196
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lorg/apache/logging/log4j/LogManager;->factory:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    sget-object v2, Lorg/apache/logging/log4j/LogManager;->FQCN:Ljava/lang/String;

    invoke-interface {v1, v2, p0, v0, p1}, Lorg/apache/logging/log4j/spi/LoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 197
    :catch_0
    move-exception v1

    .line 198
    .local v1, "ex":Ljava/lang/IllegalStateException;
    sget-object v2, Lorg/apache/logging/log4j/LogManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Using SimpleLogger"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 199
    sget-object v2, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;->INSTANCE:Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;

    sget-object v3, Lorg/apache/logging/log4j/LogManager;->FQCN:Ljava/lang/String;

    invoke-virtual {v2, v3, p0, v0, p1}, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v0

    return-object v0
.end method

.method public static getContext(Ljava/lang/ClassLoader;ZLjava/lang/Object;)Lorg/apache/logging/log4j/spi/LoggerContext;
    .locals 4
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "currentContext"    # Z
    .param p2, "externalContext"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "loader",
            "currentContext",
            "externalContext"
        }
    .end annotation

    .line 218
    :try_start_0
    sget-object v0, Lorg/apache/logging/log4j/LogManager;->factory:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    sget-object v1, Lorg/apache/logging/log4j/LogManager;->FQCN:Ljava/lang/String;

    invoke-interface {v0, v1, p0, p2, p1}, Lorg/apache/logging/log4j/spi/LoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "ex":Ljava/lang/IllegalStateException;
    sget-object v1, Lorg/apache/logging/log4j/LogManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Using SimpleLogger"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 221
    sget-object v1, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;->INSTANCE:Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;

    sget-object v2, Lorg/apache/logging/log4j/LogManager;->FQCN:Ljava/lang/String;

    invoke-virtual {v1, v2, p0, p2, p1}, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v1

    return-object v1
.end method

.method public static getContext(Ljava/lang/ClassLoader;ZLjava/lang/Object;Ljava/net/URI;)Lorg/apache/logging/log4j/spi/LoggerContext;
    .locals 10
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "currentContext"    # Z
    .param p2, "externalContext"    # Ljava/lang/Object;
    .param p3, "configLocation"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "loader",
            "currentContext",
            "externalContext",
            "configLocation"
        }
    .end annotation

    .line 264
    :try_start_0
    sget-object v0, Lorg/apache/logging/log4j/LogManager;->factory:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    sget-object v1, Lorg/apache/logging/log4j/LogManager;->FQCN:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p2

    move v4, p1

    move-object v5, p3

    invoke-interface/range {v0 .. v6}, Lorg/apache/logging/log4j/spi/LoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;ZLjava/net/URI;Ljava/lang/String;)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "ex":Ljava/lang/IllegalStateException;
    sget-object v1, Lorg/apache/logging/log4j/LogManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Using SimpleLogger"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 267
    sget-object v3, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;->INSTANCE:Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;

    sget-object v4, Lorg/apache/logging/log4j/LogManager;->FQCN:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v5, p0

    move-object v6, p2

    move v7, p1

    move-object v8, p3

    invoke-virtual/range {v3 .. v9}, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;ZLjava/net/URI;Ljava/lang/String;)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v1

    return-object v1
.end method

.method public static getContext(Ljava/lang/ClassLoader;ZLjava/lang/Object;Ljava/net/URI;Ljava/lang/String;)Lorg/apache/logging/log4j/spi/LoggerContext;
    .locals 10
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "currentContext"    # Z
    .param p2, "externalContext"    # Ljava/lang/Object;
    .param p3, "configLocation"    # Ljava/net/URI;
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "loader",
            "currentContext",
            "externalContext",
            "configLocation",
            "name"
        }
    .end annotation

    .line 289
    :try_start_0
    sget-object v0, Lorg/apache/logging/log4j/LogManager;->factory:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    sget-object v1, Lorg/apache/logging/log4j/LogManager;->FQCN:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p2

    move v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lorg/apache/logging/log4j/spi/LoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;ZLjava/net/URI;Ljava/lang/String;)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "ex":Ljava/lang/IllegalStateException;
    sget-object v1, Lorg/apache/logging/log4j/LogManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Using SimpleLogger"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 292
    sget-object v3, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;->INSTANCE:Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;

    sget-object v4, Lorg/apache/logging/log4j/LogManager;->FQCN:Ljava/lang/String;

    move-object v5, p0

    move-object v6, p2

    move v7, p1

    move-object v8, p3

    move-object v9, p4

    invoke-virtual/range {v3 .. v9}, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;ZLjava/net/URI;Ljava/lang/String;)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v1

    return-object v1
.end method

.method public static getContext(Ljava/lang/ClassLoader;ZLjava/net/URI;)Lorg/apache/logging/log4j/spi/LoggerContext;
    .locals 10
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "currentContext"    # Z
    .param p2, "configLocation"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "loader",
            "currentContext",
            "configLocation"
        }
    .end annotation

    .line 240
    :try_start_0
    sget-object v0, Lorg/apache/logging/log4j/LogManager;->factory:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    sget-object v1, Lorg/apache/logging/log4j/LogManager;->FQCN:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v6}, Lorg/apache/logging/log4j/spi/LoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;ZLjava/net/URI;Ljava/lang/String;)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "ex":Ljava/lang/IllegalStateException;
    sget-object v1, Lorg/apache/logging/log4j/LogManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Using SimpleLogger"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 243
    sget-object v3, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;->INSTANCE:Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;

    sget-object v4, Lorg/apache/logging/log4j/LogManager;->FQCN:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v5, p0

    move v7, p1

    move-object v8, p2

    invoke-virtual/range {v3 .. v9}, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;ZLjava/net/URI;Ljava/lang/String;)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v1

    return-object v1
.end method

.method protected static getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lorg/apache/logging/log4j/spi/LoggerContext;
    .locals 5
    .param p0, "fqcn"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "currentContext"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "loader",
            "currentContext"
        }
    .end annotation

    .line 331
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lorg/apache/logging/log4j/LogManager;->factory:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    invoke-interface {v1, p0, p1, v0, p2}, Lorg/apache/logging/log4j/spi/LoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 332
    :catch_0
    move-exception v1

    .line 333
    .local v1, "ex":Ljava/lang/IllegalStateException;
    sget-object v2, Lorg/apache/logging/log4j/LogManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Using SimpleLogger"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 334
    sget-object v2, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;->INSTANCE:Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;

    invoke-virtual {v2, p0, p1, v0, p2}, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v0

    return-object v0
.end method

.method protected static getContext(Ljava/lang/String;Ljava/lang/ClassLoader;ZLjava/net/URI;Ljava/lang/String;)Lorg/apache/logging/log4j/spi/LoggerContext;
    .locals 7
    .param p0, "fqcn"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "currentContext"    # Z
    .param p3, "configLocation"    # Ljava/net/URI;
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "loader",
            "currentContext",
            "configLocation",
            "name"
        }
    .end annotation

    .line 356
    :try_start_0
    sget-object v0, Lorg/apache/logging/log4j/LogManager;->factory:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lorg/apache/logging/log4j/spi/LoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;ZLjava/net/URI;Ljava/lang/String;)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "ex":Ljava/lang/IllegalStateException;
    sget-object v1, Lorg/apache/logging/log4j/LogManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Using SimpleLogger"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 359
    sget-object v1, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;->INSTANCE:Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v2, p2}, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v1

    return-object v1
.end method

.method protected static getContext(Ljava/lang/String;Z)Lorg/apache/logging/log4j/spi/LoggerContext;
    .locals 5
    .param p0, "fqcn"    # Ljava/lang/String;
    .param p1, "currentContext"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "currentContext"
        }
    .end annotation

    .line 309
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lorg/apache/logging/log4j/LogManager;->factory:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    invoke-interface {v1, p0, v0, v0, p1}, Lorg/apache/logging/log4j/spi/LoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 310
    :catch_0
    move-exception v1

    .line 311
    .local v1, "ex":Ljava/lang/IllegalStateException;
    sget-object v2, Lorg/apache/logging/log4j/LogManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Using SimpleLogger"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 312
    sget-object v2, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;->INSTANCE:Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;

    invoke-virtual {v2, p0, v0, v0, p1}, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v0

    return-object v0
.end method

.method public static getContext(Z)Lorg/apache/logging/log4j/spi/LoggerContext;
    .locals 10
    .param p0, "currentContext"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "currentContext"
        }
    .end annotation

    .line 176
    :try_start_0
    sget-object v0, Lorg/apache/logging/log4j/LogManager;->factory:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    sget-object v1, Lorg/apache/logging/log4j/LogManager;->FQCN:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, p0

    invoke-interface/range {v0 .. v6}, Lorg/apache/logging/log4j/spi/LoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;ZLjava/net/URI;Ljava/lang/String;)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "ex":Ljava/lang/IllegalStateException;
    sget-object v1, Lorg/apache/logging/log4j/LogManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Using SimpleLogger"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 179
    sget-object v3, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;->INSTANCE:Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;

    sget-object v4, Lorg/apache/logging/log4j/LogManager;->FQCN:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v7, p0

    invoke-virtual/range {v3 .. v9}, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;ZLjava/net/URI;Ljava/lang/String;)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v1

    return-object v1
.end method

.method public static getFactory()Lorg/apache/logging/log4j/spi/LoggerContextFactory;
    .locals 1

    .line 437
    sget-object v0, Lorg/apache/logging/log4j/LogManager;->factory:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    return-object v0
.end method

.method public static getFormatterLogger()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 469
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getFormatterLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getFormatterLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/logging/log4j/Logger;"
        }
    .end annotation

    .line 500
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/apache/logging/log4j/message/StringFormatterMessageFactory;->INSTANCE:Lorg/apache/logging/log4j/message/StringFormatterMessageFactory;

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getFormatterLogger(Ljava/lang/Object;)Lorg/apache/logging/log4j/Logger;
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 532
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/apache/logging/log4j/message/StringFormatterMessageFactory;->INSTANCE:Lorg/apache/logging/log4j/message/StringFormatterMessageFactory;

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getFormatterLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/Logger;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 563
    if-nez p0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getFormatterLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/message/StringFormatterMessageFactory;->INSTANCE:Lorg/apache/logging/log4j/message/StringFormatterMessageFactory;

    invoke-static {p0, v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getLogger()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 585
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/logging/log4j/Logger;"
        }
    .end annotation

    .line 598
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lorg/apache/logging/log4j/LogManager;->callerClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 599
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/logging/log4j/LogManager;->getContext(Ljava/lang/ClassLoader;Z)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/logging/log4j/spi/LoggerContext;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/spi/ExtendedLogger;

    move-result-object v1

    return-object v1
.end method

.method public static getLogger(Ljava/lang/Class;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/Logger;
    .locals 3
    .param p1, "messageFactory"    # Lorg/apache/logging/log4j/message/MessageFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "clazz",
            "messageFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/logging/log4j/message/MessageFactory;",
            ")",
            "Lorg/apache/logging/log4j/Logger;"
        }
    .end annotation

    .line 614
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lorg/apache/logging/log4j/LogManager;->callerClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 615
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/logging/log4j/LogManager;->getContext(Ljava/lang/ClassLoader;Z)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lorg/apache/logging/log4j/spi/LoggerContext;->getLogger(Ljava/lang/Class;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/spi/ExtendedLogger;

    move-result-object v1

    return-object v1
.end method

.method public static getLogger(Ljava/lang/Object;)Lorg/apache/logging/log4j/Logger;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 640
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/Object;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/Logger;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "messageFactory"    # Lorg/apache/logging/log4j/message/MessageFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "value",
            "messageFactory"
        }
    .end annotation

    .line 655
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    invoke-static {v0, p1}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/Logger;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 666
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getContext(Z)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/logging/log4j/spi/LoggerContext;->getLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/spi/ExtendedLogger;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected static getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/Logger;
    .locals 3
    .param p0, "fqcn"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "name"
        }
    .end annotation

    .line 691
    sget-object v0, Lorg/apache/logging/log4j/LogManager;->factory:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v1, v2}, Lorg/apache/logging/log4j/spi/LoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/spi/LoggerContext;->getLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/spi/ExtendedLogger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/Logger;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "messageFactory"    # Lorg/apache/logging/log4j/message/MessageFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "messageFactory"
        }
    .end annotation

    .line 679
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getContext(Z)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/apache/logging/log4j/spi/LoggerContext;->getLogger(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/spi/ExtendedLogger;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 680
    invoke-static {v0}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v0

    .line 679
    invoke-static {v0, p1}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getLogger(Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/Logger;
    .locals 1
    .param p0, "messageFactory"    # Lorg/apache/logging/log4j/message/MessageFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "messageFactory"
        }
    .end annotation

    .line 627
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getRootLogger()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 700
    const-string v0, ""

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static setFactory(Lorg/apache/logging/log4j/spi/LoggerContextFactory;)V
    .locals 0
    .param p0, "factory"    # Lorg/apache/logging/log4j/spi/LoggerContextFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "factory"
        }
    .end annotation

    .line 455
    sput-object p0, Lorg/apache/logging/log4j/LogManager;->factory:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    .line 456
    return-void
.end method

.method public static shutdown()V
    .locals 1

    .line 373
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->shutdown(Z)V

    .line 374
    return-void
.end method

.method public static shutdown(Lorg/apache/logging/log4j/spi/LoggerContext;)V
    .locals 1
    .param p0, "context"    # Lorg/apache/logging/log4j/spi/LoggerContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 426
    instance-of v0, p0, Lorg/apache/logging/log4j/spi/Terminable;

    if-eqz v0, :cond_0

    .line 427
    move-object v0, p0

    check-cast v0, Lorg/apache/logging/log4j/spi/Terminable;

    invoke-interface {v0}, Lorg/apache/logging/log4j/spi/Terminable;->terminate()V

    .line 429
    :cond_0
    return-void
.end method

.method public static shutdown(Z)V
    .locals 4
    .param p0, "currentContext"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "currentContext"
        }
    .end annotation

    .line 392
    sget-object v0, Lorg/apache/logging/log4j/LogManager;->factory:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    sget-object v1, Lorg/apache/logging/log4j/LogManager;->FQCN:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p0, v3}, Lorg/apache/logging/log4j/spi/LoggerContextFactory;->shutdown(Ljava/lang/String;Ljava/lang/ClassLoader;ZZ)V

    .line 393
    return-void
.end method

.method public static shutdown(ZZ)V
    .locals 3
    .param p0, "currentContext"    # Z
    .param p1, "allContexts"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "currentContext",
            "allContexts"
        }
    .end annotation

    .line 412
    sget-object v0, Lorg/apache/logging/log4j/LogManager;->factory:Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    sget-object v1, Lorg/apache/logging/log4j/LogManager;->FQCN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/apache/logging/log4j/spi/LoggerContextFactory;->shutdown(Ljava/lang/String;Ljava/lang/ClassLoader;ZZ)V

    .line 413
    return-void
.end method
