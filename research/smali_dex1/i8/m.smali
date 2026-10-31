.class public final Li8/m;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lx7/f;
.implements Lz7/a;


# instance fields
.field public final b:Lx7/m;

.field public c:Lz7/a;


# direct methods
.method public constructor <init>(Lx7/m;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li8/m;->b:Lx7/m;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    sget-object v0, Lc8/a;->b:Lc8/a;

    .line 2
    .line 3
    iput-object v0, p0, Li8/m;->c:Lz7/a;

    .line 4
    .line 5
    iget-object v0, p0, Li8/m;->b:Lx7/m;

    .line 6
    .line 7
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lx7/m;->c(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final b(Lz7/a;)V
    .registers 3

    .line 1
    iget-object v0, p0, Li8/m;->c:Lz7/a;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lc8/a;->e(Lz7/a;Lz7/a;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_f

    .line 8
    .line 9
    iput-object p1, p0, Li8/m;->c:Lz7/a;

    .line 10
    .line 11
    iget-object p1, p0, Li8/m;->b:Lx7/m;

    .line 12
    .line 13
    invoke-interface {p1, p0}, Lx7/m;->b(Lz7/a;)V

    .line 14
    .line 15
    .line 16
    :cond_f
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .registers 3

    .line 1
    sget-object p1, Lc8/a;->b:Lc8/a;

    .line 2
    .line 3
    iput-object p1, p0, Li8/m;->c:Lz7/a;

    .line 4
    .line 5
    iget-object p1, p0, Li8/m;->b:Lx7/m;

    .line 6
    .line 7
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Lx7/m;->c(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final dispose()V
    .registers 2

    .line 1
    iget-object v0, p0, Li8/m;->c:Lz7/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lz7/a;->dispose()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lc8/a;->b:Lc8/a;

    .line 7
    .line 8
    iput-object v0, p0, Li8/m;->c:Lz7/a;

    .line 9
    .line 10
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    sget-object v0, Lc8/a;->b:Lc8/a;

    .line 2
    .line 3
    iput-object v0, p0, Li8/m;->c:Lz7/a;

    .line 4
    .line 5
    iget-object v0, p0, Li8/m;->b:Lx7/m;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lx7/m;->onError(Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
