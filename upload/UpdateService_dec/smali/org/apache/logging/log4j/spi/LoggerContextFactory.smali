.class public interface abstract Lorg/apache/logging/log4j/spi/LoggerContextFactory;
.super Ljava/lang/Object;
.source "LoggerContextFactory.java"


# virtual methods
.method public abstract getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)Lorg/apache/logging/log4j/spi/LoggerContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fqcn",
            "loader",
            "externalContext",
            "currentContext"
        }
    .end annotation
.end method

.method public abstract getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;ZLjava/net/URI;Ljava/lang/String;)Lorg/apache/logging/log4j/spi/LoggerContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fqcn",
            "loader",
            "externalContext",
            "currentContext",
            "configLocation",
            "name"
        }
    .end annotation
.end method

.method public hasContext(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Z
    .locals 1
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "currentContext"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fqcn",
            "loader",
            "currentContext"
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public isClassLoaderDependent()Z
    .locals 1

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public abstract removeContext(Lorg/apache/logging/log4j/spi/LoggerContext;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation
.end method

.method public shutdown(Ljava/lang/String;Ljava/lang/ClassLoader;ZZ)V
    .locals 2
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "currentContext"    # Z
    .param p4, "allContexts"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fqcn",
            "loader",
            "currentContext",
            "allContexts"
        }
    .end annotation

    .line 36
    invoke-interface {p0, p1, p2, p3}, Lorg/apache/logging/log4j/spi/LoggerContextFactory;->hasContext(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0, p3}, Lorg/apache/logging/log4j/spi/LoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v0

    .line 38
    .local v0, "ctx":Lorg/apache/logging/log4j/spi/LoggerContext;
    instance-of v1, v0, Lorg/apache/logging/log4j/spi/Terminable;

    if-eqz v1, :cond_0

    .line 39
    move-object v1, v0

    check-cast v1, Lorg/apache/logging/log4j/spi/Terminable;

    invoke-interface {v1}, Lorg/apache/logging/log4j/spi/Terminable;->terminate()V

    .line 42
    .end local v0    # "ctx":Lorg/apache/logging/log4j/spi/LoggerContext;
    :cond_0
    return-void
.end method
