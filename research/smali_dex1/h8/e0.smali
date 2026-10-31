.class public final Lh8/e0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lx7/h;
.implements Ln9/b;


# instance fields
.field public final b:Lx7/d;

.field public c:Lz7/a;


# direct methods
.method public constructor <init>(Lx7/d;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh8/e0;->b:Lx7/d;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lh8/e0;->b:Lx7/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lx7/d;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Lz7/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lh8/e0;->c:Lz7/a;

    .line 2
    .line 3
    iget-object p1, p0, Lh8/e0;->b:Lx7/d;

    .line 4
    .line 5
    invoke-interface {p1, p0}, Lx7/d;->f(Ln9/b;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final cancel()V
    .registers 2

    .line 1
    iget-object v0, p0, Lh8/e0;->c:Lz7/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lz7/a;->dispose()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d(J)V
    .registers 3

    .line 1
    return-void
.end method

.method public final e(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lh8/e0;->b:Lx7/d;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lx7/d;->e(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lh8/e0;->b:Lx7/d;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
