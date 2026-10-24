.class public Lorg/apache/logging/log4j/core/osgi/BundleContextSelector;
.super Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;
.source "BundleContextSelector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;-><init>()V

    return-void
.end method

.method private getLoggerContext(Lorg/osgi/framework/Bundle;)Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 3
    .param p1, "bundle"    # Lorg/osgi/framework/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 82
    const-string v0, "No Bundle provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lorg/osgi/framework/Bundle;

    invoke-interface {v0}, Lorg/osgi/framework/Bundle;->getSymbolicName()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "name":Ljava/lang/String;
    sget-object v1, Lorg/apache/logging/log4j/core/osgi/BundleContextSelector;->CONTEXT_MAP:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 84
    .local v1, "ref":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/ref/WeakReference<Lorg/apache/logging/log4j/core/LoggerContext;>;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/LoggerContext;

    return-object v2

    .line 87
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private static hasContext(Lorg/osgi/framework/Bundle;)Z
    .locals 3
    .param p0, "bundle"    # Lorg/osgi/framework/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 131
    const-string v0, "No Bundle provided"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lorg/osgi/framework/Bundle;

    invoke-interface {v0}, Lorg/osgi/framework/Bundle;->getSymbolicName()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "name":Ljava/lang/String;
    sget-object v1, Lorg/apache/logging/log4j/core/osgi/BundleContextSelector;->CONTEXT_MAP:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 133
    .local v1, "ref":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/ref/WeakReference<Lorg/apache/logging/log4j/core/LoggerContext;>;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/LoggerContext;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/LoggerContext;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private static locateContext(Lorg/osgi/framework/Bundle;Ljava/net/URI;)Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 7
    .param p0, "bundle"    # Lorg/osgi/framework/Bundle;
    .param p1, "configLocation"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "bundle",
            "configLocation"
        }
    .end annotation

    .line 137
    const-string v0, "No Bundle provided"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lorg/osgi/framework/Bundle;

    invoke-interface {v0}, Lorg/osgi/framework/Bundle;->getSymbolicName()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "name":Ljava/lang/String;
    sget-object v1, Lorg/apache/logging/log4j/core/osgi/BundleContextSelector;->CONTEXT_MAP:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 139
    .local v1, "ref":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/ref/WeakReference<Lorg/apache/logging/log4j/core/LoggerContext;>;>;"
    if-nez v1, :cond_0

    .line 140
    new-instance v2, Lorg/apache/logging/log4j/core/LoggerContext;

    invoke-direct {v2, v0, p0, p1}, Lorg/apache/logging/log4j/core/LoggerContext;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/net/URI;)V

    .line 141
    .local v2, "context":Lorg/apache/logging/log4j/core/LoggerContext;
    sget-object v3, Lorg/apache/logging/log4j/core/osgi/BundleContextSelector;->CONTEXT_MAP:Ljava/util/concurrent/ConcurrentMap;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v0, v4}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v3, Lorg/apache/logging/log4j/core/osgi/BundleContextSelector;->CONTEXT_MAP:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/core/LoggerContext;

    return-object v3

    .line 145
    .end local v2    # "context":Lorg/apache/logging/log4j/core/LoggerContext;
    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 146
    .local v2, "r":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/apache/logging/log4j/core/LoggerContext;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/core/LoggerContext;

    .line 147
    .local v3, "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    if-nez v3, :cond_1

    .line 148
    new-instance v4, Lorg/apache/logging/log4j/core/LoggerContext;

    invoke-direct {v4, v0, p0, p1}, Lorg/apache/logging/log4j/core/LoggerContext;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/net/URI;)V

    .line 149
    .local v4, "context":Lorg/apache/logging/log4j/core/LoggerContext;
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/logging/log4j/core/LoggerContext;

    return-object v5

    .line 152
    .end local v4    # "context":Lorg/apache/logging/log4j/core/LoggerContext;
    :cond_1
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/LoggerContext;->getConfigLocation()Ljava/net/URI;

    move-result-object v4

    .line 153
    .local v4, "oldConfigLocation":Ljava/net/URI;
    if-nez v4, :cond_2

    if-eqz p1, :cond_2

    .line 154
    sget-object v5, Lorg/apache/logging/log4j/core/osgi/BundleContextSelector;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v6, "Setting bundle ({}) configuration to {}"

    invoke-virtual {v5, v6, v0, p1}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    invoke-virtual {v3, p1}, Lorg/apache/logging/log4j/core/LoggerContext;->setConfigLocation(Ljava/net/URI;)V

    goto :goto_0

    .line 156
    :cond_2
    if-eqz v4, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1, v4}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 157
    sget-object v5, Lorg/apache/logging/log4j/core/osgi/BundleContextSelector;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v6, "locateContext called with URI [{}], but existing LoggerContext has URI [{}]"

    invoke-virtual {v5, v6, p1, v4}, Lorg/apache/logging/log4j/status/StatusLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    :cond_3
    :goto_0
    return-object v3
