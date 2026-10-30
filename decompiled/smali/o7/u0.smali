.class public abstract Lo7/u0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lo7/c0;


# virtual methods
.method public a(Ln7/f1;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo7/u0;->e()Lo7/c0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lo7/n2;->a(Ln7/f1;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b(Lo7/m2;)Ljava/lang/Runnable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo7/u0;->e()Lo7/c0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lo7/n2;->b(Lo7/m2;)Ljava/lang/Runnable;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final c()Ln7/a0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo7/u0;->e()Lo7/c0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ln7/z;->c()Ln7/a0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public abstract e()Lo7/c0;
.end method

.method public final getAttributes()Ln7/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo7/u0;->e()Lo7/c0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lo7/c0;->getAttributes()Ln7/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/bumptech/glide/c;->t(Ljava/lang/Object;)Lcom/bumptech/glide/manager/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "delegate"

    .line 6
    .line 7
    invoke-virtual {p0}, Lo7/u0;->e()Lo7/c0;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/bumptech/glide/manager/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/s;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method
