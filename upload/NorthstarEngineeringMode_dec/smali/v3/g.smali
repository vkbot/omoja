.class public Lv3/g;
.super Lv3/j0;
.source "SourceFile"

# interfaces
.implements Lv3/f;
.implements Lj3/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lv3/j0<",
        "TT;>;",
        "Lv3/f<",
        "TT;>;",
        "Lj3/d;"
    }
.end annotation


# static fields
.field public static final b1:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final c1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final d1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public final Z:Lh3/f;

.field private volatile _decisionAndIndex:I

.field private volatile _parentHandle:Ljava/lang/Object;

.field private volatile _state:Ljava/lang/Object;

.field public final y:Lh3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh3/d<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_decisionAndIndex"

    const-class v1, Lv3/g;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lv3/g;->b1:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "_state"

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lv3/g;->c1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_parentHandle"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lv3/g;->d1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lh3/d;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lv3/j0;-><init>(I)V

    iput-object p1, p0, Lv3/g;->y:Lh3/d;

    invoke-interface {p1}, Lh3/d;->getContext()Lh3/f;

    move-result-object p1

    iput-object p1, p0, Lv3/g;->Z:Lh3/f;

    const p1, 0x1fffffff

    iput p1, p0, Lv3/g;->_decisionAndIndex:I

    sget-object p1, Lv3/b;->c:Lv3/b;

    iput-object p1, p0, Lv3/g;->_state:Ljava/lang/Object;

    return-void
.end method

