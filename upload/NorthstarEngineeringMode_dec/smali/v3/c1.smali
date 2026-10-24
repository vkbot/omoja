.class public Lv3/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/x0;
.implements Lv3/l;
.implements Lv3/i1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv3/c1$a;,
        Lv3/c1$b;,
        Lv3/c1$c;
    }
.end annotation


# static fields
.field public static final c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _parentHandle:Ljava/lang/Object;

.field private volatile _state:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_state"

    const-class v1, Lv3/c1;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lv3/c1;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_parentHandle"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lv3/c1;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    sget-object p1, Lv3/d1;->g:Lv3/n0;

    goto :goto_0

    :cond_0
    sget-object p1, Lv3/d1;->f:Lv3/n0;

    :goto_0
    iput-object p1, p0, Lv3/c1;->_state:Ljava/lang/Object;

    return-void
.end method

.method public static O(Lx3/k;)Lv3/k;
    .locals 2

    :goto_0
    invoke-virtual {p0}, Lx3/k;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lx3/k;->e()Lx3/k;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v1, Lx3/k;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx3/k;

    :goto_1
    invoke-virtual {p0}, Lx3/k;->i()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx3/k;

    goto :goto_1

    :cond_1
    move-object p0, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lx3/k;->h()Lx3/k;

    move-result-object p0

    invoke-virtual {p0}, Lx3/k;->i()Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, p0, Lv3/k;

    if-eqz v0, :cond_3

    check-cast p0, Lv3/k;

    return-object p0

    :cond_3
    instance-of v0, p0, Lv3/f1;

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    return-object p0
.end method

