.class Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;
.super Ljava/lang/Object;
.source "PriorityThreadPoolExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field private completedTaskCount:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic this$0:Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;

.field private thread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;)V
    .locals 2

    .line 729
    iput-object p1, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 731
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;->completedTaskCount:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;
    .param p2, "x1"    # Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$1;

    .line 729
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;-><init>(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;)V

    return-void
.end method

.method static synthetic access$400(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;

    .line 729
    iget-object v0, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;->completedTaskCount:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method private fetchSession()Lorg/apache/mina/core/session/IoSession;
    .locals 10

    .line 776
    const/4 v0, 0x0

    .line 777
    .local v0, "entry":Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 778
    .local v1, "currentTime":J
    iget-object v3, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->getKeepAliveTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    add-long/2addr v3, v1

    .line 782
    .local v3, "deadline":J
    :goto_0
    sub-long v5, v3, v1

    .line 784
    .local v5, "waitTime":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gtz v7, :cond_0

    .line 785
    goto :goto_1

    .line 789
    :cond_0
    :try_start_0
    iget-object v7, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;

    invoke-static {v7}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->access$1000(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v5, v6, v8}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v7

    .line 792
    if-eqz v0, :cond_1

    .line 793
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v1, v7

    :cond_1
    nop

    .line 802
    .end local v5    # "waitTime":J
    :goto_1
    if-eqz v0, :cond_2

    .line 803
    invoke-virtual {v0}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v5

    return-object v5

    .line 805
    :cond_2
    const/4 v5, 0x0

    return-object v5

    .line 792
    .restart local v5    # "waitTime":J
    :catchall_0
    move-exception v7

    if-eqz v0, :cond_3

    .line 793
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-wide v1, v8

    .line 795
    :cond_3
    nop

    .end local v0    # "entry":Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;
    .end local v1    # "currentTime":J
    .end local v3    # "deadline":J
    .end local p0    # "this":Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;
    throw v7
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 796
    .end local v5    # "waitTime":J
    .restart local v0    # "entry":Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;
    .restart local v1    # "currentTime":J
    .restart local v3    # "deadline":J
    .restart local p0    # "this":Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;
    :catch_0
    move-exception v5

    .line 798
    .local v5, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method private runTask(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 829
    iget-object v0, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;

    iget-object v1, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    invoke-static {v0, v1, p1}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->access$1200(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 830
    const/4 v0, 0x0

    .line 832
    .local v0, "ran":Z
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 833
    const/4 v0, 0x1

    .line 834
    iget-object v1, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->access$1300(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 835
    iget-object v1, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;->completedTaskCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    nop

    .line 842
    return-void

    .line 836
    :catch_0
    move-exception v1

    .line 837
    .local v1, "e":Ljava/lang/RuntimeException;
    if-nez v0, :cond_0

    .line 838
    iget-object v2, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;

    invoke-static {v2, p1, v1}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->access$1400(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 840
    :cond_0
    throw v1
.end method

.method private runTasks(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;)V
    .locals 5
    .param p1, "sessionTasksQueue"    # Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;

    .line 811
    :goto_0
    invoke-static {p1}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;->access$200(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;)Ljava/util/Queue;

    move-result-object v0

    .line 813
    .local v0, "tasksQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Runnable;>;"
    monitor-enter v0

    .line 814
    :try_start_0
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 816
    .local v1, "task":Ljava/lang/Runnable;
    if-nez v1, :cond_0

    .line 817
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;->access$302(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;Z)Z

    .line 818
    monitor-exit v0

    .line 826
    .end local v0    # "tasksQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Runnable;>;"
    .end local v1    # "task":Ljava/lang/Runnable;
    return-void

    .line 820
    .restart local v0    # "tasksQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Runnable;>;"
    .restart local v1    # "task":Ljava/lang/Runnable;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 822
    iget-object v2, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;

    invoke-static {v2}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->access$1100(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;)Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;

    move-object v4, v1

    check-cast v4, Lorg/apache/mina/core/session/IoEvent;

    invoke-interface {v2, v3, v4}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->polled(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V

    .line 824
    invoke-direct {p0, v1}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;->runTask(Ljava/lang/Runnable;)V

    .line 825
    .end local v0    # "tasksQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Runnable;>;"
    .end local v1    # "task":Ljava/lang/Runnable;
    goto :goto_0

    .line 820
    .restart local v0    # "tasksQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Runnable;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 740
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    .line 744
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;->fetchSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    .line 746
    .local v0, "session":Lorg/apache/mina/core/session/IoSession;
    iget-object v1, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;

    invoke-static {v1}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->access$500(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 748
    if-nez v0, :cond_1

    .line 749
    iget-object v1, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;

    invoke-static {v1}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->access$600(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 750
    :try_start_1
    iget-object v2, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;

    invoke-static {v2}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->access$600(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    iget-object v3, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;

    invoke-virtual {v3}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->getCorePoolSize()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 751
    monitor-exit v1

    goto :goto_2

    .line 753
    :cond_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;
    :try_start_2
    throw v2

    .line 756
    .restart local p0    # "this":Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;
    :cond_1
    :goto_1
    invoke-static {}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->access$700()Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v0, v1, :cond_2

    .line 757
    nop

    .line 767
    .end local v0    # "session":Lorg/apache/mina/core/session/IoSession;
    :goto_2
    iget-object v0, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;

    invoke-static {v0}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->access$600(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 768
    :try_start_3
    iget-object v0, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;

    invoke-static {v0}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->access$600(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 769
    iget-object v0, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;

    invoke-static {v0}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->access$900(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;)J

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;->completedTaskCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->access$902(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;J)J

    .line 770
    iget-object v0, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;

    invoke-static {v0}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->access$600(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 771
    monitor-exit v1

    .line 772
    nop

    .line 773
    return-void

    .line 771
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 760
    .restart local v0    # "session":Lorg/apache/mina/core/session/IoSession;
    :cond_2
    if-eqz v0, :cond_3

    .line 761
    :try_start_4
    iget-object v1, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;

    invoke-static {v1, v0}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->access$800(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;->runTasks(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;)V

    .line 764
    :cond_3
    iget-object v1, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;

    invoke-static {v1}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->access$500(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 765
    nop

    .end local v0    # "session":Lorg/apache/mina/core/session/IoSession;
    goto :goto_0

    .line 767
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;

    invoke-static {v1}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->access$600(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 768
    :try_start_5
    iget-object v2, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;

    invoke-static {v2}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->access$600(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 769
    iget-object v2, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;

    invoke-static {v2}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->access$900(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;)J

    move-result-wide v3

    iget-object v5, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;->completedTaskCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->access$902(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;J)J

    .line 770
    iget-object v2, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;

    invoke-static {v2}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->access$600(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 771
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 772
    throw v0

    .line 771
    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0
.end method
