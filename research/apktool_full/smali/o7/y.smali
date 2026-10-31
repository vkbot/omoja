.class public final Lo7/y;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ln7/b;

.field public c:Ln7/u;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lo7/y;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    check-cast p1, Lo7/y;

    .line 7
    .line 8
    iget-object v0, p0, Lo7/y;->a:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p1, Lo7/y;->a:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lo7/y;->b:Ln7/b;

    .line 19
    .line 20
    iget-object v1, p1, Lo7/y;->b:Ln7/b;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ln7/b;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-static {v0, v0}, Lcom/bumptech/glide/d;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lo7/y;->c:Ln7/u;

    .line 36
    .line 37
    iget-object p1, p1, Lo7/y;->c:Ln7/u;

    .line 38
    .line 39
    invoke-static {v0, p1}, Lcom/bumptech/glide/d;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    return p1

    .line 47
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 48
    return p1
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lo7/y;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lo7/y;->b:Ln7/b;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lo7/y;->c:Ln7/u;

    .line 7
    .line 8
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method
