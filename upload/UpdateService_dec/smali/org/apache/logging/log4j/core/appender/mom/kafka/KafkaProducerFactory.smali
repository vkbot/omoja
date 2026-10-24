.class public interface abstract Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaProducerFactory;
.super Ljava/lang/Object;
.source "KafkaProducerFactory.java"


# virtual methods
.method public abstract newKafkaProducer(Ljava/util/Properties;)Lorg/apache/kafka/clients/producer/Producer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            ")",
            "Lorg/apache/kafka/clients/producer/Producer<",
            "[B[B>;"
        }
    .end annotation
.end method
