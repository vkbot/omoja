.class public abstract Lv3/p0;
.super Lv3/q0;
.source "SourceFile"

# interfaces
.implements Lv3/h0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv3/p0$a;,
        Lv3/p0$b;
    }
.end annotation


# static fields
.field public static final b1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final c1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final d1:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile _delayed:Ljava/lang/Object;

.field private volatile _isCompleted:I

.field private volatile _queue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_queue"

    const-class v1, Lv3/p0;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lv3/p0;->b1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_delayed"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lv3/p0;->c1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_isCompleted"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lv3/p0;->d1:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lv3/o0;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lv3/p0;->_isCompleted:I

    return-void
.end method


# virtual methods
.method public M(Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0, p1}, Lv3/p0;->N(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lv3/q0;->H()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    if-eq p1, p0, :cond_1

    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lv3/d0;->e1:Lv3/d0;

    invoke-virtual {p0, p1}, Lv3/d0;->M(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final N(Ljava/lang/Runnable;)Z
    .locals 6

    :goto_0
    sget-object v0, Lv3/p0;->b1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lv3/p0;->d1:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_1

    :cond_0
    move v2, v3

    :goto_1
    if-eqz v2, :cond_1

    return v3

    :cond_1
    if-nez v1, :cond_4

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v4

    :cond_3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_4
    instance-of v2, v1, Lx3/m;

    if-eqz v2, :cond_a

    move-object v2, v1

    check-cast v2, Lx3/m;

    invoke-virtual {v2, p1}, Lx3/m;->a(Ljava/lang/Object;)I

    move-result v5

    if-eqz v5, :cond_9

    if-eq v5, v4, :cond_6

    const/4 v0, 0x2

    if-eq v5, v0, :cond_5

    goto :goto_0

    :cond_5
    return v3

    :cond_6
    invoke-virtual {v2}, Lx3/m;->c()Lx3/m;

    move-result-object v2

    :cond_7
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_7

    goto :goto_0

    :cond_9
    return v4

    :cond_a
    sget-object v2, Lv3/r0;->b:Lz1/d;

    if-ne v1, v2, :cond_b

    return v3

    :cond_b
    new-instance v2, Lx3/m;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v4}, Lx3/m;-><init>(IZ)V

    move-object v3, v1

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lx3/m;->a(Ljava/lang/Object;)I

    invoke-virtual {v2, p1}, Lx3/m;->a(Ljava/lang/Object;)I

    :cond_c
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    return v4

    :cond_d
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_c

    goto :goto_0
.end method

.method public final O()Z
    .locals 6

    iget-object v0, p0, Lv3/o0;->Z:Lg3/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg3/c;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lv3/p0;->c1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/p0$b;

    if-eqz v0, :cond_2

    sget-object v2, Lx3/w;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    sget-object v0, Lv3/p0;->b1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_3

    :goto_1
    move v1, v0

    goto :goto_2

    :cond_3
    instance-of v2, p0, Lx3/m;

    if-eqz v2, :cond_4

    check-cast p0, Lx3/m;

    sget-object v2, Lx3/m;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/32 v4, 0x3fffffff

    and-long/2addr v4, v2

    long-to-int p0, v4

    const-wide v4, 0xfffffffc0000000L

    and-long/2addr v2, v4

    const/16 v4, 0x1e

    shr-long/2addr v2, v4

    long-to-int v2, v2

    if-ne p0, v2, :cond_5

    goto :goto_1

    :cond_4
    sget-object v2, Lv3/r0;->b:Lz1/d;

    if-ne p0, v2, :cond_5

    goto :goto_1

    :cond_5
    :goto_2
    return v1
.end method

.method public final P()J
    .locals 11

    invoke-virtual {p0}, Lv3/o0;->G()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    sget-object v0, Lv3/p0;->c1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/p0$b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    sget-object v5, Lx3/w;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_4

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    :cond_2
    monitor-enter v0

    :try_start_0
    iget-object v7, v0, Lx3/w;->a:[Lx3/x;

    if-eqz v7, :cond_3

    aget-object v7, v7, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    move-object v7, v4

    :goto_0
    if-nez v7, :cond_4

    monitor-exit v0

    move-object v7, v4

    goto :goto_2

    :cond_4
    :try_start_1
    check-cast v7, Lv3/p0$a;

    iget-wide v8, v7, Lv3/p0$a;->c:J

    sub-long v8, v5, v8

    cmp-long v8, v8, v1

    if-ltz v8, :cond_5

    invoke-virtual {p0, v7}, Lv3/p0;->N(Ljava/lang/Runnable;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v0, v3}, Lx3/w;->b(I)Lx3/x;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_5
    move-object v7, v4

    :goto_1
    monitor-exit v0

    :goto_2
    check-cast v7, Lv3/p0$a;

    if-nez v7, :cond_2

    goto :goto_4

    :goto_3
    monitor-exit v0

    throw p0

    :cond_6
    :goto_4
    sget-object v0, Lv3/p0;->b1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_7

    :goto_5
    move-object v7, v4

    goto :goto_6

    :cond_7
    instance-of v6, v5, Lx3/m;

    if-eqz v6, :cond_b

    move-object v6, v5

    check-cast v6, Lx3/m;

    invoke-virtual {v6}, Lx3/m;->d()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lx3/m;->g:Lz1/d;

    if-eq v7, v8, :cond_8

    check-cast v7, Ljava/lang/Runnable;

    goto :goto_6

    :cond_8
    invoke-virtual {v6}, Lx3/m;->c()Lx3/m;

    move-result-object v6

    :cond_9
    invoke-virtual {v0, p0, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eq v7, v5, :cond_9

    goto :goto_4

    :cond_b
    sget-object v6, Lv3/r0;->b:Lz1/d;

    if-ne v5, v6, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {v0, p0, v5, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    move-object v7, v5

    check-cast v7, Ljava/lang/Runnable;

    :goto_6
    if-eqz v7, :cond_d

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    return-wide v1

    :cond_d
    iget-object v0, p0, Lv3/o0;->Z:Lg3/c;

    const-wide v5, 0x7fffffffffffffffL

    if-nez v0, :cond_e

    :goto_7
    move-wide v7, v5

    goto :goto_8

    :cond_e
    invoke-virtual {v0}, Lg3/c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_7

    :cond_f
    move-wide v7, v1

    :goto_8
    cmp-long v0, v7, v1

    if-nez v0, :cond_10

    goto :goto_b

    :cond_10
    sget-object v0, Lv3/p0;->b1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v7, v0, Lx3/m;

    if-eqz v7, :cond_11

    check-cast v0, Lx3/m;

    sget-object v7, Lx3/m;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v7, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v7

    const-wide/32 v9, 0x3fffffff

    and-long/2addr v9, v7

    long-to-int v0, v9

    const-wide v9, 0xfffffffc0000000L

    and-long/2addr v7, v9

    const/16 v9, 0x1e

    shr-long/2addr v7, v9

    long-to-int v7, v7

    if-ne v0, v7, :cond_17

    goto :goto_a

    :cond_11
    sget-object p0, Lv3/r0;->b:Lz1/d;

    if-ne v0, p0, :cond_17

    :cond_12
    :goto_9
    move-wide v1, v5

    goto :goto_b

    :cond_13
    :goto_a
    sget-object v0, Lv3/p0;->c1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv3/p0$b;

    if-eqz p0, :cond_12

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lx3/w;->a:[Lx3/x;

    if-eqz v0, :cond_14

    aget-object v4, v0, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_14
    monitor-exit p0

    check-cast v4, Lv3/p0$a;

    if-nez v4, :cond_15

    goto :goto_9

    :cond_15
    iget-wide v3, v4, Lv3/p0$a;->c:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long p0, v3, v1

    if-gez p0, :cond_16

    goto :goto_b

    :cond_16
    move-wide v1, v3

    goto :goto_b

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_17
    :goto_b
    return-wide v1

    :cond_18
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v5, :cond_c

    goto/16 :goto_4
.end method

.method public final l(Lh3/f;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p2}, Lv3/p0;->M(Ljava/lang/Runnable;)V

    return-void
.end method

.method public shutdown()V
    .locals 6

    sget-object v0, Lv3/n1;->a:Ljava/lang/ThreadLocal;

    sget-object v0, Lv3/n1;->a:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v0, Lv3/p0;->d1:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    :goto_0
    sget-object v0, Lv3/p0;->b1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lv3/r0;->b:Lz1/d;

    if-nez v3, :cond_2

    :cond_0
    invoke-virtual {v0, p0, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_2
    instance-of v5, v3, Lx3/m;

    if-eqz v5, :cond_3

    check-cast v3, Lx3/m;

    invoke-virtual {v3}, Lx3/m;->b()Z

    goto :goto_1

    :cond_3
    if-ne v3, v4, :cond_4

    goto :goto_1

    :cond_4
    new-instance v4, Lx3/m;

    const/16 v5, 0x8

    invoke-direct {v4, v5, v2}, Lx3/m;-><init>(IZ)V

    move-object v5, v3

    check-cast v5, Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lx3/m;->a(Ljava/lang/Object;)I

    :cond_5
    invoke-virtual {v0, p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lv3/p0;->P()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    :goto_2
    sget-object v0, Lv3/p0;->c1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/p0$b;

    if-eqz v0, :cond_9

    monitor-enter v0

    :try_start_0
    sget-object v4, Lx3/w;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_7

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lx3/w;->b(I)Lx3/x;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_7
    move-object v4, v1

    :goto_3
    monitor-exit v0

    check-cast v4, Lv3/p0$a;

    if-nez v4, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {p0, v2, v3, v4}, Lv3/q0;->L(JLv3/p0$a;)V

    goto :goto_2

    :goto_4
    monitor-exit v0

    throw p0

    :cond_9
    :goto_5
    return-void

    :cond_a
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v3, :cond_5

    goto :goto_0
.end method
