.class public final Lcom/google/protobuf/u0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lcom/google/protobuf/b1;


# instance fields
.field public final a:Lcom/google/protobuf/a;

.field public final b:Lcom/google/protobuf/k1;

.field public final c:Lcom/google/protobuf/r;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/k1;Lcom/google/protobuf/r;Lcom/google/protobuf/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/protobuf/u0;->b:Lcom/google/protobuf/k1;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/protobuf/u0;->c:Lcom/google/protobuf/r;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/google/protobuf/u0;->a:Lcom/google/protobuf/a;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/google/protobuf/l0;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/protobuf/u0;->c:Lcom/google/protobuf/r;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/protobuf/q;->q(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    throw p1
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/u0;->b:Lcom/google/protobuf/k1;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/google/protobuf/c1;->j(Lcom/google/protobuf/k1;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/u0;->b:Lcom/google/protobuf/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lcom/google/protobuf/y;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/protobuf/y;->unknownFields:Lcom/google/protobuf/j1;

    .line 10
    .line 11
    iget-boolean v1, v0, Lcom/google/protobuf/j1;->e:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, v0, Lcom/google/protobuf/j1;->e:Z

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/u0;->c:Lcom/google/protobuf/r;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/google/protobuf/q;->q(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    throw p1
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/u0;->c:Lcom/google/protobuf/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/protobuf/q;->q(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    throw p1
.end method

.method public final e(Lcom/google/protobuf/y;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/u0;->b:Lcom/google/protobuf/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lcom/google/protobuf/y;->unknownFields:Lcom/google/protobuf/j1;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/protobuf/j1;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final f(Lcom/google/protobuf/y;)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/u0;->b:Lcom/google/protobuf/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lcom/google/protobuf/y;->unknownFields:Lcom/google/protobuf/j1;

    .line 7
    .line 8
    iget v0, p1, Lcom/google/protobuf/j1;->d:I

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    move v1, v0

    .line 16
    :goto_0
    iget v2, p1, Lcom/google/protobuf/j1;->a:I

    .line 17
    .line 18
    if-ge v0, v2, :cond_1

    .line 19
    .line 20
    iget-object v2, p1, Lcom/google/protobuf/j1;->b:[I

    .line 21
    .line 22
    aget v2, v2, v0

    .line 23
    .line 24
    const/4 v3, 0x3

    .line 25
    ushr-int/2addr v2, v3

    .line 26
    iget-object v4, p1, Lcom/google/protobuf/j1;->c:[Ljava/lang/Object;

    .line 27
    .line 28
    aget-object v4, v4, v0

    .line 29
    .line 30
    check-cast v4, Lcom/google/protobuf/g;

    .line 31
    .line 32
    const/4 v5, 0x1

    .line 33
    invoke-static {v5}, Lcom/google/protobuf/n;->c(I)I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    const/4 v6, 0x2

    .line 38
    mul-int/2addr v5, v6

    .line 39
    invoke-static {v6}, Lcom/google/protobuf/n;->c(I)I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    invoke-static {v2}, Lcom/google/protobuf/n;->d(I)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    add-int/2addr v2, v6

    .line 48
    add-int/2addr v2, v5

    .line 49
    invoke-static {v3}, Lcom/google/protobuf/n;->c(I)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-virtual {v4}, Lcom/google/protobuf/g;->size()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    invoke-static {v4}, Lcom/google/protobuf/n;->d(I)I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    add-int/2addr v5, v4

    .line 62
    add-int/2addr v5, v3

    .line 63
    add-int/2addr v5, v2

    .line 64
    add-int/2addr v1, v5

    .line 65
    add-int/lit8 v0, v0, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iput v1, p1, Lcom/google/protobuf/j1;->d:I

    .line 69
    .line 70
    return v1
.end method

.method public final g(Lcom/google/protobuf/y;Lcom/google/protobuf/y;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/u0;->b:Lcom/google/protobuf/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lcom/google/protobuf/y;->unknownFields:Lcom/google/protobuf/j1;

    .line 7
    .line 8
    iget-object p2, p2, Lcom/google/protobuf/y;->unknownFields:Lcom/google/protobuf/j1;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lcom/google/protobuf/j1;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return p1

    .line 18
    :cond_0
    const/4 p1, 0x1

    .line 19
    return p1
.end method

.method public final h(Ljava/lang/Object;Lc3/i;Lcom/google/protobuf/p;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/protobuf/u0;->b:Lcom/google/protobuf/k1;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/protobuf/k1;->a(Ljava/lang/Object;)Lcom/google/protobuf/j1;

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lcom/google/protobuf/u0;->c:Lcom/google/protobuf/r;

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance p1, Ljava/lang/ClassCastException;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public final i()Lcom/google/protobuf/y;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/u0;->a:Lcom/google/protobuf/a;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/protobuf/y;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/google/protobuf/y;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/y;->k()Lcom/google/protobuf/y;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    check-cast v0, Lcom/google/protobuf/y;

    .line 15
    .line 16
    const/4 v1, 0x5

    .line 17
    invoke-virtual {v0, v1}, Lcom/google/protobuf/y;->e(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/google/protobuf/w;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/google/protobuf/w;->b()Lcom/google/protobuf/y;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method
