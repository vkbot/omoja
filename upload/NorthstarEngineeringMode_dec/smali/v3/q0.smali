.class public abstract Lv3/q0;
.super Lv3/o0;
.source "SourceFile"


# virtual methods
.method public abstract H()Ljava/lang/Thread;
.end method

.method public L(JLv3/p0$a;)V
    .locals 6

    sget-object p0, Lv3/d0;->e1:Lv3/d0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lv3/p0;->d1:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sget-object v3, Lv3/p0;->c1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_2

    :cond_1
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/p0$b;

    if-nez v0, :cond_4

    new-instance v5, Lv3/p0$b;

    invoke-direct {v5}, Lx3/w;-><init>()V

    iput-wide p1, v5, Lv3/p0$b;->c:J

    :cond_2
    invoke-virtual {v3, p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lo3/h;->c(Ljava/lang/Object;)V

    check-cast v0, Lv3/p0$b;

    :cond_4
    invoke-virtual {p3, p1, p2, v0, p0}, Lv3/p0$a;->c(JLv3/p0$b;Lv3/d0;)I

    move-result v0

    :goto_2
    if-eqz v0, :cond_7

    if-eq v0, v2, :cond_6

    const/4 p0, 0x2

    if-ne v0, p0, :cond_5

    goto :goto_4

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "unexpected result"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lv3/d0;->L(JLv3/p0$a;)V

    throw v4

    :cond_7
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv3/p0$b;

    if-eqz p1, :cond_9

    monitor-enter p1

    :try_start_0
    iget-object p2, p1, Lx3/w;->a:[Lx3/x;

    if-eqz p2, :cond_8

    aget-object v4, p2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    monitor-exit p1

    check-cast v4, Lv3/p0$a;

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_9
    :goto_3
    if-ne v4, p3, :cond_a

    invoke-virtual {p0}, Lv3/d0;->H()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    if-eq p1, p0, :cond_a

    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_a
    :goto_4
    return-void
.end method
