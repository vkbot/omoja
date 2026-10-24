.class public Lorg/apache/mina/core/future/DefaultIoFuture;
.super Ljava/lang/Object;
.source "DefaultIoFuture.java"

# interfaces
.implements Lorg/apache/mina/core/future/IoFuture;


# static fields
.field private static final DEAD_LOCK_CHECK_INTERVAL:J = 0x1388L


# instance fields
.field private firstListener:Lorg/apache/mina/core/future/IoFutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/core/future/IoFutureListener<",
            "*>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private otherListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/mina/core/future/IoFutureListener<",
            "*>;>;"
        }
    .end annotation
.end field

.field private ready:Z

.field private result:Ljava/lang/Object;

.field private final session:Lorg/apache/mina/core/session/IoSession;

.field private waiters:I


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->session:Lorg/apache/mina/core/session/IoSession;

    .line 70
    iput-object p0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    .line 71
    return-void
.end method

.method private await0(JZ)Z
    .locals 6
    .param p1, "timeoutMillis"    # J
    .param p3, "interruptable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 196
    .local v0, "endTime":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 197
    const-wide v0, 0x7fffffffffffffffL

    .line 200
    :cond_0
    iget-object v4, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 203
    :try_start_0
    iget-boolean v5, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    if-nez v5, :cond_7

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    goto :goto_4

    .line 208
    :cond_1
    iget v2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 213
    :goto_0
    const-wide/16 v2, 0x1388

    :try_start_1
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 218
    .local v2, "timeOut":J
    iget-object v5, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    invoke-virtual {v5, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    .end local v2    # "timeOut":J
    goto :goto_1

    .line 238
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 219
    :catch_0
    move-exception v2

    .line 220
    .local v2, "e":Ljava/lang/InterruptedException;
    if-nez p3, :cond_5

    .line 225
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_1
    :try_start_2
    iget-boolean v2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    if-nez v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    goto :goto_2

    .line 229
    :cond_2
    invoke-direct {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->checkDeadLock()V

    goto :goto_0

    .line 226
    :cond_3
    :goto_2
    iget-boolean v2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 238
    :try_start_3
    iget v3, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    .line 240
    iget-boolean v3, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    if-nez v3, :cond_4

    .line 241
    invoke-direct {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->checkDeadLock()V

    :cond_4
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 226
    return v2

    .line 221
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    :cond_5
    nop

    .end local v0    # "endTime":J
    .end local p0    # "this":Lorg/apache/mina/core/future/DefaultIoFuture;
    .end local p1    # "timeoutMillis":J
    .end local p3    # "interruptable":Z
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 238
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "endTime":J
    .restart local p0    # "this":Lorg/apache/mina/core/future/DefaultIoFuture;
    .restart local p1    # "timeoutMillis":J
    .restart local p3    # "interruptable":Z
    :goto_3
    :try_start_5
    iget v3, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    .line 240
    iget-boolean v3, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    if-nez v3, :cond_6

    .line 241
    invoke-direct {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->checkDeadLock()V

    .line 243
    :cond_6
    nop

    .end local v0    # "endTime":J
    .end local p0    # "this":Lorg/apache/mina/core/future/DefaultIoFuture;
    .end local p1    # "timeoutMillis":J
    .end local p3    # "interruptable":Z
    throw v2

    .line 204
    .restart local v0    # "endTime":J
    .restart local p0    # "this":Lorg/apache/mina/core/future/DefaultIoFuture;
    .restart local p1    # "timeoutMillis":J
    .restart local p3    # "interruptable":Z
    :cond_7
    :goto_4
    iget-boolean v2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    monitor-exit v4

    return v2

    .line 244
    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2
.end method

.method private checkDeadLock()V
    .locals 11

    .line 253
    instance-of v0, p0, Lorg/apache/mina/core/future/CloseFuture;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/apache/mina/core/future/WriteFuture;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/apache/mina/core/future/ReadFuture;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/apache/mina/core/future/ConnectFuture;

    if-nez v0, :cond_0

    .line 254
    return-void

    .line 263
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 266
    .local v0, "stackTrace":[Ljava/lang/StackTraceElement;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, " or configure a proper thread model alternatively."

    const-string v5, ".await() was invoked from an I/O processor thread.  Please use "

    const-string v6, "DEAD LOCK: "

    if-ge v3, v1, :cond_2

    aget-object v7, v0, v3

    .line 267
    .local v7, "stackElement":Ljava/lang/StackTraceElement;
    const-class v8, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 266
    .end local v7    # "stackElement":Ljava/lang/StackTraceElement;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 268
    .restart local v7    # "stackElement":Ljava/lang/StackTraceElement;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "t"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 269
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 270
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v6, Lorg/apache/mina/core/future/IoFuture;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v5, Lorg/apache/mina/core/future/IoFutureListener;

    .line 272
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 277
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .end local v7    # "stackElement":Ljava/lang/StackTraceElement;
    :cond_2
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 279
    .local v3, "s":Ljava/lang/StackTraceElement;
    :try_start_0
    const-class v7, Lorg/apache/mina/core/future/DefaultIoFuture;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 281
    .local v7, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v8, Lorg/apache/mina/core/service/IoProcessor;

    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 289
    .end local v7    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_2

    .line 282
    .restart local v7    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v10, Lorg/apache/mina/core/future/IoFuture;

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v10, Lorg/apache/mina/core/future/IoFutureListener;

    .line 284
    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "stackTrace":[Ljava/lang/StackTraceElement;
    .end local v3    # "s":Ljava/lang/StackTraceElement;
    .end local p0    # "this":Lorg/apache/mina/core/future/DefaultIoFuture;
    throw v8
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v7    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v0    # "stackTrace":[Ljava/lang/StackTraceElement;
    .restart local v3    # "s":Ljava/lang/StackTraceElement;
    .restart local p0    # "this":Lorg/apache/mina/core/future/DefaultIoFuture;
    :catch_0
    move-exception v7

    .line 277
    .end local v3    # "s":Ljava/lang/StackTraceElement;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 291
    :cond_4
    return-void
.end method

.method private notifyListener(Lorg/apache/mina/core/future/IoFutureListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/apache/mina/core/future/IoFutureListener;

    .line 423
    :try_start_0
    invoke-interface {p1, p0}, Lorg/apache/mina/core/future/IoFutureListener;->operationComplete(Lorg/apache/mina/core/future/IoFuture;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    goto :goto_0

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 427
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private notifyListeners()V
    .locals 3

    .line 406
    iget-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->firstListener:Lorg/apache/mina/core/future/IoFutureListener;

    if-eqz v0, :cond_1

    .line 407
    invoke-direct {p0, v0}, Lorg/apache/mina/core/future/DefaultIoFuture;->notifyListener(Lorg/apache/mina/core/future/IoFutureListener;)V

    .line 408
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->firstListener:Lorg/apache/mina/core/future/IoFutureListener;

    .line 410
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 411
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/future/IoFutureListener;

    .line 412
    .local v2, "listener":Lorg/apache/mina/core/future/IoFutureListener;, "Lorg/apache/mina/core/future/IoFutureListener<*>;"
    invoke-direct {p0, v2}, Lorg/apache/mina/core/future/DefaultIoFuture;->notifyListener(Lorg/apache/mina/core/future/IoFutureListener;)V

    .line 413
    .end local v2    # "listener":Lorg/apache/mina/core/future/IoFutureListener;, "Lorg/apache/mina/core/future/IoFutureListener<*>;"
    goto :goto_0

    .line 415
    :cond_0
    iput-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    .line 418
    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener<",
            "*>;)",
            "Lorg/apache/mina/core/future/IoFuture;"
        }
    .end annotation

    .line 346
    .local p1, "listener":Lorg/apache/mina/core/future/IoFutureListener;, "Lorg/apache/mina/core/future/IoFutureListener<*>;"
    if-eqz p1, :cond_3

    .line 350
    iget-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 351
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    if-eqz v1, :cond_0

    .line 356
    invoke-direct {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;->notifyListener(Lorg/apache/mina/core/future/IoFutureListener;)V

    goto :goto_0

    .line 358
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->firstListener:Lorg/apache/mina/core/future/IoFutureListener;

    if-nez v1, :cond_1

    .line 359
    iput-object p1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->firstListener:Lorg/apache/mina/core/future/IoFutureListener;

    goto :goto_0

    .line 361
    :cond_1
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    if-nez v1, :cond_2

    .line 362
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    .line 365
    :cond_2
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    :goto_0
    monitor-exit v0

    .line 370
    return-object p0

    .line 368
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 347
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public await()Lorg/apache/mina/core/future/IoFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    if-nez v1, :cond_2

    .line 106
    iget v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 112
    :try_start_1
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    :try_start_2
    iget v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    .line 116
    iget-boolean v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    if-nez v1, :cond_0

    .line 117
    invoke-direct {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->checkDeadLock()V

    .line 119
    :cond_0
    goto :goto_0

    .line 114
    :catchall_0
    move-exception v1

    iget v2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    .line 116
    iget-boolean v2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    if-nez v2, :cond_1

    .line 117
    invoke-direct {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->checkDeadLock()V

    .line 119
    :cond_1
    nop

    .end local p0    # "this":Lorg/apache/mina/core/future/DefaultIoFuture;
    throw v1

    .line 121
    .restart local p0    # "this":Lorg/apache/mina/core/future/DefaultIoFuture;
    :cond_2
    monitor-exit v0

    .line 123
    return-object p0

    .line 121
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public await(J)Z
    .locals 1
    .param p1, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 139
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/core/future/DefaultIoFuture;->await0(JZ)Z

    move-result v0

    return v0
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 131
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/mina/core/future/DefaultIoFuture;->await0(JZ)Z

    move-result v0

    return v0
.end method

.method public awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;
    .locals 3

    .line 148
    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/mina/core/future/DefaultIoFuture;->await0(JZ)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 153
    :goto_0
    return-object p0
.end method

.method public awaitUninterruptibly(J)Z
    .locals 2
    .param p1, "timeoutMillis"    # J

    .line 174
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/core/future/DefaultIoFuture;->await0(JZ)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public awaitUninterruptibly(JLjava/util/concurrent/TimeUnit;)Z
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 162
    :try_start_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/mina/core/future/DefaultIoFuture;->await0(JZ)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public getSession()Lorg/apache/mina/core/session/IoSession;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->session:Lorg/apache/mina/core/session/IoSession;

    return-object v0
.end method

.method protected getValue()Ljava/lang/Object;
    .locals 2

    .line 336
    iget-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 337
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->result:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    .line 338
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isDone()Z
    .locals 2

    .line 298
    iget-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    monitor-exit v0

    return v1

    .line 300
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public join()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    .line 88
    return-void
.end method

.method public join(J)Z
    .locals 1
    .param p1, "timeoutMillis"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 96
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/future/DefaultIoFuture;->awaitUninterruptibly(J)Z

    move-result v0

    return v0
.end method

.method public removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener<",
            "*>;)",
            "Lorg/apache/mina/core/future/IoFuture;"
        }
    .end annotation

    .line 378
    .local p1, "listener":Lorg/apache/mina/core/future/IoFutureListener;, "Lorg/apache/mina/core/future/IoFutureListener<*>;"
    if-eqz p1, :cond_3

    .line 382
    iget-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 383
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    if-nez v1, :cond_2

    .line 384
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->firstListener:Lorg/apache/mina/core/future/IoFutureListener;

    if-ne p1, v1, :cond_1

    .line 385
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 386
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/future/IoFutureListener;

    iput-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->firstListener:Lorg/apache/mina/core/future/IoFutureListener;

    goto :goto_0

    .line 388
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->firstListener:Lorg/apache/mina/core/future/IoFutureListener;

    goto :goto_0

    .line 390
    :cond_1
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 391
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 394
    :cond_2
    :goto_0
    monitor-exit v0

    .line 396
    return-object p0

    .line 394
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 379
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "newValue"    # Ljava/lang/Object;

    .line 311
    iget-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 313
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    if-eqz v1, :cond_0

    .line 314
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 317
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->result:Ljava/lang/Object;

    .line 318
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    .line 321
    iget v2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    if-lez v2, :cond_1

    .line 322
    iget-object v2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 324
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    invoke-direct {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->notifyListeners()V

    .line 329
    return v1

    .line 324
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
