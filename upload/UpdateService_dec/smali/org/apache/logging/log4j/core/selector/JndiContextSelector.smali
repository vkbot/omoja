.class public Lorg/apache/logging/log4j/core/selector/JndiContextSelector;
.super Ljava/lang/Object;
.source "JndiContextSelector.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/selector/NamedContextSelector;


# static fields
.field private static final CONTEXT:Lorg/apache/logging/log4j/core/LoggerContext;

.field private static final CONTEXT_MAP:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/LoggerContext;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 90
    new-instance v0, Lorg/apache/logging/log4j/core/LoggerContext;

    const-string v1, "Default"

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/LoggerContext;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/selector/JndiContextSelector;->CONTEXT:Lorg/apache/logging/log4j/core/LoggerContext;

    .line 92
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/selector/JndiContextSelector;->CONTEXT_MAP:Ljava/util/concurrent/ConcurrentMap;

    .line 95
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/selector/JndiContextSelector;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-static {}, Lorg/apache/logging/log4j/core/net/JndiManager;->isJndiContextSelectorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    return-void

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JNDI must be enabled by setting log4j2.enableJndiContextSelector=true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getContextName()Ljava/lang/String;
    .locals 6

    .line 156
    const-string v0, "java:comp/env/log4j/context-name"

    const/4 v1, 0x0

    .line 158
    .local v1, "loggingContextName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lorg/apache/logging/log4j/core/net/JndiManager;->getDefaultManager()Lorg/apache/logging/log4j/core/net/JndiManager;

    move-result-object v2
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .local v2, "jndiManager":Lorg/apache/logging/log4j/core/net/JndiManager;
    :try_start_1
    invoke-virtual {v2, v0}, Lorg/apache/logging/log4j/core/net/JndiManager;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 160
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/net/JndiManager;->close()V
    :try_end_2
    .catch Ljavax/naming/NamingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 162
    .end local v2    # "jndiManager":Lorg/apache/logging/log4j/core/net/JndiManager;
    :cond_0
    goto :goto_1

    .line 158
    .restart local v2    # "jndiManager":Lorg/apache/logging/log4j/core/net/JndiManager;
    :catchall_0
    move-exception v3

    .end local v1    # "loggingContextName":Ljava/lang/String;
    .end local v2    # "jndiManager":Lorg/apache/logging/log4j/core/net/JndiManager;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/selector/JndiContextSelector;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 160
    .restart local v1    # "loggingContextName":Ljava/lang/String;
    .restart local v2    # "jndiManager":Lorg/apache/logging/log4j/core/net/JndiManager;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/selector/JndiContextSelector;
    :catchall_1
    move-exception v4

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/net/JndiManager;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v5

    :try_start_5
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "loggingContextName":Ljava/lang/String;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/selector/JndiContextSelector;
    :cond_1
    :goto_0
    throw v4
    :try_end_5
    .catch Ljavax/naming/NamingException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v2    # "jndiManager":Lorg/apache/logging/log4j/core/net/JndiManager;
    .restart local v1    # "loggingContextName":Ljava/lang/String;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/selector/JndiContextSelector;
    :catch_0
    move-exception v2

    .line 161
    .local v2, "ne":Ljavax/naming/NamingException;
    sget-object v3, Lorg/apache/logging/log4j/core/selector/JndiContextSelector;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v4, "Unable to lookup {}"

    invoke-virtual {v3, v4, v0, v2}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    .end local v2    # "ne":Ljavax/naming/NamingException;
    :goto_1
    return-object v1
.end method


# virtual methods
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

    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/core/selector/JndiContextSelector;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;ZLjava/net/URI;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    return-object v0
.end method

