.class public final synthetic Lorg/apache/logging/log4j/core/appender/mom/kafka/-$$Lambda$KafkaManager$vyQWniDpyh8OJHbYrjl5ygf0d68;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/apache/kafka/clients/producer/Callback;


# instance fields
.field public final synthetic f$0:Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/-$$Lambda$KafkaManager$vyQWniDpyh8OJHbYrjl5ygf0d68;->f$0:Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;

    return-void
.end method


# virtual methods
.method public final onCompletion(Lorg/apache/kafka/clients/producer/RecordMetadata;Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/-$$Lambda$KafkaManager$vyQWniDpyh8OJHbYrjl5ygf0d68;->f$0:Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;

    invoke-virtual {v0, p1, p2}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->lambda$send$1$KafkaManager(Lorg/apache/kafka/clients/producer/RecordMetadata;Ljava/lang/Exception;)V

    return-void
.end method
