.class public final Lo7/k0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lo7/u;


# instance fields
.field public volatile b:Z

.field public c:Lo7/w;

.field public d:Lo7/u;

.field public e:Ln7/f1;

.field public f:Ljava/util/List;

.field public g:Lo7/o0;

.field public h:J

.field public i:J

.field public j:Ljava/util/ArrayList;

.field public final k:Lo7/g3;

.field public final l:Ln7/n;

.field public final m:[Ln7/e;

.field public final synthetic n:Lo7/l0;


# direct methods
.method public constructor <init>(Lo7/l0;Lo7/g3;[Ln7/e;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lo7/k0;->n:Lo7/l0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lo7/k0;->f:Ljava/util/List;

    .line 12
    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lo7/k0;->j:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-static {}, Ln7/n;->b()Ln7/n;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lo7/k0;->l:Ln7/n;

    .line 25
    .line 26
    iput-object p2, p0, Lo7/k0;->k:Lo7/g3;

    .line 27
    .line 28
    iput-object p3, p0, Lo7/k0;->m:[Ln7/e;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a(Ln7/h;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lo7/k0;->c:Lo7/w;

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    const-string v1, "May only be called before start"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lo7/k0;->j:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance v1, Lo7/e0;

    .line 16
    .line 17
    const/4 v2, 0x6

    .line 18
    invoke-direct {v1, v2, p0, p1}, Lo7/e0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final b(Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lo7/k0;->c:Lo7/w;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    const-string v1, "May only be called after start"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    monitor-enter p0

    .line 14
    :try_start_d
    iget-boolean v0, p0, Lo7/k0;->b:Z

    .line 15
    .line 16
    if-nez v0, :cond_1a

    .line 17
    .line 18
    iget-object v0, p0, Lo7/k0;->f:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :catchall_18
    move-exception p1

    .line 26
    goto :goto_1f

    .line 27
    :cond_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_18

    .line 28
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :goto_1f
    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_18

    .line 33
    throw p1
.end method

.method public final c(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lo7/k0;->c:Lo7/w;

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    const-string v1, "May only be called before start"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lo7/k0;->j:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance v1, Lo7/n0;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-direct {v1, p0, p1, v2}, Lo7/n0;-><init>(Ljava/lang/Object;II)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final d(Lo7/w;)V
    .registers 6

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo7/k0;->c:Lo7/w;

    .line 7
    .line 8
    if-nez v0, :cond_b

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    const-string v1, "already started"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    monitor-enter p0

    .line 19
    :try_start_12
    iget-object v0, p0, Lo7/k0;->e:Ln7/f1;

    .line 20
    .line 21
    iget-boolean v1, p0, Lo7/k0;->b:Z

    .line 22
    .line 23
    if-nez v1, :cond_23

    .line 24
    .line 25
    new-instance v2, Lo7/o0;

    .line 26
    .line 27
    invoke-direct {v2, p1}, Lo7/o0;-><init>(Lo7/w;)V

    .line 28
    .line 29
    .line 30
    iput-object v2, p0, Lo7/k0;->g:Lo7/o0;

    .line 31
    .line 32
    move-object p1, v2

    .line 33
    goto :goto_23

    .line 34
    :catchall_21
    move-exception p1

    .line 35
    goto :goto_3f

    .line 36
    :cond_23
    :goto_23
    iput-object p1, p0, Lo7/k0;->c:Lo7/w;

    .line 37
    .line 38
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    iput-wide v2, p0, Lo7/k0;->h:J

    .line 43
    .line 44
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_21

    .line 45
    if-eqz v0, :cond_39

    .line 46
    .line 47
    sget-object v1, Lo7/v;->b:Lo7/v;

    .line 48
    .line 49
    new-instance v2, Ln7/v0;

    .line 50
    .line 51
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-interface {p1, v0, v1, v2}, Lo7/w;->b(Ln7/f1;Lo7/v;Ln7/v0;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_39
    if-eqz v1, :cond_3e

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Lo7/k0;->k(Lo7/w;)V

    .line 61
    .line 62
    .line 63
    :cond_3e
    return-void

    .line 64
    :goto_3f
    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_21

    .line 65
    throw p1
.end method

.method public final e(Li7/i;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lo7/k0;->k:Lo7/g3;

    .line 2
    .line 3
    iget-object v0, v0, Lo7/g3;->a:Ln7/c;

    .line 4
    .line 5
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 6
    .line 7
    iget-object v0, v0, Ln7/c;->e:Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_15

    .line 14
    .line 15
    const-string v0, "wait_for_ready"

    .line 16
    .line 17
    iget-object v1, p1, Li7/i;->b:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    :cond_15
    monitor-enter p0

    .line 23
    :try_start_16
    iget-object v0, p0, Lo7/k0;->c:Lo7/w;

    .line 24
    .line 25
    if-nez v0, :cond_1e

    .line 26
    .line 27
    monitor-exit p0

    .line 28
    goto :goto_4e

    .line 29
    :catchall_1c
    move-exception p1

    .line 30
    goto :goto_4f

    .line 31
    :cond_1e
    iget-object v0, p0, Lo7/k0;->d:Lo7/u;

    .line 32
    .line 33
    if-eqz v0, :cond_36

    .line 34
    .line 35
    const-string v0, "buffered_nanos"

    .line 36
    .line 37
    iget-wide v1, p0, Lo7/k0;->i:J

    .line 38
    .line 39
    iget-wide v3, p0, Lo7/k0;->h:J

    .line 40
    .line 41
    sub-long/2addr v1, v3

    .line 42
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p1, v1, v0}, Li7/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lo7/k0;->d:Lo7/u;

    .line 50
    .line 51
    invoke-interface {v0, p1}, Lo7/u;->e(Li7/i;)V

    .line 52
    .line 53
    .line 54
    goto :goto_4d

    .line 55
    :cond_36
    const-string v0, "buffered_nanos"

    .line 56
    .line 57
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 58
    .line 59
    .line 60
    move-result-wide v1

    .line 61
    iget-wide v3, p0, Lo7/k0;->h:J

    .line 62
    .line 63
    sub-long/2addr v1, v3

    .line 64
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {p1, v1, v0}, Li7/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v0, "waiting_for_connection"

    .line 72
    .line 73
    iget-object p1, p1, Li7/i;->b:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    :goto_4d
    monitor-exit p0

    .line 79
    :goto_4e
    return-void

    .line 80
    :goto_4f
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_16 .. :try_end_50} :catchall_1c

    .line 81
    throw p1
.end method

.method public final f(Lt7/a;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lo7/k0;->c:Lo7/w;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    const-string v1, "May only be called after start"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-boolean v0, p0, Lo7/k0;->b:Z

    .line 14
    .line 15
    if-eqz v0, :cond_16

    .line 16
    .line 17
    iget-object v0, p0, Lo7/k0;->d:Lo7/u;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lo7/u4;->f(Lt7/a;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_16
    new-instance v0, Lo7/e0;

    .line 24
    .line 25
    const/16 v1, 0x9

    .line 26
    .line 27
    invoke-direct {v0, v1, p0, p1}, Lo7/e0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lo7/k0;->b(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final flush()V
    .registers 3

    .line 1
    iget-object v0, p0, Lo7/k0;->c:Lo7/w;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    const-string v1, "May only be called after start"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-boolean v0, p0, Lo7/k0;->b:Z

    .line 14
    .line 15
    if-eqz v0, :cond_16

    .line 16
    .line 17
    iget-object v0, p0, Lo7/k0;->d:Lo7/u;

    .line 18
    .line 19
    invoke-interface {v0}, Lo7/u4;->flush()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_16
    new-instance v0, Lo7/m0;

    .line 24
    .line 25
    const/4 v1, 0x3

    .line 26
    invoke-direct {v0, p0, v1}, Lo7/m0;-><init>(Lo7/k0;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lo7/k0;->b(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final g(Ln7/q;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lo7/k0;->c:Lo7/w;

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    const-string v1, "May only be called before start"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "decompressorRegistry"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lo7/k0;->j:Ljava/util/ArrayList;

    .line 19
    .line 20
    new-instance v1, Lo7/e0;

    .line 21
    .line 22
    const/4 v2, 0x7

    .line 23
    invoke-direct {v1, v2, p0, p1}, Lo7/e0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final h(Ln7/f1;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lo7/k0;->c:Lo7/w;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    move v0, v1

    .line 10
    :goto_9
    const-string v3, "May only be called after start"

    .line 11
    .line 12
    invoke-static {v0, v3}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "reason"

    .line 16
    .line 17
    invoke-static {p1, v0}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    monitor-enter p0

    .line 21
    :try_start_14
    iget-object v0, p0, Lo7/k0;->d:Lo7/u;

    .line 22
    .line 23
    if-nez v0, :cond_31

    .line 24
    .line 25
    sget-object v3, Lo7/u2;->c:Lo7/u2;

    .line 26
    .line 27
    if-nez v0, :cond_1d

    .line 28
    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    move v2, v1

    .line 31
    :goto_1e
    const-string v4, "realStream already set to %s"

    .line 32
    .line 33
    invoke-static {v4, v2, v0}, Lo4/b;->l(Ljava/lang/String;ZLjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iput-object v3, p0, Lo7/k0;->d:Lo7/u;

    .line 37
    .line 38
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    iput-wide v2, p0, Lo7/k0;->i:J

    .line 43
    .line 44
    iput-object p1, p0, Lo7/k0;->e:Ln7/f1;

    .line 45
    .line 46
    goto :goto_32

    .line 47
    :catchall_2e
    move-exception p1

    .line 48
    goto/16 :goto_a1

    .line 49
    .line 50
    :cond_31
    move v1, v2

    .line 51
    :goto_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_14 .. :try_end_33} :catchall_2e

    .line 52
    if-eqz v1, :cond_40

    .line 53
    .line 54
    new-instance v0, Lo7/e0;

    .line 55
    .line 56
    const/16 v1, 0xa

    .line 57
    .line 58
    invoke-direct {v0, v1, p0, p1}, Lo7/e0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lo7/k0;->b(Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    goto :goto_5d

    .line 65
    :cond_40
    invoke-virtual {p0}, Lo7/k0;->j()V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lo7/k0;->m:[Ln7/e;

    .line 69
    .line 70
    array-length v1, v0

    .line 71
    const/4 v2, 0x0

    .line 72
    :goto_47
    if-ge v2, v1, :cond_51

    .line 73
    .line 74
    aget-object v3, v0, v2

    .line 75
    .line 76
    invoke-virtual {v3, p1}, Ln7/e;->B(Ln7/f1;)V

    .line 77
    .line 78
    .line 79
    add-int/lit8 v2, v2, 0x1

    .line 80
    .line 81
    goto :goto_47

    .line 82
    :cond_51
    iget-object v0, p0, Lo7/k0;->c:Lo7/w;

    .line 83
    .line 84
    sget-object v1, Lo7/v;->b:Lo7/v;

    .line 85
    .line 86
    new-instance v2, Ln7/v0;

    .line 87
    .line 88
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-interface {v0, p1, v1, v2}, Lo7/w;->b(Ln7/f1;Lo7/v;Ln7/v0;)V

    .line 92
    .line 93
    .line 94
    :goto_5d
    iget-object p1, p0, Lo7/k0;->n:Lo7/l0;

    .line 95
    .line 96
    iget-object p1, p1, Lo7/l0;->b:Ljava/lang/Object;

    .line 97
    .line 98
    monitor-enter p1

    .line 99
    :try_start_62
    iget-object v0, p0, Lo7/k0;->n:Lo7/l0;

    .line 100
    .line 101
    iget-object v1, v0, Lo7/l0;->g:Lo7/j0;

    .line 102
    .line 103
    if-eqz v1, :cond_96

    .line 104
    .line 105
    iget-object v0, v0, Lo7/l0;->i:Ljava/util/Collection;

    .line 106
    .line 107
    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    iget-object v1, p0, Lo7/k0;->n:Lo7/l0;

    .line 112
    .line 113
    invoke-virtual {v1}, Lo7/l0;->f()Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-nez v1, :cond_96

    .line 118
    .line 119
    if-eqz v0, :cond_96

    .line 120
    .line 121
    iget-object v0, p0, Lo7/k0;->n:Lo7/l0;

    .line 122
    .line 123
    iget-object v1, v0, Lo7/l0;->d:Ln7/k1;

    .line 124
    .line 125
    iget-object v0, v0, Lo7/l0;->f:Lo7/j0;

    .line 126
    .line 127
    invoke-virtual {v1, v0}, Ln7/k1;->b(Ljava/lang/Runnable;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lo7/k0;->n:Lo7/l0;

    .line 131
    .line 132
    iget-object v1, v0, Lo7/l0;->j:Ln7/f1;

    .line 133
    .line 134
    if-eqz v1, :cond_96

    .line 135
    .line 136
    iget-object v1, v0, Lo7/l0;->d:Ln7/k1;

    .line 137
    .line 138
    iget-object v0, v0, Lo7/l0;->g:Lo7/j0;

    .line 139
    .line 140
    invoke-virtual {v1, v0}, Ln7/k1;->b(Ljava/lang/Runnable;)V

    .line 141
    .line 142
    .line 143
    iget-object v0, p0, Lo7/k0;->n:Lo7/l0;

    .line 144
    .line 145
    const/4 v1, 0x0

    .line 146
    iput-object v1, v0, Lo7/l0;->g:Lo7/j0;

    .line 147
    .line 148
    goto :goto_96

    .line 149
    :catchall_94
    move-exception v0

    .line 150
    goto :goto_9f

    .line 151
    :cond_96
    :goto_96
    monitor-exit p1
    :try_end_97
    .catchall {:try_start_62 .. :try_end_97} :catchall_94

    .line 152
    iget-object p1, p0, Lo7/k0;->n:Lo7/l0;

    .line 153
    .line 154
    iget-object p1, p1, Lo7/l0;->d:Ln7/k1;

    .line 155
    .line 156
    invoke-virtual {p1}, Ln7/k1;->a()V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :goto_9f
    :try_start_9f
    monitor-exit p1
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_94

    .line 161
    throw v0

    .line 162
    :goto_a1
    :try_start_a1
    monitor-exit p0
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_2e

    .line 163
    throw p1
.end method

.method public final i()V
    .registers 3

    .line 1
    iget-object v0, p0, Lo7/k0;->c:Lo7/w;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    const-string v1, "May only be called after start"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lo7/m0;

    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    invoke-direct {v0, p0, v1}, Lo7/m0;-><init>(Lo7/k0;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lo7/k0;->b(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final isReady()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lo7/k0;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_b

    .line 4
    .line 5
    iget-object v0, p0, Lo7/k0;->d:Lo7/u;

    .line 6
    .line 7
    invoke-interface {v0}, Lo7/u4;->isReady()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method public final j()V
    .registers 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_5
    monitor-enter p0

    .line 7
    :try_start_6
    iget-object v1, p0, Lo7/k0;->f:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_52

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lo7/k0;->f:Ljava/util/List;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    iput-boolean v1, p0, Lo7/k0;->b:Z

    .line 20
    .line 21
    iget-object v2, p0, Lo7/k0;->g:Lo7/o0;

    .line 22
    .line 23
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_50

    .line 24
    if-eqz v2, :cond_4f

    .line 25
    .line 26
    new-instance v3, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    :goto_1e
    monitor-enter v2

    .line 32
    :try_start_1f
    iget-object v4, v2, Lo7/o0;->d:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_2f

    .line 39
    .line 40
    iput-object v0, v2, Lo7/o0;->d:Ljava/util/List;

    .line 41
    .line 42
    iput-boolean v1, v2, Lo7/o0;->c:Z

    .line 43
    .line 44
    monitor-exit v2

    .line 45
    return-void

    .line 46
    :catchall_2d
    move-exception v0

    .line 47
    goto :goto_4d

    .line 48
    :cond_2f
    iget-object v4, v2, Lo7/o0;->d:Ljava/util/List;

    .line 49
    .line 50
    iput-object v3, v2, Lo7/o0;->d:Ljava/util/List;

    .line 51
    .line 52
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_2d

    .line 53
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    :goto_38
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_48

    .line 62
    .line 63
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    check-cast v5, Ljava/lang/Runnable;

    .line 68
    .line 69
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 70
    .line 71
    .line 72
    goto :goto_38

    .line 73
    :cond_48
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 74
    .line 75
    .line 76
    move-object v3, v4

    .line 77
    goto :goto_1e

    .line 78
    :goto_4d
    :try_start_4d
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_2d

    .line 79
    throw v0

    .line 80
    :cond_4f
    return-void

    .line 81
    :catchall_50
    move-exception v0

    .line 82
    goto :goto_70

    .line 83
    :cond_52
    :try_start_52
    iget-object v1, p0, Lo7/k0;->f:Ljava/util/List;

    .line 84
    .line 85
    iput-object v0, p0, Lo7/k0;->f:Ljava/util/List;

    .line 86
    .line 87
    monitor-exit p0
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_50

    .line 88
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    :goto_5b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_6b

    .line 97
    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Ljava/lang/Runnable;

    .line 103
    .line 104
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 105
    .line 106
    .line 107
    goto :goto_5b

    .line 108
    :cond_6b
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 109
    .line 110
    .line 111
    move-object v0, v1

    .line 112
    goto :goto_5

    .line 113
    :goto_70
    :try_start_70
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_50

    .line 114
    throw v0
.end method

.method public final k(Lo7/w;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lo7/k0;->j:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_7
    if-ge v2, v1, :cond_15

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    check-cast v3, Ljava/lang/Runnable;

    .line 17
    .line 18
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 19
    .line 20
    .line 21
    goto :goto_7

    .line 22
    :cond_15
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lo7/k0;->j:Ljava/util/ArrayList;

    .line 24
    .line 25
    iget-object v0, p0, Lo7/k0;->d:Lo7/u;

    .line 26
    .line 27
    invoke-interface {v0, p1}, Lo7/u;->d(Lo7/w;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final m(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lo7/k0;->c:Lo7/w;

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    const-string v1, "May only be called before start"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lo7/k0;->j:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance v1, Lo7/n0;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-direct {v1, p0, p1, v2}, Lo7/n0;-><init>(Ljava/lang/Object;II)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final n(Ln7/o;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lo7/k0;->c:Lo7/w;

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    const-string v1, "May only be called before start"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lo7/k0;->j:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance v1, Lo7/e0;

    .line 16
    .line 17
    const/16 v2, 0x8

    .line 18
    .line 19
    invoke-direct {v1, v2, p0, p1}, Lo7/e0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final o()V
    .registers 4

    .line 1
    iget-object v0, p0, Lo7/k0;->c:Lo7/w;

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    const-string v1, "May only be called before start"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lo7/k0;->j:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance v1, Lo7/m0;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-direct {v1, p0, v2}, Lo7/m0;-><init>(Lo7/k0;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final request()V
    .registers 3

    .line 1
    iget-object v0, p0, Lo7/k0;->c:Lo7/w;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    const-string v1, "May only be called after start"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-boolean v0, p0, Lo7/k0;->b:Z

    .line 14
    .line 15
    if-eqz v0, :cond_16

    .line 16
    .line 17
    iget-object v0, p0, Lo7/k0;->d:Lo7/u;

    .line 18
    .line 19
    invoke-interface {v0}, Lo7/u4;->request()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_16
    new-instance v0, Lo7/m0;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-direct {v0, p0, v1}, Lo7/m0;-><init>(Lo7/k0;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lo7/k0;->b(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
