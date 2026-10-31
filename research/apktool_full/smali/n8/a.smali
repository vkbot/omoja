.class public abstract Ln8/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Le8/a;
.implements Le8/d;


# instance fields
.field public final b:Le8/a;

.field public c:Ln9/b;

.field public d:Le8/d;

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>(Le8/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln8/a;->b:Le8/a;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln8/a;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Ln8/a;->e:Z

    .line 8
    .line 9
    iget-object v0, p0, Ln8/a;->b:Le8/a;

    .line 10
    .line 11
    invoke-interface {v0}, Lx7/d;->a()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ln8/a;->c:Ln9/b;

    .line 5
    .line 6
    invoke-interface {v0}, Ln9/b;->cancel()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ln8/a;->onError(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln8/a;->c:Ln9/b;

    .line 2
    .line 3
    invoke-interface {v0}, Ln9/b;->cancel()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln8/a;->d:Le8/d;

    .line 2
    .line 3
    invoke-interface {v0}, Le8/g;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln8/a;->c:Ln9/b;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ln9/b;->d(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f(Ln9/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln8/a;->c:Ln9/b;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lo8/f;->e(Ln9/b;Ln9/b;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iput-object p1, p0, Ln8/a;->c:Ln9/b;

    .line 10
    .line 11
    instance-of v0, p1, Le8/d;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    check-cast p1, Le8/d;

    .line 16
    .line 17
    iput-object p1, p0, Ln8/a;->d:Le8/d;

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Ln8/a;->b:Le8/a;

    .line 20
    .line 21
    invoke-interface {p1, p0}, Lx7/d;->f(Ln9/b;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public h(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Ln8/a;->d:Le8/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    and-int/lit8 v1, p1, 0x4

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p1}, Le8/c;->h(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iput p1, p0, Ln8/a;->f:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :cond_1
    :goto_0
    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln8/a;->d:Le8/d;

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

.method public final offer(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Should not be called!"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln8/a;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, La/a;->s(Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Ln8/a;->e:Z

    .line 11
    .line 12
    iget-object v0, p0, Ln8/a;->b:Le8/a;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
