.class public Lorg/apache/mina/util/ExpiringMap$Expirer;
.super Ljava/lang/Object;
.source "ExpiringMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/util/ExpiringMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Expirer"
.end annotation


# instance fields
.field private expirationIntervalMillis:J

.field private final expirerThread:Ljava/lang/Thread;

.field private running:Z

.field private final stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field final synthetic this$0:Lorg/apache/mina/util/ExpiringMap;

.field private timeToLiveMillis:J


# direct methods
.method public constructor <init>(Lorg/apache/mina/util/ExpiringMap;)V
    .locals 3
    .param p1, "this$0"    # Lorg/apache/mina/util/ExpiringMap;

    .line 366
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap$Expirer;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>.Expirer;"
    iput-object p1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->this$0:Lorg/apache/mina/util/ExpiringMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->running:Z

    .line 367
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExpiringMapExpirer-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/apache/mina/util/ExpiringMap;->access$008()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->expirerThread:Ljava/lang/Thread;

    .line 368
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 369
    return-void
.end method

.method private processExpires()V
    .locals 9

    .line 388
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap$Expirer;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>.Expirer;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 390
    .local v0, "timeNow":J
    iget-object v2, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->this$0:Lorg/apache/mina/util/ExpiringMap;

    invoke-static {v2}, Lorg/apache/mina/util/ExpiringMap;->access$100(Lorg/apache/mina/util/ExpiringMap;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;

    .line 392
    .local v3, "o":Lorg/apache/mina/util/ExpiringMap$ExpiringObject;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>.ExpiringObject;"
    iget-wide v4, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->timeToLiveMillis:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 393
    goto :goto_0

    .line 396
    :cond_0
    invoke-virtual {v3}, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;->getLastAccessTime()J

    move-result-wide v4

    sub-long v4, v0, v4

    .line 398
    .local v4, "timeIdle":J
    iget-wide v6, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->timeToLiveMillis:J

    cmp-long v6, v4, v6

    if-ltz v6, :cond_1

    .line 399
    iget-object v6, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->this$0:Lorg/apache/mina/util/ExpiringMap;

    invoke-static {v6}, Lorg/apache/mina/util/ExpiringMap;->access$100(Lorg/apache/mina/util/ExpiringMap;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v3}, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    iget-object v6, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->this$0:Lorg/apache/mina/util/ExpiringMap;

    invoke-static {v6}, Lorg/apache/mina/util/ExpiringMap;->access$200(Lorg/apache/mina/util/ExpiringMap;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/mina/util/ExpirationListener;

    .line 402
    .local v7, "listener":Lorg/apache/mina/util/ExpirationListener;, "Lorg/apache/mina/util/ExpirationListener<TV;>;"
    invoke-virtual {v3}, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/mina/util/ExpirationListener;->expired(Ljava/lang/Object;)V

    .line 403
    .end local v7    # "listener":Lorg/apache/mina/util/ExpirationListener;, "Lorg/apache/mina/util/ExpirationListener<TV;>;"
    goto :goto_1

    .line 405
    .end local v3    # "o":Lorg/apache/mina/util/ExpiringMap$ExpiringObject;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>.ExpiringObject;"
    .end local v4    # "timeIdle":J
    :cond_1
    goto :goto_0

    .line 406
    :cond_2
    return-void
.end method


# virtual methods
.method public getExpirationInterval()I
    .locals 2

    .line 521
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap$Expirer;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>.Expirer;"
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 524
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->expirationIntervalMillis:J

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    iget-object v1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 524
    return v0

    .line 526
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 527
    throw v0
.end method

.method public getTimeToLive()I
    .locals 2

    .line 488
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap$Expirer;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>.Expirer;"
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 491
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->timeToLiveMillis:J

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    iget-object v1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 491
    return v0

    .line 493
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 494
    throw v0
.end method

.method public isRunning()Z
    .locals 2

    .line 475
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap$Expirer;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>.Expirer;"
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 478
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    iget-object v1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 478
    return v0

    .line 480
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 481
    throw v0
.end method

.method public run()V
    .locals 2

    .line 376
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap$Expirer;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>.Expirer;"
    :goto_0
    iget-boolean v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->running:Z

    if-eqz v0, :cond_0

    .line 377
    invoke-direct {p0}, Lorg/apache/mina/util/ExpiringMap$Expirer;->processExpires()V

    .line 380
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->expirationIntervalMillis:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 381
    :catch_0
    move-exception v0

    .line 383
    :goto_1
    goto :goto_0

    .line 385
    :cond_0
    return-void
.end method

.method public setExpirationInterval(J)V
    .locals 2
    .param p1, "expirationInterval"    # J

    .line 538
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap$Expirer;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>.Expirer;"
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 541
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    :try_start_0
    iput-wide v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->expirationIntervalMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 544
    nop

    .line 545
    return-void

    .line 543
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 544
    throw v0
.end method

.method public setTimeToLive(J)V
    .locals 2
    .param p1, "timeToLive"    # J

    .line 504
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap$Expirer;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>.Expirer;"
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 507
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    :try_start_0
    iput-wide v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->timeToLiveMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 510
    nop

    .line 511
    return-void

    .line 509
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 510
    throw v0
.end method

.method public startExpiring()V
    .locals 2

    .line 413
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap$Expirer;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>.Expirer;"
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 416
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->running:Z

    if-nez v0, :cond_0

    .line 417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->running:Z

    .line 418
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->expirerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 422
    nop

    .line 423
    return-void

    .line 421
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 422
    throw v0
.end method

.method public startExpiringIfNotStarted()V
    .locals 2

    .line 430
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap$Expirer;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>.Expirer;"
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 433
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 434
    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 438
    nop

    .line 440
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 443
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->running:Z

    if-nez v0, :cond_1

    .line 444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->running:Z

    .line 445
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->expirerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 448
    :cond_1
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 449
    nop

    .line 450
    return-void

    .line 448
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 449
    throw v0

    .line 437
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 438
    throw v0
.end method

.method public stopExpiring()V
    .locals 2

    .line 456
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap$Expirer;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>.Expirer;"
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 459
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->running:Z

    if-eqz v0, :cond_0

    .line 460
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->running:Z

    .line 461
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->expirerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 465
    nop

    .line 466
    return-void

    .line 464
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 465
    throw v0
.end method