.method public getContext(Ljava/lang/String;Ljava/lang/ClassLoader;ZLjava/net/URI;)Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 7
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

    .line 139
    const-string v0, "java:comp/env/log4j/context-name"

    sget-object v1, Lorg/apache/logging/log4j/core/impl/ContextAnchor;->THREAD_CONTEXT:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/LoggerContext;

    .line 140
    .local v1, "lc":Lorg/apache/logging/log4j/core/LoggerContext;
    if-eqz v1, :cond_0

    .line 141
    return-object v1

    .line 144
    :cond_0
    const/4 v2, 0x0

    .line 146
    .local v2, "loggingContextName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lorg/apache/logging/log4j/core/net/JndiManager;->getDefaultManager()Lorg/apache/logging/log4j/core/net/JndiManager;

    move-result-object v3
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .local v3, "jndiManager":Lorg/apache/logging/log4j/core/net/JndiManager;
    :try_start_1
    invoke-virtual {v3, v0}, Lorg/apache/logging/log4j/core/net/JndiManager;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v4

    .line 148
    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/net/JndiManager;->close()V
    :try_end_2
    .catch Ljavax/naming/NamingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 150
    .end local v3    # "jndiManager":Lorg/apache/logging/log4j/core/net/JndiManager;
    :cond_1
    goto :goto_1

    .line 146
    .restart local v3    # "jndiManager":Lorg/apache/logging/log4j/core/net/JndiManager;
    :catchall_0
    move-exception v4

    .end local v1    # "lc":Lorg/apache/logging/log4j/core/LoggerContext;
    .end local v2    # "loggingContextName":Ljava/lang/String;
    .end local v3    # "jndiManager":Lorg/apache/logging/log4j/core/net/JndiManager;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/selector/JndiContextSelector;
    .end local p1    # "fqcn":Ljava/lang/String;
    .end local p2    # "loader":Ljava/lang/ClassLoader;
    .end local p3    # "currentContext":Z
    .end local p4    # "configLocation":Ljava/net/URI;
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 148
    .restart local v1    # "lc":Lorg/apache/logging/log4j/core/LoggerContext;
    .restart local v2    # "loggingContextName":Ljava/lang/String;
    .restart local v3    # "jndiManager":Lorg/apache/logging/log4j/core/net/JndiManager;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/selector/JndiContextSelector;
    .restart local p1    # "fqcn":Ljava/lang/String;
    .restart local p2    # "loader":Ljava/lang/ClassLoader;
    .restart local p3    # "currentContext":Z
    .restart local p4    # "configLocation":Ljava/net/URI;
    :catchall_1
    move-exception v5

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/net/JndiManager;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v6

    :try_start_5
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "lc":Lorg/apache/logging/log4j/core/LoggerContext;
    .end local v2    # "loggingContextName":Ljava/lang/String;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/selector/JndiContextSelector;
    .end local p1    # "fqcn":Ljava/lang/String;
    .end local p2    # "loader":Ljava/lang/ClassLoader;
    .end local p3    # "currentContext":Z
    .end local p4    # "configLocation":Ljava/net/URI;
    :cond_2
    :goto_0
    throw v5
    :try_end_5
    .catch Ljavax/naming/NamingException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v3    # "jndiManager":Lorg/apache/logging/log4j/core/net/JndiManager;
    .restart local v1    # "lc":Lorg/apache/logging/log4j/core/LoggerContext;
    .restart local v2    # "loggingContextName":Ljava/lang/String;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/selector/JndiContextSelector;
    .restart local p1    # "fqcn":Ljava/lang/String;
    .restart local p2    # "loader":Ljava/lang/ClassLoader;
    .restart local p3    # "currentContext":Z
    .restart local p4    # "configLocation":Ljava/net/URI;
    :catch_0
    move-exception v3

    .line 149
    .local v3, "ne":Ljavax/naming/NamingException;
    sget-object v4, Lorg/apache/logging/log4j/core/selector/JndiContextSelector;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v5, "Unable to lookup {}"

    invoke-virtual {v4, v5, v0, v3}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    .end local v3    # "ne":Ljavax/naming/NamingException;
    :goto_1
    if-nez v2, :cond_3

    sget-object v0, Lorg/apache/logging/log4j/core/selector/JndiContextSelector;->CONTEXT:Lorg/apache/logging/log4j/core/LoggerContext;

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, p4}, Lorg/apache/logging/log4j/core/selector/JndiContextSelector;->locateContext(Ljava/lang/String;Ljava/lang/Object;Ljava/net/URI;)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method public getLoggerContexts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/LoggerContext;",
            ">;"
        }
    .end annotation

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lorg/apache/logging/log4j/core/selector/JndiContextSelector;->CONTEXT_MAP:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasContext(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Z
    .locals 4
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

    .line 119
    sget-object v0, Lorg/apache/logging/log4j/core/impl/ContextAnchor;->THREAD_CONTEXT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/LoggerContext;

    .line 120
    .local v0, "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 121
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/selector/JndiContextSelector;->getContextName()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "loggingContextName":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 123
    return v1

    .line 125
    :cond_0
    sget-object v3, Lorg/apache/logging/log4j/core/selector/JndiContextSelector;->CONTEXT_MAP:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/apache/logging/log4j/core/LoggerContext;

    .line 127
    .end local v2    # "loggingContextName":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isClassLoaderDependent()Z
    .locals 1

    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public locateContext(Ljava/lang/String;Ljava/lang/Object;Ljava/net/URI;)Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "externalContext"    # Ljava/lang/Object;
    .param p3, "configLocation"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "externalContext",
            "configLocation"
        }
    .end annotation

    .line 168
    if-nez p1, :cond_0

    .line 169
    sget-object v0, Lorg/apache/logging/log4j/core/selector/JndiContextSelector;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v1, "A context name is required to locate a LoggerContext"

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;)V

    .line 170
    const/4 v0, 0x0

    return-object v0

    .line 172
    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/core/selector/JndiContextSelector;->CONTEXT_MAP:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    new-instance v0, Lorg/apache/logging/log4j/core/LoggerContext;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/logging/log4j/core/LoggerContext;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/net/URI;)V

    .line 174
    .local v0, "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    sget-object v1, Lorg/apache/logging/log4j/core/selector/JndiContextSelector;->CONTEXT_MAP:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .end local v0    # "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    :cond_1
    sget-object v0, Lorg/apache/logging/log4j/core/selector/JndiContextSelector;->CONTEXT_MAP:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/LoggerContext;

    return-object v0
