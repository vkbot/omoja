.class public final Ly/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ly/d;
.implements Ly/c;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ly/d;

.field public volatile c:Ly/c;

.field public volatile d:Ly/c;

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ly/d;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    iput v0, p0, Ly/b;->e:I

    .line 6
    .line 7
    iput v0, p0, Ly/b;->f:I

    .line 8
    .line 9
    iput-object p1, p0, Ly/b;->a:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p2, p0, Ly/b;->b:Ly/d;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 3

    .line 1
    iget-object v0, p0, Ly/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Ly/b;->c:Ly/c;

    .line 5
    .line 6
    invoke-interface {v1}, Ly/c;->a()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_18

    .line 11
    .line 12
    iget-object v1, p0, Ly/b;->d:Ly/c;

    .line 13
    .line 14
    invoke-interface {v1}, Ly/c;->a()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_14

    .line 19
    .line 20
    goto :goto_18

    .line 21
    :cond_14
    const/4 v1, 0x0

    .line 22
    goto :goto_19

    .line 23
    :catchall_16
    move-exception v1

    .line 24
    goto :goto_1b

    .line 25
    :cond_18
    :goto_18
    const/4 v1, 0x1

    .line 26
    :goto_19
    monitor-exit v0

    .line 27
    return v1

    .line 28
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_16

    .line 29
    throw v1
.end method

.method public final b(Ly/c;)V
    .registers 4

    .line 1
    iget-object v0, p0, Ly/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Ly/b;->d:Ly/c;

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v1, 0x5

    .line 11
    if-nez p1, :cond_1f

    .line 12
    .line 13
    iput v1, p0, Ly/b;->e:I

    .line 14
    .line 15
    iget p1, p0, Ly/b;->f:I

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-eq p1, v1, :cond_1d

    .line 19
    .line 20
    iput v1, p0, Ly/b;->f:I

    .line 21
    .line 22
    iget-object p1, p0, Ly/b;->d:Ly/c;

    .line 23
    .line 24
    invoke-interface {p1}, Ly/c;->i()V

    .line 25
    .line 26
    .line 27
    goto :goto_1d

    .line 28
    :catchall_1b
    move-exception p1

    .line 29
    goto :goto_2a

    .line 30
    :cond_1d
    :goto_1d
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :cond_1f
    iput v1, p0, Ly/b;->f:I

    .line 33
    .line 34
    iget-object p1, p0, Ly/b;->b:Ly/d;

    .line 35
    .line 36
    if-eqz p1, :cond_28

    .line 37
    .line 38
    invoke-interface {p1, p0}, Ly/d;->b(Ly/c;)V

    .line 39
    .line 40
    .line 41
    :cond_28
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_1b

    .line 44
    throw p1
.end method

.method public final c(Ly/c;)V
    .registers 5

    .line 1
    iget-object v0, p0, Ly/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Ly/b;->c:Ly/c;

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x4

    .line 11
    if-eqz v1, :cond_11

    .line 12
    .line 13
    iput v2, p0, Ly/b;->e:I

    .line 14
    .line 15
    goto :goto_1b

    .line 16
    :catchall_f
    move-exception p1

    .line 17
    goto :goto_24

    .line 18
    :cond_11
    iget-object v1, p0, Ly/b;->d:Ly/c;

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1b

    .line 25
    .line 26
    iput v2, p0, Ly/b;->f:I

    .line 27
    .line 28
    :cond_1b
    :goto_1b
    iget-object p1, p0, Ly/b;->b:Ly/d;

    .line 29
    .line 30
    if-eqz p1, :cond_22

    .line 31
    .line 32
    invoke-interface {p1, p0}, Ly/d;->c(Ly/c;)V

    .line 33
    .line 34
    .line 35
    :cond_22
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_f

    .line 38
    throw p1
.end method

.method public final clear()V
    .registers 4

    .line 1
    iget-object v0, p0, Ly/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x3

    .line 5
    :try_start_4
    iput v1, p0, Ly/b;->e:I

    .line 6
    .line 7
    iget-object v2, p0, Ly/b;->c:Ly/c;

    .line 8
    .line 9
    invoke-interface {v2}, Ly/c;->clear()V

    .line 10
    .line 11
    .line 12
    iget v2, p0, Ly/b;->f:I

    .line 13
    .line 14
    if-eq v2, v1, :cond_19

    .line 15
    .line 16
    iput v1, p0, Ly/b;->f:I

    .line 17
    .line 18
    iget-object v1, p0, Ly/b;->d:Ly/c;

    .line 19
    .line 20
    invoke-interface {v1}, Ly/c;->clear()V

    .line 21
    .line 22
    .line 23
    goto :goto_19

    .line 24
    :catchall_17
    move-exception v1

    .line 25
    goto :goto_1b

    .line 26
    :cond_19
    :goto_19
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_17

    .line 29
    throw v1
