.class public Lorg/apache/logging/log4j/core/appender/mom/kafka/DefaultKafkaProducerFactory;
.super Ljava/lang/Object;
.source "DefaultKafkaProducerFactory.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaProducerFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newKafkaProducer(Ljava/util/Properties;)Lorg/apache/kafka/clients/producer/Producer;
    .locals 1
    .param p1, "config"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
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

    .line 40
    new-instance v0, Lorg/apache/kafka/clients/producer/KafkaProducer;

    invoke-direct {v0, p1}, Lorg/apache/kafka/clients/producer/KafkaProducer;-><init>(Ljava/util/Properties;)V

    return-object v0
.end method
