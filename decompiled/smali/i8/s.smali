.class public final Li8/s;
.super Lo8/c;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lx7/f;


# instance fields
.field public d:Lz7/a;


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo8/c;->b:Lx7/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lx7/d;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Lz7/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li8/s;->d:Lz7/a;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lc8/a;->e(Lz7/a;Lz7/a;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Li8/s;->d:Lz7/a;

    .line 10
    .line 11
    iget-object p1, p0, Lo8/c;->b:Lx7/d;

    .line 12
    .line 13
    invoke-interface {p1, p0}, Lx7/d;->f(Ln9/b;)V

    .line 14
    .line 15
    .line 16
    :cond_0
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
    iget-object v0, p0, Li8/s;->d:Lz7/a;

    .line 9
    .line 10
    invoke-interface {v0}, Lz7/a;->dispose()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo8/c;->b:Lx7/d;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
