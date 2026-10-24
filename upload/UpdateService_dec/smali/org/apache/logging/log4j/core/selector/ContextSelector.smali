.class public interface abstract Lorg/apache/logging/log4j/core/selector/ContextSelector;
.super Ljava/lang/Object;
.source "ContextSelector.java"


# static fields
.field public static final DEFAULT_STOP_TIMEOUT:J = 0x32L


# virtual methods
.method public getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Map$Entry;Z)Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 3
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p4, "currentContext"    # Z
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
            "entry",
            "currentContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lorg/apache/logging/log4j/core/LoggerContext;"
        }
    .end annotation

    .line 81
    .local p3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0, p1, p2, p4}, Lorg/apache/logging/log4j/core/selector/ContextSelector;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    .line 82
    .local v0, "lc":Lorg/apache/logging/log4j/core/LoggerContext;
    if-eqz v0, :cond_0

    .line 83
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/core/LoggerContext;->putObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    return-object v0
.end method

.method public getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Map$Entry;ZLjava/net/URI;)Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 3
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p4, "currentContext"    # Z
    .param p5, "configLocation"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fqcn",
            "loader",
            "entry",
            "currentContext",
            "configLocation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Ljava/net/URI;",
            ")",
            "Lorg/apache/logging/log4j/core/LoggerContext;"
        }
    .end annotation

    .line 110
    .local p3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0, p1, p2, p4, p5}, Lorg/apache/logging/log4j/core/selector/ContextSelector;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;ZLjava/net/URI;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    .line 111
    .local v0, "lc":Lorg/apache/logging/log4j/core/LoggerContext;
    if-eqz v0, :cond_0

    .line 112
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/core/LoggerContext;->putObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_0
    return-object v0
.end method

.method public abstract getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lorg/apache/logging/log4j/core/LoggerContext;
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
.end method

.method public abstract getContext(Ljava/lang/String;Ljava/lang/ClassLoader;ZLjava/net/URI;)Lorg/apache/logging/log4j/core/LoggerContext;
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
            "configLocation"
        }
    .end annotation
.end method

.method public abstract getLoggerContexts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/LoggerContext;",
            ">;"
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

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public isClassLoaderDependent()Z
    .locals 1

    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public abstract removeContext(Lorg/apache/logging/log4j/core/LoggerContext;)V
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
    .locals 4
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "currentContext"    # Z
    .param p4, "allContexts"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "loader",
            "currentContext",
            "allContexts"
        }
    .end annotation

    .line 43
    invoke-interface {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/selector/ContextSelector;->hasContext(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/selector/ContextSelector;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    const-wide/16 v1, 0x32

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/logging/log4j/core/LoggerContext;->stop(JLjava/util/concurrent/TimeUnit;)Z

    .line 46
    :cond_0
    return-void
.end method