.end method

.method public removeContext(Ljava/lang/String;)Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 196
    sget-object v0, Lorg/apache/logging/log4j/core/selector/JndiContextSelector;->CONTEXT_MAP:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/LoggerContext;

    return-object v0
.end method

.method public removeContext(Lorg/apache/logging/log4j/core/LoggerContext;)V
    .locals 4
    .param p1, "context"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 182
    sget-object v0, Lorg/apache/logging/log4j/core/selector/JndiContextSelector;->CONTEXT_MAP:Ljava/util/concurrent/ConcurrentMap;

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

    .line 183
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/logging/log4j/core/LoggerContext;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/LoggerContext;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    sget-object v2, Lorg/apache/logging/log4j/core/selector/JndiContextSelector;->CONTEXT_MAP:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/logging/log4j/core/LoggerContext;>;"
    :cond_0
    goto :goto_0

    .line 187
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

    .line 105
    sget-object v0, Lorg/apache/logging/log4j/core/impl/ContextAnchor;->THREAD_CONTEXT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/LoggerContext;

    .line 106
    .local v0, "ctx":Lorg/apache/logging/log4j/core/LoggerContext;
    if-nez v0, :cond_0

    .line 107
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/selector/JndiContextSelector;->getContextName()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "loggingContextName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 109
    sget-object v2, Lorg/apache/logging/log4j/core/selector/JndiContextSelector;->CONTEXT_MAP:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/logging/log4j/core/LoggerContext;

    .line 112
    .end local v1    # "loggingContextName":Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    .line 113
    const-wide/16 v1, 0x32

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/logging/log4j/core/LoggerContext;->stop(JLjava/util/concurrent/TimeUnit;)Z

    .line 115
    :cond_1
    return-void
.end method
