.class public Lorg/apache/logging/log4j/core/impl/Log4jProvider;
.super Lorg/apache/logging/log4j/spi/Provider;
.source "Log4jProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 26
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Lorg/apache/logging/log4j/core/impl/Log4jContextFactory;

    const-string v2, "2.6.0"

    invoke-direct {p0, v0, v2, v1}, Lorg/apache/logging/log4j/spi/Provider;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Class;)V

    .line 27
    return-void
.end method
