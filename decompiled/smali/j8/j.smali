.class public final Lj8/j;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lx7/h;
.implements Le8/b;


# instance fields
.field public final b:Lx7/h;

.field public c:Lz7/a;

.field public d:Le8/b;

.field public e:Z


# direct methods
.method public constructor <init>(Lx7/h;Le0/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj8/j;->b:Lx7/h;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj8/j;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lj8/j;->e:Z

    .line 8
    .line 9
    iget-object v0, p0, Lj8/j;->b:Lx7/h;

    .line 10
    .line 11
    invoke-interface {v0}, Lx7/h;->a()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final b(Lz7/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj8/j;->c:Lz7/a;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lc8/a;->e(Lz7/a;Lz7/a;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iput-object p1, p0, Lj8/j;->c:Lz7/a;

    .line 10
    .line 11
    instance-of v0, p1, Le8/b;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    check-cast p1, Le8/b;

    .line 16
    .line 17
    iput-object p1, p0, Lj8/j;->d:Le8/b;

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lj8/j;->b:Lx7/h;

    .line 20
    .line 21
    invoke-interface {p1, p0}, Lx7/h;->b(Lz7/a;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lj8/j;->d:Le8/b;

    .line 2
    .line 3
    invoke-interface {v0}, Le8/g;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lj8/j;->c:Lz7/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lz7/a;->dispose()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj8/j;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    check-cast p1, Ly5/a;

    .line 7
    .line 8
    invoke-virtual {p1}, Ly5/a;->n()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "The mapper function returned a null value."

    .line 13
    .line 14
    invoke-static {p1, v0}, Ld8/b;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lj8/j;->b:Lx7/h;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lx7/h;->e(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lj8/j;->c:Lz7/a;

    .line 28
    .line 29
    invoke-interface {v0}, Lz7/a;->dispose()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lj8/j;->onError(Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final h(I)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lj8/j;->d:Le8/b;

    .line 2
    .line 3
    invoke-interface {v0}, Le8/g;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Should not be called!"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj8/j;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, La/a;->s(Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lj8/j;->e:Z

    .line 11
    .line 12
    iget-object v0, p0, Lj8/j;->b:Lx7/h;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Lx7/h;->onError(Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lj8/j;->d:Le8/b;

    .line 2
    .line 3
    invoke-interface {v0}, Le8/g;->poll()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast v0, Ly5/a;

    .line 10
    .line 11
    invoke-virtual {v0}, Ly5/a;->n()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "The mapper function returned a null value."

    .line 16
    .line 17
    invoke-static {v0, v1}, Ld8/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    return-object v0
.end method
