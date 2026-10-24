.class public Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;
.super Lorg/apache/logging/log4j/core/appender/AbstractManager;
.source "KafkaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$KafkaManagerFactory;,
        Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;
    }
.end annotation


# static fields
.field public static final DEFAULT_TIMEOUT_MILLIS:Ljava/lang/String; = "30000"

.field private static final factory:Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$KafkaManagerFactory;

.field static producerFactory:Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaProducerFactory;


# instance fields
.field private final config:Ljava/util/Properties;

.field private final key:Ljava/lang/String;

.field private producer:Lorg/apache/kafka/clients/producer/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/kafka/clients/producer/Producer<",
            "[B[B>;"
        }
    .end annotation
.end field

.field private final syncSend:Z

.field private final timeoutMillis:I

.field private final topic:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lorg/apache/logging/log4j/core/appender/mom/kafka/DefaultKafkaProducerFactory;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/appender/mom/kafka/DefaultKafkaProducerFactory;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->producerFactory:Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaProducerFactory;

    .line 54
    new-instance v0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$KafkaManagerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$KafkaManagerFactory;-><init>(Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$1;)V

    sput-object v0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->factory:Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$KafkaManagerFactory;

    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Ljava/lang/String;Z[Lorg/apache/logging/log4j/core/config/Property;Ljava/lang/String;)V
    .locals 6
    .param p1, "loggerContext"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "topic"    # Ljava/lang/String;
    .param p4, "syncSend"    # Z
    .param p5, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
    .param p6, "key"    # Ljava/lang/String;
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
            "loggerContext",
            "name",
            "topic",
            "syncSend",
            "properties",
            "key"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/AbstractManager;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;)V

    .line 47
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->config:Ljava/util/Properties;

    .line 63
    const-string v0, "topic"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->topic:Ljava/lang/String;

    .line 64
    iput-boolean p4, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->syncSend:Z

    .line 66
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->config:Ljava/util/Properties;

    const-string v1, "key.serializer"

    const-string v2, "org.apache.kafka.common.serialization.ByteArraySerializer"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->config:Ljava/util/Properties;

    const-string v1, "value.serializer"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->config:Ljava/util/Properties;

    const-string v1, "batch.size"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    array-length v0, p5

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p5, v1

    .line 71
    .local v2, "property":Lorg/apache/logging/log4j/core/config/Property;
    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->config:Ljava/util/Properties;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/Property;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/Property;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    .end local v2    # "property":Lorg/apache/logging/log4j/core/config/Property;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_0
    iput-object p6, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->key:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->config:Ljava/util/Properties;

    const-string v1, "timeout.ms"

    const-string v2, "30000"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/Integers;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->timeoutMillis:I

    .line 77
    return-void
.end method

.method private closeProducer(JLjava/util/concurrent/TimeUnit;)V
    .locals 3
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

    .line 90
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->producer:Lorg/apache/kafka/clients/producer/Producer;

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Lorg/apache/logging/log4j/core/util/Log4jThread;

    new-instance v1, Lorg/apache/logging/log4j/core/appender/mom/kafka/-$$Lambda$KafkaManager$8-KiQGYYmyKdXQpgNRM5YNkGyjc;

    invoke-direct {v1, p0}, Lorg/apache/logging/log4j/core/appender/mom/kafka/-$$Lambda$KafkaManager$8-KiQGYYmyKdXQpgNRM5YNkGyjc;-><init>(Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;)V

    const-string v2, "KafkaManager-CloseThread"

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/core/util/Log4jThread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 98
    .local v0, "closeThread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 99
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 101
    :try_start_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "ignore":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 107
    .end local v0    # "closeThread":Ljava/lang/Thread;
    .end local v1    # "ignore":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static getManager(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Ljava/lang/String;Z[Lorg/apache/logging/log4j/core/config/Property;Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;
    .locals 10
    .param p0, "loggerContext"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "topic"    # Ljava/lang/String;
    .param p3, "syncSend"    # Z
    .param p4, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
    .param p5, "key"    # Ljava/lang/String;
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
            "loggerContext",
            "name",
            "topic",
            "syncSend",
            "properties",
            "key"
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    array-length v2, p4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p4, v3

    .line 149
    .local v4, "prop":Lorg/apache/logging/log4j/core/config/Property;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/config/Property;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/config/Property;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .end local v4    # "prop":Lorg/apache/logging/log4j/core/config/Property;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->factory:Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$KafkaManagerFactory;

    new-instance v9, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;

    move-object v3, v9

    move-object v4, p0

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Z[Lorg/apache/logging/log4j/core/config/Property;Ljava/lang/String;)V

    invoke-static {v1, v2, v9}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->getManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/ManagerFactory;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/appender/AbstractManager;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;

    return-object v1
