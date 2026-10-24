.class public Lorg/apache/mina/core/service/IoServiceListenerSupport;
.super Ljava/lang/Object;
.source "IoServiceListenerSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/service/IoServiceListenerSupport$LockNotifyingListener;
    }
.end annotation


# instance fields
.field private final activated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile activationTime:J

.field private cumulativeManagedSessionCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile largestManagedSessionCount:I

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/mina/core/service/IoServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final managedSessions:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Long;",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;"
        }
    .end annotation
.end field

.field private final readOnlyManagedSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;"
        }
    .end annotation
.end field

.field private final service:Lorg/apache/mina/core/service/IoService;


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/service/IoService;)V
    .locals 3
    .param p1, "service"    # Lorg/apache/mina/core/service/IoService;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->listeners:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    .line 54
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->readOnlyManagedSessions:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->activated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->largestManagedSessionCount:I

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->cumulativeManagedSessionCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 73
    if-eqz p1, :cond_0

    .line 77
    iput-object p1, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->service:Lorg/apache/mina/core/service/IoService;

    .line 78
    return-void

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "service"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private disconnectSessions()V
    .locals 5

    .line 283
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->service:Lorg/apache/mina/core/service/IoService;

    instance-of v1, v0, Lorg/apache/mina/core/service/IoAcceptor;

    if-nez v1, :cond_0

    .line 285
    return-void

    .line 288
    :cond_0
    check-cast v0, Lorg/apache/mina/core/service/IoAcceptor;

    invoke-interface {v0}, Lorg/apache/mina/core/service/IoAcceptor;->isCloseOnDeactivation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    return-void

    .line 292
    :cond_1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 293
    .local v0, "lock":Ljava/lang/Object;
    new-instance v1, Lorg/apache/mina/core/service/IoServiceListenerSupport$LockNotifyingListener;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/service/IoServiceListenerSupport$LockNotifyingListener;-><init>(Ljava/lang/Object;)V

    .line 295
    .local v1, "listener":Lorg/apache/mina/core/future/IoFutureListener;, "Lorg/apache/mina/core/future/IoFutureListener<Lorg/apache/mina/core/future/IoFuture;>;"
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/core/session/IoSession;

    .line 296
    .local v3, "s":Lorg/apache/mina/core/session/IoSession;
    invoke-interface {v3}, Lorg/apache/mina/core/session/IoSession;->closeNow()Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/apache/mina/core/future/CloseFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/CloseFuture;

    .line 297
    .end local v3    # "s":Lorg/apache/mina/core/session/IoSession;
    goto :goto_0

    .line 300
    :cond_2
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_1
    :try_start_1
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 302
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    goto :goto_1

    .line 304
    :cond_3
    monitor-exit v0

    .line 307
    goto :goto_2

    .line 304
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "lock":Ljava/lang/Object;
    .end local v1    # "listener":Lorg/apache/mina/core/future/IoFutureListener;, "Lorg/apache/mina/core/future/IoFutureListener<Lorg/apache/mina/core/future/IoFuture;>;"
    .end local p0    # "this":Lorg/apache/mina/core/service/IoServiceListenerSupport;
    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 305
    .restart local v0    # "lock":Ljava/lang/Object;
    .restart local v1    # "listener":Lorg/apache/mina/core/future/IoFutureListener;, "Lorg/apache/mina/core/future/IoFutureListener<Lorg/apache/mina/core/future/IoFuture;>;"
    .restart local p0    # "this":Lorg/apache/mina/core/service/IoServiceListenerSupport;
    :catch_0
    move-exception v2

    .line 308
    :goto_2
    return-void
.end method


