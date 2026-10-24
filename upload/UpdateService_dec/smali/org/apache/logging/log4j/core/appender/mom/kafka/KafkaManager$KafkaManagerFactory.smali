.class Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$KafkaManagerFactory;
.super Ljava/lang/Object;
.source "KafkaManager.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/appender/ManagerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KafkaManagerFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/appender/ManagerFactory<",
        "Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;",
        "Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$1;

    .line 172
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$KafkaManagerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createManager(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "name",
            "data"
        }
    .end annotation

    .line 172
    check-cast p2, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$KafkaManagerFactory;->createManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;)Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;

    move-result-object p1

    return-object p1
.end method

.method public createManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;)Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "data"
        }
    .end annotation

    .line 175
    new-instance v7, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;

    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;->access$100(Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v1

    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;->access$200(Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;->access$300(Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;)Z

    move-result v4

    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;->access$400(Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;)[Lorg/apache/logging/log4j/core/config/Property;

    move-result-object v5

    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;->access$500(Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager$FactoryData;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Ljava/lang/String;Z[Lorg/apache/logging/log4j/core/config/Property;Ljava/lang/String;)V

    return-object v7
.end method
