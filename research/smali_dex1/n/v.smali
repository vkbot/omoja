.class public final Ln/v;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lcom/bumptech/glide/load/data/e;
.implements Lcom/bumptech/glide/load/data/d;


# instance fields
.field public final b:Ljava/util/ArrayList;

.field public final c:Landroidx/core/util/Pools$Pool;

.field public d:I

.field public e:Lcom/bumptech/glide/h;

.field public f:Lcom/bumptech/glide/load/data/d;

.field public g:Ljava/util/List;

.field public h:Z


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroidx/core/util/Pools$Pool;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Ln/v;->c:Landroidx/core/util/Pools$Pool;

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-nez p2, :cond_11

    .line 11
    .line 12
    iput-object p1, p0, Ln/v;->b:Ljava/util/ArrayList;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput p1, p0, Ln/v;->d:I

    .line 16
    .line 17
    return-void

    .line 18
    :cond_11
    const-string p1, "Must not be empty."

    .line 19
    .line 20
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    throw p1
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .registers 3

    .line 1
    iget-object v0, p0, Ln/v;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/bumptech/glide/load/data/e;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->a()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public final b()V
    .registers 5

    .line 1
    iget-object v0, p0, Ln/v;->g:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    iget-object v1, p0, Ln/v;->c:Landroidx/core/util/Pools$Pool;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Ln/v;->g:Ljava/util/List;

    .line 12
    .line 13
    iget-object v0, p0, Ln/v;->b:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_13
    if-ge v2, v1, :cond_21

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    check-cast v3, Lcom/bumptech/glide/load/data/e;

    .line 29
    .line 30
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/e;->b()V

    .line 31
    .line 32
    .line 33
    goto :goto_13

    .line 34
    :cond_21
    return-void
.end method

.method public final c()I
    .registers 3

    .line 1
    iget-object v0, p0, Ln/v;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/bumptech/glide/load/data/e;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->c()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public final cancel()V
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ln/v;->h:Z

    .line 3
    .line 4
    iget-object v0, p0, Ln/v;->b:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_a
    if-ge v2, v1, :cond_18

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    check-cast v3, Lcom/bumptech/glide/load/data/e;

    .line 20
    .line 21
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/e;->cancel()V

    .line 22
    .line 23
    .line 24
    goto :goto_a

    .line 25
    :cond_18
    return-void
.end method

.method public final d(Ljava/lang/Exception;)V
    .registers 4

    .line 1
    iget-object v0, p0, Ln/v;->g:Ljava/util/List;

    .line 2
    .line 3
    const-string v1, "Argument must not be null"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lc0/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ln/v;->g()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final e(Lcom/bumptech/glide/h;Lcom/bumptech/glide/load/data/d;)V
    .registers 4

    .line 1
    iput-object p1, p0, Ln/v;->e:Lcom/bumptech/glide/h;

    .line 2
    .line 3
    iput-object p2, p0, Ln/v;->f:Lcom/bumptech/glide/load/data/d;

    .line 4
    .line 5
    iget-object p2, p0, Ln/v;->c:Landroidx/core/util/Pools$Pool;

    .line 6
    .line 7
    invoke-interface {p2}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Ljava/util/List;

    .line 12
    .line 13
    iput-object p2, p0, Ln/v;->g:Ljava/util/List;

    .line 14
    .line 15
    iget-object p2, p0, Ln/v;->b:Ljava/util/ArrayList;

    .line 16
    .line 17
    iget v0, p0, Ln/v;->d:I

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    check-cast p2, Lcom/bumptech/glide/load/data/e;

    .line 24
    .line 25
    invoke-interface {p2, p1, p0}, Lcom/bumptech/glide/load/data/e;->e(Lcom/bumptech/glide/h;Lcom/bumptech/glide/load/data/d;)V

    .line 26
    .line 27
    .line 28
    iget-boolean p1, p0, Ln/v;->h:Z

    .line 29
    .line 30
    if-eqz p1, :cond_22

    .line 31
    .line 32
    invoke-virtual {p0}, Ln/v;->cancel()V

    .line 33
    .line 34
    .line 35
    :cond_22
    return-void
.end method

.method public final f(Ljava/lang/Object;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_8

    .line 2
    .line 3
    iget-object v0, p0, Ln/v;->f:Lcom/bumptech/glide/load/data/d;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/data/d;->f(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_8
    invoke-virtual {p0}, Ln/v;->g()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final g()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Ln/v;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    iget v0, p0, Ln/v;->d:I

    .line 7
    .line 8
    iget-object v1, p0, Ln/v;->b:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    if-ge v0, v1, :cond_1f

    .line 17
    .line 18
    iget v0, p0, Ln/v;->d:I

    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    iput v0, p0, Ln/v;->d:I

    .line 23
    .line 24
    iget-object v0, p0, Ln/v;->e:Lcom/bumptech/glide/h;

    .line 25
    .line 26
    iget-object v1, p0, Ln/v;->f:Lcom/bumptech/glide/load/data/d;

    .line 27
    .line 28
    invoke-virtual {p0, v0, v1}, Ln/v;->e(Lcom/bumptech/glide/h;Lcom/bumptech/glide/load/data/d;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1f
    iget-object v0, p0, Ln/v;->g:Ljava/util/List;

    .line 33
    .line 34
    invoke-static {v0}, Lc0/g;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Ln/v;->f:Lcom/bumptech/glide/load/data/d;

    .line 38
    .line 39
    new-instance v1, Lj/z;

    .line 40
    .line 41
    new-instance v2, Ljava/util/ArrayList;

    .line 42
    .line 43
    iget-object v3, p0, Ln/v;->g:Ljava/util/List;

    .line 44
    .line 45
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 46
    .line 47
    .line 48
    const-string v3, "Fetch failed"

    .line 49
    .line 50
    invoke-direct {v1, v3, v2}, Lj/z;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/data/d;->d(Ljava/lang/Exception;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
