.class public final Li8/q;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lx7/f;
.implements Lz7/a;


# instance fields
.field public final b:Lx7/f;

.field public final c:Ld8/a;

.field public final d:Z


# direct methods
.method public constructor <init>(Lx7/f;Ld8/a;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li8/q;->b:Lx7/f;

    .line 5
    .line 6
    iput-object p2, p0, Li8/q;->c:Ld8/a;

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Li8/q;->d:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 1
    iget-object v0, p0, Li8/q;->b:Lx7/f;

    .line 2
    .line 3
    invoke-interface {v0}, Lx7/f;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Lz7/a;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lc8/a;->d(Ljava/util/concurrent/atomic/AtomicReference;Lz7/a;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_b

    .line 6
    .line 7
    iget-object p1, p0, Li8/q;->b:Lx7/f;

    .line 8
    .line 9
    invoke-interface {p1, p0}, Lx7/f;->b(Lz7/a;)V

    .line 10
    .line 11
    .line 12
    :cond_b
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Li8/q;->b:Lx7/f;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lx7/f;->c(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final dispose()V
    .registers 1

    .line 1
    invoke-static {p0}, Lc8/a;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Li8/q;->d:Z

    .line 2
    .line 3
    iget-object v1, p0, Li8/q;->b:Lx7/f;

    .line 4
    .line 5
    if-nez v0, :cond_e

    .line 6
    .line 7
    instance-of v0, p1, Ljava/lang/Exception;

    .line 8
    .line 9
    if-nez v0, :cond_e

    .line 10
    .line 11
    invoke-interface {v1, p1}, Lx7/f;->onError(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_e
    :try_start_e
    iget-object v0, p0, Li8/q;->c:Ld8/a;

    .line 16
    .line 17
    iget-object v0, v0, Ld8/a;->c:Ljava/lang/Object;

    .line 18
    .line 19
    const-string v2, "The resumeFunction returned a null MaybeSource"

    .line 20
    .line 21
    invoke-static {v0, v2}, Ld8/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    check-cast v0, Lx7/e;
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_29

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    invoke-static {p0, p1}, Lc8/a;->c(Ljava/util/concurrent/atomic/AtomicReference;Lz7/a;)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Landroid/support/v4/media/h;

    .line 31
    .line 32
    const/16 v2, 0x10

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-direct {p1, v1, p0, v3, v2}, Landroid/support/v4/media/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lx7/e;->c(Lx7/f;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_29
    move-exception v0

    .line 43
    invoke-static {v0}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    new-instance v2, La8/c;

    .line 47
    .line 48
    filled-new-array {p1, v0}, [Ljava/lang/Throwable;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {v2, p1}, La8/c;-><init>([Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v1, v2}, Lx7/f;->onError(Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
