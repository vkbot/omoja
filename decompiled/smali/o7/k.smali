.class public final Lo7/k;
.super Lo7/u0;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Lo7/c0;

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile c:Ln7/f1;


# direct methods
.method public constructor <init>(Lo7/l;Lo7/c0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    const p3, -0x7fffffff

    .line 7
    .line 8
    .line 9
    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lo7/k;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    .line 14
    new-instance p1, Lo7/u2;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Lo7/u2;-><init>(Lo7/k;)V

    .line 17
    .line 18
    .line 19
    const-string p1, "delegate"

    .line 20
    .line 21
    invoke-static {p2, p1}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Lo7/k;->a:Lo7/c0;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final a(Ln7/f1;)V
    .locals 2

    .line 1
    const-string v0, "status"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lo7/k;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-gez v0, :cond_1

    .line 14
    .line 15
    iput-object p1, p0, Lo7/k;->c:Ln7/f1;

    .line 16
    .line 17
    iget-object v0, p0, Lo7/k;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    .line 19
    const v1, 0x7fffffff

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lo7/k;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-super {p0, p1}, Lo7/u0;->a(Ln7/f1;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    :try_start_1
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    throw p1
.end method

.method public final d(Ln7/x0;Ln7/v0;Ln7/c;[Ln7/e;)Lo7/u;
    .locals 1

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lo7/k;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    new-instance p1, Lo7/s0;

    .line 13
    .line 14
    iget-object p2, p0, Lo7/k;->c:Ln7/f1;

    .line 15
    .line 16
    sget-object p3, Lo7/v;->b:Lo7/v;

    .line 17
    .line 18
    invoke-direct {p1, p2, p3, p4}, Lo7/s0;-><init>(Ln7/f1;Lo7/v;[Ln7/e;)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    iget-object v0, p0, Lo7/k;->a:Lo7/c0;

    .line 23
    .line 24
    invoke-interface {v0, p1, p2, p3, p4}, Lo7/x;->d(Ln7/x0;Ln7/v0;Ln7/c;[Ln7/e;)Lo7/u;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public final e()Lo7/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lo7/k;->a:Lo7/c0;

    .line 2
    .line 3
    return-object v0
.end method
