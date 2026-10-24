.class public interface abstract Lorg/apache/logging/log4j/spi/LoggerContext;
.super Ljava/lang/Object;
.source "LoggerContext.java"


# static fields
.field public static final EMPTY_ARRAY:[Lorg/apache/logging/log4j/spi/LoggerContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/logging/log4j/spi/LoggerContext;

    sput-object v0, Lorg/apache/logging/log4j/spi/LoggerContext;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/spi/LoggerContext;

    return-void
.end method


# virtual methods
.method public abstract getExternalContext()Ljava/lang/Object;
.end method

.method public getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/spi/ExtendedLogger;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cls"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/logging/log4j/spi/ExtendedLogger;"
        }
    .end annotation

    .line 45
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "canonicalName":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {p0, v1}, Lorg/apache/logging/log4j/spi/LoggerContext;->getLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/spi/ExtendedLogger;

    move-result-object v1

    return-object v1
.end method

.method public getLogger(Ljava/lang/Class;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/spi/ExtendedLogger;
    .locals 2
    .param p2, "messageFactory"    # Lorg/apache/logging/log4j/message/MessageFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cls",
            "messageFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/logging/log4j/message/MessageFactory;",
            ")",
            "Lorg/apache/logging/log4j/spi/ExtendedLogger;"
        }
    .end annotation

    .line 59
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "canonicalName":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {p0, v1, p2}, Lorg/apache/logging/log4j/spi/LoggerContext;->getLogger(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/spi/ExtendedLogger;

    move-result-object v1

    return-object v1
.end method

.method public abstract getLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/spi/ExtendedLogger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation
.end method

.method public abstract getLogger(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/spi/ExtendedLogger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "messageFactory"
        }
    .end annotation
.end method

.method public getLoggerRegistry()Lorg/apache/logging/log4j/spi/LoggerRegistry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/logging/log4j/spi/LoggerRegistry<",
            "+",
            "Lorg/apache/logging/log4j/Logger;",
            ">;"
        }
    .end annotation

    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract hasLogger(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation
.end method

.method public abstract hasLogger(Ljava/lang/String;Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
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
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract hasLogger(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "messageFactory"
        }
    .end annotation
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public putObjectIfAbsent(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeObject(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 164
    const/4 v0, 0x0

    return v0
.end method
