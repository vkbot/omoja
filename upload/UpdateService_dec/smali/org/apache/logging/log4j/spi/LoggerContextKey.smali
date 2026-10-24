.class public Lorg/apache/logging/log4j/spi/LoggerContextKey;
.super Ljava/lang/Object;
.source "LoggerContextKey.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 32
    sget-object v0, Lorg/apache/logging/log4j/spi/AbstractLogger;->DEFAULT_MESSAGE_FACTORY_CLASS:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/logging/log4j/spi/LoggerContextKey;->create(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "messageFactoryClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/logging/log4j/message/MessageFactory;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 42
    .local p1, "messageFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/logging/log4j/message/MessageFactory;>;"
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/spi/AbstractLogger;->DEFAULT_MESSAGE_FACTORY_CLASS:Ljava/lang/Class;

    .line 44
    .local v0, "mfClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/logging/log4j/message/MessageFactory;>;"
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static create(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "messageFactory"    # Lorg/apache/logging/log4j/message/MessageFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "messageFactory"
        }
    .end annotation

    .line 36
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/spi/AbstractLogger;->DEFAULT_MESSAGE_FACTORY_CLASS:Ljava/lang/Class;

    .line 38
    .local v0, "messageFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/logging/log4j/message/MessageFactory;>;"
    :goto_0
    invoke-static {p0, v0}, Lorg/apache/logging/log4j/spi/LoggerContextKey;->create(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
