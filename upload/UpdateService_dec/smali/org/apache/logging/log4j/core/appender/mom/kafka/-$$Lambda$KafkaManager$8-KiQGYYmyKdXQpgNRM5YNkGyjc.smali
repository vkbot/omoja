.class public final synthetic Lorg/apache/logging/log4j/core/appender/mom/kafka/-$$Lambda$KafkaManager$8-KiQGYYmyKdXQpgNRM5YNkGyjc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/-$$Lambda$KafkaManager$8-KiQGYYmyKdXQpgNRM5YNkGyjc;->f$0:Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/-$$Lambda$KafkaManager$8-KiQGYYmyKdXQpgNRM5YNkGyjc;->f$0:Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->lambda$closeProducer$0$KafkaManager()V

    return-void
.end method
