.class public final Lx8/p;
.super Lx8/g;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lx8/q;


# virtual methods
.method public final J(ZLjava/lang/Throwable;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lx8/g;->e:Lx8/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, p2}, Lx8/b;->h(ZLjava/lang/Throwable;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_10

    .line 9
    .line 10
    if-nez p1, :cond_10

    .line 11
    .line 12
    iget-object p1, p0, Lv8/a;->d:Lkotlin/coroutines/CoroutineContext;

    .line 13
    .line 14
    invoke-static {p2, p1}, Lv8/w;->a(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V

    .line 15
    .line 16
    .line 17
    :cond_10
    return-void
.end method

.method public final K(Ljava/lang/Object;)V
    .registers 4

    .line 1
    check-cast p1, Lkotlin/Unit;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x0

    .line 5
    iget-object v1, p0, Lx8/g;->e:Lx8/b;

    .line 6
    .line 7
    invoke-virtual {v1, v0, p1}, Lx8/b;->h(ZLjava/lang/Throwable;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method
