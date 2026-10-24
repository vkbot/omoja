.class public Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry;
.super Ljava/lang/Object;
.source "DefaultShutdownCallbackRegistry.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/ShutdownCallbackRegistry;
.implements Lorg/apache/logging/log4j/core/LifeCycle2;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry$RegisteredCancellable;
    }
.end annotation


# static fields
.field protected static final LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final hooks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/ref/Reference<",
            "Lorg/apache/logging/log4j/core/util/Cancellable;",
            ">;>;"
        }
    .end annotation
.end field

.field private shutdownHookRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private final state:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/logging/log4j/core/LifeCycle$State;",
            ">;"
        }
    .end annotation
.end field

.field private final threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 57
    return-void
.end method

.method protected constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "threadFactory"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/logging/log4j/core/LifeCycle$State;->INITIALIZED:Lorg/apache/logging/log4j/core/LifeCycle$State;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 49
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry;->hooks:Ljava/util/Collection;

    .line 65
    iput-object p1, p0, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 66
    return-void
.end method

.method private addShutdownHook(Ljava/lang/Thread;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "thread"
        }
    .end annotation

    .line 165
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry;->shutdownHookRef:Ljava/lang/ref/Reference;

    .line 166
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 167
    return-void
.end method

.method private removeShutdownHook()V
    .locals 2

    .line 190
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry;->shutdownHookRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 191
    .local v0, "shutdownThread":Ljava/lang/Thread;
    if-eqz v0, :cond_0

    .line 192
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->removeShutdownHook(Ljava/lang/Thread;)Z

    .line 193
    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry;->shutdownHookRef:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->enqueue()Z

    .line 195
    :cond_0
    return-void
.end method


# virtual methods
.method public addShutdownCallback(Ljava/lang/Runnable;)Lorg/apache/logging/log4j/core/util/Cancellable;
    .locals 3
    .param p1, "callback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry$RegisteredCancellable;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry;->hooks:Ljava/util/Collection;

    invoke-direct {v0, p1, v1}, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry$RegisteredCancellable;-><init>(Ljava/lang/Runnable;Ljava/util/Collection;)V

    .line 134
    .local v0, "receipt":Lorg/apache/logging/log4j/core/util/Cancellable;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry;->hooks:Ljava/util/Collection;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 135
    return-object v0

    .line 137
    .end local v0    # "receipt":Lorg/apache/logging/log4j/core/util/Cancellable;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot add new shutdown hook as this is not started. Current state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 138
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/LifeCycle$State;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/LifeCycle$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getState()Lorg/apache/logging/log4j/core/LifeCycle$State;
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/LifeCycle$State;

    return-object v0
.end method

.method public initialize()V
    .locals 0

    .line 143
    return-void
.end method

.method public isStarted()Z
    .locals 2

    .line 209
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/logging/log4j/core/LifeCycle$State;->STARTED:Lorg/apache/logging/log4j/core/LifeCycle$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStopped()Z
    .locals 2

    .line 214
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/logging/log4j/core/LifeCycle$State;->STOPPED:Lorg/apache/logging/log4j/core/LifeCycle$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public run()V
    .locals 8

    .line 73
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/logging/log4j/core/LifeCycle$State;->STARTED:Lorg/apache/logging/log4j/core/LifeCycle$State;

    sget-object v2, Lorg/apache/logging/log4j/core/LifeCycle$State;->STOPPING:Lorg/apache/logging/log4j/core/LifeCycle$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry;->hooks:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/Reference;

    .line 75
    .local v1, "hookRef":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lorg/apache/logging/log4j/core/util/Cancellable;>;"
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/util/Cancellable;

    .line 76
    .local v2, "hook":Lorg/apache/logging/log4j/core/util/Cancellable;
    if-eqz v2, :cond_0

    .line 78
    :try_start_0
    invoke-interface {v2}, Lorg/apache/logging/log4j/core/util/Cancellable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    goto :goto_1

    .line 79
    :catchall_0
    move-exception v3

    .line 81
    .local v3, "t1":Ljava/lang/Throwable;
    :try_start_1
    sget-object v4, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry;->LOGGER:Lorg/apache/logging/log4j/Logger;

    sget-object v5, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry;->SHUTDOWN_HOOK_MARKER:Lorg/apache/logging/log4j/Marker;

    const-string v6, "Caught exception executing shutdown hook {}"

    invoke-interface {v4, v5, v6, v2, v3}, Lorg/apache/logging/log4j/Logger;->error(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    goto :goto_1

    .line 82
    :catchall_1
    move-exception v4

    .line 83
    .local v4, "t2":Ljava/lang/Throwable;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Caught exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " logging exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    .end local v1    # "hookRef":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lorg/apache/logging/log4j/core/util/Cancellable;>;"
    .end local v2    # "hook":Lorg/apache/logging/log4j/core/util/Cancellable;
    .end local v3    # "t1":Ljava/lang/Throwable;
    .end local v4    # "t2":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/logging/log4j/core/LifeCycle$State;->STOPPED:Lorg/apache/logging/log4j/core/LifeCycle$State;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 91
    :cond_2
    return-void
.end method

.method public start()V
    .locals 3

    .line 150
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/logging/log4j/core/LifeCycle$State;->INITIALIZED:Lorg/apache/logging/log4j/core/LifeCycle$State;

    sget-object v2, Lorg/apache/logging/log4j/core/LifeCycle$State;->STARTING:Lorg/apache/logging/log4j/core/LifeCycle$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry;->addShutdownHook(Ljava/lang/Thread;)V

    .line 153
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/logging/log4j/core/LifeCycle$State;->STARTED:Lorg/apache/logging/log4j/core/LifeCycle$State;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v1, v0}, Lorg/apache/logging/log4j/Logger;->catching(Ljava/lang/Throwable;)V

    .line 159
    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lorg/apache/logging/log4j/core/LifeCycle$State;->STOPPED:Lorg/apache/logging/log4j/core/LifeCycle$State;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 155
    .local v0, "ex":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lorg/apache/logging/log4j/core/LifeCycle$State;->STOPPED:Lorg/apache/logging/log4j/core/LifeCycle$State;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 156
    throw v0

    .line 162
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :cond_0
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 3

    .line 171
    sget-object v0, Lorg/apache/logging/log4j/core/AbstractLifeCycle;->DEFAULT_STOP_TIMEUNIT:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry;->stop(JLjava/util/concurrent/TimeUnit;)Z

    .line 172
    return-void
.end method

.method public stop(JLjava/util/concurrent/TimeUnit;)Z
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "timeout",
            "timeUnit"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/logging/log4j/core/LifeCycle$State;->STARTED:Lorg/apache/logging/log4j/core/LifeCycle$State;

    sget-object v2, Lorg/apache/logging/log4j/core/LifeCycle$State;->STOPPING:Lorg/apache/logging/log4j/core/LifeCycle$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    :try_start_0
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry;->removeShutdownHook()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/logging/log4j/core/LifeCycle$State;->STOPPED:Lorg/apache/logging/log4j/core/LifeCycle$State;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 184
    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lorg/apache/logging/log4j/core/LifeCycle$State;->STOPPED:Lorg/apache/logging/log4j/core/LifeCycle$State;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    throw v0

    .line 186
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
