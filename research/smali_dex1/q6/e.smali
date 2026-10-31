.class public abstract Lq6/e;
.super Lq6/d;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# virtual methods
.method public abstract d(Ljava/lang/StringBuilder;I)V
.end method

.method public abstract e(I)I
.end method

.method public final f(Ljava/lang/StringBuilder;II)V
    .registers 6

    .line 1
    iget-object v0, p0, Lo/b;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, La5/h;

    .line 4
    .line 5
    iget-object v0, v0, La5/h;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lf6/a;

    .line 8
    .line 9
    invoke-static {p2, p3, v0}, La5/h;->h(IILf6/a;)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-virtual {p0, p1, p2}, Lq6/e;->d(Ljava/lang/StringBuilder;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p2}, Lq6/e;->e(I)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    const p3, 0x186a0

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    :goto_17
    const/4 v1, 0x5

    .line 25
    if-ge v0, v1, :cond_28

    .line 26
    .line 27
    div-int v1, p2, p3

    .line 28
    .line 29
    if-nez v1, :cond_23

    .line 30
    .line 31
    const/16 v1, 0x30

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    :cond_23
    div-int/lit8 p3, p3, 0xa

    .line 37
    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_17

    .line 41
    :cond_28
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    return-void
.end method
