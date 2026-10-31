.class public final Lh8/v;
.super Ln8/b;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Le8/a;


# instance fields
.field public final g:Lb8/d;


# direct methods
.method public constructor <init>(Lx7/d;Lb8/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ln8/b;-><init>(Lx7/d;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lh8/v;->g:Lb8/d;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lh8/v;->g(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Ln8/b;->c:Ln9/b;

    .line 8
    .line 9
    const-wide/16 v0, 0x1

    .line 10
    .line 11
    invoke-interface {p1, v0, v1}, Ln9/b;->d(J)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final g(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Ln8/b;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    iget v0, p0, Ln8/b;->f:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iget-object v2, p0, Ln8/b;->b:Lx7/d;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-interface {v2, p1}, Lx7/d;->e(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return v1

    .line 19
    :cond_1
    :try_start_0
    iget-object v0, p0, Lh8/v;->g:Lb8/d;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Lb8/d;->test(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-interface {v2, p1}, Lx7/d;->e(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_2
    return v0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Ln8/b;->c:Ln9/b;

    .line 36
    .line 37
    invoke-interface {v0}, Ln9/b;->cancel()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Ln8/b;->onError(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    return v1
.end method

.method public final poll()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Ln8/b;->d:Le8/d;

    .line 2
    .line 3
    :cond_0
    :goto_0
    invoke-interface {v0}, Le8/g;->poll()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_1
    iget-object v2, p0, Lh8/v;->g:Lb8/d;

    .line 12
    .line 13
    invoke-interface {v2, v1}, Lb8/d;->test(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_2
    iget v1, p0, Ln8/b;->f:I

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    if-ne v1, v2, :cond_0

    .line 24
    .line 25
    const-wide/16 v1, 0x1

    .line 26
    .line 27
    invoke-interface {v0, v1, v2}, Ln9/b;->d(J)V

    .line 28
    .line 29
    .line 30
    goto :goto_0
.end method
