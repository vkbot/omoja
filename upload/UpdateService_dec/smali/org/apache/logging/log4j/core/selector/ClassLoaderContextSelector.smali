.class public Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;
.super Ljava/lang/Object;
.source "ClassLoaderContextSelector.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/selector/ContextSelector;
.implements Lorg/apache/logging/log4j/spi/LoggerContextShutdownAware;


# static fields
.field protected static final CONTEXT_MAP:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/ref/WeakReference<",
            "Lorg/apache/logging/log4j/core/LoggerContext;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final DEFAULT_CONTEXT:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/logging/log4j/core/LoggerContext;",
            ">;"
        }
    .end annotation
.end field

.field protected static final LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;->DEFAULT_CONTEXT:Ljava/util/concurrent/atomic/AtomicReference;

    .line 52
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;->CONTEXT_MAP:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findContext(Ljava/lang/ClassLoader;)Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 5
    .param p1, "loaderOrNull"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loaderOrNull"
        }
    .end annotation

    .line 105
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 106
    .local v0, "loader":Ljava/lang/ClassLoader;
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;->toContextMapKey(Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "name":Ljava/lang/String;
    sget-object v2, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;->CONTEXT_MAP:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 108
    .local v2, "ref":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/ref/WeakReference<Lorg/apache/logging/log4j/core/LoggerContext;>;>;"
    if-eqz v2, :cond_1

    .line 109
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 110
    .local v3, "weakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/apache/logging/log4j/core/LoggerContext;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/logging/log4j/core/LoggerContext;

    return-object v4

    .line 112
    .end local v3    # "weakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/apache/logging/log4j/core/LoggerContext;>;"
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method static synthetic lambda$locateContext$0(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 2
    .param p0, "ctx"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p1, "k"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "ctx",
            "k"
        }
    .end annotation

    .line 223
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private locateContext(Ljava/lang/ClassLoader;Ljava/util/Map$Entry;Ljava/net/URI;)Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 8
    .param p1, "loaderOrNull"    # Ljava/lang/ClassLoader;
    .param p3, "configLocation"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "loaderOrNull",
            "entry",
            "configLocation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/net/URI;",
            ")",
            "Lorg/apache/logging/log4j/core/LoggerContext;"
        }
    .end annotation

    .line 182
    .local p2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 183
    .local v0, "loader":Ljava/lang/ClassLoader;
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;->toContextMapKey(Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "name":Ljava/lang/String;
    sget-object v2, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;->CONTEXT_MAP:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 185
    .local v2, "ref":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/ref/WeakReference<Lorg/apache/logging/log4j/core/LoggerContext;>;>;"
    if-nez v2, :cond_5

    .line 186
    if-nez p3, :cond_2

    .line 187
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 188
    .local v3, "parent":Ljava/lang/ClassLoader;
    :goto_1
    if-eqz v3, :cond_2

    .line 190
    sget-object v4, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;->CONTEXT_MAP:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p0, v3}, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;->toContextMapKey(Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 191
    if-eqz v2, :cond_1

    .line 192
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 193
    .local v4, "r":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/apache/logging/log4j/core/LoggerContext;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/logging/log4j/core/LoggerContext;

    .line 194
    .local v5, "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    if-eqz v5, :cond_1

    .line 195
    return-object v5

    .line 198
    .end local v4    # "r":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/apache/logging/log4j/core/LoggerContext;>;"
    .end local v5    # "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v3

    goto :goto_1

    .line 218
    .end local v3    # "parent":Ljava/lang/ClassLoader;
    :cond_2
    invoke-virtual {p0, v1, p3}, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;->createContext(Ljava/lang/String;Ljava/net/URI;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v3

    .line 219
    .local v3, "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    if-eqz p2, :cond_3

    .line 220
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/logging/log4j/core/LoggerContext;->putObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_3
    sget-object v4, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;->CONTEXT_MAP:Ljava/util/concurrent/ConcurrentMap;

    new-instance v5, Lorg/apache/logging/log4j/core/selector/-$$Lambda$ClassLoaderContextSelector$sHBY1w4yWoQ8d_zxI4GoSNbEI9Q;

    invoke-direct {v5, v3}, Lorg/apache/logging/log4j/core/selector/-$$Lambda$ClassLoaderContextSelector$sHBY1w4yWoQ8d_zxI4GoSNbEI9Q;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;)V

    invoke-interface {v4, v1, v5}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/atomic/AtomicReference;

    .line 223
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/logging/log4j/core/LoggerContext;

    .line 224
    .local v4, "newContext":Lorg/apache/logging/log4j/core/LoggerContext;
    if-ne v4, v3, :cond_4

    .line 225
    invoke-virtual {v3, p0}, Lorg/apache/logging/log4j/core/LoggerContext;->addShutdownListener(Lorg/apache/logging/log4j/spi/LoggerContextShutdownAware;)V

    .line 227
    :cond_4
    return-object v4

    .line 229
    .end local v3    # "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    .end local v4    # "newContext":Lorg/apache/logging/log4j/core/LoggerContext;
    :cond_5
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 230
    .local v3, "weakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/apache/logging/log4j/core/LoggerContext;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/logging/log4j/core/LoggerContext;

    .line 231
    .local v4, "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    if-eqz v4, :cond_9

    .line 232
    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/apache/logging/log4j/core/LoggerContext;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6

    .line 233
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/logging/log4j/core/LoggerContext;->putObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_6
    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/LoggerContext;->getConfigLocation()Ljava/net/URI;

    move-result-object v5

    if-nez v5, :cond_7

    if-eqz p3, :cond_7

    .line 236
    sget-object v5, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v6, "Setting configuration to {}"

    invoke-virtual {v5, v6, p3}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 237
    invoke-virtual {v4, p3}, Lorg/apache/logging/log4j/core/LoggerContext;->setConfigLocation(Ljava/net/URI;)V

    goto :goto_2

    .line 238
    :cond_7
    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/LoggerContext;->getConfigLocation()Ljava/net/URI;

    move-result-object v5

    if-eqz v5, :cond_8

    if-eqz p3, :cond_8

    .line 239
    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/LoggerContext;->getConfigLocation()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 240
    sget-object v5, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    .line 241
    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/LoggerContext;->getConfigLocation()Ljava/net/URI;

    move-result-object v6

    .line 240
    const-string v7, "locateContext called with URI {}. Existing LoggerContext has URI {}"

    invoke-virtual {v5, v7, p3, v6}, Lorg/apache/logging/log4j/status/StatusLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 243
    :cond_8
    :goto_2
    return-object v4

    .line 245
    :cond_9
    invoke-virtual {p0, v1, p3}, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;->createContext(Ljava/lang/String;Ljava/net/URI;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v4

    .line 246
    if-eqz p2, :cond_a

    .line 247
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/logging/log4j/core/LoggerContext;->putObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    :cond_a
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 250
    return-object v4
.end method


# virtual methods
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

    .line 81
    instance-of v0, p1, Lorg/apache/logging/log4j/core/LoggerContext;

    if-eqz v0, :cond_0

    .line 82
    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/core/LoggerContext;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;->removeContext(Lorg/apache/logging/log4j/core/LoggerContext;)V

    .line 84
    :cond_0
    return-void
.end method

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

    .line 254
    new-instance v0, Lorg/apache/logging/log4j/core/LoggerContext;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lorg/apache/logging/log4j/core/LoggerContext;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/net/URI;)V

    return-object v0
.end method

.method protected defaultContextName()Ljava/lang/String;
    .locals 1

    .line 271
    const-string v0, "Default"

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
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
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

    .line 129
    .local p3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p4, :cond_1

    .line 130
    sget-object v0, Lorg/apache/logging/log4j/core/impl/ContextAnchor;->THREAD_CONTEXT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/LoggerContext;

    .line 131
    .local v0, "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    if-eqz v0, :cond_0

    .line 132
    return-object v0

    .line 134
    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;->getDefault()Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v1

    return-object v1

    .line 135
    .end local v0    # "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    :cond_1
    if-eqz p2, :cond_2

    .line 136
    invoke-direct {p0, p2, p3, p5}, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;->locateContext(Ljava/lang/ClassLoader;Ljava/util/Map$Entry;Ljava/net/URI;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    return-object v0

    .line 138
    :cond_2
    invoke-static {p1}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 139
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_3

    .line 140
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {p0, v1, p3, p5}, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;->locateContext(Ljava/lang/ClassLoader;Ljava/util/Map$Entry;Ljava/net/URI;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v1

    return-object v1

    .line 142
    :cond_3
    sget-object v1, Lorg/apache/logging/log4j/core/impl/ContextAnchor;->THREAD_CONTEXT:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/LoggerContext;

    .line 143
    .local v1, "lc":Lorg/apache/logging/log4j/core/LoggerContext;
    if-eqz v1, :cond_4

    .line 144
    return-object v1

    .line 146
    :cond_4
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;->getDefault()Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v2

    return-object v2
.end method

.method public getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 1
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

    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;ZLjava/net/URI;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    return-object v0
.end method

.method public getContext(Ljava/lang/String;Ljava/lang/ClassLoader;ZLjava/net/URI;)Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 6
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

    .line 123
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Map$Entry;ZLjava/net/URI;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    return-object v0
.end method

.method protected getDefault()Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 4

    .line 262
    sget-object v0, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;->DEFAULT_CONTEXT:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/LoggerContext;

    .line 263
    .local v0, "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    if-eqz v0, :cond_0

    .line 264
    return-object v0

    .line 266
    :cond_0
    sget-object v1, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;->DEFAULT_CONTEXT:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;->defaultContextName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;->createContext(Ljava/lang/String;Ljava/net/URI;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 267
    sget-object v1, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;->DEFAULT_CONTEXT:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/LoggerContext;

    return-object v1
.end method

.method public getLoggerContexts()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/LoggerContext;",
            ">;"
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/LoggerContext;>;"
    sget-object v1, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;->CONTEXT_MAP:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 170
    .local v1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/ref/WeakReference<Lorg/apache/logging/log4j/core/LoggerContext;>;>;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/atomic/AtomicReference;

    .line 171
    .local v3, "ref":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/ref/WeakReference<Lorg/apache/logging/log4j/core/LoggerContext;>;>;"
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/logging/log4j/core/LoggerContext;

    .line 172
    .local v4, "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    if-eqz v4, :cond_0

    .line 173
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    .end local v3    # "ref":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/ref/WeakReference<Lorg/apache/logging/log4j/core/LoggerContext;>;>;"
    .end local v4    # "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    :cond_0
    goto :goto_0

    .line 176
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

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

    .line 89
    if-eqz p3, :cond_0

    .line 90
    sget-object v0, Lorg/apache/logging/log4j/core/impl/ContextAnchor;->THREAD_CONTEXT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/LoggerContext;

    .local v0, "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    goto :goto_0

    .line 91
    .end local v0    # "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    :cond_0
    if-eqz p2, :cond_1

    .line 92
    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;->findContext(Ljava/lang/ClassLoader;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    .restart local v0    # "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    goto :goto_0

    .line 94
    .end local v0    # "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    :cond_1
    invoke-static {p1}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 95
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_2

    .line 96
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;->findContext(Ljava/lang/ClassLoader;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v1

    move-object v0, v1

    .local v1, "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    goto :goto_0

    .line 98
    .end local v1    # "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    :cond_2
    sget-object v1, Lorg/apache/logging/log4j/core/impl/ContextAnchor;->THREAD_CONTEXT:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/LoggerContext;

    move-object v0, v1

    .line 101
    .local v0, "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public isClassLoaderDependent()Z
    .locals 1

    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public removeContext(Lorg/apache/logging/log4j/core/LoggerContext;)V
    .locals 5
    .param p1, "context"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 152
    sget-object v0, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;->CONTEXT_MAP:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 153
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/ref/WeakReference<Lorg/apache/logging/log4j/core/LoggerContext;>;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/LoggerContext;

    .line 154
    .local v2, "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    if-ne v2, p1, :cond_0

    .line 155
    sget-object v3, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;->CONTEXT_MAP:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/ref/WeakReference<Lorg/apache/logging/log4j/core/LoggerContext;>;>;>;"
    .end local v2    # "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    :cond_0
    goto :goto_0

    .line 158
    :cond_1
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

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    if-eqz p3, :cond_0

    .line 62
    sget-object v1, Lorg/apache/logging/log4j/core/impl/ContextAnchor;->THREAD_CONTEXT:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/apache/logging/log4j/core/LoggerContext;

    goto :goto_0

    .line 63
    :cond_0
    if-eqz p2, :cond_1

    .line 64
    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;->findContext(Ljava/lang/ClassLoader;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_1
    invoke-static {p1}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 67
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_2

    .line 68
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;->findContext(Ljava/lang/ClassLoader;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    .line 70
    :cond_2
    if-nez v0, :cond_3

    .line 71
    sget-object v2, Lorg/apache/logging/log4j/core/impl/ContextAnchor;->THREAD_CONTEXT:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/logging/log4j/core/LoggerContext;

    .line 74
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 75
    const-wide/16 v1, 0x32

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/logging/log4j/core/LoggerContext;->stop(JLjava/util/concurrent/TimeUnit;)Z

    .line 77
    :cond_4
    return-void
.end method

.method protected toContextMapKey(Ljava/lang/ClassLoader;)Ljava/lang/String;
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "loader"
        }
    .end annotation

    .line 258
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