.end method

.method private removeLoggerContext(Lorg/apache/logging/log4j/core/LoggerContext;)V
    .locals 2
    .param p1, "context"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 91
    sget-object v0, Lorg/apache/logging/log4j/core/osgi/BundleContextSelector;->CONTEXT_MAP:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method


# virtual methods
.method public getContext(Ljava/lang/String;Ljava/lang/ClassLoader;ZLjava/net/URI;)Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 3
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

    .line 111
    if-eqz p3, :cond_1

    .line 112
    sget-object v0, Lorg/apache/logging/log4j/core/impl/ContextAnchor;->THREAD_CONTEXT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/LoggerContext;

    .line 113
    .local v0, "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    if-eqz v0, :cond_0

    .line 114
    return-object v0

    .line 116
    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/osgi/BundleContextSelector;->getDefault()Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v1

    return-object v1

    .line 119
    .end local v0    # "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    :cond_1
    instance-of v0, p2, Lorg/osgi/framework/BundleReference;

    if-eqz v0, :cond_2

    .line 120
    move-object v0, p2

    check-cast v0, Lorg/osgi/framework/BundleReference;

    invoke-interface {v0}, Lorg/osgi/framework/BundleReference;->getBundle()Lorg/osgi/framework/Bundle;

    move-result-object v0

    invoke-static {v0, p4}, Lorg/apache/logging/log4j/core/osgi/BundleContextSelector;->locateContext(Lorg/osgi/framework/Bundle;Ljava/net/URI;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    return-object v0

    .line 122
    :cond_2
    invoke-static {p1}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 123
    .local v0, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_3

    .line 124
    invoke-static {v0}, Lorg/osgi/framework/FrameworkUtil;->getBundle(Ljava/lang/Class;)Lorg/osgi/framework/Bundle;

    move-result-object v1

    invoke-static {v1, p4}, Lorg/apache/logging/log4j/core/osgi/BundleContextSelector;->locateContext(Lorg/osgi/framework/Bundle;Ljava/net/URI;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v1

    return-object v1

    .line 126
    :cond_3
    sget-object v1, Lorg/apache/logging/log4j/core/impl/ContextAnchor;->THREAD_CONTEXT:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/LoggerContext;

    .line 127
    .local v1, "lc":Lorg/apache/logging/log4j/core/LoggerContext;
    if-nez v1, :cond_4

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/osgi/BundleContextSelector;->getDefault()Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v2

    goto :goto_0

    :cond_4
    move-object v2, v1

    :goto_0
    return-object v2
.end method

.method public hasContext(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Z
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

    .line 96
    if-eqz p3, :cond_0

    sget-object v0, Lorg/apache/logging/log4j/core/impl/ContextAnchor;->THREAD_CONTEXT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lorg/apache/logging/log4j/core/impl/ContextAnchor;->THREAD_CONTEXT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/LoggerContext;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->isStarted()Z

    move-result v0

    return v0

    .line 99
    :cond_0
    instance-of v0, p2, Lorg/osgi/framework/BundleReference;

    if-eqz v0, :cond_1

    .line 100
    move-object v0, p2

    check-cast v0, Lorg/osgi/framework/BundleReference;

    invoke-interface {v0}, Lorg/osgi/framework/BundleReference;->getBundle()Lorg/osgi/framework/Bundle;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/osgi/BundleContextSelector;->hasContext(Lorg/osgi/framework/Bundle;)Z

    move-result v0

    return v0

    .line 102
    :cond_1
    invoke-static {p1}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 103
    .local v0, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_2

    .line 104
    invoke-static {v0}, Lorg/osgi/framework/FrameworkUtil;->getBundle(Ljava/lang/Class;)Lorg/osgi/framework/Bundle;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/logging/log4j/core/osgi/BundleContextSelector;->hasContext(Lorg/osgi/framework/Bundle;)Z

    move-result v1

    return v1

    .line 106
    :cond_2
    sget-object v1, Lorg/apache/logging/log4j/core/impl/ContextAnchor;->THREAD_CONTEXT:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v1, Lorg/apache/logging/log4j/core/impl/ContextAnchor;->THREAD_CONTEXT:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/LoggerContext;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/LoggerContext;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public shutdown(Ljava/lang/String;Ljava/lang/ClassLoader;ZZ)V
    .locals 9
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

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    const/4 v1, 0x0

    .line 47
    .local v1, "bundle":Lorg/osgi/framework/Bundle;
    if-eqz p3, :cond_0

    .line 48
    sget-object v2, Lorg/apache/logging/log4j/core/impl/ContextAnchor;->THREAD_CONTEXT:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/logging/log4j/core/LoggerContext;

    .line 49
    sget-object v2, Lorg/apache/logging/log4j/core/impl/ContextAnchor;->THREAD_CONTEXT:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 51
    :cond_0
    if-nez v0, :cond_1

    instance-of v2, p2, Lorg/osgi/framework/BundleReference;

    if-eqz v2, :cond_1

    .line 52
    move-object v2, p2

    check-cast v2, Lorg/osgi/framework/BundleReference;

    invoke-interface {v2}, Lorg/osgi/framework/BundleReference;->getBundle()Lorg/osgi/framework/Bundle;

    move-result-object v1

    .line 53
    invoke-direct {p0, v1}, Lorg/apache/logging/log4j/core/osgi/BundleContextSelector;->getLoggerContext(Lorg/osgi/framework/Bundle;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    .line 54
    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/osgi/BundleContextSelector;->removeLoggerContext(Lorg/apache/logging/log4j/core/LoggerContext;)V

    .line 56
    :cond_1
    if-nez v0, :cond_2

    .line 57
    invoke-static {p1}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 58
    .local v2, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_2

    .line 59
    invoke-static {v2}, Lorg/osgi/framework/FrameworkUtil;->getBundle(Ljava/lang/Class;)Lorg/osgi/framework/Bundle;

    move-result-object v1

    .line 60
    invoke-static {v2}, Lorg/osgi/framework/FrameworkUtil;->getBundle(Ljava/lang/Class;)Lorg/osgi/framework/Bundle;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/logging/log4j/core/osgi/BundleContextSelector;->getLoggerContext(Lorg/osgi/framework/Bundle;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    .line 61
    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/osgi/BundleContextSelector;->removeLoggerContext(Lorg/apache/logging/log4j/core/LoggerContext;)V

    .line 64
    .end local v2    # "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    if-nez v0, :cond_3

    .line 65
    sget-object v2, Lorg/apache/logging/log4j/core/impl/ContextAnchor;->THREAD_CONTEXT:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/logging/log4j/core/LoggerContext;

    .line 66
    sget-object v2, Lorg/apache/logging/log4j/core/impl/ContextAnchor;->THREAD_CONTEXT:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 68
    :cond_3
    const-wide/16 v2, 0x32

    if-eqz v0, :cond_4

    .line 69
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lorg/apache/logging/log4j/core/LoggerContext;->stop(JLjava/util/concurrent/TimeUnit;)Z

    .line 71
    :cond_4
    if-eqz v1, :cond_6

    if-eqz p4, :cond_6

    .line 72
    invoke-interface {v1}, Lorg/osgi/framework/Bundle;->getBundleContext()Lorg/osgi/framework/BundleContext;

    move-result-object v4

    invoke-interface {v4}, Lorg/osgi/framework/BundleContext;->getBundles()[Lorg/osgi/framework/Bundle;

    move-result-object v4

    .line 73
    .local v4, "bundles":[Lorg/osgi/framework/Bundle;
    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_6

    aget-object v7, v4, v6

    .line 74
    .local v7, "bdl":Lorg/osgi/framework/Bundle;
    invoke-direct {p0, v7}, Lorg/apache/logging/log4j/core/osgi/BundleContextSelector;->getLoggerContext(Lorg/osgi/framework/Bundle;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_5

    .line 76
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v8}, Lorg/apache/logging/log4j/core/LoggerContext;->stop(JLjava/util/concurrent/TimeUnit;)Z

    .line 73
    .end local v7    # "bdl":Lorg/osgi/framework/Bundle;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 80
    .end local v4    # "bundles":[Lorg/osgi/framework/Bundle;
    :cond_6
    return-void
.end method