.method public static U(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    instance-of v0, p0, Lv3/c1$c;

    const-string v1, "Active"

    if-eqz v0, :cond_1

    check-cast p0, Lv3/c1$c;

    invoke-virtual {p0}, Lv3/c1$c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "Cancelling"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lv3/c1$c;->f()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string v1, "Completing"

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lv3/u0;

    if-eqz v0, :cond_3

    check-cast p0, Lv3/u0;

    invoke-interface {p0}, Lv3/u0;->a()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "New"

    goto :goto_0

    :cond_3
    instance-of p0, p0, Lv3/n;

    if-eqz p0, :cond_4

    const-string v1, "Cancelled"

    goto :goto_0

    :cond_4
    const-string v1, "Completed"

    :cond_5
    :goto_0
    return-object v1
.end method


# virtual methods
.method public final A(Lv3/c1;)V
    .locals 0

    invoke-virtual {p0, p1}, Lv3/c1;->m(Ljava/lang/Object;)Z

    return-void
.end method

.method public B(Ljava/lang/Throwable;)Z
    .locals 2

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lv3/c1;->m(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lv3/c1;->F()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final C(Lv3/u0;Ljava/lang/Object;)V
    .locals 7

    sget-object v0, Lv3/c1;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv3/j;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lv3/l0;->dispose()V

    sget-object v1, Lv3/g1;->c:Lv3/g1;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    instance-of v0, p2, Lv3/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p2, Lv3/n;

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_2

    iget-object p2, p2, Lv3/n;->a:Ljava/lang/Throwable;

    goto :goto_1

    :cond_2
    move-object p2, v1

    :goto_1
    instance-of v0, p1, Lv3/b1;

    const-string v2, " for "

    const-string v3, "Exception in completion handler "

    if-eqz v0, :cond_3

    :try_start_0
    move-object v0, p1

    check-cast v0, Lv3/b1;

    invoke-virtual {v0, p2}, Lv3/p;->j(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p2

    new-instance v0, Lf3/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lv3/c1;->K(Lf3/a;)V

    goto :goto_4

    :cond_3
    invoke-interface {p1}, Lv3/u0;->c()Lv3/f1;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lx3/k;->g()Ljava/lang/Object;

    move-result-object v0

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v0, v4}, Lo3/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lx3/k;

    :goto_2
    invoke-static {v0, p1}, Lo3/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    instance-of v4, v0, Lv3/b1;

    if-eqz v4, :cond_5

    move-object v4, v0

    check-cast v4, Lv3/b1;

    :try_start_1
    invoke-virtual {v4, p2}, Lv3/p;->j(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v5

    if-eqz v1, :cond_4

    invoke-static {v1, v5}, Ld/f;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    new-instance v1, Lf3/a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    invoke-virtual {v0}, Lx3/k;->h()Lx3/k;

    move-result-object v0

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {p0, v1}, Lv3/c1;->K(Lf3/a;)V

    :cond_7
    :goto_4
    return-void
.end method

.method public final D(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    :goto_0
    check-cast p1, Ljava/lang/Throwable;

    if-nez p1, :cond_2

    new-instance p1, Lv3/y0;

    invoke-virtual {p0}, Lv3/c1;->u()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lv3/y0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lv3/x0;)V

    goto :goto_1

    :cond_1
    const-string p0, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob"

    invoke-static {p1, p0}, Lo3/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lv3/i1;

    invoke-interface {p1}, Lv3/i1;->w()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    :cond_2
    :goto_1
    return-object p1
.end method

.method public final E(Lv3/c1$c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lv3/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lv3/n;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Lv3/n;->a:Ljava/lang/Throwable;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Lv3/c1$c;->e()Z

    invoke-virtual {p1, v0}, Lv3/c1$c;->g(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lv3/c1$c;->e()Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Lv3/y0;

    invoke-virtual {p0}, Lv3/c1;->u()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, v1, p0}, Lv3/y0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lv3/x0;)V

    move-object v1, v3

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/Throwable;

    instance-of v7, v7, Ljava/util/concurrent/CancellationException;

    xor-int/2addr v7, v4

    if-eqz v7, :cond_3

    move-object v1, v6

    :cond_4
    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    :cond_6
    :goto_2
    if-eqz v1, :cond_9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v4, :cond_7

    goto :goto_4

    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-instance v6, Ljava/util/IdentityHashMap;

    invoke-direct {v6, v3}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v6}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Throwable;

    if-eq v6, v1, :cond_8

    if-eq v6, v1, :cond_8

    instance-of v7, v6, Ljava/util/concurrent/CancellationException;

    if-nez v7, :cond_8

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {v1, v6}, Ld/f;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_9
    :goto_4
    monitor-exit p1

    if-nez v1, :cond_a

    goto :goto_5

    :cond_a
    if-ne v1, v0, :cond_b

    goto :goto_5

    :cond_b
    new-instance p2, Lv3/n;

    invoke-direct {p2, v5, v1}, Lv3/n;-><init>(ZLjava/lang/Throwable;)V

    :goto_5
    if-eqz v1, :cond_d

    invoke-virtual {p0, v1}, Lv3/c1;->o(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0, v1}, Lv3/c1;->J(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    invoke-static {p2, v0}, Lo3/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Lv3/n;

    sget-object v1, Lv3/n;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, v0, v5, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    :cond_d
    invoke-virtual {p0, p2}, Lv3/c1;->Q(Ljava/lang/Object;)V

    sget-object v0, Lv3/c1;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    instance-of v1, p2, Lv3/u0;

    if-eqz v1, :cond_e

    new-instance v1, Lv3/v0;

    move-object v2, p2

    check-cast v2, Lv3/u0;

    invoke-direct {v1, v2}, Lv3/v0;-><init>(Lv3/u0;)V

    goto :goto_6

    :cond_e
    move-object v1, p2

    :cond_f
    :goto_6
    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_7

    :cond_10
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_f

    :goto_7
    invoke-virtual {p0, p1, p2}, Lv3/c1;->C(Lv3/u0;Ljava/lang/Object;)V

    return-object p2

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public F()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public G()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final H(Lv3/u0;)Lv3/f1;
    .locals 2

    invoke-interface {p1}, Lv3/u0;->c()Lv3/f1;

    move-result-object v0

    if-nez v0, :cond_2

    instance-of v0, p1, Lv3/n0;

    if-eqz v0, :cond_0

    new-instance v0, Lv3/f1;

    invoke-direct {v0}, Lx3/i;-><init>()V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lv3/b1;

    if-eqz v0, :cond_1

    check-cast p1, Lv3/b1;

    invoke-virtual {p0, p1}, Lv3/c1;->S(Lv3/b1;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "State should have list: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final I()Ljava/lang/Object;
    .locals 2

    :goto_0
    sget-object v0, Lv3/c1;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lx3/p;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    check-cast v0, Lx3/p;

    invoke-virtual {v0, p0}, Lx3/p;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public J(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public K(Lf3/a;)V
    .locals 0

    throw p1
.end method

.method public final L(Lv3/x0;)V
    .locals 3

    sget-object v0, Lv3/g1;->c:Lv3/g1;

    sget-object v1, Lv3/c1;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    if-nez p1, :cond_0

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-interface {p1}, Lv3/x0;->start()Z

    invoke-interface {p1, p0}, Lv3/x0;->i(Lv3/c1;)Lv3/j;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lv3/c1;->I()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lv3/u0;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    invoke-interface {p1}, Lv3/l0;->dispose()V

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public M()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public N()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final P(Lv3/f1;Ljava/lang/Throwable;)V
    .locals 6

    invoke-virtual {p1}, Lx3/k;->g()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v0, v1}, Lo3/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lx3/k;

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lo3/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    instance-of v2, v0, Lv3/z0;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lv3/b1;

    :try_start_0
    invoke-virtual {v2, p2}, Lv3/p;->j(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_0

    invoke-static {v1, v3}, Ld/f;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    new-instance v1, Lf3/a;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception in completion handler "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lx3/k;->h()Lx3/k;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lv3/c1;->K(Lf3/a;)V

    :cond_3
    invoke-virtual {p0, p2}, Lv3/c1;->o(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public Q(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public R()V
    .locals 0

    return-void
.end method

.method public final S(Lv3/b1;)V
    .locals 3

    new-instance v0, Lv3/f1;

    invoke-direct {v0}, Lx3/i;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lx3/k;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lx3/k;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p1}, Lx3/k;->g()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1, p1, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, p1}, Lx3/k;->f(Lx3/k;)V

    :goto_1
    invoke-virtual {p1}, Lx3/k;->h()Lx3/k;

    move-result-object v2

    :cond_1
    sget-object v0, Lv3/c1;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    :goto_2
    return-void

    :cond_3
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_0

    goto :goto_0
.end method

.method public final T(Ljava/lang/Object;)I
    .locals 5

    instance-of v0, p1, Lv3/n0;

    const/4 v1, 0x1

    const/4 v2, -0x1

    sget-object v3, Lv3/c1;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lv3/n0;

    iget-boolean v0, v0, Lv3/n0;->c:Z

    if-eqz v0, :cond_0

    return v4

    :cond_0
    sget-object v0, Lv3/d1;->g:Lv3/n0;

    :cond_1
    invoke-virtual {v3, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_2
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, p1, :cond_1

    return v2

    :cond_3
    instance-of v0, p1, Lv3/t0;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lv3/t0;

    iget-object v0, v0, Lv3/t0;->c:Lv3/f1;

    :cond_4
    invoke-virtual {v3, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    return v1

    :cond_5
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, p1, :cond_4

    return v2

    :cond_6
    return v4
.end method

.method public final V(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lv3/u0;

    if-nez v0, :cond_0

    sget-object p0, Lv3/d1;->a:Lz1/d;

    return-object p0

    :cond_0
    instance-of v0, p1, Lv3/n0;

    if-nez v0, :cond_1

    instance-of v0, p1, Lv3/b1;

    if-eqz v0, :cond_5

    :cond_1
    instance-of v0, p1, Lv3/k;

    if-nez v0, :cond_5

    instance-of v0, p2, Lv3/n;

    if-nez v0, :cond_5

    move-object v0, p1

    check-cast v0, Lv3/u0;

    instance-of p1, p2, Lv3/u0;

    if-eqz p1, :cond_2

    new-instance p1, Lv3/v0;

    move-object v1, p2

    check-cast v1, Lv3/u0;

    invoke-direct {p1, v1}, Lv3/v0;-><init>(Lv3/u0;)V

    move-object v1, p1

    goto :goto_0

    :cond_2
    move-object v1, p2

    :cond_3
    :goto_0
    sget-object p1, Lv3/c1;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p2}, Lv3/c1;->Q(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p2}, Lv3/c1;->C(Lv3/u0;Ljava/lang/Object;)V

    return-object p2

    :cond_4
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v0, :cond_3

    sget-object p0, Lv3/d1;->c:Lz1/d;

    return-object p0

    :cond_5
    check-cast p1, Lv3/u0;

    invoke-virtual {p0, p1}, Lv3/c1;->H(Lv3/u0;)Lv3/f1;

    move-result-object v0

    if-nez v0, :cond_6

    sget-object p0, Lv3/d1;->c:Lz1/d;

    goto/16 :goto_7

    :cond_6
    instance-of v1, p1, Lv3/c1$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    move-object v1, p1

    check-cast v1, Lv3/c1$c;

    goto :goto_1

    :cond_7
    move-object v1, v2

    :goto_1
    if-nez v1, :cond_8

    new-instance v1, Lv3/c1$c;

    invoke-direct {v1, v0, v2}, Lv3/c1$c;-><init>(Lv3/f1;Ljava/lang/Throwable;)V

    :cond_8
    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Lv3/c1$c;->f()Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object p0, Lv3/d1;->a:Lz1/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto/16 :goto_7

    :cond_9
    :try_start_1
    sget-object v3, Lv3/c1$c;->r:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    if-eq v1, p1, :cond_c

    sget-object v3, Lv3/c1;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_a
    invoke-virtual {v3, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_2

    :cond_b
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, p1, :cond_a

    sget-object p0, Lv3/d1;->c:Lz1/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    goto/16 :goto_7

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_c
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Lv3/c1$c;->e()Z

    move-result v3

    instance-of v5, p2, Lv3/n;

    if-eqz v5, :cond_d

    move-object v5, p2

    check-cast v5, Lv3/n;

    goto :goto_3

    :cond_d
    move-object v5, v2

    :goto_3
    if-eqz v5, :cond_e

    iget-object v5, v5, Lv3/n;->a:Ljava/lang/Throwable;

    invoke-virtual {v1, v5}, Lv3/c1$c;->b(Ljava/lang/Throwable;)V

    :cond_e
    invoke-virtual {v1}, Lv3/c1$c;->d()Ljava/lang/Throwable;

    move-result-object v5

    xor-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_f

    goto :goto_4

    :cond_f
    move-object v5, v2

    :goto_4
    monitor-exit v1

    if-eqz v5, :cond_10

    invoke-virtual {p0, v0, v5}, Lv3/c1;->P(Lv3/f1;Ljava/lang/Throwable;)V

    :cond_10
    instance-of v0, p1, Lv3/k;

    if-eqz v0, :cond_11

    move-object v0, p1

    check-cast v0, Lv3/k;

    goto :goto_5

    :cond_11
    move-object v0, v2

    :goto_5
    if-nez v0, :cond_12

    invoke-interface {p1}, Lv3/u0;->c()Lv3/f1;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-static {p1}, Lv3/c1;->O(Lx3/k;)Lv3/k;

    move-result-object v2

    goto :goto_6

    :cond_12
    move-object v2, v0

    :cond_13
    :goto_6
    if-eqz v2, :cond_16

    :cond_14
    new-instance p1, Lv3/c1$b;

    invoke-direct {p1, p0, v1, v2, p2}, Lv3/c1$b;-><init>(Lv3/c1;Lv3/c1$c;Lv3/k;Ljava/lang/Object;)V

    iget-object v0, v2, Lv3/k;->Z:Lv3/l;

    const/4 v3, 0x0

    invoke-static {v0, v3, p1, v4}, Lv3/x0$a;->a(Lv3/x0;ZLv3/b1;I)Lv3/l0;

    move-result-object p1

    sget-object v0, Lv3/g1;->c:Lv3/g1;

    if-eq p1, v0, :cond_15

    sget-object p0, Lv3/d1;->b:Lz1/d;

    goto :goto_7

    :cond_15
    invoke-static {v2}, Lv3/c1;->O(Lx3/k;)Lv3/k;

    move-result-object v2

    if-nez v2, :cond_14

    :cond_16
    invoke-virtual {p0, v1, p2}, Lv3/c1;->E(Lv3/c1$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_7
    return-object p0

    :goto_8
    monitor-exit v1

    throw p0
.end method

.method public a()Z
    .locals 1

    invoke-virtual {p0}, Lv3/c1;->I()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lv3/u0;

    if-eqz v0, :cond_0

    check-cast p0, Lv3/u0;

    invoke-interface {p0}, Lv3/u0;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b(ZZLv3/b1;)Lv3/l0;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p3, Lv3/z0;

    if-eqz v1, :cond_0

    move-object v1, p3

    check-cast v1, Lv3/z0;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_2

    new-instance v1, Lv3/w0;

    invoke-direct {v1, p3}, Lv3/w0;-><init>(Lv3/b1;)V

    goto :goto_1

    :cond_1
    move-object v1, p3

    :cond_2
    :goto_1
    iput-object p0, v1, Lv3/b1;->y:Lv3/c1;

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lv3/c1;->I()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lv3/n0;

    if-eqz v3, :cond_a

    move-object v3, v2

    check-cast v3, Lv3/n0;

    iget-boolean v4, v3, Lv3/n0;->c:Z

    if-eqz v4, :cond_6

    sget-object v4, Lv3/c1;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_4
    invoke-virtual {v4, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    return-object v1

    :cond_5
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v2, :cond_4

    goto :goto_2

    :cond_6
    new-instance v2, Lv3/f1;

    invoke-direct {v2}, Lx3/i;-><init>()V

    iget-boolean v4, v3, Lv3/n0;->c:Z

    if-eqz v4, :cond_7

    move-object v4, v2

    goto :goto_3

    :cond_7
    new-instance v4, Lv3/t0;

    invoke-direct {v4, v2}, Lv3/t0;-><init>(Lv3/f1;)V

    :cond_8
    :goto_3
    sget-object v2, Lv3/c1;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v3, :cond_8

    goto :goto_2

    :cond_a
    instance-of v3, v2, Lv3/u0;

    if-eqz v3, :cond_13

    move-object v3, v2

    check-cast v3, Lv3/u0;

    invoke-interface {v3}, Lv3/u0;->c()Lv3/f1;

    move-result-object v3

    if-nez v3, :cond_b

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.JobNode"

    invoke-static {v2, v3}, Lo3/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lv3/b1;

    invoke-virtual {p0, v2}, Lv3/c1;->S(Lv3/b1;)V

    goto :goto_2

    :cond_b
    sget-object v4, Lv3/g1;->c:Lv3/g1;

    if-eqz p1, :cond_10

    instance-of v5, v2, Lv3/c1$c;

    if-eqz v5, :cond_10

    monitor-enter v2

    :try_start_0
    move-object v5, v2

    check-cast v5, Lv3/c1$c;

    invoke-virtual {v5}, Lv3/c1$c;->d()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_c

    instance-of v6, p3, Lv3/k;

    if-eqz v6, :cond_f

    move-object v6, v2

    check-cast v6, Lv3/c1$c;

    invoke-virtual {v6}, Lv3/c1$c;->f()Z

    move-result v6

    if-nez v6, :cond_f

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_c
    :goto_4
    invoke-virtual {p0, v2, v3, v1}, Lv3/c1;->h(Ljava/lang/Object;Lv3/f1;Lv3/b1;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_d

    monitor-exit v2

    goto/16 :goto_2

    :cond_d
    if-nez v5, :cond_e

    monitor-exit v2

    return-object v1

    :cond_e
    move-object v4, v1

    :cond_f
    monitor-exit v2

    goto :goto_6

    :goto_5
    monitor-exit v2

    throw p0

    :cond_10
    move-object v5, v0

    :goto_6
    if-eqz v5, :cond_12

    if-eqz p2, :cond_11

    invoke-interface {p3, v5}, Ln3/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    return-object v4

    :cond_12
    invoke-virtual {p0, v2, v3, v1}, Lv3/c1;->h(Ljava/lang/Object;Lv3/f1;Lv3/b1;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    :cond_13
    if-eqz p2, :cond_16

    instance-of p0, v2, Lv3/n;

    if-eqz p0, :cond_14

    check-cast v2, Lv3/n;

    goto :goto_7

    :cond_14
    move-object v2, v0

    :goto_7
    if-eqz v2, :cond_15

    iget-object v0, v2, Lv3/n;->a:Ljava/lang/Throwable;

    :cond_15
    invoke-interface {p3, v0}, Ln3/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    sget-object p0, Lv3/g1;->c:Lv3/g1;

    return-object p0
.end method

.method public final synthetic cancel()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lv3/c1;->y(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public final getKey()Lh3/f$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh3/f$c<",
            "*>;"
        }
    .end annotation

    sget-object p0, Lv3/x0$b;->c:Lv3/x0$b;

    return-object p0
.end method

.method public final h(Ljava/lang/Object;Lv3/f1;Lv3/b1;)Z
    .locals 5

    new-instance v0, Lv3/c1$d;

    invoke-direct {v0, p3, p0, p1}, Lv3/c1$d;-><init>(Lx3/k;Lv3/c1;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p2}, Lx3/k;->e()Lx3/k;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p1, Lx3/k;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx3/k;

    :goto_1
    invoke-virtual {p0}, Lx3/k;->i()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx3/k;

    goto :goto_1

    :cond_1
    :goto_2
    sget-object p1, Lx3/k;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lx3/k;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p3, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, v0, Lx3/k$a;->c:Lx3/k;

    :cond_2
    invoke-virtual {p1, p0, p2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {v0, p0}, Lx3/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_3

    move p0, v4

    goto :goto_3

    :cond_3
    move p0, v3

    goto :goto_3

    :cond_4
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p2, :cond_2

    move p0, v2

    :goto_3
    if-eq p0, v4, :cond_5

    if-eq p0, v3, :cond_6

    goto :goto_0

    :cond_5
    move v2, v4

    :cond_6
    return v2
.end method

.method public final i(Lv3/c1;)Lv3/j;
    .locals 2

    new-instance v0, Lv3/k;

    invoke-direct {v0, p1}, Lv3/k;-><init>(Lv3/c1;)V

    const/4 p1, 0x2

    const/4 v1, 0x1

    invoke-static {p0, v1, v0, p1}, Lv3/x0$a;->a(Lv3/x0;ZLv3/b1;I)Lv3/l0;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle"

    invoke-static {p0, p1}, Lo3/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lv3/j;

    return-object p0
.end method

.method public final j(Lh3/f$c;)Lh3/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh3/f$c<",
            "*>;)",
            "Lh3/f;"
        }
    .end annotation

    invoke-static {p0, p1}, Lh3/f$b$a;->b(Lh3/f$b;Lh3/f$c;)Lh3/f;

    move-result-object p0

    return-object p0
.end method

.method public k(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public l(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lv3/c1;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public final m(Ljava/lang/Object;)Z
    .locals 9

    sget-object v0, Lv3/d1;->a:Lz1/d;

    invoke-virtual {p0}, Lv3/c1;->G()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    :cond_0
    invoke-virtual {p0}, Lv3/c1;->I()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lv3/u0;

    if-eqz v1, :cond_2

    instance-of v1, v0, Lv3/c1$c;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lv3/c1$c;

    invoke-virtual {v1}, Lv3/c1$c;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lv3/n;

    invoke-virtual {p0, p1}, Lv3/c1;->D(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lv3/n;-><init>(ZLjava/lang/Throwable;)V

    invoke-virtual {p0, v0, v1}, Lv3/c1;->V(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lv3/d1;->c:Lz1/d;

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Lv3/d1;->a:Lz1/d;

    :goto_1
    sget-object v1, Lv3/d1;->b:Lz1/d;

    if-ne v0, v1, :cond_3

    return v3

    :cond_3
    sget-object v1, Lv3/d1;->a:Lz1/d;

    if-ne v0, v1, :cond_13

    const/4 v0, 0x0

    move-object v1, v0

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lv3/c1;->I()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lv3/c1$c;

    if-eqz v5, :cond_b

    monitor-enter v4

    :try_start_0
    move-object v5, v4

    check-cast v5, Lv3/c1$c;

    sget-object v6, Lv3/c1$c;->y:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lv3/d1;->e:Lz1/d;

    if-ne v5, v6, :cond_5

    sget-object p1, Lv3/d1;->d:Lz1/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    :goto_3
    move-object v0, p1

    goto/16 :goto_6

    :cond_5
    :try_start_1
    move-object v5, v4

    check-cast v5, Lv3/c1$c;

    invoke-virtual {v5}, Lv3/c1$c;->e()Z

    move-result v5

    if-nez p1, :cond_6

    if-nez v5, :cond_8

    :cond_6
    if-nez v1, :cond_7

    invoke-virtual {p0, p1}, Lv3/c1;->D(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_7
    :goto_4
    move-object p1, v4

    check-cast p1, Lv3/c1$c;

    invoke-virtual {p1, v1}, Lv3/c1$c;->b(Ljava/lang/Throwable;)V

    :cond_8
    move-object p1, v4

    check-cast p1, Lv3/c1$c;

    invoke-virtual {p1}, Lv3/c1$c;->d()Ljava/lang/Throwable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/lit8 v1, v5, 0x1

    if-eqz v1, :cond_9

    move-object v0, p1

    :cond_9
    monitor-exit v4

    if-eqz v0, :cond_a

    check-cast v4, Lv3/c1$c;

    iget-object p1, v4, Lv3/c1$c;->c:Lv3/f1;

    invoke-virtual {p0, p1, v0}, Lv3/c1;->P(Lv3/f1;Ljava/lang/Throwable;)V

    :cond_a
    sget-object p1, Lv3/d1;->a:Lz1/d;

    goto :goto_3

    :goto_5
    monitor-exit v4

    throw p0

    :cond_b
    instance-of v5, v4, Lv3/u0;

    if-eqz v5, :cond_12

    if-nez v1, :cond_c

    invoke-virtual {p0, p1}, Lv3/c1;->D(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_c
    move-object v5, v4

    check-cast v5, Lv3/u0;

    invoke-interface {v5}, Lv3/u0;->a()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual {p0, v5}, Lv3/c1;->H(Lv3/u0;)Lv3/f1;

    move-result-object v6

    if-nez v6, :cond_d

    goto :goto_2

    :cond_d
    new-instance v7, Lv3/c1$c;

    invoke-direct {v7, v6, v1}, Lv3/c1$c;-><init>(Lv3/f1;Ljava/lang/Throwable;)V

    :cond_e
    sget-object v4, Lv3/c1;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, v5, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {p0, v6, v1}, Lv3/c1;->P(Lv3/f1;Ljava/lang/Throwable;)V

    sget-object p1, Lv3/d1;->a:Lz1/d;

    goto :goto_3

    :cond_f
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v5, :cond_e

    goto/16 :goto_2

    :cond_10
    new-instance v5, Lv3/n;

    invoke-direct {v5, v2, v1}, Lv3/n;-><init>(ZLjava/lang/Throwable;)V

    invoke-virtual {p0, v4, v5}, Lv3/c1;->V(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lv3/d1;->a:Lz1/d;

    if-eq v5, v6, :cond_11

    sget-object v4, Lv3/d1;->c:Lz1/d;

    if-eq v5, v4, :cond_4

    move-object v0, v5

    goto :goto_6

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot happen in "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    sget-object p1, Lv3/d1;->d:Lz1/d;

    goto/16 :goto_3

    :cond_13
    :goto_6
    sget-object p1, Lv3/d1;->a:Lz1/d;

    if-ne v0, p1, :cond_14

    :goto_7
    move v2, v3

    goto :goto_8

    :cond_14
    sget-object p1, Lv3/d1;->b:Lz1/d;

    if-ne v0, p1, :cond_15

    goto :goto_7

    :cond_15
    sget-object p1, Lv3/d1;->d:Lz1/d;

    if-ne v0, p1, :cond_16

    goto :goto_8

    :cond_16
    invoke-virtual {p0, v0}, Lv3/c1;->k(Ljava/lang/Object;)V

    goto :goto_7

    :goto_8
    return v2
.end method

.method public final o(Ljava/lang/Throwable;)Z
    .locals 3

    invoke-virtual {p0}, Lv3/c1;->M()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    sget-object v2, Lv3/c1;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv3/j;

    if-eqz p0, :cond_4

    sget-object v2, Lv3/g1;->c:Lv3/g1;

    if-ne p0, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0, p1}, Lv3/j;->b(Ljava/lang/Throwable;)Z

    move-result p0

    if-nez p0, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return v0
.end method

.method public final q(Lh3/f;)Lh3/f;
    .locals 0

    invoke-static {p0, p1}, Lh3/f$b$a;->c(Lh3/f$b;Lh3/f;)Lh3/f;

    move-result-object p0

    return-object p0
.end method

.method public final r(Ljava/lang/Object;Ln3/p;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Ln3/p<",
            "-TR;-",
            "Lh3/f$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    invoke-interface {p2, p1, p0}, Ln3/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final s(Lh3/f$c;)Lh3/f$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lh3/f$b;",
            ">(",
            "Lh3/f$c<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Lh3/f$b$a;->a(Lh3/f$b;Lh3/f$c;)Lh3/f$b;

    move-result-object p0

    return-object p0
.end method

.method public final start()Z
    .locals 2

    :goto_0
    invoke-virtual {p0}, Lv3/c1;->I()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lv3/c1;->T(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lv3/c1;->N()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lv3/c1;->I()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lv3/c1;->U(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lv3/c0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u()Ljava/lang/String;
    .locals 0

    const-string p0, "Job was cancelled"

    return-object p0
.end method

.method public final v()Ljava/util/concurrent/CancellationException;
    .locals 4

    invoke-virtual {p0}, Lv3/c1;->I()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lv3/c1$c;

    const/4 v2, 0x0

    const-string v3, "Job is still new or active: "

    if-eqz v1, :cond_3

    check-cast v0, Lv3/c1$c;

    invoke-virtual {v0}, Lv3/c1$c;->d()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, " is cancelling"

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v3, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_0
    if-nez v2, :cond_6

    new-instance v2, Lv3/y0;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lv3/c1;->u()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-direct {v2, v1, v0, p0}, Lv3/y0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lv3/x0;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    instance-of v1, v0, Lv3/u0;

    if-nez v1, :cond_7

    instance-of v1, v0, Lv3/n;

    if-eqz v1, :cond_5

    check-cast v0, Lv3/n;

    iget-object v0, v0, Lv3/n;->a:Ljava/lang/Throwable;

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v1, :cond_4

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_4
    if-nez v2, :cond_6

    new-instance v1, Lv3/y0;

    invoke-virtual {p0}, Lv3/c1;->u()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0}, Lv3/y0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lv3/x0;)V

    move-object v2, v1

    goto :goto_0

    :cond_5
    new-instance v0, Lv3/y0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, " has completed normally"

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, p0}, Lv3/y0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lv3/x0;)V

    move-object v2, v0

    :cond_6
    :goto_0
    return-object v2

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final w()Ljava/util/concurrent/CancellationException;
    .locals 4

    invoke-virtual {p0}, Lv3/c1;->I()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lv3/c1$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lv3/c1$c;

    invoke-virtual {v1}, Lv3/c1$c;->d()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lv3/n;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lv3/n;

    iget-object v1, v1, Lv3/n;->a:Ljava/lang/Throwable;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lv3/u0;

    if-nez v1, :cond_4

    move-object v1, v2

    :goto_0
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    if-eqz v3, :cond_2

    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_2
    if-nez v2, :cond_3

    new-instance v2, Lv3/y0;

    invoke-static {v0}, Lv3/c1;->U(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Parent job is "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1, p0}, Lv3/y0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lv3/x0;)V

    :cond_3
    return-object v2

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot be cancelling child in this state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final y(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lv3/y0;

    invoke-virtual {p0}, Lv3/c1;->u()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lv3/y0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lv3/x0;)V

    :cond_0
    invoke-virtual {p0, p1}, Lv3/c1;->m(Ljava/lang/Object;)Z

    return-void
.end method
