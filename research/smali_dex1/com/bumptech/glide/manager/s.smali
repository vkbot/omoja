.class public final Lcom/bumptech/glide/manager/s;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lc0/h;Lcom/bumptech/glide/manager/p;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/manager/s;->a:I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/bumptech/glide/manager/r;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/manager/r;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/bumptech/glide/manager/s;->e:Ljava/lang/Object;

    .line 35
    iput-object p1, p0, Lcom/bumptech/glide/manager/s;->d:Ljava/lang/Object;

    .line 36
    iput-object p2, p0, Lcom/bumptech/glide/manager/s;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lf/c;Lf/b;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/manager/s;->a:I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/manager/s;->e:Ljava/lang/Object;

    .line 38
    iput-object p2, p0, Lcom/bumptech/glide/manager/s;->c:Ljava/lang/Object;

    .line 39
    iget-boolean p2, p2, Lf/b;->e:Z

    if-eqz p2, :cond_10

    const/4 p1, 0x0

    goto :goto_14

    .line 40
    :cond_10
    iget p1, p1, Lf/c;->h:I

    .line 41
    new-array p1, p1, [Z

    :goto_14
    iput-object p1, p0, Lcom/bumptech/glide/manager/s;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lf6/b;)V
    .registers 4

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/bumptech/glide/manager/s;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iget v0, p1, Lf6/b;->c:I

    .line 8
    .line 9
    const/16 v1, 0x15

    .line 10
    .line 11
    if-lt v0, v1, :cond_14

    .line 12
    .line 13
    and-int/lit8 v0, v0, 0x3

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_14

    .line 17
    .line 18
    iput-object p1, p0, Lcom/bumptech/glide/manager/s;->c:Ljava/lang/Object;

    .line 19
    .line 20
    return-void

    .line 21
    :cond_14
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/bumptech/glide/manager/s;->a:I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, La5/h;

    const/16 v1, 0xa

    .line 28
    invoke-direct {v0, v1}, La5/h;-><init>(I)V

    .line 29
    iput-object v0, p0, Lcom/bumptech/glide/manager/s;->d:Ljava/lang/Object;

    .line 30
    iput-object v0, p0, Lcom/bumptech/glide/manager/s;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/bumptech/glide/manager/s;->b:Z

    .line 32
    iput-object p1, p0, Lcom/bumptech/glide/manager/s;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/s;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lf/c;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, p0, v1}, Lf/c;->b(Lf/c;Lcom/bumptech/glide/manager/s;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public b(JLjava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p3, p1}, Lcom/bumptech/glide/manager/s;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public c(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, La5/h;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1}, La5/h;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/bumptech/glide/manager/s;->e:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, La5/h;

    .line 11
    .line 12
    iput-object v0, v1, La5/h;->e:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/bumptech/glide/manager/s;->e:Ljava/lang/Object;

    .line 15
    .line 16
    iput-object p1, v0, La5/h;->d:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object p2, v0, La5/h;->c:Ljava/lang/Object;

    .line 19
    .line 20
    return-void
.end method

.method public d(Ljava/lang/String;Z)V
    .registers 3

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/manager/s;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Li4/c;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1}, La5/h;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/bumptech/glide/manager/s;->e:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, La5/h;

    .line 11
    .line 12
    iput-object v0, v1, La5/h;->e:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/bumptech/glide/manager/s;->e:Ljava/lang/Object;

    .line 15
    .line 16
    iput-object p2, v0, La5/h;->d:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object p1, v0, La5/h;->c:Ljava/lang/Object;

    .line 19
    .line 20
    return-void
.end method

.method public f(III)I
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/manager/s;->b:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/manager/s;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lf6/b;

    .line 6
    .line 7
    if-eqz v0, :cond_d

    .line 8
    .line 9
    invoke-virtual {v1, p2, p1}, Lf6/b;->b(II)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    goto :goto_11

    .line 14
    :cond_d
    invoke-virtual {v1, p1, p2}, Lf6/b;->b(II)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    :goto_11
    if-eqz p1, :cond_18

    .line 19
    .line 20
    shl-int/lit8 p1, p3, 0x1

    .line 21
    .line 22
    or-int/lit8 p1, p1, 0x1

    .line 23
    .line 24
    return p1

    .line 25
    :cond_18
    shl-int/lit8 p1, p3, 0x1

    .line 26
    .line 27
    return p1
