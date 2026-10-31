.class public final Ll/f;
.super Lc0/l;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public d:Lj/r;


# virtual methods
.method public final b(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lj/d0;

    .line 2
    .line 3
    if-nez p1, :cond_6

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    return p1

    .line 7
    :cond_6
    invoke-interface {p1}, Lj/d0;->b()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 1
    check-cast p1, Lh/e;

    .line 2
    .line 3
    check-cast p2, Lj/d0;

    .line 4
    .line 5
    iget-object p1, p0, Ll/f;->d:Lj/r;

    .line 6
    .line 7
    if-eqz p1, :cond_10

    .line 8
    .line 9
    if-eqz p2, :cond_10

    .line 10
    .line 11
    iget-object p1, p1, Lj/r;->e:Ld6/d;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p1, p2, v0}, Ld6/d;->b(Lj/d0;Z)V

    .line 15
    .line 16
    .line 17
    :cond_10
    return-void
.end method
