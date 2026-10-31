.class public final Lo7/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lo7/v0;


# instance fields
.field public a:Z

.field public b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lo7/a;->b:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Lcom/bumptech/glide/manager/t;

    .line 12
    .line 13
    const/4 v1, 0x6

    .line 14
    invoke-direct {v0, v1}, Lcom/bumptech/glide/manager/t;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lo7/a;->c:Ljava/lang/Object;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Lo7/b;Ln7/v0;Lo7/t4;)V
    .registers 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo7/a;->e:Ljava/lang/Object;

    .line 21
    const-string p1, "headers"

    invoke-static {p2, p1}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo7/a;->b:Ljava/lang/Object;

    .line 22
    iput-object p3, p0, Lo7/a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ln7/h;)Lo7/v0;
    .registers 2

    .line 1
    return-object p0
.end method

.method public b(Lt7/a;)V
    .registers 12

    .line 1
    iget-object v0, p0, Lo7/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo7/t4;

    .line 4
    .line 5
    iget-object v1, p0, Lo7/a;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, [B

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_d

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    move v1, v2

    .line 15
    :goto_e
    const-string v3, "writePayload should not be called multiple times"

    .line 16
    .line 17
    invoke-static {v1, v3}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :try_start_13
    invoke-static {p1}, Lk4/g;->b(Lt7/a;)[B

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lo7/a;->d:Ljava/lang/Object;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_19} :catch_64

    .line 25
    .line 26
    iget-object p1, v0, Lo7/t4;->a:[Ln7/e;

    .line 27
    .line 28
    iget-object v1, v0, Lo7/t4;->a:[Ln7/e;

    .line 29
    .line 30
    array-length v3, p1

    .line 31
    move v4, v2

    .line 32
    :goto_1f
    if-ge v4, v3, :cond_29

    .line 33
    .line 34
    aget-object v5, p1, v4

    .line 35
    .line 36
    invoke-virtual {v5, v2}, Ln7/e;->t(I)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v4, v4, 0x1

    .line 40
    .line 41
    goto :goto_1f

    .line 42
    :cond_29
    iget-object p1, p0, Lo7/a;->d:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p1, [B

    .line 45
    .line 46
    array-length v3, p1

    .line 47
    int-to-long v6, v3

    .line 48
    array-length p1, p1

    .line 49
    int-to-long v8, p1

    .line 50
    iget-object p1, v0, Lo7/t4;->a:[Ln7/e;

    .line 51
    .line 52
    array-length v0, p1

    .line 53
    move v3, v2

    .line 54
    :goto_35
    if-ge v3, v0, :cond_40

    .line 55
    .line 56
    aget-object v4, p1, v3

    .line 57
    .line 58
    const/4 v5, 0x0

    .line 59
    invoke-virtual/range {v4 .. v9}, Ln7/e;->u(IJJ)V

    .line 60
    .line 61
    .line 62
    add-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    goto :goto_35

    .line 65
    :cond_40
    iget-object p1, p0, Lo7/a;->d:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p1, [B

    .line 68
    .line 69
    array-length p1, p1

    .line 70
    int-to-long v3, p1

    .line 71
    array-length p1, v1

    .line 72
    move v0, v2

    .line 73
    :goto_48
    if-ge v0, p1, :cond_52

    .line 74
    .line 75
    aget-object v5, v1, v0

    .line 76
    .line 77
    invoke-virtual {v5, v3, v4}, Ln7/e;->v(J)V

    .line 78
    .line 79
    .line 80
    add-int/lit8 v0, v0, 0x1

    .line 81
    .line 82
    goto :goto_48

    .line 83
    :cond_52
    iget-object p1, p0, Lo7/a;->d:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast p1, [B

    .line 86
    .line 87
    array-length p1, p1

    .line 88
    int-to-long v3, p1

    .line 89
    array-length p1, v1

    .line 90
    :goto_59
    if-ge v2, p1, :cond_63

    .line 91
    .line 92
    aget-object v0, v1, v2

    .line 93
    .line 94
    invoke-virtual {v0, v3, v4}, Ln7/e;->w(J)V

    .line 95
    .line 96
    .line 97
    add-int/lit8 v2, v2, 0x1

    .line 98
    .line 99
    goto :goto_59

    .line 100
    :cond_63
    return-void

    .line 101
    :catch_64
    move-exception v0

    .line 102
    move-object p1, v0

    .line 103
    invoke-static {p1}, Ln0/b;->w(Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public c(I)V
    .registers 2

    .line 1
    return-void
.end method

.method public close()V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lo7/a;->a:Z

    .line 3
    .line 4
    iget-object v1, p0, Lo7/a;->d:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, [B

    .line 7
    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    const-string v1, "Lack of request message. GET request is only supported for unary requests"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lo7/a;->e:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lo7/b;

    .line 20
    .line 21
    check-cast v0, Lp7/k;

    .line 22
    .line 23
    iget-object v0, v0, Lp7/k;->n:Ln/p;

    .line 24
    .line 25
    iget-object v1, p0, Lo7/a;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v1, Ln7/v0;

    .line 28
    .line 29
    iget-object v2, p0, Lo7/a;->d:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v2, [B

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Ln/p;->l(Ln7/v0;[B)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lo7/a;->d:Ljava/lang/Object;

    .line 38
    .line 39
    iput-object v0, p0, Lo7/a;->b:Ljava/lang/Object;

    .line 40
    .line 41
    return-void
.end method

.method public d()Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lo7/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-boolean v1, p0, Lo7/a;->a:Z

    .line 5
    .line 6
    const-string v2, "Task is not yet complete"

    .line 7
    .line 8
    if-eqz v1, :cond_1c

    .line 9
    .line 10
    iget-object v1, p0, Lo7/a;->e:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/lang/Exception;

    .line 13
    .line 14
    if-nez v1, :cond_15

    .line 15
    .line 16
    iget-object v1, p0, Lo7/a;->d:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-object v1

    .line 20
    :catchall_13
    move-exception v1

    .line 21
    goto :goto_22

    .line 22
    :cond_15
    new-instance v2, La8/a;

    .line 23
    .line 24
    const/4 v3, 0x7

    .line 25
    invoke-direct {v2, v3, v1}, La8/a;-><init>(ILjava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    throw v2

    .line 29
    :cond_1c
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v1

    .line 35
    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_13

    .line 36
    throw v1
.end method

.method public e()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lo7/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-boolean v1, p0, Lo7/a;->a:Z

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_f

    .line 8
    .line 9
    iget-object v1, p0, Lo7/a;->e:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Ljava/lang/Exception;

    .line 12
    .line 13
    if-nez v1, :cond_f

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    :cond_f
    monitor-exit v0

    .line 17
    return v2

    .line 18
    :catchall_11
    move-exception v1

    .line 19
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    .line 20
    throw v1
.end method

.method public f(Ljava/lang/Exception;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lo7/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-virtual {p0}, Lo7/a;->h()V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lo7/a;->a:Z

    .line 9
    .line 10
    iput-object p1, p0, Lo7/a;->e:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_14

    .line 13
    iget-object p1, p0, Lo7/a;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Lcom/bumptech/glide/manager/t;

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/manager/t;->n(Lo7/a;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_14
    move-exception p1

    .line 22
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    .line 23
    throw p1
.end method

.method public flush()V
    .registers 1

    .line 1
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lo7/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-virtual {p0}, Lo7/a;->h()V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lo7/a;->a:Z

    .line 9
    .line 10
    iput-object p1, p0, Lo7/a;->d:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_14

    .line 13
    iget-object p1, p0, Lo7/a;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Lcom/bumptech/glide/manager/t;

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/manager/t;->n(Lo7/a;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_14
    move-exception p1

    .line 22
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    .line 23
    throw p1
.end method

.method public h()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lo7/a;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4a

    .line 4
    .line 5
    iget-object v0, p0, Lo7/a;->b:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    iget-boolean v1, p0, Lo7/a;->a:Z

    .line 9
    .line 10
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_47

    .line 11
    if-eqz v1, :cond_3f

    .line 12
    .line 13
    iget-object v0, p0, Lo7/a;->b:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_f
    iget-object v1, p0, Lo7/a;->e:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Ljava/lang/Exception;

    .line 19
    .line 20
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_3c

    .line 21
    if-nez v1, :cond_2e

    .line 22
    .line 23
    invoke-virtual {p0}, Lo7/a;->e()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2b

    .line 28
    .line 29
    invoke-virtual {p0}, Lo7/a;->d()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v2, "result "

    .line 38
    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_30

    .line 44
    :cond_2b
    const-string v0, "unknown issue"

    .line 45
    .line 46
    goto :goto_30

    .line 47
    :cond_2e
    const-string v0, "failure"

    .line 48
    .line 49
    :goto_30
    const-string v2, "Complete with: "

    .line 50
    .line 51
    new-instance v3, La8/f;

    .line 52
    .line 53
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-direct {v3, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    goto :goto_46

    .line 61
    :catchall_3c
    move-exception v1

    .line 62
    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    .line 63
    throw v1

    .line 64
    :cond_3f
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    const-string v0, "DuplicateTaskCompletionException can only be created from completed Task."

    .line 67
    .line 68
    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :goto_46
    throw v3

    .line 72
    :catchall_47
    move-exception v1

    .line 73
    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    .line 74
    throw v1

    .line 75
    :cond_4a
    return-void
.end method

.method public i()V
    .registers 3

    .line 1
    iget-object v0, p0, Lo7/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-boolean v1, p0, Lo7/a;->a:Z

    .line 5
    .line 6
    if-nez v1, :cond_b

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_9
    move-exception v1

    .line 11
    goto :goto_14

    .line 12
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_9

    .line 13
    iget-object v0, p0, Lo7/a;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lcom/bumptech/glide/manager/t;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/t;->n(Lo7/a;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :goto_14
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_9

    .line 22
    throw v1
.end method

.method public isClosed()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lo7/a;->a:Z

    .line 2
    .line 3
    return v0
.end method
