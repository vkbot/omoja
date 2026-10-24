.class public Lorg/apache/logging/log4j/core/config/AwaitUnconditionallyReliabilityStrategy;
.super Ljava/lang/Object;
.source "AwaitUnconditionallyReliabilityStrategy.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;
.implements Lorg/apache/logging/log4j/core/config/LocationAwareReliabilityStrategy;


# static fields
.field private static final DEFAULT_SLEEP_MILLIS:J = 0x1388L

.field private static final SLEEP_MILLIS:J


# instance fields
.field private final loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    invoke-static {}, Lorg/apache/logging/log4j/core/config/AwaitUnconditionallyReliabilityStrategy;->sleepMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/apache/logging/log4j/core/config/AwaitUnconditionallyReliabilityStrategy;->SLEEP_MILLIS:J

    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/config/LoggerConfig;)V
    .locals 1
    .param p1, "loggerConfig"    # Lorg/apache/logging/log4j/core/config/LoggerConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "loggerConfig"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "loggerConfig is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/core/config/LoggerConfig;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/AwaitUnconditionallyReliabilityStrategy;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    .line 41
    return-void
.end method

.method private static sleepMillis()J
    .locals 4

    .line 44
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    const-string v1, "log4j.waitMillisBeforeStopOldConfig"

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getLongProperty(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public afterLogEvent()V
    .locals 0

    .line 106
    return-void
.end method

.method public beforeStopAppenders()V
    .locals 0

    .line 116
    return-void
.end method

.method public beforeStopConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)V
    .locals 3
    .param p1, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AwaitUnconditionallyReliabilityStrategy;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/config/Configuration;->getRootLogger()Lorg/apache/logging/log4j/core/config/LoggerConfig;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 130
    :try_start_0
    sget-wide v0, Lorg/apache/logging/log4j/core/config/AwaitUnconditionallyReliabilityStrategy;->SLEEP_MILLIS:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v1

    const-string v2, "Sleep before stop configuration was interrupted."

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/status/StatusLogger;->warn(Ljava/lang/String;)V

    .line 135
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    return-void
.end method

.method public getActiveLoggerConfig(Lorg/apache/logging/log4j/util/Supplier;)Lorg/apache/logging/log4j/core/config/LoggerConfig;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "next"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "Lorg/apache/logging/log4j/core/config/LoggerConfig;",
            ">;)",
            "Lorg/apache/logging/log4j/core/config/LoggerConfig;"
        }
    .end annotation

    .line 95
    .local p1, "next":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<Lorg/apache/logging/log4j/core/config/LoggerConfig;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AwaitUnconditionallyReliabilityStrategy;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    return-object v0
.end method

.method public log(Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 9
    .param p2, "loggerName"    # Ljava/lang/String;
    .param p3, "fqcn"    # Ljava/lang/String;
    .param p4, "location"    # Ljava/lang/StackTraceElement;
    .param p5, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p6, "level"    # Lorg/apache/logging/log4j/Level;
    .param p7, "data"    # Lorg/apache/logging/log4j/message/Message;
    .param p8, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "reconfigured",
            "loggerName",
            "fqcn",
            "location",
            "marker",
            "level",
            "data",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "Lorg/apache/logging/log4j/core/config/LoggerConfig;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/StackTraceElement;",
            "Lorg/apache/logging/log4j/Marker;",
            "Lorg/apache/logging/log4j/Level;",
            "Lorg/apache/logging/log4j/message/Message;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 72
    .local p1, "reconfigured":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<Lorg/apache/logging/log4j/core/config/LoggerConfig;>;"
    move-object v0, p0

    iget-object v1, v0, Lorg/apache/logging/log4j/core/config/AwaitUnconditionallyReliabilityStrategy;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 73
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 7
    .param p2, "loggerName"    # Ljava/lang/String;
    .param p3, "fqcn"    # Ljava/lang/String;
    .param p4, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p5, "level"    # Lorg/apache/logging/log4j/Level;
    .param p6, "data"    # Lorg/apache/logging/log4j/message/Message;
    .param p7, "t"    # Ljava/lang/Throwable;
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
            "reconfigured",
            "loggerName",
            "fqcn",
            "marker",
            "level",
            "data",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "Lorg/apache/logging/log4j/core/config/LoggerConfig;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/Marker;",
            "Lorg/apache/logging/log4j/Level;",
            "Lorg/apache/logging/log4j/message/Message;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 58
    .local p1, "reconfigured":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<Lorg/apache/logging/log4j/core/config/LoggerConfig;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AwaitUnconditionallyReliabilityStrategy;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->log(Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 59
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/util/Supplier;Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 1
    .param p2, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "reconfigured",
            "event"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "Lorg/apache/logging/log4j/core/config/LoggerConfig;",
            ">;",
            "Lorg/apache/logging/log4j/core/LogEvent;",
            ")V"
        }
    .end annotation

    .line 83
    .local p1, "reconfigured":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<Lorg/apache/logging/log4j/core/config/LoggerConfig;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AwaitUnconditionallyReliabilityStrategy;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-virtual {v0, p2}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->log(Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 84
    return-void
.end method
