.class public final synthetic Lorg/apache/logging/log4j/core/appender/mom/-$$Lambda$JmsManager$DhD6oKMBM_dIElayExkQaodmrkQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/apache/logging/log4j/util/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljavax/jms/MapMessage;


# direct methods
.method public synthetic constructor <init>(Ljavax/jms/MapMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/mom/-$$Lambda$JmsManager$DhD6oKMBM_dIElayExkQaodmrkQ;->f$0:Ljavax/jms/MapMessage;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/-$$Lambda$JmsManager$DhD6oKMBM_dIElayExkQaodmrkQ;->f$0:Ljavax/jms/MapMessage;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->lambda$map$0(Ljavax/jms/MapMessage;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
