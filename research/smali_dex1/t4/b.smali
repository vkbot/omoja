.class public interface abstract Lt4/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# virtual methods
.method public abstract a(Lt4/p;)Lt4/n;
.end method

.method public b(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p1}, Lt4/p;->a(Ljava/lang/Class;)Lt4/p;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Lt4/b;->h(Lt4/p;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public c(Ljava/lang/Class;)Lk5/b;
    .registers 2

    .line 1
    invoke-static {p1}, Lt4/p;->a(Ljava/lang/Class;)Lt4/p;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Lt4/b;->g(Lt4/p;)Lk5/b;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public d()Lt4/n;
    .registers 2

    .line 1
    const-class v0, Lf5/b0;

    .line 2
    .line 3
    invoke-static {v0}, Lt4/p;->a(Ljava/lang/Class;)Lt4/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p0, v0}, Lt4/b;->a(Lt4/p;)Lt4/n;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public e(Lt4/p;)Ljava/util/Set;
    .registers 2

    .line 1
    invoke-interface {p0, p1}, Lt4/b;->f(Lt4/p;)Lk5/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Lk5/b;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/util/Set;

    .line 10
    .line 11
    return-object p1
.end method

.method public abstract f(Lt4/p;)Lk5/b;
.end method

.method public abstract g(Lt4/p;)Lk5/b;
.end method

.method public h(Lt4/p;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-interface {p0, p1}, Lt4/b;->g(Lt4/p;)Lk5/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_8

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_8
    invoke-interface {p1}, Lk5/b;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