.end method

.method public g()Ljava/io/File;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/s;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lf/c;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_5
    iget-object v1, p0, Lcom/bumptech/glide/manager/s;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Lf/b;

    .line 9
    .line 10
    iget-object v2, v1, Lf/b;->f:Lcom/bumptech/glide/manager/s;

    .line 11
    .line 12
    if-ne v2, p0, :cond_2b

    .line 13
    .line 14
    iget-boolean v2, v1, Lf/b;->e:Z

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-nez v2, :cond_1c

    .line 18
    .line 19
    iget-object v2, p0, Lcom/bumptech/glide/manager/s;->d:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, [Z

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    aput-boolean v4, v2, v3

    .line 25
    .line 26
    goto :goto_1c

    .line 27
    :catchall_1a
    move-exception v1

    .line 28
    goto :goto_31

    .line 29
    :cond_1c
    :goto_1c
    iget-object v1, v1, Lf/b;->d:[Ljava/io/File;

    .line 30
    .line 31
    aget-object v1, v1, v3

    .line 32
    .line 33
    iget-object v2, p0, Lcom/bumptech/glide/manager/s;->e:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v2, Lf/c;

    .line 36
    .line 37
    iget-object v2, v2, Lf/c;->b:Ljava/io/File;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 40
    .line 41
    .line 42
    monitor-exit v0

    .line 43
    return-object v1

    .line 44
    :cond_2b
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 47
    .line 48
    .line 49
    throw v1

    .line 50
    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_1a

    .line 51
    throw v1
.end method

.method public h()Lw6/c;
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/s;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lw6/c;

    .line 4
    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    move v1, v0

    .line 10
    move v2, v1

    .line 11
    :goto_a
    const/4 v3, 0x6

    .line 12
    const/16 v4, 0x8

    .line 13
    .line 14
    if-ge v1, v3, :cond_16

    .line 15
    .line 16
    invoke-virtual {p0, v1, v4, v2}, Lcom/bumptech/glide/manager/s;->f(III)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_a

    .line 23
    :cond_16
    const/4 v1, 0x7

    .line 24
    invoke-virtual {p0, v1, v4, v2}, Lcom/bumptech/glide/manager/s;->f(III)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {p0, v4, v4, v2}, Lcom/bumptech/glide/manager/s;->f(III)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {p0, v4, v1, v2}, Lcom/bumptech/glide/manager/s;->f(III)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v2, 0x5

    .line 37
    :goto_24
    if-ltz v2, :cond_2d

    .line 38
    .line 39
    invoke-virtual {p0, v4, v2, v1}, Lcom/bumptech/glide/manager/s;->f(III)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    add-int/lit8 v2, v2, -0x1

    .line 44
    .line 45
    goto :goto_24

    .line 46
    :cond_2d
    iget-object v2, p0, Lcom/bumptech/glide/manager/s;->c:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Lf6/b;

    .line 49
    .line 50
    iget v2, v2, Lf6/b;->c:I

    .line 51
    .line 52
    add-int/lit8 v3, v2, -0x7

    .line 53
    .line 54
    add-int/lit8 v5, v2, -0x1

    .line 55
    .line 56
    :goto_37
    if-lt v5, v3, :cond_40

    .line 57
    .line 58
    invoke-virtual {p0, v4, v5, v0}, Lcom/bumptech/glide/manager/s;->f(III)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    add-int/lit8 v5, v5, -0x1

    .line 63
    .line 64
    goto :goto_37

    .line 65
    :cond_40
    add-int/lit8 v3, v2, -0x8

    .line 66
    .line 67
    :goto_42
    if-ge v3, v2, :cond_4b

    .line 68
    .line 69
    invoke-virtual {p0, v3, v4, v0}, Lcom/bumptech/glide/manager/s;->f(III)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    goto :goto_42

    .line 76
    :cond_4b
    invoke-static {v1, v0}, Lw6/c;->a(II)Lw6/c;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    if-eqz v2, :cond_52

    .line 81
    .line 82
    goto :goto_5a

    .line 83
    :cond_52
    xor-int/lit16 v1, v1, 0x5412

    .line 84
    .line 85
    xor-int/lit16 v0, v0, 0x5412

    .line 86
    .line 87
    invoke-static {v1, v0}, Lw6/c;->a(II)Lw6/c;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    :goto_5a
    iput-object v2, p0, Lcom/bumptech/glide/manager/s;->e:Ljava/lang/Object;

    .line 92
    .line 93
    if-eqz v2, :cond_5f

    .line 94
    .line 95
    return-object v2

    .line 96
    :cond_5f
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    throw v0
.end method

.method public i()Lw6/f;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/s;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lw6/f;

    .line 4
    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/bumptech/glide/manager/s;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lf6/b;

    .line 11
    .line 12
    iget v0, v0, Lf6/b;->c:I

    .line 13
    .line 14
    add-int/lit8 v1, v0, -0x11

    .line 15
    .line 16
    div-int/lit8 v1, v1, 0x4

    .line 17
    .line 18
    const/4 v2, 0x6

    .line 19
    if-gt v1, v2, :cond_19

    .line 20
    .line 21
    invoke-static {v1}, Lw6/f;->c(I)Lw6/f;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    :cond_19
    add-int/lit8 v1, v0, -0xb

    .line 27
    .line 28
    const/4 v2, 0x5

    .line 29
    const/4 v3, 0x0

    .line 30
    move v4, v2

    .line 31
    move v5, v3

    .line 32
    :goto_1f
    if-ltz v4, :cond_2f

    .line 33
    .line 34
    add-int/lit8 v6, v0, -0x9

    .line 35
    .line 36
    :goto_23
    if-lt v6, v1, :cond_2c

    .line 37
    .line 38
    invoke-virtual {p0, v6, v4, v5}, Lcom/bumptech/glide/manager/s;->f(III)I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    add-int/lit8 v6, v6, -0x1

    .line 43
    .line 44
    goto :goto_23

    .line 45
    :cond_2c
    add-int/lit8 v4, v4, -0x1

    .line 46
    .line 47
    goto :goto_1f

    .line 48
    :cond_2f
    invoke-static {v5}, Lw6/f;->b(I)Lw6/f;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    if-eqz v4, :cond_40

    .line 53
    .line 54
    iget v5, v4, Lw6/f;->a:I

    .line 55
    .line 56
    mul-int/lit8 v5, v5, 0x4

    .line 57
    .line 58
    add-int/lit8 v5, v5, 0x11

    .line 59
    .line 60
    if-ne v5, v0, :cond_40

    .line 61
    .line 62
    iput-object v4, p0, Lcom/bumptech/glide/manager/s;->d:Ljava/lang/Object;

    .line 63
    .line 64
    return-object v4

    .line 65
    :cond_40
    :goto_40
    if-ltz v2, :cond_50

    .line 66
    .line 67
    add-int/lit8 v4, v0, -0x9

    .line 68
    .line 69
    :goto_44
    if-lt v4, v1, :cond_4d

    .line 70
    .line 71
    invoke-virtual {p0, v2, v4, v3}, Lcom/bumptech/glide/manager/s;->f(III)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    add-int/lit8 v4, v4, -0x1

    .line 76
    .line 77
    goto :goto_44

    .line 78
    :cond_4d
    add-int/lit8 v2, v2, -0x1

    .line 79
    .line 80
    goto :goto_40

    .line 81
    :cond_50
    invoke-static {v3}, Lw6/f;->b(I)Lw6/f;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    if-eqz v1, :cond_61

    .line 86
    .line 87
    iget v2, v1, Lw6/f;->a:I

    .line 88
    .line 89
    mul-int/lit8 v2, v2, 0x4

    .line 90
    .line 91
    add-int/lit8 v2, v2, 0x11

    .line 92
    .line 93
    if-ne v2, v0, :cond_61

    .line 94
    .line 95
    iput-object v1, p0, Lcom/bumptech/glide/manager/s;->d:Ljava/lang/Object;

    .line 96
    .line 97
    return-object v1

    .line 98
    :cond_61
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    throw v0
.end method

.method public j()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/s;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lw6/c;

    .line 4
    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    goto :goto_31

    .line 8
    :cond_7
    const/16 v0, 0x8

    .line 9
    .line 10
    invoke-static {v0}, Lcom/bumptech/glide/g;->d(I)[I

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/bumptech/glide/manager/s;->e:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Lw6/c;

    .line 17
    .line 18
    iget-byte v1, v1, Lw6/c;->b:B

    .line 19
    .line 20
    aget v0, v0, v1

    .line 21
    .line 22
    iget-object v1, p0, Lcom/bumptech/glide/manager/s;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lf6/b;

    .line 25
    .line 26
    iget v2, v1, Lf6/b;->c:I

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    move v4, v3

    .line 30
    :goto_1d
    if-ge v4, v2, :cond_31

    .line 31
    .line 32
    move v5, v3

    .line 33
    :goto_20
    if-ge v5, v2, :cond_2e

    .line 34
    .line 35
    invoke-static {v0, v4, v5}, Lw6/b;->a(III)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_2b

    .line 40
    .line 41
    invoke-virtual {v1, v5, v4}, Lf6/b;->a(II)V

    .line 42
    .line 43
    .line 44
    :cond_2b
    add-int/lit8 v5, v5, 0x1

    .line 45
    .line 46
    goto :goto_20

    .line 47
    :cond_2e
    add-int/lit8 v4, v4, 0x1

    .line 48
    .line 49
    goto :goto_1d

    .line 50
    :cond_31
    :goto_31
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 1
    iget v0, p0, Lcom/bumptech/glide/manager/s;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_78

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
    :pswitch_a
    iget-boolean v0, p0, Lcom/bumptech/glide/manager/s;->b:Z

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const/16 v2, 0x20

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/bumptech/glide/manager/s;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const/16 v2, 0x7b

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/bumptech/glide/manager/s;->d:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v2, La5/h;

    .line 35
    .line 36
    iget-object v2, v2, La5/h;->e:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v2, La5/h;

    .line 39
    .line 40
    const-string v3, ""

    .line 41
    .line 42
    :goto_29
    if-eqz v2, :cond_6e

    .line 43
    .line 44
    iget-object v4, v2, La5/h;->d:Ljava/lang/Object;

    .line 45
    .line 46
    instance-of v5, v2, Li4/c;

    .line 47
    .line 48
    if-nez v5, :cond_35

    .line 49
    .line 50
    if-nez v4, :cond_35

    .line 51
    .line 52
    if-nez v0, :cond_69

    .line 53
    .line 54
    :cond_35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-object v3, v2, La5/h;->c:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v3, Ljava/lang/String;

    .line 60
    .line 61
    if-eqz v3, :cond_46

    .line 62
    .line 63
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const/16 v3, 0x3d

    .line 67
    .line 68
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    :cond_46
    if-eqz v4, :cond_64

    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_64

    .line 82
    .line 83
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-static {v3}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    const/4 v5, 0x1

    .line 96
    sub-int/2addr v4, v5

    .line 97
    invoke-virtual {v1, v3, v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    goto :goto_67

    .line 101
    :cond_64
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    :goto_67
    const-string v3, ", "

    .line 105
    .line 106
    :cond_69
    iget-object v2, v2, La5/h;->e:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v2, La5/h;

    .line 109
    .line 110
    goto :goto_29

    .line 111
    :cond_6e
    const/16 v0, 0x7d

    .line 112
    .line 113
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    return-object v0

    .line 121
    :pswitch_data_78
    .packed-switch 0x2
        :pswitch_a
    .end packed-switch
.end method
