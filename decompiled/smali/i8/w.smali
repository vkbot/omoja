.class public final Li8/w;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lx7/f;


# instance fields
.field public final b:Li8/v;

.field public final c:I


# direct methods
.method public constructor <init>(Li8/v;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li8/w;->b:Li8/v;

    .line 5
    .line 6
    iput p2, p0, Li8/w;->c:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Li8/w;->b:Li8/v;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    iget v0, p0, Li8/w;->c:I

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Li8/v;->a(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, v1, Li8/v;->b:Lx7/f;

    .line 16
    .line 17
    invoke-interface {v0}, Lx7/f;->a()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final b(Lz7/a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lc8/a;->d(Ljava/util/concurrent/atomic/AtomicReference;Lz7/a;)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Li8/w;->b:Li8/v;

    .line 2
    .line 3
    iget-object v1, v0, Li8/v;->b:Lx7/f;

    .line 4
    .line 5
    iget-object v2, v0, Li8/v;->e:[Ljava/lang/Object;

    .line 6
    .line 7
    iget v3, p0, Li8/w;->c:I

    .line 8
    .line 9
    aput-object p1, v2, v3

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    :try_start_0
    iget-object p1, v0, Li8/v;->c:Lp2/e;

    .line 18
    .line 19
    invoke-virtual {p1, v2}, Lp2/e;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-interface {v1, p1}, Lx7/f;->c(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v1, p1}, Lx7/f;->onError(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Li8/w;->b:Li8/v;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    iget v0, p0, Li8/w;->c:I

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Li8/v;->a(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, v1, Li8/v;->b:Lx7/f;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Lx7/f;->onError(Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-static {p1}, La/a;->s(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
