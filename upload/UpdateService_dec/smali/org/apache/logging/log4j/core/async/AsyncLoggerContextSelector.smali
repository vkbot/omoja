.class public Lorg/apache/logging/log4j/core/async/AsyncLoggerContextSelector;
.super Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;
.source "AsyncLoggerContextSelector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;-><init>()V

    return-void
.end method

.method public static isSelected()Z
    .locals 3

    .line 40
    const-class v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerContextSelector;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v1

    const-string v2, "Log4jContextSelector"

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected createContext(Ljava/lang/String;Ljava/net/URI;)Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "configLocation"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "configLocation"
        }
    .end annotation

    .line 46
    new-instance v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerContext;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lorg/apache/logging/log4j/core/async/AsyncLoggerContext;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/net/URI;)V

    return-object v0
.end method

.method protected defaultContextName()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultAsyncContext@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toContextMapKey(Ljava/lang/ClassLoader;)Ljava/lang/String;
    .locals 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "loader"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncContext@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
