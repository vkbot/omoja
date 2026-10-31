.class public final Ln8/c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lx7/d;
.implements Ln9/b;
.implements Lz7/a;


# instance fields
.field public final b:Landroidx/navigation/b;

.field public final c:Lp2/e;

.field public final d:Lw7/c;

.field public final e:Lh8/f0;


# direct methods
.method public constructor <init>(Landroidx/navigation/b;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln8/c;->b:Landroidx/navigation/b;

    .line 5
    .line 6
    sget-object p1, Ld8/b;->e:Lp2/e;

    .line 7
    .line 8
    iput-object p1, p0, Ln8/c;->c:Lp2/e;

    .line 9
    .line 10
    sget-object p1, Ld8/b;->c:Lw7/c;

    .line 11
    .line 12
    iput-object p1, p0, Ln8/c;->d:Lw7/c;

    .line 13
    .line 14
    sget-object p1, Lh8/f0;->b:Lh8/f0;

    .line 15
    .line 16
    iput-object p1, p0, Ln8/c;->e:Lh8/f0;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lo8/f;->b:Lo8/f;

    .line 6
    .line 7
    if-eq v0, v1, :cond_18

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :try_start_b
    iget-object v0, p0, Ln8/c;->d:Lw7/c;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_11

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_11
    move-exception v0

    .line 19
    invoke-static {v0}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, La/a;->s(Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    :cond_18
    return-void
.end method

.method public final cancel()V
    .registers 1

    .line 1
    invoke-static {p0}, Lo8/f;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final d(J)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ln9/b;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Ln9/b;->d(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final dispose()V
    .registers 1

    .line 1
    invoke-static {p0}, Lo8/f;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final e(Ljava/lang/Object;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lo8/f;->b:Lo8/f;

    .line 6
    .line 7
    if-ne v0, v1, :cond_a

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    if-nez v0, :cond_25

    .line 13
    .line 14
    :try_start_d
    iget-object v0, p0, Ln8/c;->b:Landroidx/navigation/b;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    check-cast p1, Lj5/m;
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_15

    .line 20
    .line 21
    return-void

    .line 22
    :catchall_15
    move-exception p1

    .line 23
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ln9/b;

    .line 31
    .line 32
    invoke-interface {v0}, Ln9/b;->cancel()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ln8/c;->onError(Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    :cond_25
    return-void
.end method

.method public final f(Ln9/b;)V
    .registers 3

    .line 1
    invoke-static {p0, p1}, Lo8/f;->b(Ljava/util/concurrent/atomic/AtomicReference;Ln9/b;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_16

    .line 6
    .line 7
    :try_start_6
    iget-object v0, p0, Ln8/c;->e:Lh8/f0;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lh8/f0;->accept(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_c

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_c
    move-exception v0

    .line 14
    invoke-static {v0}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Ln9/b;->cancel()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ln8/c;->onError(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    :cond_16
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lo8/f;->b:Lo8/f;

    .line 6
    .line 7
    if-eq v0, v1, :cond_22

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :try_start_b
    iget-object v0, p0, Ln8/c;->c:Lp2/e;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lp2/e;->accept(Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_11

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_11
    move-exception v0

    .line 19
    invoke-static {v0}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, La8/c;

    .line 23
    .line 24
    filled-new-array {p1, v0}, [Ljava/lang/Throwable;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v1, p1}, La8/c;-><init>([Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, La/a;->s(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_22
    invoke-static {p1}, La/a;->s(Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
