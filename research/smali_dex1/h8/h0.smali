.class public abstract Lh8/h0;
.super Lo8/a;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lx7/d;
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:Lx7/j;

.field public final c:I

.field public final d:I

.field public final e:Ljava/util/concurrent/atomic/AtomicLong;

.field public f:Ln9/b;

.field public g:Le8/g;

.field public volatile h:Z

.field public volatile i:Z

.field public j:Ljava/lang/Throwable;

.field public k:I

.field public l:J

.field public m:Z


# direct methods
.method public constructor <init>(Lx7/j;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh8/h0;->b:Lx7/j;

    .line 5
    .line 6
    iput p2, p0, Lh8/h0;->c:I

    .line 7
    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lh8/h0;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 14
    .line 15
    shr-int/lit8 p1, p2, 0x2

    .line 16
    .line 17
    sub-int/2addr p2, p1

    .line 18
    iput p2, p0, Lh8/h0;->d:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lh8/h0;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_a

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lh8/h0;->i:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lh8/h0;->m()V

    .line 9
    .line 10
    .line 11
    :cond_a
    return-void
.end method

.method public final cancel()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lh8/h0;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    goto :goto_1d

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lh8/h0;->h:Z

    .line 8
    .line 9
    iget-object v0, p0, Lh8/h0;->f:Ln9/b;

    .line 10
    .line 11
    invoke-interface {v0}, Ln9/b;->cancel()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lh8/h0;->b:Lx7/j;

    .line 15
    .line 16
    invoke-interface {v0}, Lz7/a;->dispose()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1d

    .line 24
    .line 25
    iget-object v0, p0, Lh8/h0;->g:Le8/g;

    .line 26
    .line 27
    invoke-interface {v0}, Le8/g;->clear()V

    .line 28
    .line 29
    .line 30
    :cond_1d
    :goto_1d
    return-void
.end method

.method public final clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Lh8/h0;->g:Le8/g;

    .line 2
    .line 3
    invoke-interface {v0}, Le8/g;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d(J)V
    .registers 4

    .line 1
    invoke-static {p1, p2}, Lo8/f;->c(J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_e

    .line 6
    .line 7
    iget-object v0, p0, Lh8/h0;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    .line 9
    invoke-static {v0, p1, p2}, Le3/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lh8/h0;->m()V

    .line 13
    .line 14
    .line 15
    :cond_e
    return-void
.end method

.method public final e(Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lh8/h0;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    iget v0, p0, Lh8/h0;->k:I

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-ne v0, v1, :cond_e

    .line 10
    .line 11
    invoke-virtual {p0}, Lh8/h0;->m()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_e
    iget-object v0, p0, Lh8/h0;->g:Le8/g;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Le8/g;->offer(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_27

    .line 22
    .line 23
    iget-object p1, p0, Lh8/h0;->f:Ln9/b;

    .line 24
    .line 25
    invoke-interface {p1}, Ln9/b;->cancel()V

    .line 26
    .line 27
    .line 28
    new-instance p1, La8/d;

    .line 29
    .line 30
    const-string v0, "Queue is full?!"

    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lh8/h0;->j:Ljava/lang/Throwable;

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lh8/h0;->i:Z

    .line 39
    .line 40
    :cond_27
    invoke-virtual {p0}, Lh8/h0;->m()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final h(I)I
    .registers 2

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lh8/h0;->m:Z

    .line 3
    .line 4
    const/4 p1, 0x2

    .line 5
    return p1
.end method

.method public final i(ZZLx7/d;)Z
    .registers 6

    .line 1
    iget-boolean v0, p0, Lh8/h0;->h:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_9

    .line 5
    .line 6
    invoke-virtual {p0}, Lh8/h0;->clear()V

    .line 7
    .line 8
    .line 9
    return v1

    .line 10
    :cond_9
    if-eqz p1, :cond_26

    .line 11
    .line 12
    iget-object p1, p0, Lh8/h0;->j:Ljava/lang/Throwable;

    .line 13
    .line 14
    if-eqz p1, :cond_1b

    .line 15
    .line 16
    invoke-virtual {p0}, Lh8/h0;->clear()V

    .line 17
    .line 18
    .line 19
    invoke-interface {p3, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lh8/h0;->b:Lx7/j;

    .line 23
    .line 24
    invoke-interface {p1}, Lz7/a;->dispose()V

    .line 25
    .line 26
    .line 27
    return v1

    .line 28
    :cond_1b
    if-eqz p2, :cond_26

    .line 29
    .line 30
    invoke-interface {p3}, Lx7/d;->a()V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lh8/h0;->b:Lx7/j;

    .line 34
    .line 35
    invoke-interface {p1}, Lz7/a;->dispose()V

    .line 36
    .line 37
    .line 38
    return v1

    .line 39
    :cond_26
    const/4 p1, 0x0

    .line 40
    return p1
.end method

.method public final isEmpty()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lh8/h0;->g:Le8/g;

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

.method public abstract j()V
.end method

.method public abstract k()V
.end method

.method public abstract l()V
.end method

.method public final m()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v0, p0, Lh8/h0;->b:Lx7/j;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lx7/j;->b(Lh8/h0;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lh8/h0;->i:Z

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
    iput-object p1, p0, Lh8/h0;->j:Ljava/lang/Throwable;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lh8/h0;->i:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Lh8/h0;->m()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final run()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lh8/h0;->m:Z

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    invoke-virtual {p0}, Lh8/h0;->k()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_8
    iget v0, p0, Lh8/h0;->k:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_11

    .line 13
    .line 14
    invoke-virtual {p0}, Lh8/h0;->l()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_11
    invoke-virtual {p0}, Lh8/h0;->j()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
