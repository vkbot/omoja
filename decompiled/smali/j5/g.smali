.class public final Lj5/g;
.super Lj5/h;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public c:Lj5/f;

.field public d:Lj5/a;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lj5/g;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lj5/g;

    .line 12
    .line 13
    iget-object v1, p1, Lj5/g;->d:Lj5/a;

    .line 14
    .line 15
    invoke-virtual {p0}, Lj5/g;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {p1}, Lj5/g;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eq v3, v4, :cond_2

    .line 24
    .line 25
    return v2

    .line 26
    :cond_2
    iget-object v3, p0, Lj5/g;->d:Lj5/a;

    .line 27
    .line 28
    if-nez v3, :cond_3

    .line 29
    .line 30
    if-nez v1, :cond_4

    .line 31
    .line 32
    :cond_3
    if-eqz v3, :cond_5

    .line 33
    .line 34
    invoke-virtual {v3, v1}, Lj5/a;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_5

    .line 39
    .line 40
    :cond_4
    return v2

    .line 41
    :cond_5
    iget-object v1, p0, Lj5/g;->c:Lj5/f;

    .line 42
    .line 43
    iget-object p1, p1, Lj5/g;->c:Lj5/f;

    .line 44
    .line 45
    invoke-virtual {v1, p1}, Lj5/f;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_6

    .line 50
    .line 51
    return v0

    .line 52
    :cond_6
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lj5/g;->d:Lj5/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lj5/a;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lj5/g;->c:Lj5/f;

    .line 12
    .line 13
    iget-object v1, v1, Lj5/f;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    add-int/2addr v1, v0

    .line 20
    return v1
.end method
