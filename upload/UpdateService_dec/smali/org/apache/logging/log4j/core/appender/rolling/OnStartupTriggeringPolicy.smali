.class public Lorg/apache/logging/log4j/core/appender/rolling/OnStartupTriggeringPolicy;
.super Lorg/apache/logging/log4j/core/appender/rolling/AbstractTriggeringPolicy;
.source "OnStartupTriggeringPolicy.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "OnStartupTriggeringPolicy"
    printObject = true
.end annotation


# static fields
.field private static final JVM_START_TIME:J


# instance fields
.field private final minSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/rolling/OnStartupTriggeringPolicy;->initStartTime()J

    move-result-wide v0

    sput-wide v0, Lorg/apache/logging/log4j/core/appender/rolling/OnStartupTriggeringPolicy;->JVM_START_TIME:J

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0
    .param p1, "minSize"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "minSize"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/rolling/AbstractTriggeringPolicy;-><init>()V

    .line 40
    iput-wide p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/OnStartupTriggeringPolicy;->minSize:J

    .line 41
    return-void
.end method

.method public static createPolicy(J)Lorg/apache/logging/log4j/core/appender/rolling/OnStartupTriggeringPolicy;
    .locals 1
    .param p0, "minSize"    # J
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultLong = 0x1L
            value = "minSize"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "minSize"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 107
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/OnStartupTriggeringPolicy;

    invoke-direct {v0, p0, p1}, Lorg/apache/logging/log4j/core/appender/rolling/OnStartupTriggeringPolicy;-><init>(J)V

    return-object v0
.end method

.method private static initStartTime()J
    .locals 8

    .line 55
    :try_start_0
    const-string v0, "java.lang.management.ManagementFactory"

    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/Loader;->loadSystemClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 56
    .local v0, "factoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "getRuntimeMXBean"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 57
    .local v1, "getRuntimeMXBean":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 59
    .local v3, "runtimeMXBean":Ljava/lang/Object;
    const-string v4, "java.lang.management.RuntimeMXBean"

    invoke-static {v4}, Lorg/apache/logging/log4j/core/util/Loader;->loadSystemClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 60
    .local v4, "runtimeMXBeanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getStartTime"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 61
    .local v5, "getStartTime":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 63
    .local v2, "result":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v6

    .line 64
    .end local v0    # "factoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "getRuntimeMXBean":Ljava/lang/reflect/Method;
    .end local v2    # "result":Ljava/lang/Long;
    .end local v3    # "runtimeMXBean":Ljava/lang/Object;
    .end local v4    # "runtimeMXBeanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "getStartTime":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v0

    .line 65
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v1

    const-string v2, "Unable to call ManagementFactory.getRuntimeMXBean().getStartTime(), using system time for OnStartupTriggeringPolicy"

    invoke-virtual {v1, v2, v0}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    return-wide v1
.end method


# virtual methods
.method public initialize(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;)V
    .locals 4
    .param p1, "manager"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "manager"
        }
    .end annotation

    .line 78
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getFileTime()J

    move-result-wide v0

    sget-wide v2, Lorg/apache/logging/log4j/core/appender/rolling/OnStartupTriggeringPolicy;->JVM_START_TIME:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getFileSize()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/OnStartupTriggeringPolicy;->minSize:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 79
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    const-string v1, "Initiating rollover at startup"

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;)V

    .line 80
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/OnStartupTriggeringPolicy;->minSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p1, v1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->setRenameEmptyFiles(Z)V

    .line 83
    :cond_0
    invoke-virtual {p1, v1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->skipFooter(Z)V

    .line 84
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->rollover()V

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->skipFooter(Z)V

    .line 87
    :cond_1
    return-void
.end method

.method public isTriggeringEvent(Lorg/apache/logging/log4j/core/LogEvent;)Z
    .locals 1
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 101
    const-string v0, "OnStartupTriggeringPolicy"

    return-object v0
.end method
