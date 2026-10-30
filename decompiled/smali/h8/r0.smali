.class public final Lh8/r0;
.super Lo8/c;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lx7/d;
.implements Ln9/b;


# instance fields
.field public d:Ln9/b;


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo8/c;->c:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lo8/c;->i(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final cancel()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lo8/c;->c:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v0, p0, Lh8/r0;->d:Ln9/b;

    .line 9
    .line 10
    invoke-interface {v0}, Ln9/b;->cancel()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo8/c;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Collection;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final f(Ln9/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lh8/r0;->d:Ln9/b;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lo8/f;->e(Ln9/b;Ln9/b;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Lh8/r0;->d:Ln9/b;

    .line 10
    .line 11
    iget-object v0, p0, Lo8/c;->b:Lx7/d;

    .line 12
    .line 13
    invoke-interface {v0, p0}, Lx7/d;->f(Ln9/b;)V

    .line 14
    .line 15
    .line 16
    const-wide v0, 0x7fffffffffffffffL

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v0, v1}, Ln9/b;->d(J)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lo8/c;->c:Ljava/lang/Object;

    .line 3
    .line 4
    iget-object v0, p0, Lo8/c;->b:Lx7/d;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
