.class public final Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender;
.super Lorg/apache/logging/log4j/core/appender/AbstractAppender;
.source "KafkaAppender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "appender"
    name = "Kafka"
    printObject = true
.end annotation


# static fields
.field private static final KAFKA_CLIENT_PACKAGES:[Ljava/lang/String;


# instance fields
.field private final manager:Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;

.field private final retryCount:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 117
    const-string v0, "org.apache.kafka.common"

    const-string v1, "org.apache.kafka.clients"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender;->KAFKA_CLIENT_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;ZLorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;[Lorg/apache/logging/log4j/core/config/Property;Ljava/lang/Integer;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p4, "ignoreExceptions"    # Z
    .param p5, "manager"    # Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;
    .param p6, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
    .param p7, "retryCount"    # Ljava/lang/Integer;
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
            "name",
            "layout",
            "filter",
            "ignoreExceptions",
            "manager",
            "properties",
            "retryCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;",
            "Lorg/apache/logging/log4j/core/Filter;",
            "Z",
            "Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;",
            "[",
            "Lorg/apache/logging/log4j/core/config/Property;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 161
    .local p2, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Z[Lorg/apache/logging/log4j/core/config/Property;)V

    .line 162
    const-string v0, "manager"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p5

    check-cast v0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender;->manager:Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;

    .line 163
    iput-object p7, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender;->retryCount:Ljava/lang/Integer;

    .line 164
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;ZLorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;[Lorg/apache/logging/log4j/core/config/Property;Ljava/lang/Integer;Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/logging/log4j/core/Layout;
    .param p3, "x2"    # Lorg/apache/logging/log4j/core/Filter;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;
    .param p6, "x5"    # [Lorg/apache/logging/log4j/core/config/Property;
    .param p7, "x6"    # Ljava/lang/Integer;
    .param p8, "x7"    # Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$1;

    .line 45
    invoke-direct/range {p0 .. p7}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;ZLorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;[Lorg/apache/logging/log4j/core/config/Property;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$000()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 45
    sget-object v0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method public static createAppender(Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Ljava/lang/String;ZLjava/lang/String;[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/config/Configuration;Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender;
    .locals 10
    .param p1, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "ignoreExceptions"    # Z
    .param p4, "topic"    # Ljava/lang/String;
    .param p5, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
    .param p6, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p7, "key"    # Ljava/lang/String;
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
            "layout",
            "filter",
            "name",
            "ignoreExceptions",
            "topic",
            "properties",
            "configuration",
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;",
            "Lorg/apache/logging/log4j/core/Filter;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/logging/log4j/core/config/Property;",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    .local p0, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    if-nez p0, :cond_0

    .line 126
    sget-object v0, Lorg/apache/logging/log4j/core/AbstractLifeCycle;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "No layout provided for KafkaAppender"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 127
    const/4 v0, 0x0

    return-object v0

    .line 129
    :cond_0
    invoke-interface/range {p6 .. p6}, Lorg/apache/logging/log4j/core/config/Configuration;->getLoggerContext()Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v1

    const/4 v4, 0x1

    move-object v2, p2

    move-object v3, p4

    move-object v5, p5

    move-object/from16 v6, p7

    invoke-static/range {v1 .. v6}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->getManager(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Ljava/lang/String;Z[Lorg/apache/logging/log4j/core/config/Property;Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;

    move-result-object v8

    .line 131
    .local v8, "kafkaManager":Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;
    new-instance v9, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v9

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move-object v5, v8

    invoke-direct/range {v0 .. v7}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;ZLorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;[Lorg/apache/logging/log4j/core/config/Property;Ljava/lang/Integer;)V

    return-object v9
.end method

.method private static isRecursive(Lorg/apache/logging/log4j/core/LogEvent;)Z
    .locals 2
    .param p0, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 141
    sget-object v0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender;->KAFKA_CLIENT_PACKAGES:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/logging/log4j/core/appender/mom/kafka/-$$Lambda$KafkaAppender$Dtz3yS-IYvxXKnm_mg_1kGwaRbM;

    invoke-direct {v1, p0}, Lorg/apache/logging/log4j/core/appender/mom/kafka/-$$Lambda$KafkaAppender$Dtz3yS-IYvxXKnm_mg_1kGwaRbM;-><init>(Lorg/apache/logging/log4j/core/LogEvent;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$isRecursive$0(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;)Z
    .locals 1
    .param p0, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "event",
            "prefix"
        }
    .end annotation

    .line 141
    invoke-interface {p0}, Lorg/apache/logging/log4j/core/LogEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder<",
            "TB;>;>()TB;"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 151
    new-instance v0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;

    return-object v0
.end method

.method private tryAppend(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 7
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 213
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender;->getLayout()Lorg/apache/logging/log4j/core/Layout;

    move-result-object v0

    .line 215
    .local v0, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    instance-of v1, v0, Lorg/apache/logging/log4j/core/layout/SerializedLayout;

    if-eqz v1, :cond_0

    .line 216
    invoke-interface {v0}, Lorg/apache/logging/log4j/core/Layout;->getHeader()[B

    move-result-object v1

    .line 217
    .local v1, "header":[B
    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/core/Layout;->toByteArray(Lorg/apache/logging/log4j/core/LogEvent;)[B

    move-result-object v2

    .line 218
    .local v2, "body":[B
    array-length v3, v1

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 219
    .local v3, "data":[B
    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    array-length v4, v1

    array-length v6, v2

    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    .end local v1    # "header":[B
    .end local v2    # "body":[B
    goto :goto_0

    .line 222
    .end local v3    # "data":[B
    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/core/Layout;->toByteArray(Lorg/apache/logging/log4j/core/LogEvent;)[B

    move-result-object v3

    .line 224
    .restart local v3    # "data":[B
    :goto_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender;->manager:Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;

    invoke-virtual {v1, v3}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->send([B)V

    .line 225
    return-void
.end method


# virtual methods
.method public append(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 4
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 168
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender;->isRecursive(Lorg/apache/logging/log4j/core/LogEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    sget-object v0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Recursive logging from [{}] for appender [{}]."

    invoke-interface {v0, v3, v1, v2}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 172
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender;->tryAppend(Lorg/apache/logging/log4j/core/LogEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    goto :goto_2

    .line 173
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender;->retryCount:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 176
    const/4 v1, 0x0

    .line 177
    .local v1, "currentRetryAttempt":I
    :goto_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender;->retryCount:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 178
    add-int/lit8 v1, v1, 0x1

    .line 180
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender;->tryAppend(Lorg/apache/logging/log4j/core/LogEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    goto :goto_1

    .line 182
    :catch_1
    move-exception v2

    .line 184
    goto :goto_0

    .line 187
    .end local v1    # "currentRetryAttempt":I
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to write to Kafka in appender ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender;->error(Ljava/lang/String;Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/Throwable;)V

    .line 190
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public start()V
    .locals 1

    .line 194
    invoke-super {p0}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->start()V

    .line 195
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender;->manager:Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->startup()V

    .line 196
    return-void
.end method

.method public stop(JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "timeout",
            "timeUnit"
        }
    .end annotation

    .line 200
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender;->setStopping()V

    .line 201
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->stop(JLjava/util/concurrent/TimeUnit;Z)Z

    move-result v0

    .line 202
    .local v0, "stopped":Z
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender;->manager:Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->stop(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 203
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender;->setStopped()V

    .line 204
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KafkaAppender{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender;->getState()Lorg/apache/logging/log4j/core/LifeCycle$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", topic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender;->manager:Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
