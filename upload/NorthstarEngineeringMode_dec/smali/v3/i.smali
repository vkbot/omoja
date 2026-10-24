.class public final Lv3/i;
.super Lv3/z0;
.source "SourceFile"


# instance fields
.field public final Z:Lv3/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/g<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv3/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/g<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lv3/z0;-><init>()V

    iput-object p1, p0, Lv3/i;->Z:Lv3/g;

    return-void
.end method


# virtual methods
.method public final bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lv3/i;->j(Ljava/lang/Throwable;)V

    sget-object p0, Lf3/g;->a:Lf3/g;

    return-object p0
.end method

.method public final j(Ljava/lang/Throwable;)V
    .locals 5

    invoke-virtual {p0}, Lv3/b1;->k()Lv3/c1;

    move-result-object p1

    iget-object p0, p0, Lv3/i;->Z:Lv3/g;

    invoke-virtual {p0, p1}, Lv3/g;->l(Lv3/c1;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0}, Lv3/g;->p()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lv3/g;->y:Lh3/d;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    invoke-static {v0, v1}, Lo3/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lx3/g;

    :goto_0
    sget-object v1, Lx3/g;->d1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lx3/a;->c:Lz1/d;

    invoke-static {v2, v3}, Lo3/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    invoke-virtual {v1, v0, v3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_3
    instance-of v3, v2, Ljava/lang/Throwable;

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_1
    invoke-virtual {p0, p1}, Lv3/g;->f(Ljava/lang/Throwable;)Z

    invoke-virtual {p0}, Lv3/g;->p()Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lv3/g;->d1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/l0;

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v0}, Lv3/l0;->dispose()V

    sget-object v0, Lv3/g1;->c:Lv3/g1;

    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v2, :cond_4

    goto :goto_0
.end method
