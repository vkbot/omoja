.class public final Lo7/l0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lo7/n2;


# instance fields
.field public final a:Ln7/a0;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Ln7/k1;

.field public e:Lo7/j0;

.field public f:Lo7/j0;

.field public g:Lo7/j0;

.field public h:Ln/p;

.field public i:Ljava/util/Collection;

.field public j:Ln7/f1;

.field public k:Ln7/h0;

.field public l:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ln7/k1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lo7/l0;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Ln7/a0;->a(Ljava/lang/Class;Ljava/lang/String;)Ln7/a0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lo7/l0;->a:Ln7/a0;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/Object;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lo7/l0;->b:Ljava/lang/Object;

    .line 19
    .line 20
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lo7/l0;->i:Ljava/util/Collection;

    .line 26
    .line 27
    iput-object p1, p0, Lo7/l0;->c:Ljava/util/concurrent/Executor;

    .line 28
    .line 29
    iput-object p2, p0, Lo7/l0;->d:Ln7/k1;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final a(Ln7/f1;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lo7/l0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lo7/l0;->j:Ln7/f1;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object p1, p0, Lo7/l0;->j:Ln7/f1;

    .line 13
    .line 14
    iget-object v1, p0, Lo7/l0;->d:Ln7/k1;

    .line 15
    .line 16
    new-instance v2, Lo7/e0;

    .line 17
    .line 18
    const/4 v3, 0x5

    .line 19
    invoke-direct {v2, v3, p0, p1}, Lo7/e0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ln7/k1;->b(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lo7/l0;->f()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lo7/l0;->g:Lo7/j0;

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-object v1, p0, Lo7/l0;->d:Ln7/k1;

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ln7/k1;->b(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lo7/l0;->g:Lo7/j0;

    .line 42
    .line 43
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    iget-object p1, p0, Lo7/l0;->d:Ln7/k1;

    .line 45
    .line 46
    invoke-virtual {p1}, Ln7/k1;->a()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    throw p1
.end method

.method public final b(Lo7/m2;)Ljava/lang/Runnable;
    .locals 2

    .line 1
    check-cast p1, Ln/p;

    .line 2
    .line 3
    iput-object p1, p0, Lo7/l0;->h:Ln/p;

    .line 4
    .line 5
    new-instance v0, Lo7/j0;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p1, v1}, Lo7/j0;-><init>(Ln/p;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lo7/l0;->e:Lo7/j0;

    .line 12
    .line 13
    new-instance v0, Lo7/j0;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-direct {v0, p1, v1}, Lo7/j0;-><init>(Ln/p;I)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lo7/l0;->f:Lo7/j0;

    .line 20
    .line 21
    new-instance v0, Lo7/j0;

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    invoke-direct {v0, p1, v1}, Lo7/j0;-><init>(Ln/p;I)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lo7/l0;->g:Lo7/j0;

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    return-object p1
.end method

.method public final c()Ln7/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lo7/l0;->a:Ln7/a0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d(Ln7/x0;Ln7/v0;Ln7/c;[Ln7/e;)Lo7/u;
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Lo7/g3;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lo7/g3;-><init>(Ln7/x0;Ln7/v0;Ln7/c;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    const-wide/16 v1, -0x1

    .line 8
    .line 9
    :goto_0
    iget-object p2, p0, Lo7/l0;->b:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    iget-object v3, p0, Lo7/l0;->j:Ln7/f1;

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    new-instance p1, Lo7/s0;

    .line 17
    .line 18
    sget-object p3, Lo7/v;->b:Lo7/v;

    .line 19
    .line 20
    invoke-direct {p1, v3, p3, p4}, Lo7/s0;-><init>(Ln7/f1;Lo7/v;[Ln7/e;)V

    .line 21
    .line 22
    .line 23
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :goto_1
    iget-object p2, p0, Lo7/l0;->d:Ln7/k1;

    .line 25
    .line 26
    invoke-virtual {p2}, Ln7/k1;->a()V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_2

    .line 32
    :cond_0
    :try_start_2
    iget-object v3, p0, Lo7/l0;->k:Ln7/h0;

    .line 33
    .line 34
    if-nez v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0, v0, p4}, Lo7/l0;->e(Lo7/g3;[Ln7/e;)Lo7/k0;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    monitor-exit p2

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    if-eqz p1, :cond_2

    .line 43
    .line 44
    iget-wide v4, p0, Lo7/l0;->l:J

    .line 45
    .line 46
    cmp-long p1, v1, v4

    .line 47
    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    invoke-virtual {p0, v0, p4}, Lo7/l0;->e(Lo7/g3;[Ln7/e;)Lo7/k0;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    monitor-exit p2

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget-wide v1, p0, Lo7/l0;->l:J

    .line 57
    .line 58
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    :try_start_3
    invoke-virtual {v3, v0}, Ln7/h0;->a(Lo7/g3;)Ln7/f0;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 64
    .line 65
    iget-object v4, p3, Ln7/c;->e:Ljava/lang/Boolean;

    .line 66
    .line 67
    invoke-virtual {p2, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    invoke-static {p1, p2}, Lo7/y0;->f(Ln7/f0;Z)Lo7/x;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    iget-object p2, v0, Lo7/g3;->c:Ln7/x0;

    .line 78
    .line 79
    iget-object p3, v0, Lo7/g3;->b:Ln7/v0;

    .line 80
    .line 81
    iget-object v0, v0, Lo7/g3;->a:Ln7/c;

    .line 82
    .line 83
    invoke-interface {p1, p2, p3, v0, p4}, Lo7/x;->d(Ln7/x0;Ln7/v0;Ln7/c;[Ln7/e;)Lo7/u;

    .line 84
    .line 85
    .line 86
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 87
    goto :goto_1

    .line 88
    :catchall_1
    move-exception p1

    .line 89
    goto :goto_3

    .line 90
    :cond_3
    move-object p1, v3

    .line 91
    goto :goto_0

    .line 92
    :goto_2
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 93
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 94
    :goto_3
    iget-object p2, p0, Lo7/l0;->d:Ln7/k1;

    .line 95
    .line 96
    invoke-virtual {p2}, Ln7/k1;->a()V

    .line 97
    .line 98
    .line 99
    throw p1
.end method

.method public final e(Lo7/g3;[Ln7/e;)Lo7/k0;
    .locals 3

    .line 1
    new-instance v0, Lo7/k0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lo7/k0;-><init>(Lo7/l0;Lo7/g3;[Ln7/e;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lo7/l0;->i:Ljava/util/Collection;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lo7/l0;->b:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter p1

    .line 14
    :try_start_0
    iget-object v1, p0, Lo7/l0;->i:Ljava/util/Collection;

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    const/4 p1, 0x1

    .line 22
    if-ne v1, p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lo7/l0;->d:Ln7/k1;

    .line 25
    .line 26
    iget-object v1, p0, Lo7/l0;->e:Lo7/j0;

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Ln7/k1;->b(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    array-length p1, p2

    .line 32
    const/4 v1, 0x0

    .line 33
    :goto_0
    if-ge v1, p1, :cond_1

    .line 34
    .line 35
    aget-object v2, p2, v1

    .line 36
    .line 37
    invoke-virtual {v2}, Ln7/e;->a()V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-object v0

    .line 44
    :catchall_0
    move-exception p2

    .line 45
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw p2
.end method

.method public final f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lo7/l0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lo7/l0;->i:Ljava/util/Collection;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    xor-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return v1

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw v1
.end method

.method public final g(Ln7/h0;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lo7/l0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lo7/l0;->k:Ln7/h0;

    .line 5
    .line 6
    iget-wide v1, p0, Lo7/l0;->l:J

    .line 7
    .line 8
    const-wide/16 v3, 0x1

    .line 9
    .line 10
    add-long/2addr v1, v3

    .line 11
    iput-wide v1, p0, Lo7/l0;->l:J

    .line 12
    .line 13
    if-eqz p1, :cond_c

    .line 14
    .line 15
    invoke-virtual {p0}, Lo7/l0;->f()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto/16 :goto_5

    .line 22
    .line 23
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 24
    .line 25
    iget-object v2, p0, Lo7/l0;->i:Ljava/util/Collection;

    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 28
    .line 29
    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/4 v3, 0x0

    .line 41
    :cond_1
    :goto_0
    if-ge v3, v2, :cond_8

    .line 42
    .line 43
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    check-cast v4, Lo7/k0;

    .line 50
    .line 51
    iget-object v5, v4, Lo7/k0;->k:Lo7/g3;

    .line 52
    .line 53
    invoke-virtual {p1, v5}, Ln7/h0;->a(Lo7/g3;)Ln7/f0;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    iget-object v6, v4, Lo7/k0;->k:Lo7/g3;

    .line 58
    .line 59
    iget-object v6, v6, Lo7/g3;->a:Ln7/c;

    .line 60
    .line 61
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 62
    .line 63
    iget-object v8, v6, Ln7/c;->e:Ljava/lang/Boolean;

    .line 64
    .line 65
    invoke-virtual {v7, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    invoke-static {v5, v7}, Lo7/y0;->f(Ln7/f0;Z)Lo7/x;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    if-eqz v5, :cond_1

    .line 74
    .line 75
    iget-object v7, p0, Lo7/l0;->c:Ljava/util/concurrent/Executor;

    .line 76
    .line 77
    iget-object v6, v6, Ln7/c;->b:Ljava/util/concurrent/Executor;

    .line 78
    .line 79
    if-eqz v6, :cond_2

    .line 80
    .line 81
    move-object v7, v6

    .line 82
    :cond_2
    iget-object v6, v4, Lo7/k0;->l:Ln7/n;

    .line 83
    .line 84
    invoke-virtual {v6}, Ln7/n;->a()Ln7/n;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    :try_start_1
    iget-object v9, v4, Lo7/k0;->k:Lo7/g3;

    .line 89
    .line 90
    iget-object v10, v9, Lo7/g3;->c:Ln7/x0;

    .line 91
    .line 92
    iget-object v11, v9, Lo7/g3;->b:Ln7/v0;

    .line 93
    .line 94
    iget-object v9, v9, Lo7/g3;->a:Ln7/c;

    .line 95
    .line 96
    iget-object v12, v4, Lo7/k0;->m:[Ln7/e;

    .line 97
    .line 98
    invoke-interface {v5, v10, v11, v9, v12}, Lo7/x;->d(Ln7/x0;Ln7/v0;Ln7/c;[Ln7/e;)Lo7/u;

    .line 99
    .line 100
    .line 101
    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    invoke-virtual {v6, v8}, Ln7/n;->c(Ln7/n;)V

    .line 103
    .line 104
    .line 105
    monitor-enter v4

    .line 106
    :try_start_2
    iget-object v6, v4, Lo7/k0;->d:Lo7/u;

    .line 107
    .line 108
    const/4 v8, 0x0

    .line 109
    if-eqz v6, :cond_3

    .line 110
    .line 111
    monitor-exit v4

    .line 112
    goto :goto_2

    .line 113
    :catchall_0
    move-exception p1

    .line 114
    goto :goto_3

    .line 115
    :cond_3
    const-string v6, "stream"

    .line 116
    .line 117
    invoke-static {v5, v6}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object v6, v4, Lo7/k0;->d:Lo7/u;

    .line 121
    .line 122
    const/4 v9, 0x1

    .line 123
    if-nez v6, :cond_4

    .line 124
    .line 125
    move v10, v9

    .line 126
    goto :goto_1

    .line 127
    :cond_4
    const/4 v10, 0x0

    .line 128
    :goto_1
    const-string v11, "realStream already set to %s"

    .line 129
    .line 130
    invoke-static {v11, v10, v6}, Lo4/b;->l(Ljava/lang/String;ZLjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    iput-object v5, v4, Lo7/k0;->d:Lo7/u;

    .line 134
    .line 135
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 136
    .line 137
    .line 138
    move-result-wide v5

    .line 139
    iput-wide v5, v4, Lo7/k0;->i:J

    .line 140
    .line 141
    iget-object v5, v4, Lo7/k0;->c:Lo7/w;

    .line 142
    .line 143
    if-nez v5, :cond_5

    .line 144
    .line 145
    iput-object v8, v4, Lo7/k0;->f:Ljava/util/List;

    .line 146
    .line 147
    iput-boolean v9, v4, Lo7/k0;->b:Z

    .line 148
    .line 149
    :cond_5
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    if-nez v5, :cond_6

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_6
    invoke-virtual {v4, v5}, Lo7/k0;->k(Lo7/w;)V

    .line 154
    .line 155
    .line 156
    new-instance v8, Lo7/m0;

    .line 157
    .line 158
    const/4 v5, 0x2

    .line 159
    invoke-direct {v8, v4, v5}, Lo7/m0;-><init>(Lo7/k0;I)V

    .line 160
    .line 161
    .line 162
    :goto_2
    if-eqz v8, :cond_7

    .line 163
    .line 164
    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 165
    .line 166
    .line 167
    :cond_7
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :goto_3
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 173
    throw p1

    .line 174
    :catchall_1
    move-exception p1

    .line 175
    invoke-virtual {v6, v8}, Ln7/n;->c(Ln7/n;)V

    .line 176
    .line 177
    .line 178
    throw p1

    .line 179
    :cond_8
    iget-object p1, p0, Lo7/l0;->b:Ljava/lang/Object;

    .line 180
    .line 181
    monitor-enter p1

    .line 182
    :try_start_4
    invoke-virtual {p0}, Lo7/l0;->f()Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-nez v1, :cond_9

    .line 187
    .line 188
    monitor-exit p1

    .line 189
    return-void

    .line 190
    :catchall_2
    move-exception v0

    .line 191
    goto :goto_4

    .line 192
    :cond_9
    iget-object v1, p0, Lo7/l0;->i:Ljava/util/Collection;

    .line 193
    .line 194
    invoke-interface {v1, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 195
    .line 196
    .line 197
    iget-object v0, p0, Lo7/l0;->i:Ljava/util/Collection;

    .line 198
    .line 199
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-eqz v0, :cond_a

    .line 204
    .line 205
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 206
    .line 207
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 208
    .line 209
    .line 210
    iput-object v0, p0, Lo7/l0;->i:Ljava/util/Collection;

    .line 211
    .line 212
    :cond_a
    invoke-virtual {p0}, Lo7/l0;->f()Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-nez v0, :cond_b

    .line 217
    .line 218
    iget-object v0, p0, Lo7/l0;->d:Ln7/k1;

    .line 219
    .line 220
    iget-object v1, p0, Lo7/l0;->f:Lo7/j0;

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Ln7/k1;->b(Ljava/lang/Runnable;)V

    .line 223
    .line 224
    .line 225
    iget-object v0, p0, Lo7/l0;->j:Ln7/f1;

    .line 226
    .line 227
    if-eqz v0, :cond_b

    .line 228
    .line 229
    iget-object v0, p0, Lo7/l0;->g:Lo7/j0;

    .line 230
    .line 231
    if-eqz v0, :cond_b

    .line 232
    .line 233
    iget-object v1, p0, Lo7/l0;->d:Ln7/k1;

    .line 234
    .line 235
    invoke-virtual {v1, v0}, Ln7/k1;->b(Ljava/lang/Runnable;)V

    .line 236
    .line 237
    .line 238
    const/4 v0, 0x0

    .line 239
    iput-object v0, p0, Lo7/l0;->g:Lo7/j0;

    .line 240
    .line 241
    :cond_b
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 242
    iget-object p1, p0, Lo7/l0;->d:Ln7/k1;

    .line 243
    .line 244
    invoke-virtual {p1}, Ln7/k1;->a()V

    .line 245
    .line 246
    .line 247
    return-void

    .line 248
    :goto_4
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 249
    throw v0

    .line 250
    :catchall_3
    move-exception p1

    .line 251
    goto :goto_6

    .line 252
    :cond_c
    :goto_5
    :try_start_6
    monitor-exit v0

    .line 253
    return-void

    .line 254
    :goto_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 255
    throw p1
.end method