.method public static q(Lv3/d;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", already has "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V
    .locals 8

    :goto_0
    sget-object p1, Lv3/g;->c1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v0, v6, Lv3/h1;

    if-nez v0, :cond_a

    instance-of v0, v6, Lv3/n;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    instance-of v0, v6, Lv3/m;

    if-eqz v0, :cond_7

    move-object v0, v6

    check-cast v0, Lv3/m;

    iget-object v1, v0, Lv3/m;->e:Ljava/lang/Throwable;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    xor-int/2addr v1, v2

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-static {v0, v1, p2, v2}, Lv3/m;->a(Lv3/m;Lv3/d;Ljava/util/concurrent/CancellationException;I)Lv3/m;

    move-result-object v1

    :cond_2
    invoke-virtual {p1, p0, v6, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object p1, v0, Lv3/m;->b:Lv3/d;

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1, p2}, Lv3/g;->h(Lv3/d;Ljava/lang/Throwable;)V

    :cond_3
    iget-object p1, v0, Lv3/m;->c:Ln3/l;

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1, p2}, Lv3/g;->i(Ln3/l;Ljava/lang/Throwable;)V

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v6, :cond_2

    goto :goto_0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must be called at most once"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance v7, Lv3/m;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v5, 0xe

    move-object v0, v7

    move-object v1, v6

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lv3/m;-><init>(Ljava/lang/Object;Lv3/d;Ln3/l;Ljava/util/concurrent/CancellationException;I)V

    :cond_8
    invoke-virtual {p1, p0, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v6, :cond_8

    goto :goto_0

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not completed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()Lh3/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh3/d<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lv3/g;->y:Lh3/d;

    return-object p0
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 0

    invoke-super {p0, p1}, Lv3/j0;->c(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    instance-of p0, p1, Lv3/m;

    if-eqz p0, :cond_0

    check-cast p1, Lv3/m;

    iget-object p1, p1, Lv3/m;->a:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public final f(Ljava/lang/Throwable;)Z
    .locals 6

    :goto_0
    sget-object v0, Lv3/g;->c1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lv3/h1;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    new-instance v2, Lv3/h;

    instance-of v4, v1, Lv3/d;

    const/4 v5, 0x1

    if-nez v4, :cond_1

    instance-of v4, v1, Lx3/t;

    if-eqz v4, :cond_2

    :cond_1
    move v3, v5

    :cond_2
    invoke-direct {v2, p0, p1, v3}, Lv3/h;-><init>(Lh3/d;Ljava/lang/Throwable;Z)V

    :cond_3
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v0, v1

    check-cast v0, Lv3/h1;

    instance-of v2, v0, Lv3/d;

    if-eqz v2, :cond_4

    check-cast v1, Lv3/d;

    invoke-virtual {p0, v1, p1}, Lv3/g;->h(Lv3/d;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    instance-of v0, v0, Lx3/t;

    if-eqz v0, :cond_5

    check-cast v1, Lx3/t;

    invoke-virtual {p0, v1, p1}, Lv3/g;->j(Lx3/t;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lv3/g;->p()Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Lv3/g;->d1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/l0;

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-interface {v0}, Lv3/l0;->dispose()V

    sget-object v0, Lv3/g1;->c:Lv3/g1;

    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    :goto_2
    iget p1, p0, Lv3/j0;->x:I

    invoke-virtual {p0, p1}, Lv3/g;->k(I)V

    return v5

    :cond_8
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_3

    goto :goto_0
.end method

.method public final g()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lv3/g;->c1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getCallerFrame()Lj3/d;
    .locals 1

    iget-object p0, p0, Lv3/g;->y:Lh3/d;

    instance-of v0, p0, Lj3/d;

    if-eqz v0, :cond_0

    check-cast p0, Lj3/d;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getContext()Lh3/f;
    .locals 0

    iget-object p0, p0, Lv3/g;->Z:Lh3/f;

    return-object p0
.end method

.method public final h(Lv3/d;Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1, p2}, Lv3/e;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, Lf3/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception in invokeOnCancellation handler for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lv3/g;->Z:Lh3/f;

    invoke-static {p0, p2}, Lv3/y;->a(Lh3/f;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final i(Ln3/l;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lf3/g;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1, p2}, Ln3/l;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, Lf3/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception in resume onCancellation handler for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lv3/g;->Z:Lh3/f;

    invoke-static {p0, p2}, Lv3/y;->a(Lh3/f;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final j(Lx3/t;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/t<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    sget-object p2, Lv3/g;->b1:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p2, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p2

    const v0, 0x1fffffff

    and-int/2addr p2, v0

    if-eq p2, v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lx3/t;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, Lf3/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception in invokeOnCancellation handler for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lv3/g;->Z:Lh3/f;

    invoke-static {p0, p2}, Lv3/y;->a(Lh3/f;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The index for Segment.onCancellation(..) is broken"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final k(I)V
    .locals 7

    :cond_0
    sget-object v0, Lv3/g;->b1:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    shr-int/lit8 v2, v1, 0x1d

    if-eqz v2, :cond_8

    const/4 v0, 0x1

    if-ne v2, v0, :cond_7

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lv3/g;->y:Lh3/d;

    if-nez v1, :cond_6

    instance-of v3, v2, Lx3/g;

    if-eqz v3, :cond_6

    invoke-static {p1}, Lv3/r0;->a(I)Z

    move-result p1

    iget v3, p0, Lv3/j0;->x:I

    invoke-static {v3}, Lv3/r0;->a(I)Z

    move-result v3

    if-ne p1, v3, :cond_6

    move-object p1, v2

    check-cast p1, Lx3/g;

    iget-object p1, p1, Lx3/g;->y:Lv3/w;

    invoke-interface {v2}, Lh3/d;->getContext()Lh3/f;

    move-result-object v1

    invoke-virtual {p1}, Lv3/w;->o()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v1, p0}, Lv3/w;->l(Lh3/f;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_2
    invoke-static {}, Lv3/n1;->a()Lv3/o0;

    move-result-object p1

    iget-wide v3, p1, Lv3/o0;->x:J

    const-wide v5, 0x100000000L

    cmp-long v1, v3, v5

    if-ltz v1, :cond_4

    iget-object v0, p1, Lv3/o0;->Z:Lg3/c;

    if-nez v0, :cond_3

    new-instance v0, Lg3/c;

    invoke-direct {v0}, Lg3/c;-><init>()V

    iput-object v0, p1, Lv3/o0;->Z:Lg3/c;

    :cond_3
    invoke-virtual {v0, p0}, Lg3/c;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v0}, Lv3/o0;->D(Z)V

    :try_start_0
    invoke-static {p0, v2, v0}, Lv3/r0;->b(Lv3/j0;Lh3/d;Z)V

    :cond_5
    invoke-virtual {p1}, Lv3/o0;->G()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_5

    :goto_1
    invoke-virtual {p1}, Lv3/o0;->B()V

    goto :goto_2

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v1}, Lv3/j0;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1}, Lv3/o0;->B()V

    throw p0

    :cond_6
    invoke-static {p0, v2, v1}, Lv3/r0;->b(Lv3/j0;Lh3/d;Z)V

    :goto_2
    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already resumed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    const v2, 0x1fffffff

    and-int/2addr v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    add-int/2addr v3, v2

    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public l(Lv3/c1;)Ljava/lang/Throwable;
    .locals 0

    invoke-virtual {p1}, Lv3/c1;->v()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    return-object p0
.end method

.method public final m()Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Lv3/g;->p()Z

    move-result v0

    :cond_0
    sget-object v1, Lv3/g;->b1:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v2

    shr-int/lit8 v3, v2, 0x1d

    if-eqz v3, :cond_6

    const/4 v1, 0x2

    if-ne v3, v1, :cond_5

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lv3/g;->s()V

    :cond_1
    sget-object v0, Lv3/g;->c1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lv3/n;

    if-nez v1, :cond_4

    iget v1, p0, Lv3/j0;->x:I

    invoke-static {v1}, Lv3/r0;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lv3/x0$b;->c:Lv3/x0$b;

    iget-object v2, p0, Lv3/g;->Z:Lh3/f;

    invoke-interface {v2, v1}, Lh3/f;->s(Lh3/f$c;)Lh3/f$b;

    move-result-object v1

    check-cast v1, Lv3/x0;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lv3/x0;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lv3/x0;->v()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lv3/g;->a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V

    throw v1

    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Lv3/g;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    check-cast v0, Lv3/n;

    iget-object p0, v0, Lv3/n;->a:Ljava/lang/Throwable;

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already suspended"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    const v3, 0x1fffffff

    and-int/2addr v3, v2

    const/high16 v4, 0x20000000

    add-int/2addr v4, v3

    invoke-virtual {v1, p0, v2, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lv3/g;->d1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv3/l0;

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lv3/g;->n()Lv3/l0;

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lv3/g;->s()V

    :cond_8
    sget-object p0, Li3/a;->c:Li3/a;

    return-object p0
.end method

.method public final n()Lv3/l0;
    .locals 5

    sget-object v0, Lv3/x0$b;->c:Lv3/x0$b;

    iget-object v1, p0, Lv3/g;->Z:Lh3/f;

    invoke-interface {v1, v0}, Lh3/f;->s(Lh3/f$c;)Lh3/f$b;

    move-result-object v0

    check-cast v0, Lv3/x0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Lv3/i;

    invoke-direct {v2, p0}, Lv3/i;-><init>(Lv3/g;)V

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {v0, v4, v2, v3}, Lv3/x0$a;->a(Lv3/x0;ZLv3/b1;I)Lv3/l0;

    move-result-object v0

    :cond_1
    sget-object v2, Lv3/g;->d1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_0
    return-object v0
.end method

.method public final o(Lv3/m0;)V
    .locals 9

    :goto_0
    sget-object v0, Lv3/g;->c1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v1, v7, Lv3/b;

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {v0, p0, v7, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v7, :cond_0

    goto :goto_0

    :cond_2
    instance-of v1, v7, Lv3/d;

    const/4 v2, 0x0

    if-nez v1, :cond_11

    instance-of v1, v7, Lx3/t;

    if-nez v1, :cond_11

    instance-of v1, v7, Lv3/n;

    if-eqz v1, :cond_6

    move-object v0, v7

    check-cast v0, Lv3/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    sget-object v4, Lv3/n;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5

    instance-of v3, v7, Lv3/h;

    if-eqz v3, :cond_f

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_4

    iget-object v2, v0, Lv3/n;->a:Ljava/lang/Throwable;

    :cond_4
    invoke-virtual {p0, p1, v2}, Lv3/g;->h(Lv3/d;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-static {p1, v7}, Lv3/g;->q(Lv3/d;Ljava/lang/Object;)V

    throw v2

    :cond_6
    instance-of v1, v7, Lv3/m;

    if-eqz v1, :cond_c

    move-object v1, v7

    check-cast v1, Lv3/m;

    iget-object v3, v1, Lv3/m;->b:Lv3/d;

    if-nez v3, :cond_b

    instance-of v3, p1, Lx3/t;

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    iget-object v3, v1, Lv3/m;->e:Ljava/lang/Throwable;

    if-eqz v3, :cond_8

    invoke-virtual {p0, p1, v3}, Lv3/g;->h(Lv3/d;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_8
    const/16 v3, 0x1d

    invoke-static {v1, p1, v2, v3}, Lv3/m;->a(Lv3/m;Lv3/d;Ljava/util/concurrent/CancellationException;I)Lv3/m;

    move-result-object v1

    :cond_9
    invoke-virtual {v0, p0, v7, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v7, :cond_9

    goto :goto_0

    :cond_b
    invoke-static {p1, v7}, Lv3/g;->q(Lv3/d;Ljava/lang/Object;)V

    throw v2

    :cond_c
    instance-of v1, p1, Lx3/t;

    if-eqz v1, :cond_d

    goto :goto_2

    :cond_d
    new-instance v8, Lv3/m;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    move-object v1, v8

    move-object v2, v7

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lv3/m;-><init>(Ljava/lang/Object;Lv3/d;Ln3/l;Ljava/util/concurrent/CancellationException;I)V

    :cond_e
    invoke-virtual {v0, p0, v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    :goto_2
    return-void

    :cond_10
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v7, :cond_e

    goto/16 :goto_0

    :cond_11
    invoke-static {p1, v7}, Lv3/g;->q(Lv3/d;Ljava/lang/Object;)V

    throw v2
.end method

.method public final p()Z
    .locals 2

    iget v0, p0, Lv3/j0;->x:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    iget-object p0, p0, Lv3/g;->y:Lh3/d;

    invoke-static {p0, v0}, Lo3/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lx3/g;

    sget-object v0, Lx3/g;->d1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    const-string p0, "CancellableContinuation"

    return-object p0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 12

    invoke-static {p1}, Lf3/c;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lv3/n;

    invoke-direct {p1, v1, v0}, Lv3/n;-><init>(ZLjava/lang/Throwable;)V

    :goto_0
    iget v0, p0, Lv3/j0;->x:I

    const/4 v8, 0x0

    :goto_1
    sget-object v9, Lv3/g;->c1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v9, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    instance-of v2, v10, Lv3/h1;

    if-eqz v2, :cond_9

    move-object v2, v10

    check-cast v2, Lv3/h1;

    instance-of v3, p1, Lv3/n;

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v0}, Lv3/r0;->a(I)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    instance-of v3, v2, Lv3/d;

    if-nez v3, :cond_3

    :goto_2
    move-object v11, p1

    goto :goto_5

    :cond_3
    new-instance v11, Lv3/m;

    if-eqz v3, :cond_4

    check-cast v2, Lv3/d;

    :goto_3
    move-object v4, v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    :goto_4
    const/4 v6, 0x0

    const/16 v7, 0x10

    move-object v2, v11

    move-object v3, p1

    move-object v5, v8

    invoke-direct/range {v2 .. v7}, Lv3/m;-><init>(Ljava/lang/Object;Lv3/d;Ln3/l;Ljava/util/concurrent/CancellationException;I)V

    :cond_5
    :goto_5
    invoke-virtual {v9, p0, v10, v11}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lv3/g;->p()Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Lv3/g;->d1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv3/l0;

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    invoke-interface {v1}, Lv3/l0;->dispose()V

    sget-object v1, Lv3/g1;->c:Lv3/g1;

    invoke-virtual {p1, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    :goto_6
    invoke-virtual {p0, v0}, Lv3/g;->k(I)V

    goto :goto_7

    :cond_8
    invoke-virtual {v9, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v10, :cond_5

    goto :goto_1

    :cond_9
    instance-of p0, v10, Lv3/h;

    if-eqz p0, :cond_a

    check-cast v10, Lv3/h;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lv3/h;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v0, 0x1

    invoke-virtual {p0, v10, v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p0

    if-eqz p0, :cond_a

    :goto_7
    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Already resumed, but proposed with update "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final s()V
    .locals 5

    iget-object v0, p0, Lv3/g;->y:Lh3/d;

    instance-of v1, v0, Lx3/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lx3/g;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_9

    :goto_1
    sget-object v1, Lx3/g;->d1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lx3/a;->c:Lz1/d;

    if-ne v3, v4, :cond_3

    :cond_1
    invoke-virtual {v1, v0, v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_3
    instance-of v4, v3, Ljava/lang/Throwable;

    if-eqz v4, :cond_8

    :goto_2
    invoke-virtual {v1, v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v2, v3

    check-cast v2, Ljava/lang/Throwable;

    :goto_3
    if-nez v2, :cond_4

    goto :goto_5

    :cond_4
    sget-object v0, Lv3/g;->d1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv3/l0;

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-interface {v1}, Lv3/l0;->dispose()V

    sget-object v1, Lv3/g1;->c:Lv3/g1;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_4
    invoke-virtual {p0, v2}, Lv3/g;->f(Ljava/lang/Throwable;)Z

    return-void

    :cond_6
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_7

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inconsistent state "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_5
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lv3/g;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lv3/g;->y:Lh3/d;

    invoke-static {v1}, Lv3/c0;->d(Lh3/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lv3/g;->c1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lv3/h1;

    if-eqz v2, :cond_0

    const-string v1, "Active"

    goto :goto_0

    :cond_0
    instance-of v1, v1, Lv3/h;

    if-eqz v1, :cond_1

    const-string v1, "Cancelled"

    goto :goto_0

    :cond_1
    const-string v1, "Completed"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lv3/c0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