.end method

.method public final d()V
    .registers 5

    .line 1
    iget-object v0, p0, Ly/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget v1, p0, Ly/b;->e:I

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x1

    .line 8
    if-ne v1, v3, :cond_13

    .line 9
    .line 10
    iput v2, p0, Ly/b;->e:I

    .line 11
    .line 12
    iget-object v1, p0, Ly/b;->c:Ly/c;

    .line 13
    .line 14
    invoke-interface {v1}, Ly/c;->d()V

    .line 15
    .line 16
    .line 17
    goto :goto_13

    .line 18
    :catchall_11
    move-exception v1

    .line 19
    goto :goto_20

    .line 20
    :cond_13
    :goto_13
    iget v1, p0, Ly/b;->f:I

    .line 21
    .line 22
    if-ne v1, v3, :cond_1e

    .line 23
    .line 24
    iput v2, p0, Ly/b;->f:I

    .line 25
    .line 26
    iget-object v1, p0, Ly/b;->d:Ly/c;

    .line 27
    .line 28
    invoke-interface {v1}, Ly/c;->d()V

    .line 29
    .line 30
    .line 31
    :cond_1e
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_11

    .line 34
    throw v1
.end method

.method public final e(Ly/c;)Z
    .registers 3

    .line 1
    iget-object p1, p0, Ly/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_3
    iget-object v0, p0, Ly/b;->b:Ly/d;

    .line 5
    .line 6
    if-eqz v0, :cond_10

    .line 7
    .line 8
    invoke-interface {v0, p0}, Ly/d;->e(Ly/c;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_e

    .line 13
    .line 14
    goto :goto_10

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    :goto_10
    const/4 v0, 0x1

    .line 18
    :goto_11
    monitor-exit p1

    .line 19
    return v0

    .line 20
    :catchall_13
    move-exception v0

    .line 21
    monitor-exit p1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    .line 22
    throw v0
.end method

.method public final f(Ly/c;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Ly/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Ly/b;->b:Ly/d;

    .line 5
    .line 6
    if-eqz v1, :cond_d

    .line 7
    .line 8
    invoke-interface {v1, p0}, Ly/d;->f(Ly/c;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_17

    .line 13
    .line 14
    :cond_d
    iget-object v1, p0, Ly/b;->c:Ly/c;

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_17

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    const/4 p1, 0x0

    .line 25
    :goto_18
    monitor-exit v0

    .line 26
    return p1

    .line 27
    :catchall_1a
    move-exception p1

    .line 28
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    .line 29
    throw p1
.end method

.method public final g(Ly/c;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Ly/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Ly/b;->b:Ly/d;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_e

    .line 8
    .line 9
    invoke-interface {v1, p0}, Ly/d;->g(Ly/c;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_30

    .line 14
    .line 15
    :cond_e
    iget v1, p0, Ly/b;->e:I

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x5

    .line 19
    if-eq v1, v4, :cond_1b

    .line 20
    .line 21
    iget-object v1, p0, Ly/b;->c:Ly/c;

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    goto :goto_2d

    .line 28
    :cond_1b
    iget-object v1, p0, Ly/b;->d:Ly/c;

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_2c

    .line 35
    .line 36
    iget p1, p0, Ly/b;->f:I

    .line 37
    .line 38
    const/4 v1, 0x4

    .line 39
    if-eq p1, v1, :cond_2a

    .line 40
    .line 41
    if-ne p1, v4, :cond_2c

    .line 42
    .line 43
    :cond_2a
    move p1, v3

    .line 44
    goto :goto_2d

    .line 45
    :cond_2c
    move p1, v2

    .line 46
    :goto_2d
    if-eqz p1, :cond_30

    .line 47
    .line 48
    move v2, v3

    .line 49
    :cond_30
    monitor-exit v0

    .line 50
    return v2

    .line 51
    :catchall_32
    move-exception p1

    .line 52
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    .line 53
    throw p1
.end method

.method public final getRoot()Ly/d;
    .registers 3

    .line 1
    iget-object v0, p0, Ly/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Ly/b;->b:Ly/d;

    .line 5
    .line 6
    if-eqz v1, :cond_e

    .line 7
    .line 8
    invoke-interface {v1}, Ly/d;->getRoot()Ly/d;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    goto :goto_f

    .line 13
    :catchall_c
    move-exception v1

    .line 14
    goto :goto_11

    .line 15
    :cond_e
    move-object v1, p0

    .line 16
    :goto_f
    monitor-exit v0

    .line 17
    return-object v1

    .line 18
    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_c

    .line 19
    throw v1
.end method

.method public final h()Z
    .registers 4

    .line 1
    iget-object v0, p0, Ly/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget v1, p0, Ly/b;->e:I

    .line 5
    .line 6
    const/4 v2, 0x3

    .line 7
    if-ne v1, v2, :cond_10

    .line 8
    .line 9
    iget v1, p0, Ly/b;->f:I

    .line 10
    .line 11
    if-ne v1, v2, :cond_10

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    goto :goto_11

    .line 15
    :catchall_e
    move-exception v1

    .line 16
    goto :goto_13

    .line 17
    :cond_10
    const/4 v1, 0x0

    .line 18
    :goto_11
    monitor-exit v0

    .line 19
    return v1

    .line 20
    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_e

    .line 21
    throw v1
.end method

.method public final i()V
    .registers 4

    .line 1
    iget-object v0, p0, Ly/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget v1, p0, Ly/b;->e:I

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v1, v2, :cond_12

    .line 8
    .line 9
    iput v2, p0, Ly/b;->e:I

    .line 10
    .line 11
    iget-object v1, p0, Ly/b;->c:Ly/c;

    .line 12
    .line 13
    invoke-interface {v1}, Ly/c;->i()V

    .line 14
    .line 15
    .line 16
    goto :goto_12

    .line 17
    :catchall_10
    move-exception v1

    .line 18
    goto :goto_14

    .line 19
    :cond_12
    :goto_12
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_10

    .line 22
    throw v1
.end method

.method public final isRunning()Z
    .registers 4

    .line 1
    iget-object v0, p0, Ly/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget v1, p0, Ly/b;->e:I

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v1, v2, :cond_11

    .line 8
    .line 9
    iget v1, p0, Ly/b;->f:I

    .line 10
    .line 11
    if-ne v1, v2, :cond_d

    .line 12
    .line 13
    goto :goto_11

    .line 14
    :cond_d
    const/4 v2, 0x0

    .line 15
    goto :goto_11

    .line 16
    :catchall_f
    move-exception v1

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    :goto_11
    monitor-exit v0

    .line 19
    return v2

    .line 20
    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_f

    .line 21
    throw v1
.end method

.method public final j()Z
    .registers 4

    .line 1
    iget-object v0, p0, Ly/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget v1, p0, Ly/b;->e:I

    .line 5
    .line 6
    const/4 v2, 0x4

    .line 7
    if-eq v1, v2, :cond_11

    .line 8
    .line 9
    iget v1, p0, Ly/b;->f:I

    .line 10
    .line 11
    if-ne v1, v2, :cond_d

    .line 12
    .line 13
    goto :goto_11

    .line 14
    :cond_d
    const/4 v1, 0x0

    .line 15
    goto :goto_12

    .line 16
    :catchall_f
    move-exception v1

    .line 17
    goto :goto_14

    .line 18
    :cond_11
    :goto_11
    const/4 v1, 0x1

    .line 19
    :goto_12
    monitor-exit v0

    .line 20
    return v1

    .line 21
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_f

    .line 22
    throw v1
.end method

.method public final k(Ly/c;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Ly/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1d

    .line 5
    .line 6
    check-cast p1, Ly/b;

    .line 7
    .line 8
    iget-object v0, p0, Ly/b;->c:Ly/c;

    .line 9
    .line 10
    iget-object v2, p1, Ly/b;->c:Ly/c;

    .line 11
    .line 12
    invoke-interface {v0, v2}, Ly/c;->k(Ly/c;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1d

    .line 17
    .line 18
    iget-object v0, p0, Ly/b;->d:Ly/c;

    .line 19
    .line 20
    iget-object p1, p1, Ly/b;->d:Ly/c;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Ly/c;->k(Ly/c;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1d

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :cond_1d
    return v1
.end method
