.class public final Li8/j;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lx7/f;
.implements Lz7/a;


# instance fields
.field public final b:Lx7/f;

.field public final c:Lb8/c;

.field public d:Lz7/a;


# direct methods
.method public constructor <init>(Lx7/f;Lb8/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li8/j;->b:Lx7/f;

    .line 5
    .line 6
    iput-object p2, p0, Li8/j;->c:Lb8/c;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Li8/j;->b:Lx7/f;

    .line 2
    .line 3
    invoke-interface {v0}, Lx7/f;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Lz7/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li8/j;->d:Lz7/a;

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
    iput-object p1, p0, Li8/j;->d:Lz7/a;

    .line 10
    .line 11
    iget-object p1, p0, Li8/j;->b:Lx7/f;

    .line 12
    .line 13
    invoke-interface {p1, p0}, Lx7/f;->b(Lz7/a;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Li8/j;->c:Lb8/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lb8/c;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "The mapper returned a null MaybeSource"

    .line 8
    .line 9
    invoke-static {p1, v0}, Ld8/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast p1, Lx7/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lz7/a;

    .line 19
    .line 20
    invoke-static {v0}, Lc8/a;->b(Lz7/a;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    new-instance v0, Lr5/c;

    .line 27
    .line 28
    const/16 v1, 0x14

    .line 29
    .line 30
    invoke-direct {v0, v1, p0}, Lr5/c;-><init>(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lx7/e;->c(Lx7/f;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void

    .line 37
    :catch_0
    move-exception p1

    .line 38
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Li8/j;->b:Lx7/f;

    .line 42
    .line 43
    invoke-interface {v0, p1}, Lx7/f;->onError(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final dispose()V
    .locals 1

    .line 1
    invoke-static {p0}, Lc8/a;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Li8/j;->d:Lz7/a;

    .line 5
    .line 6
    invoke-interface {v0}, Lz7/a;->dispose()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li8/j;->b:Lx7/f;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lx7/f;->onError(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