# virtual methods
.method public add(Lorg/apache/mina/core/service/IoServiceListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/mina/core/service/IoServiceListener;

    .line 86
    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    return-void
.end method

.method public fireServiceActivated()V
    .locals 4

    .line 151
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->activated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    return-void

    .line 156
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->activationTime:J

    .line 159
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/service/IoServiceListener;

    .line 161
    .local v1, "listener":Lorg/apache/mina/core/service/IoServiceListener;
    :try_start_0
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->service:Lorg/apache/mina/core/service/IoService;

    invoke-interface {v1, v2}, Lorg/apache/mina/core/service/IoServiceListener;->serviceActivated(Lorg/apache/mina/core/service/IoService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    goto :goto_1

    .line 162
    :catch_0
    move-exception v2

    .line 163
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 165
    .end local v1    # "listener":Lorg/apache/mina/core/service/IoServiceListener;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 166
    :cond_1
    return-void
.end method

.method public fireServiceDeactivated()V
    .locals 4

    .line 173
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->activated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    return-void

    .line 180
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/service/IoServiceListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    .local v1, "listener":Lorg/apache/mina/core/service/IoServiceListener;
    :try_start_1
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->service:Lorg/apache/mina/core/service/IoService;

    invoke-interface {v1, v2}, Lorg/apache/mina/core/service/IoServiceListener;->serviceDeactivated(Lorg/apache/mina/core/service/IoService;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    goto :goto_1

    .line 183
    :catch_0
    move-exception v2

    .line 184
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    .end local v1    # "listener":Lorg/apache/mina/core/service/IoServiceListener;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 188
    :cond_1
    invoke-direct {p0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->disconnectSessions()V

    .line 189
    nop

    .line 190
    return-void

    .line 188
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->disconnectSessions()V

    .line 189
    throw v0
.end method

.method public fireSessionCreated(Lorg/apache/mina/core/session/IoSession;)V
    .locals 7
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 198
    const/4 v0, 0x0

    .line 200
    .local v0, "firstSession":Z
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/mina/core/service/IoConnector;

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v1

    .line 202
    :try_start_0
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v2

    move v0, v2

    .line 203
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 207
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 208
    return-void

    .line 212
    :cond_1
    if-eqz v0, :cond_2

    .line 213
    invoke-virtual {p0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireServiceActivated()V

    .line 217
    :cond_2
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v1

    .line 218
    .local v1, "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireSessionCreated()V

    .line 219
    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireSessionOpened()V

    .line 221
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v2

    .line 223
    .local v2, "managedSessionCount":I
    iget v3, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->largestManagedSessionCount:I

    if-le v2, v3, :cond_3

    .line 224
    iput v2, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->largestManagedSessionCount:I

    .line 227
    :cond_3
    iget-object v3, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->cumulativeManagedSessionCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 230
    iget-object v3, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/mina/core/service/IoServiceListener;

    .line 232
    .local v4, "l":Lorg/apache/mina/core/service/IoServiceListener;
    :try_start_1
    invoke-interface {v4, p1}, Lorg/apache/mina/core/service/IoServiceListener;->sessionCreated(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 235
    goto :goto_2

    .line 233
    :catch_0
    move-exception v5

    .line 234
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 236
    .end local v4    # "l":Lorg/apache/mina/core/service/IoServiceListener;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_1

    .line 237
    :cond_4
    return-void
.end method

.method public fireSessionDestroyed(Lorg/apache/mina/core/session/IoSession;)V
    .locals 4
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 246
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 247
    return-void

    .line 251
    :cond_0
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireSessionClosed()V

    .line 255
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/service/IoServiceListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 257
    .local v1, "l":Lorg/apache/mina/core/service/IoServiceListener;
    :try_start_1
    invoke-interface {v1, p1}, Lorg/apache/mina/core/service/IoServiceListener;->sessionDestroyed(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 260
    goto :goto_1

    .line 258
    :catch_0
    move-exception v2

    .line 259
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 261
    .end local v1    # "l":Lorg/apache/mina/core/service/IoServiceListener;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 264
    :cond_1
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/mina/core/service/IoConnector;

    if-eqz v0, :cond_3

    .line 265
    const/4 v0, 0x0

    .line 267
    .local v0, "lastSession":Z
    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v1

    .line 268
    :try_start_3
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v2

    move v0, v2

    .line 269
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 271
    if-eqz v0, :cond_2

    .line 272
    invoke-virtual {p0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireServiceDeactivated()V

    .line 274
    .end local v0    # "lastSession":Z
    :cond_2
    goto :goto_2

    .line 269
    .restart local v0    # "lastSession":Z
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 276
    .end local v0    # "lastSession":Z
    :cond_3
    :goto_2
    return-void

    .line 264
    :catchall_1
    move-exception v0

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/mina/core/service/IoConnector;

    if-eqz v1, :cond_4

    .line 265
    const/4 v1, 0x0

    .line 267
    .local v1, "lastSession":Z
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v2

    .line 268
    :try_start_5
    iget-object v3, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v3

    move v1, v3

    .line 269
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 271
    if-eqz v1, :cond_4

    .line 272
    invoke-virtual {p0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireServiceDeactivated()V

    goto :goto_3

    .line 269
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 275
    .end local v1    # "lastSession":Z
    :cond_4
    :goto_3
    throw v0
.end method

.method public getActivationTime()J
    .locals 2

    .line 106
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->activationTime:J

    return-wide v0
.end method

.method public getCumulativeManagedSessionCount()J
    .locals 2

    .line 136
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->cumulativeManagedSessionCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLargestManagedSessionCount()I
    .locals 1

    .line 128
    iget v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->largestManagedSessionCount:I

    return v0
.end method

.method public getManagedSessionCount()I
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public getManagedSessions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->readOnlyManagedSessions:Ljava/util/Map;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->activated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public remove(Lorg/apache/mina/core/service/IoServiceListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/mina/core/service/IoServiceListener;

    .line 97
    if-eqz p1, :cond_0

    .line 98
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 100
    :cond_0
    return-void
.end method
