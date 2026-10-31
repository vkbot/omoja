.class public final Lh8/g0;
.super Ln8/b;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final g:Lb8/c;


# direct methods
.method public constructor <init>(Lx7/d;Lr5/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ln8/b;-><init>(Lx7/d;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lh8/g0;->g:Lb8/c;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln8/b;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Ln8/b;->f:I

    .line 7
    .line 8
    iget-object v1, p0, Ln8/b;->b:Lx7/d;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-interface {v1, p1}, Lx7/d;->e(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    :try_start_0
    iget-object v0, p0, Lh8/g0;->g:Lb8/c;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lb8/c;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "The mapper function returned a null value."

    .line 24
    .line 25
    invoke-static {p1, v0}, Ld8/b;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    invoke-interface {v1, p1}, Lx7/d;->e(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Ln8/b;->c:Ln9/b;

    .line 37
    .line 38
    invoke-interface {v0}, Ln9/b;->cancel()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Ln8/b;->onError(Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ln8/b;->d:Le8/d;

    .line 2
    .line 3
    invoke-interface {v0}, Le8/g;->poll()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lh8/g0;->g:Lb8/c;

    .line 10
    .line 11
    invoke-interface {v1, v0}, Lb8/c;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "The mapper function returned a null value."

    .line 16
    .line 17
    invoke-static {v0, v1}, Ld8/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    return-object v0
.end method
