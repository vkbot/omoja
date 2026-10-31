.class public final Li8/p;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lx7/f;
.implements Lz7/a;
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:Lx7/f;

.field public final c:Lx7/k;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lx7/f;Lx7/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li8/p;->b:Lx7/f;

    .line 5
    .line 6
    iput-object p2, p0, Li8/p;->c:Lx7/k;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Li8/p;->c:Lx7/k;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lx7/k;->b(Li8/p;)Lz7/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p0, v0}, Lc8/a;->c(Ljava/util/concurrent/atomic/AtomicReference;Lz7/a;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final b(Lz7/a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lc8/a;->d(Ljava/util/concurrent/atomic/AtomicReference;Lz7/a;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Li8/p;->b:Lx7/f;

    .line 8
    .line 9
    invoke-interface {p1, p0}, Lx7/f;->b(Lz7/a;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li8/p;->d:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object p1, p0, Li8/p;->c:Lx7/k;

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Lx7/k;->b(Li8/p;)Lz7/a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p0, p1}, Lc8/a;->c(Ljava/util/concurrent/atomic/AtomicReference;Lz7/a;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final dispose()V
    .locals 0

    .line 1
    invoke-static {p0}, Lc8/a;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li8/p;->e:Ljava/lang/Throwable;

    .line 2
    .line 3
    iget-object p1, p0, Li8/p;->c:Lx7/k;

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Lx7/k;->b(Li8/p;)Lz7/a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p0, p1}, Lc8/a;->c(Ljava/util/concurrent/atomic/AtomicReference;Lz7/a;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Li8/p;->e:Ljava/lang/Throwable;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Li8/p;->b:Lx7/f;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput-object v1, p0, Li8/p;->e:Ljava/lang/Throwable;

    .line 9
    .line 10
    invoke-interface {v2, v0}, Lx7/f;->onError(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Li8/p;->d:Ljava/lang/Object;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iput-object v1, p0, Li8/p;->d:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-interface {v2, v0}, Lx7/f;->c(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-interface {v2}, Lx7/f;->a()V

    .line 25
    .line 26
    .line 27
    return-void
.end method
