.class public final synthetic Lorg/apache/logging/log4j/core/appender/mom/kafka/-$$Lambda$KafkaAppender$Dtz3yS-IYvxXKnm_mg_1kGwaRbM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lorg/apache/logging/log4j/core/LogEvent;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/-$$Lambda$KafkaAppender$Dtz3yS-IYvxXKnm_mg_1kGwaRbM;->f$0:Lorg/apache/logging/log4j/core/LogEvent;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/kafka/-$$Lambda$KafkaAppender$Dtz3yS-IYvxXKnm_mg_1kGwaRbM;->f$0:Lorg/apache/logging/log4j/core/LogEvent;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/logging/log4j/core/appender/mom/kafka/KafkaAppender;->lambda$isRecursive$0(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
