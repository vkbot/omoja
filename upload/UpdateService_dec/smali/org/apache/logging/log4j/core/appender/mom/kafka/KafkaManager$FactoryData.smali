.class Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;
.super Ljava/lang/Object;
.source "KafkaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FactoryData"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final loggerContext:Lorg/apache/logging/log4j/core/LoggerContext;

.field private final properties:[Lorg/apache/logging/log4j/core/config/Property;

.field private final syncSend:Z

.field private final topic:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Z[Lorg/apache/logging/log4j/core/config/Property;Ljava/lang/String;)V
    .locals 0
    .param p1, "loggerContext"    # Lorg/apache/logging/log4j/core/LoggerContext;
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
            0x10
        }
        names = {
            "loggerContext",
            "topic",
            "syncSend",
            "properties",
            "key"
        }
    .end annotation

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;->loggerContext:Lorg/apache/logging/log4j/core/LoggerContext;

    .line 164
    iput-object p2, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;->topic:Ljava/lang/String;

    .line 165
    iput-boolean p3, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;->syncSend:Z

    .line 166
    iput-object p4, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;->properties:[Lorg/apache/logging/log4j/core/config/Property;

    .line 167
    iput-object p5, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;->key:Ljava/lang/String;

    .line 168
    return-void
.end method

.method static synthetic access$100(Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;)Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;

    .line 154
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;->loggerContext:Lorg/apache/logging/log4j/core/LoggerContext;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;

    .line 154
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;->topic:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;

    .line 154
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;->syncSend:Z

    return v0
.end method

.method static synthetic access$400(Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;)[Lorg/apache/logging/log4j/core/config/Property;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;

    .line 154
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;->properties:[Lorg/apache/logging/log4j/core/config/Property;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;

    .line 154
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;->key:Ljava/lang/String;

    return-object v0
.end method
