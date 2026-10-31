.class public final Lh8/r;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lx7/d;
.implements Lz7/a;


# instance fields
.field public final b:Lx7/f;

.field public c:Ln9/b;

.field public d:J

.field public e:Z


# direct methods
.method public constructor <init>(Lx7/f;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh8/r;->b:Lx7/f;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 1
    sget-object v0, Lo8/f;->b:Lo8/f;

    .line 2
    .line 3
    iput-object v0, p0, Lh8/r;->c:Ln9/b;

    .line 4
    .line 5
    iget-boolean v0, p0, Lh8/r;->e:Z

    .line 6
    .line 7
    if-nez v0, :cond_10

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lh8/r;->e:Z

    .line 11
    .line 12
    iget-object v0, p0, Lh8/r;->b:Lx7/f;

    .line 13
    .line 14
    invoke-interface {v0}, Lx7/f;->a()V

    .line 15
    .line 16
    .line 17
    :cond_10
    return-void
.end method

.method public final dispose()V
    .registers 2

    .line 1
    iget-object v0, p0, Lh8/r;->c:Ln9/b;

    .line 2
    .line 3
    invoke-interface {v0}, Ln9/b;->cancel()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lo8/f;->b:Lo8/f;

    .line 7
    .line 8
    iput-object v0, p0, Lh8/r;->c:Ln9/b;

    .line 9
    .line 10
    return-void
.end method

.method public final e(Ljava/lang/Object;)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lh8/r;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    iget-wide v0, p0, Lh8/r;->d:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v2, v0, v2

    .line 11
    .line 12
    if-nez v2, :cond_1f

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lh8/r;->e:Z

    .line 16
    .line 17
    iget-object v0, p0, Lh8/r;->c:Ln9/b;

    .line 18
    .line 19
    invoke-interface {v0}, Ln9/b;->cancel()V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lo8/f;->b:Lo8/f;

    .line 23
    .line 24
    iput-object v0, p0, Lh8/r;->c:Ln9/b;

    .line 25
    .line 26
    iget-object v0, p0, Lh8/r;->b:Lx7/f;

    .line 27
    .line 28
    invoke-interface {v0, p1}, Lx7/f;->c(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1f
    const-wide/16 v2, 0x1

    .line 33
    .line 34
    add-long/2addr v0, v2

    .line 35
    iput-wide v0, p0, Lh8/r;->d:J

    .line 36
    .line 37
    return-void
.end method

.method public final f(Ln9/b;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lh8/r;->c:Ln9/b;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lo8/f;->e(Ln9/b;Ln9/b;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_17

    .line 8
    .line 9
    iput-object p1, p0, Lh8/r;->c:Ln9/b;

    .line 10
    .line 11
    iget-object v0, p0, Lh8/r;->b:Lx7/f;

    .line 12
    .line 13
    invoke-interface {v0, p0}, Lx7/f;->b(Lz7/a;)V

    .line 14
    .line 15
    .line 16
    const-wide v0, 0x7fffffffffffffffL

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v0, v1}, Ln9/b;->d(J)V

    .line 22
    .line 23
    .line 24
    :cond_17
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lh8/r;->e:Z

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
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lh8/r;->e:Z

    .line 11
    .line 12
    sget-object v0, Lo8/f;->b:Lo8/f;

    .line 13
    .line 14
    iput-object v0, p0, Lh8/r;->c:Ln9/b;

    .line 15
    .line 16
    iget-object v0, p0, Lh8/r;->b:Lx7/f;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lx7/f;->onError(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
