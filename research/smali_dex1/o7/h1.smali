.class public final Lo7/h1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public a:Ljava/util/List;

.field public b:I

.field public c:I


# virtual methods
.method public a()Ljava/net/SocketAddress;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lo7/h1;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1b

    .line 6
    .line 7
    iget-object v0, p0, Lo7/h1;->a:Ljava/util/List;

    .line 8
    .line 9
    iget v1, p0, Lo7/h1;->b:I

    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ln7/r;

    .line 16
    .line 17
    iget-object v0, v0, Ln7/r;->a:Ljava/util/List;

    .line 18
    .line 19
    iget v1, p0, Lo7/h1;->c:I

    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/net/SocketAddress;

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_1b
    const-string v0, "Index is past the end of the address group list"

    .line 29
    .line 30
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    return-object v0
.end method

.method public b()Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Lo7/h1;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 7
    .line 8
    goto :goto_30

    .line 9
    :cond_8
    iget-object v0, p0, Lo7/h1;->a:Ljava/util/List;

    .line 10
    .line 11
    iget v2, p0, Lo7/h1;->b:I

    .line 12
    .line 13
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ln7/r;

    .line 18
    .line 19
    iget v2, p0, Lo7/h1;->c:I

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    add-int/2addr v2, v3

    .line 23
    iput v2, p0, Lo7/h1;->c:I

    .line 24
    .line 25
    iget-object v0, v0, Ln7/r;->a:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-lt v2, v0, :cond_31

    .line 32
    .line 33
    iget v0, p0, Lo7/h1;->b:I

    .line 34
    .line 35
    add-int/2addr v0, v3

    .line 36
    iput v0, p0, Lo7/h1;->b:I

    .line 37
    .line 38
    iput v1, p0, Lo7/h1;->c:I

    .line 39
    .line 40
    iget-object v2, p0, Lo7/h1;->a:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-ge v0, v2, :cond_30

    .line 47
    .line 48
    goto :goto_31

    .line 49
    :cond_30
    :goto_30
    return v1

    .line 50
    :cond_31
    :goto_31
    return v3
.end method

.method public c()Z
    .registers 3

    .line 1
    iget v0, p0, Lo7/h1;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lo7/h1;->a:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ge v0, v1, :cond_c

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public d()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lo7/h1;->b:I

    .line 3
    .line 4
    iput v0, p0, Lo7/h1;->c:I

    .line 5
    .line 6
    return-void
.end method

.method public e(Ljava/net/SocketAddress;)Z
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    iget-object v2, p0, Lo7/h1;->a:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_24

    .line 10
    .line 11
    iget-object v2, p0, Lo7/h1;->a:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Ln7/r;

    .line 18
    .line 19
    iget-object v2, v2, Ln7/r;->a:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, -0x1

    .line 26
    if-ne v2, v3, :cond_1e

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1e
    iput v1, p0, Lo7/h1;->b:I

    .line 32
    .line 33
    iput v2, p0, Lo7/h1;->c:I

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    return p1

    .line 37
    :cond_24
    return v0
.end method
