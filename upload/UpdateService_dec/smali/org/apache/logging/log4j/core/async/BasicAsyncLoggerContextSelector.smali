.class public Lorg/apache/logging/log4j/core/async/BasicAsyncLoggerContextSelector;
.super Ljava/lang/Object;
.source "BasicAsyncLoggerContextSelector.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/selector/ContextSelector;


# static fields
.field private static final CONTEXT:Lorg/apache/logging/log4j/core/async/AsyncLoggerContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerContext;

    const-string v1, "AsyncDefault"

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/async/AsyncLoggerContext;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/async/BasicAsyncLoggerContextSelector;->CONTEXT:Lorg/apache/logging/log4j/core/async/AsyncLoggerContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 2
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "currentContext"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "loader",
            "currentContext"
        }
    .end annotation

    .line 54
    sget-object v0, Lorg/apache/logging/log4j/core/impl/ContextAnchor;->THREAD_CONTEXT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/LoggerContext;

    .line 55
    .local v0, "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/logging/log4j/core/async/BasicAsyncLoggerContextSelector;->CONTEXT:Lorg/apache/logging/log4j/core/async/AsyncLoggerContext;

    :goto_0
    return-object v1
.end method

.method public getContext(Ljava/lang/String;Ljava/lang/ClassLoader;ZLjava/net/URI;)Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 2
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "currentContext"    # Z
    .param p4, "configLocation"    # Ljava/net/URI;
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
            "configLocation"
        }
    .end annotation

    .line 65
    sget-object v0, Lorg/apache/logging/log4j/core/impl/ContextAnchor;->THREAD_CONTEXT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/LoggerContext;

    .line 66
    .local v0, "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/logging/log4j/core/async/BasicAsyncLoggerContextSelector;->CONTEXT:Lorg/apache/logging/log4j/core/async/AsyncLoggerContext;

    :goto_0
    return-object v1
.end method

.method public getLoggerContexts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/LoggerContext;",
            ">;"
        }
    .end annotation

    .line 81
    sget-object v0, Lorg/apache/logging/log4j/core/async/BasicAsyncLoggerContextSelector;->CONTEXT:Lorg/apache/logging/log4j/core/async/AsyncLoggerContext;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasContext(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Z
    .locals 2
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

    .line 48
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/async/BasicAsyncLoggerContextSelector;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    .line 49
    .local v0, "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isClassLoaderDependent()Z
    .locals 1

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public removeContext(Lorg/apache/logging/log4j/core/LoggerContext;)V
    .locals 0
    .param p1, "context"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 72
    return-void
.end method

.method public shutdown(Ljava/lang/String;Ljava/lang/ClassLoader;ZZ)V
    .locals 4
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

    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/async/BasicAsyncLoggerContextSelector;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    .line 41
    .local v0, "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    const-wide/16 v1, 0x32

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/logging/log4j/core/LoggerContext;->stop(JLjava/util/concurrent/TimeUnit;)Z

    .line 44
    :cond_0
    return-void
.end method
