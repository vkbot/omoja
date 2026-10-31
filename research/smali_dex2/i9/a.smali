.class public abstract Li9/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Le9/b;


# virtual methods
.method public c(Landroidx/navigation/serialization/RouteDecoder;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Li9/a;->i(Landroidx/navigation/serialization/RouteDecoder;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public abstract d()Ljava/lang/Object;
.end method

.method public abstract e(Ljava/lang/Object;)I
.end method

.method public abstract f(ILjava/lang/Object;)V
.end method

.method public abstract g(Ljava/lang/Object;)Ljava/util/Iterator;
.end method

.method public abstract h(Ljava/lang/Object;)I
.end method

.method public final i(Landroidx/navigation/serialization/RouteDecoder;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-virtual {p0}, Li9/a;->d()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Li9/a;->e(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-interface {p0}, Le9/h;->a()Lg9/e;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {p1, v2}, Lh9/e;->beginStructure(Lg9/e;)Lh9/c;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Lh9/c;->decodeSequentially()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_25

    .line 22
    .line 23
    invoke-interface {p0}, Le9/h;->a()Lg9/e;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {p1, v2}, Lh9/c;->decodeCollectionSize(Lg9/e;)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {p0, v2, v0}, Li9/a;->f(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1, v0, v1, v2}, Li9/a;->j(Lh9/c;Ljava/lang/Object;II)V

    .line 35
    .line 36
    .line 37
    goto :goto_35

    .line 38
    :cond_25
    :goto_25
    invoke-interface {p0}, Le9/h;->a()Lg9/e;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-interface {p1, v2}, Lh9/c;->decodeElementIndex(Lg9/e;)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/4 v3, -0x1

    .line 47
    if-eq v2, v3, :cond_35

    .line 48
    .line 49
    add-int/2addr v2, v1

    .line 50
    invoke-virtual {p0, p1, v2, v0}, Li9/a;->k(Lh9/c;ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto :goto_25

    .line 54
    :cond_35
    :goto_35
    invoke-interface {p0}, Le9/h;->a()Lg9/e;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-interface {p1, v1}, Lh9/c;->endStructure(Lg9/e;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Li9/a;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    return-object p1
.end method

.method public abstract j(Lh9/c;Ljava/lang/Object;II)V
.end method

.method public abstract k(Lh9/c;ILjava/lang/Object;)V
.end method

.method public abstract l(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract m(Ljava/lang/Object;)Ljava/lang/Object;
.end method
