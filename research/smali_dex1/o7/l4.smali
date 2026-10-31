.class public final Lo7/l4;
.super Lo7/p4;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# virtual methods
.method public final p(Lo7/m4;)Z
    .registers 3

    .line 1
    monitor-enter p1

    .line 2
    :try_start_1
    iget v0, p1, Lo7/m4;->d:I

    .line 3
    .line 4
    if-nez v0, :cond_d

    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    iput v0, p1, Lo7/m4;->d:I

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    monitor-exit p1

    .line 11
    return v0

    .line 12
    :catchall_b
    move-exception v0

    .line 13
    goto :goto_10

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    monitor-exit p1

    .line 16
    return v0

    .line 17
    :goto_10
    monitor-exit p1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_b

    .line 18
    throw v0
.end method

.method public final q(Lo7/m4;)V
    .registers 3

    .line 1
    monitor-enter p1

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_2
    iput v0, p1, Lo7/m4;->d:I

    .line 4
    .line 5
    monitor-exit p1

    .line 6
    return-void

    .line 7
    :catchall_6
    move-exception v0

    .line 8
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    .line 9
    throw v0
.end method
