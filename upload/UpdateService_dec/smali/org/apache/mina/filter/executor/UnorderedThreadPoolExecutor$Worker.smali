.class Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;
.super Ljava/lang/Object;
.source "UnorderedThreadPoolExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field private completedTaskCount:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

.field private thread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)V
    .locals 2

    .line 462
    iput-object p1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->completedTaskCount:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;
    .param p2, "x1"    # Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$1;

    .line 462
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;-><init>(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;

    .line 462
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->completedTaskCount:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method private fetchTask()Ljava/lang/Runnable;
    .locals 10

    .line 510
    const/4 v0, 0x0

    .line 511
    .local v0, "task":Ljava/lang/Runnable;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 512
    .local v1, "currentTime":J
    iget-object v3, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->getKeepAliveTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    add-long/2addr v3, v1

    .line 516
    .local v3, "deadline":J
    :goto_0
    sub-long v5, v3, v1

    .line 518
    .local v5, "waitTime":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gtz v7, :cond_0

    .line 519
    goto :goto_1

    .line 523
    :cond_0
    :try_start_0
    iget-object v7, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-virtual {v7}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v5, v6, v8}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v7

    .line 526
    if-nez v0, :cond_1

    .line 527
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-wide v1, v7

    :cond_1
    nop

    .line 535
    .end local v5    # "waitTime":J
    :goto_1
    return-object v0

    .line 526
    .restart local v5    # "waitTime":J
    :catchall_0
    move-exception v7

    if-nez v0, :cond_2

    .line 527
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-wide v1, v8

    .line 529
    :cond_2
    nop

    .end local v0    # "task":Ljava/lang/Runnable;
    .end local v1    # "currentTime":J
    .end local v3    # "deadline":J
    .end local p0    # "this":Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;
    throw v7
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 530
    .end local v5    # "waitTime":J
    .restart local v0    # "task":Ljava/lang/Runnable;
    .restart local v1    # "currentTime":J
    .restart local v3    # "deadline":J
    .restart local p0    # "this":Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;
    :catch_0
    move-exception v5

    .line 532
    .local v5, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method private runTask(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 539
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    invoke-static {v0, v1, p1}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$800(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 540
    const/4 v0, 0x0

    .line 542
    .local v0, "ran":Z
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 543
    const/4 v0, 0x1

    .line 544
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$900(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 545
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->completedTaskCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    nop

    .line 552
    return-void

    .line 546
    :catch_0
    move-exception v1

    .line 547
    .local v1, "e":Ljava/lang/RuntimeException;
    if-nez v0, :cond_0

    .line 548
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v2, p1, v1}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$1000(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 550
    :cond_0
    throw v1
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 473
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    .line 477
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->fetchTask()Ljava/lang/Runnable;

    move-result-object v0

    .line 479
    .local v0, "task":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v1}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$200(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 481
    if-nez v0, :cond_1

    .line 482
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v1}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 483
    :try_start_1
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v2}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    iget-object v3, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v3}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$400(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)I

    move-result v3

    if-le v2, v3, :cond_0

    .line 484
    monitor-exit v1

    goto :goto_2

    .line 486
    :cond_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;
    :try_start_2
    throw v2

    .line 489
    .restart local p0    # "this":Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;
    :cond_1
    :goto_1
    invoke-static {}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$500()Ljava/lang/Runnable;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v0, v1, :cond_2

    .line 490
    nop

    .line 501
    .end local v0    # "task":Ljava/lang/Runnable;
    :goto_2
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 502
    :try_start_3
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 503
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$700(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)J

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->completedTaskCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$702(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;J)J

    .line 504
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 505
    monitor-exit v1

    .line 506
    nop

    .line 507
    return-void

    .line 505
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 493
    .restart local v0    # "task":Ljava/lang/Runnable;
    :cond_2
    if-eqz v0, :cond_3

    .line 494
    :try_start_4
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v1}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$600(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    move-object v3, v0

    check-cast v3, Lorg/apache/mina/core/session/IoEvent;

    invoke-interface {v1, v2, v3}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->polled(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V

    .line 495
    invoke-direct {p0, v0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->runTask(Ljava/lang/Runnable;)V

    .line 498
    :cond_3
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v1}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$200(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 499
    nop

    .end local v0    # "task":Ljava/lang/Runnable;
    goto/16 :goto_0

    .line 501
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v1}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 502
    :try_start_5
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v2}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 503
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v2}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$700(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)J

    move-result-wide v3

    iget-object v5, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->completedTaskCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$702(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;J)J

    .line 504
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v2}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 505
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 506
    throw v0

    .line 505
    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0
.end method
