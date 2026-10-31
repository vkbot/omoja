.class public final Lh8/p;
.super Lo8/c;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lx7/d;


# instance fields
.field public d:Ln9/b;

.field public e:J

.field public f:Z


# virtual methods
.method public final a()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lh8/p;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_c

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lh8/p;->f:Z

    .line 7
    .line 8
    iget-object v0, p0, Lo8/c;->b:Lx7/d;

    .line 9
    .line 10
    invoke-interface {v0}, Lx7/d;->a()V

    .line 11
    .line 12
    .line 13
    :cond_c
    return-void
.end method

.method public final cancel()V
    .registers 2

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
    iget-object v0, p0, Lh8/p;->d:Ln9/b;

    .line 9
    .line 10
    invoke-interface {v0}, Ln9/b;->cancel()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final e(Ljava/lang/Object;)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lh8/p;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    iget-wide v0, p0, Lh8/p;->e:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v2, v0, v2

    .line 11
    .line 12
    if-nez v2, :cond_19

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lh8/p;->f:Z

    .line 16
    .line 17
    iget-object v0, p0, Lh8/p;->d:Ln9/b;

    .line 18
    .line 19
    invoke-interface {v0}, Ln9/b;->cancel()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lo8/c;->i(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_19
    const-wide/16 v2, 0x1

    .line 27
    .line 28
    add-long/2addr v0, v2

    .line 29
    iput-wide v0, p0, Lh8/p;->e:J

    .line 30
    .line 31
    return-void
.end method

.method public final f(Ln9/b;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lh8/p;->d:Ln9/b;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lo8/f;->e(Ln9/b;Ln9/b;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_17

    .line 8
    .line 9
    iput-object p1, p0, Lh8/p;->d:Ln9/b;

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
    :cond_17
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lh8/p;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    invoke-static {p1}, La/a;->s(Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_8
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lh8/p;->f:Z

    .line 11
    .line 12
    iget-object v0, p0, Lo8/c;->b:Lx7/d;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
