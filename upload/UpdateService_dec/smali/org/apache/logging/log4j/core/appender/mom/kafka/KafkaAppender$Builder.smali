.class public Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;
.super Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;
.source "KafkaAppender.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder<",
        "TB;>;>",
        "Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder<",
        "TB;>;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender;",
        ">;"
    }
.end annotation


# instance fields
.field private key:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
        value = "key"
    .end annotation
.end field

.field private retryCount:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
        value = "retryCount"
    .end annotation
.end field

.field private syncSend:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
        defaultBoolean = true
        value = "syncSend"
    .end annotation
.end field

.field private topic:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
        value = "topic"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder<TB;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 52
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder<TB;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;->build()Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender;
    .locals 12

    .line 70
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder<TB;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;->getLayout()Lorg/apache/logging/log4j/core/Layout;

    move-result-object v9

    .line 71
    .local v9, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    if-nez v9, :cond_0

    .line 72
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender;->access$000()Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    const-string v1, "No layout provided for KafkaAppender"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getLoggerContext()Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;->topic:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;->syncSend:Z

    .line 76
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;->getPropertyArray()[Lorg/apache/logging/log4j/core/config/Property;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;->key:Ljava/lang/String;

    .line 75
    invoke-static/range {v1 .. v6}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;->getManager(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Ljava/lang/String;Z[Lorg/apache/logging/log4j/core/config/Property;Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;

    move-result-object v10

    .line 77
    .local v10, "kafkaManager":Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;
    new-instance v11, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;->isIgnoreExceptions()Z

    move-result v4

    .line 78
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;->getPropertyArray()[Lorg/apache/logging/log4j/core/config/Property;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;->getRetryCount()Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, v11

    move-object v2, v9

    move-object v5, v10

    invoke-direct/range {v0 .. v8}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;ZLorg/apache/logging/log4j/core/appender/mom/kafka/KafkaManager;[Lorg/apache/logging/log4j/core/config/Property;Ljava/lang/Integer;Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$1;)V

    .line 77
    return-object v11
.end method

.method public getRetryCount()Ljava/lang/Integer;
    .locals 2

    .line 82
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder<TB;>;"
    const/4 v0, 0x0

    .line 84
    .local v0, "intRetryCount":Ljava/lang/Integer;
    :try_start_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;->retryCount:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 87
    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 88
    :goto_0
    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .line 93
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public isSyncSend()Z
    .locals 1

    .line 97
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;->syncSend:Z

    return v0
.end method

.method public setKey(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 101
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;->key:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;

    return-object v0
.end method

.method public setSyncSend(Z)Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;
    .locals 1
    .param p1, "syncSend"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "syncSend"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 106
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;->syncSend:Z

    .line 107
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;

    return-object v0
.end method

.method public setTopic(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;
    .locals 1
    .param p1, "topic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "topic"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 111
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;->topic:Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender$Builder;

    return-object v0
.end method
