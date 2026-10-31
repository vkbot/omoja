.class public final Ln7/e0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic a:I

.field public b:Ljava/util/List;

.field public c:Ln7/b;

.field public d:[[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Ln7/e0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ln7/b;[[Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Ln7/e0;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v0, "addresses are not set"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Ln7/e0;->b:Ljava/util/List;

    .line 13
    .line 14
    const-string p1, "attrs"

    .line 15
    .line 16
    invoke-static {p2, p1}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Ln7/e0;->c:Ln7/b;

    .line 20
    .line 21
    const-string p1, "customOptions"

    .line 22
    .line 23
    invoke-static {p3, p1}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-object p3, p0, Ln7/e0;->d:[[Ljava/lang/Object;

    .line 27
    .line 28
    return-void
.end method

.method public static d()Ln7/e0;
    .locals 4

    .line 1
    new-instance v0, Ln7/e0;

    .line 2
    .line 3
    invoke-direct {v0}, Ln7/e0;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Ln7/b;->b:Ln7/b;

    .line 7
    .line 8
    iput-object v1, v0, Ln7/e0;->c:Ln7/b;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    new-array v2, v1, [I

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    aput v1, v2, v3

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    aput v1, v2, v1

    .line 18
    .line 19
    const-class v1, Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, [[Ljava/lang/Object;

    .line 26
    .line 27
    iput-object v1, v0, Ln7/e0;->d:[[Ljava/lang/Object;

    .line 28
    .line 29
    return-object v0
.end method


# virtual methods
.method public a(Ln7/i0;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Ln7/e0;->d:[[Ljava/lang/Object;

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    sget-object v4, Ln7/j0;->c:Ln7/h;

    .line 7
    .line 8
    const/4 v5, -0x1

    .line 9
    if-ge v1, v3, :cond_1

    .line 10
    .line 11
    aget-object v2, v2, v1

    .line 12
    .line 13
    aget-object v2, v2, v0

    .line 14
    .line 15
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v1, v5

    .line 26
    :goto_1
    if-ne v1, v5, :cond_2

    .line 27
    .line 28
    iget-object v1, p0, Ln7/e0;->d:[[Ljava/lang/Object;

    .line 29
    .line 30
    array-length v1, v1

    .line 31
    const/4 v2, 0x1

    .line 32
    add-int/2addr v1, v2

    .line 33
    const/4 v3, 0x2

    .line 34
    new-array v5, v3, [I

    .line 35
    .line 36
    aput v3, v5, v2

    .line 37
    .line 38
    aput v1, v5, v0

    .line 39
    .line 40
    const-class v1, Ljava/lang/Object;

    .line 41
    .line 42
    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, [[Ljava/lang/Object;

    .line 47
    .line 48
    iget-object v3, p0, Ln7/e0;->d:[[Ljava/lang/Object;

    .line 49
    .line 50
    array-length v5, v3

    .line 51
    invoke-static {v3, v0, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Ln7/e0;->d:[[Ljava/lang/Object;

    .line 55
    .line 56
    array-length v0, v1

    .line 57
    add-int/lit8 v1, v0, -0x1

    .line 58
    .line 59
    :cond_2
    iget-object v0, p0, Ln7/e0;->d:[[Ljava/lang/Object;

    .line 60
    .line 61
    filled-new-array {v4, p1}, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    aput-object p1, v0, v1

    .line 66
    .line 67
    return-void
.end method

.method public b()Ln7/e0;
    .locals 4

    .line 1
    new-instance v0, Ln7/e0;

    .line 2
    .line 3
    iget-object v1, p0, Ln7/e0;->b:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Ln7/e0;->c:Ln7/b;

    .line 6
    .line 7
    iget-object v3, p0, Ln7/e0;->d:[[Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Ln7/e0;-><init>(Ljava/util/List;Ln7/b;[[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Ln7/e0;->d:[[Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    array-length v3, v0

    .line 6
    if-ge v2, v3, :cond_1

    .line 7
    .line 8
    aget-object v3, v0, v2

    .line 9
    .line 10
    aget-object v3, v3, v1

    .line 11
    .line 12
    sget-object v4, Ln7/j0;->c:Ln7/h;

    .line 13
    .line 14
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    aget-object v0, v0, v2

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    aget-object v0, v0, v1

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    return-object v0
.end method

.method public e(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    const-string v1, "addrs is empty"

    .line 8
    .line 9
    invoke-static {v1, v0}, Lo4/b;->d(Ljava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Ln7/e0;->b:Ljava/util/List;

    .line 22
    .line 23
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Ln7/e0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    invoke-static {p0}, Lcom/bumptech/glide/c;->t(Ljava/lang/Object;)Lcom/bumptech/glide/manager/s;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "addrs"

    .line 16
    .line 17
    iget-object v2, p0, Ln7/e0;->b:Ljava/util/List;

    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Lcom/bumptech/glide/manager/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "attrs"

    .line 23
    .line 24
    iget-object v2, p0, Ln7/e0;->c:Ln7/b;

    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Lcom/bumptech/glide/manager/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Ln7/e0;->d:[[Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "customOptions"

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/manager/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/s;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0

    .line 45
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
