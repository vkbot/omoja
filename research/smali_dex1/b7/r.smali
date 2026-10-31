.class public final Lb7/r;
.super Lb7/k;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public c:Z


# virtual methods
.method public final b(Lz5/j;)Lz5/b;
    .registers 5

    .line 1
    iget-boolean v0, p0, Lb7/r;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_17

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lb7/r;->c:Z

    .line 7
    .line 8
    new-instance v0, Lz5/b;

    .line 9
    .line 10
    new-instance v1, Lf6/e;

    .line 11
    .line 12
    new-instance v2, Lz5/f;

    .line 13
    .line 14
    invoke-direct {v2, p1}, Lz5/f;-><init>(Lz5/g;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Lf6/e;-><init>(Lz5/g;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Lz5/b;-><init>(Lf6/e;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_17
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lb7/r;->c:Z

    .line 26
    .line 27
    new-instance v0, Lz5/b;

    .line 28
    .line 29
    new-instance v1, Lf6/e;

    .line 30
    .line 31
    invoke-direct {v1, p1}, Lf6/e;-><init>(Lz5/g;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1}, Lz5/b;-><init>(Lf6/e;)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method
