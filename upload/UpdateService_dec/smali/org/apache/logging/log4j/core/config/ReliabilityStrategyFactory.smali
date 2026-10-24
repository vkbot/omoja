.class public final Lorg/apache/logging/log4j/core/config/ReliabilityStrategyFactory;
.super Ljava/lang/Object;
.source "ReliabilityStrategyFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static getReliabilityStrategy(Lorg/apache/logging/log4j/core/config/LoggerConfig;)Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;
    .locals 6
    .param p0, "loggerConfig"    # Lorg/apache/logging/log4j/core/config/LoggerConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "loggerConfig"
        }
    .end annotation

    .line 49
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    const-string v1, "log4j.ReliabilityStrategy"

    const-string v2, "AwaitCompletion"

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "strategy":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    new-instance v1, Lorg/apache/logging/log4j/core/config/AwaitCompletionReliabilityStrategy;

    invoke-direct {v1, p0}, Lorg/apache/logging/log4j/core/config/AwaitCompletionReliabilityStrategy;-><init>(Lorg/apache/logging/log4j/core/config/LoggerConfig;)V

    return-object v1

    .line 54
    :cond_0
    const-string v1, "AwaitUnconditionally"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    new-instance v1, Lorg/apache/logging/log4j/core/config/AwaitUnconditionallyReliabilityStrategy;

    invoke-direct {v1, p0}, Lorg/apache/logging/log4j/core/config/AwaitUnconditionallyReliabilityStrategy;-><init>(Lorg/apache/logging/log4j/core/config/LoggerConfig;)V

    return-object v1

    .line 57
    :cond_1
    const-string v1, "Locking"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    new-instance v1, Lorg/apache/logging/log4j/core/config/LockingReliabilityStrategy;

    invoke-direct {v1, p0}, Lorg/apache/logging/log4j/core/config/LockingReliabilityStrategy;-><init>(Lorg/apache/logging/log4j/core/config/LoggerConfig;)V

    return-object v1

    .line 61
    :cond_2
    :try_start_0
    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 63
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;>;"
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lorg/apache/logging/log4j/core/config/LoggerConfig;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 64
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;>;"
    :catch_0
    move-exception v1

    .line 65
    .local v1, "dynamicFailed":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v2

    const-string v3, "Could not create ReliabilityStrategy for \'{}\', using default AwaitCompletionReliabilityStrategy: {}"

    invoke-virtual {v2, v3, v0, v1}, Lorg/apache/logging/log4j/status/StatusLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    new-instance v2, Lorg/apache/logging/log4j/core/config/AwaitCompletionReliabilityStrategy;

    invoke-direct {v2, p0}, Lorg/apache/logging/log4j/core/config/AwaitCompletionReliabilityStrategy;-><init>(Lorg/apache/logging/log4j/core/config/LoggerConfig;)V

    return-object v2
.end method
