.class public abstract Lorg/apache/logging/log4j/spi/AbstractLoggerAdapter;
.super Ljava/lang/Object;
.source "AbstractLoggerAdapter.java"

# interfaces
.implements Lorg/apache/logging/log4j/spi/LoggerAdapter;
.implements Lorg/apache/logging/log4j/spi/LoggerContextShutdownAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/spi/LoggerAdapter<",
        "T",
        "L;",
        ">;",
        "Lorg/apache/logging/log4j/spi/LoggerContextShutdownAware;"
    }
.end annotation


# instance fields
.field private final lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field protected final registry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/logging/log4j/spi/LoggerContext;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "T",
            "L;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    .local p0, "this":Lorg/apache/logging/log4j/spi/AbstractLoggerAdapter;, "Lorg/apache/logging/log4j/spi/AbstractLoggerAdapter<TL;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/spi/AbstractLoggerAdapter;->registry:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/logging/log4j/spi/AbstractLoggerAdapter;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 142
    .local p0, "this":Lorg/apache/logging/log4j/spi/AbstractLoggerAdapter;, "Lorg/apache/logging/log4j/spi/AbstractLoggerAdapter<TL;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/AbstractLoggerAdapter;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 144
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/AbstractLoggerAdapter;->registry:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/AbstractLoggerAdapter;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 147
    nop

    .line 148
    return-void

    .line 146
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/logging/log4j/spi/AbstractLoggerAdapter;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public contextShutdown(Lorg/apache/logging/log4j/spi/LoggerContext;)V
    .locals 1
    .param p1, "loggerContext"    # Lorg/apache/logging/log4j/spi/LoggerContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loggerContext"
        }
    .end annotation

    .line 59
    .local p0, "this":Lorg/apache/logging/log4j/spi/AbstractLoggerAdapter;, "Lorg/apache/logging/log4j/spi/AbstractLoggerAdapter<TL;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/AbstractLoggerAdapter;->registry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method protected abstract getContext()Lorg/apache/logging/log4j/spi/LoggerContext;
.end method

.method protected getContext(Ljava/lang/Class;)Lorg/apache/logging/log4j/spi/LoggerContext;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callerClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/logging/log4j/spi/LoggerContext;"
        }
    .end annotation

    .line 130
    .local p0, "this":Lorg/apache/logging/log4j/spi/AbstractLoggerAdapter;, "Lorg/apache/logging/log4j/spi/AbstractLoggerAdapter<TL;>;"
    .local p1, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 131
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 134
    :cond_0
    if-nez v0, :cond_1

    .line 135
    invoke-static {}, Lorg/apache/logging/log4j/util/LoaderUtil;->getThreadContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 137
    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/LogManager;->getContext(Ljava/lang/ClassLoader;Z)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v1

    return-object v1
.end method

.method public getLogger(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")T",
            "L;"
        }
    .end annotation

    .line 47
    .local p0, "this":Lorg/apache/logging/log4j/spi/AbstractLoggerAdapter;, "Lorg/apache/logging/log4j/spi/AbstractLoggerAdapter<TL;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/spi/AbstractLoggerAdapter;->getContext()Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v0

    .line 48
    .local v0, "context":Lorg/apache/logging/log4j/spi/LoggerContext;
    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/spi/AbstractLoggerAdapter;->getLoggersInContext(Lorg/apache/logging/log4j/spi/LoggerContext;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    .line 49
    .local v1, "loggers":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;TL;>;"
    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 50
    .local v2, "logger":Ljava/lang/Object;, "TL;"
    if-eqz v2, :cond_0

    .line 51
    return-object v2

    .line 53
    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/spi/AbstractLoggerAdapter;->newLogger(Ljava/lang/String;Lorg/apache/logging/log4j/spi/LoggerContext;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public getLoggerContexts()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/logging/log4j/spi/LoggerContext;",
            ">;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lorg/apache/logging/log4j/spi/AbstractLoggerAdapter;, "Lorg/apache/logging/log4j/spi/AbstractLoggerAdapter<TL;>;"
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/apache/logging/log4j/spi/AbstractLoggerAdapter;->registry:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getLoggersInContext(Lorg/apache/logging/log4j/spi/LoggerContext;)Ljava/util/concurrent/ConcurrentMap;
    .locals 3
    .param p1, "context"    # Lorg/apache/logging/log4j/spi/LoggerContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/spi/LoggerContext;",
            ")",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 70
    .local p0, "this":Lorg/apache/logging/log4j/spi/AbstractLoggerAdapter;, "Lorg/apache/logging/log4j/spi/AbstractLoggerAdapter<TL;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/AbstractLoggerAdapter;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 72
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/AbstractLoggerAdapter;->registry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 74
    .local v0, "loggers":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;TL;>;"
    iget-object v1, p0, Lorg/apache/logging/log4j/spi/AbstractLoggerAdapter;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 75
    nop

    .line 77
    if-eqz v0, :cond_0

    .line 78
    return-object v0

    .line 80
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/spi/AbstractLoggerAdapter;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 82
    :try_start_1
    iget-object v1, p0, Lorg/apache/logging/log4j/spi/AbstractLoggerAdapter;->registry:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentMap;

    move-object v0, v1

    .line 83
    if-nez v0, :cond_1

    .line 84
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v0, v1

    .line 85
    iget-object v1, p0, Lorg/apache/logging/log4j/spi/AbstractLoggerAdapter;->registry:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    instance-of v1, p1, Lorg/apache/logging/log4j/spi/LoggerContextShutdownEnabled;

    if-eqz v1, :cond_1

    .line 87
    move-object v1, p1

    check-cast v1, Lorg/apache/logging/log4j/spi/LoggerContextShutdownEnabled;

    invoke-interface {v1, p0}, Lorg/apache/logging/log4j/spi/LoggerContextShutdownEnabled;->addShutdownListener(Lorg/apache/logging/log4j/spi/LoggerContextShutdownAware;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :cond_1
    nop

    .line 92
    iget-object v1, p0, Lorg/apache/logging/log4j/spi/AbstractLoggerAdapter;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 90
    return-object v0

    .line 92
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/logging/log4j/spi/AbstractLoggerAdapter;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    .line 74
    .end local v0    # "loggers":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;TL;>;"
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/apache/logging/log4j/spi/AbstractLoggerAdapter;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected abstract newLogger(Ljava/lang/String;Lorg/apache/logging/log4j/spi/LoggerContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/spi/LoggerContext;",
            ")T",
            "L;"
        }
    .end annotation
.end method