.end method


# virtual methods
.method public getTopic()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic lambda$closeProducer$0$KafkaManager()V
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->producer:Lorg/apache/kafka/clients/producer/Producer;

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0}, Lorg/apache/kafka/clients/producer/Producer;->close()V

    .line 97
    :cond_0
    return-void
.end method

.method public synthetic lambda$send$1$KafkaManager(Lorg/apache/kafka/clients/producer/RecordMetadata;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "metadata"    # Lorg/apache/kafka/clients/producer/RecordMetadata;
    .param p2, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "metadata",
            "e"
        }
    .end annotation

    .line 126
    if-eqz p2, :cond_0

    .line 127
    sget-object v0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to write to Kafka in appender ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    :cond_0
    return-void
.end method

.method public releaseSub(JLjava/util/concurrent/TimeUnit;)Z
    .locals 3
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

    .line 81
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->closeProducer(JLjava/util/concurrent/TimeUnit;)V

    goto :goto_0

    .line 84
    :cond_0
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->timeoutMillis:I

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->closeProducer(JLjava/util/concurrent/TimeUnit;)V

    .line 86
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public send([B)V
    .locals 6
    .param p1, "msg"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "msg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->producer:Lorg/apache/kafka/clients/producer/Producer;

    if-eqz v0, :cond_3

    .line 111
    const/4 v0, 0x0

    .line 113
    .local v0, "newKey":[B
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->key:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "${"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->getLoggerContext()Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/LoggerContext;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->key:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 117
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 120
    :cond_1
    :goto_0
    new-instance v1, Lorg/apache/kafka/clients/producer/ProducerRecord;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->topic:Ljava/lang/String;

    invoke-direct {v1, v2, v0, p1}, Lorg/apache/kafka/clients/producer/ProducerRecord;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    .local v1, "newRecord":Lorg/apache/kafka/clients/producer/ProducerRecord;, "Lorg/apache/kafka/clients/producer/ProducerRecord<[B[B>;"
    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->syncSend:Z

    if-eqz v2, :cond_2

    .line 122
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->producer:Lorg/apache/kafka/clients/producer/Producer;

    invoke-interface {v2, v1}, Lorg/apache/kafka/clients/producer/Producer;->send(Lorg/apache/kafka/clients/producer/ProducerRecord;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 123
    .local v2, "response":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/apache/kafka/clients/producer/RecordMetadata;>;"
    iget v3, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->timeoutMillis:I

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 124
    .end local v2    # "response":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/apache/kafka/clients/producer/RecordMetadata;>;"
    goto :goto_1

    .line 125
    :cond_2
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->producer:Lorg/apache/kafka/clients/producer/Producer;

    new-instance v3, Lorg/apache/logging/log4j/core/appender/mom/kafka/-$$Lambda$KafkaManager$vyQWniDpyh8OJHbYrjl5ygf0d68;

    invoke-direct {v3, p0}, Lorg/apache/logging/log4j/core/appender/mom/kafka/-$$Lambda$KafkaManager$vyQWniDpyh8OJHbYrjl5ygf0d68;-><init>(Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;)V

    invoke-interface {v2, v1, v3}, Lorg/apache/kafka/clients/producer/Producer;->send(Lorg/apache/kafka/clients/producer/ProducerRecord;Lorg/apache/kafka/clients/producer/Callback;)Ljava/util/concurrent/Future;

    .line 132
    .end local v0    # "newKey":[B
    .end local v1    # "newRecord":Lorg/apache/kafka/clients/producer/ProducerRecord;, "Lorg/apache/kafka/clients/producer/ProducerRecord<[B[B>;"
    :cond_3
    :goto_1
    return-void
.end method

.method public startup()V
    .locals 2

    .line 135
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->producer:Lorg/apache/kafka/clients/producer/Producer;

    if-nez v0, :cond_0

    .line 136
    sget-object v0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->producerFactory:Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaProducerFactory;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->config:Ljava/util/Properties;

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaProducerFactory;->newKafkaProducer(Ljava/util/Properties;)Lorg/apache/kafka/clients/producer/Producer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->producer:Lorg/apache/kafka/clients/producer/Producer;

    .line 138
    :cond_0
    return-void
.end method
