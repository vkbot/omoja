.class public final Lo7/e2;
.super Ln7/t;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final d:Ln7/e0;

.field public final e:Ln7/a0;

.field public final f:Lo7/m;

.field public final g:Lo7/o;

.field public h:Ljava/util/List;

.field public i:Lo7/k1;

.field public j:Z

.field public k:Z

.field public l:Ll/d;

.field public final synthetic m:Lo7/f2;


# direct methods
.method public constructor <init>(Lo7/f2;Ln7/e0;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo7/e2;->m:Lo7/f2;

    .line 5
    .line 6
    iget-object v0, p2, Ln7/e0;->b:Ljava/util/List;

    .line 7
    .line 8
    iput-object v0, p0, Lo7/e2;->h:Ljava/util/List;

    .line 9
    .line 10
    iget-object v1, p1, Lo7/f2;->l:Lo7/u2;

    .line 11
    .line 12
    iput-object p2, p0, Lo7/e2;->d:Ln7/e0;

    .line 13
    .line 14
    iget-object p1, p1, Lo7/f2;->t:Ln7/d;

    .line 15
    .line 16
    invoke-virtual {p1}, Ln7/d;->e()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance p2, Ln7/a0;

    .line 21
    .line 22
    sget-object v2, Ln7/a0;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    const-string v4, "Subchannel"

    .line 29
    .line 30
    invoke-direct {p2, v2, v3, v4, p1}, Ln7/a0;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iput-object p2, p0, Lo7/e2;->e:Ln7/a0;

    .line 34
    .line 35
    new-instance p1, Lo7/o;

    .line 36
    .line 37
    invoke-virtual {v1}, Lo7/u2;->q()J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v5, "Subchannel for "

    .line 44
    .line 45
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-direct {p1, p2, v2, v3, v0}, Lo7/o;-><init>(Ln7/a0;JLjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lo7/e2;->g:Lo7/o;

    .line 59
    .line 60
    new-instance p2, Lo7/m;

    .line 61
    .line 62
    invoke-direct {p2, p1, v1}, Lo7/m;-><init>(Lo7/o;Lo7/u2;)V

    .line 63
    .line 64
    .line 65
    iput-object p2, p0, Lo7/e2;->f:Lo7/m;

    .line 66
    .line 67
    return-void
.end method


# virtual methods
.method public final c()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lo7/e2;->m:Lo7/f2;

    .line 2
    .line 3
    iget-object v0, v0, Lo7/f2;->m:Ln7/k1;

    .line 4
    .line 5
    invoke-virtual {v0}, Ln7/k1;->d()V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lo7/e2;->j:Z

    .line 9
    .line 10
    const-string v1, "not started"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lo7/e2;->h:Ljava/util/List;

    .line 16
    .line 17
    return-object v0
.end method

.method public final d()Ln7/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lo7/e2;->d:Ln7/e0;

    .line 2
    .line 3
    iget-object v0, v0, Ln7/e0;->c:Ln7/b;

    .line 4
    .line 5
    return-object v0
.end method

.method public final e()Ln7/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lo7/e2;->f:Lo7/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lo7/e2;->j:Z

    .line 2
    .line 3
    const-string v1, "Subchannel is not started"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lo7/e2;->i:Lo7/k1;

    .line 9
    .line 10
    return-object v0
.end method

.method public final l()V
    .locals 4

    .line 1
    iget-object v0, p0, Lo7/e2;->m:Lo7/f2;

    .line 2
    .line 3
    iget-object v0, v0, Lo7/f2;->m:Ln7/k1;

    .line 4
    .line 5
    invoke-virtual {v0}, Ln7/k1;->d()V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lo7/e2;->j:Z

    .line 9
    .line 10
    const-string v1, "not started"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lo7/e2;->i:Lo7/k1;

    .line 16
    .line 17
    iget-object v1, v0, Lo7/k1;->v:Lo7/g1;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v1, v0, Lo7/k1;->k:Ln7/k1;

    .line 23
    .line 24
    new-instance v2, Lo7/f1;

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    invoke-direct {v2, v0, v3}, Lo7/f1;-><init>(Lo7/k1;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ln7/k1;->execute(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final n()V
    .locals 8

    .line 1
    iget-object v0, p0, Lo7/e2;->m:Lo7/f2;

    .line 2
    .line 3
    iget-object v1, v0, Lo7/f2;->m:Ln7/k1;

    .line 4
    .line 5
    invoke-virtual {v1}, Ln7/k1;->d()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lo7/e2;->i:Lo7/k1;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iput-boolean v2, p0, Lo7/e2;->k:Z

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-boolean v1, p0, Lo7/e2;->k:Z

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    iget-boolean v1, v0, Lo7/f2;->H:Z

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lo7/e2;->l:Ll/d;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1}, Ll/d;->j()V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Lo7/e2;->l:Ll/d;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void

    .line 36
    :cond_2
    iput-boolean v2, p0, Lo7/e2;->k:Z

    .line 37
    .line 38
    :goto_0
    iget-boolean v1, v0, Lo7/f2;->H:Z

    .line 39
    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    iget-object v2, v0, Lo7/f2;->m:Ln7/k1;

    .line 43
    .line 44
    new-instance v3, Lo7/q1;

    .line 45
    .line 46
    new-instance v1, Lcom/bumptech/glide/m;

    .line 47
    .line 48
    const/16 v4, 0x11

    .line 49
    .line 50
    invoke-direct {v1, v4, p0}, Lcom/bumptech/glide/m;-><init>(ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {v3, v1}, Lo7/q1;-><init>(Ljava/lang/Runnable;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, v0, Lo7/f2;->f:Lo7/l;

    .line 57
    .line 58
    iget-object v0, v0, Lo7/l;->b:Lp7/g;

    .line 59
    .line 60
    iget-object v7, v0, Lp7/g;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 61
    .line 62
    const-wide/16 v4, 0x5

    .line 63
    .line 64
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 65
    .line 66
    invoke-virtual/range {v2 .. v7}, Ln7/k1;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Ll/d;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Lo7/e2;->l:Ll/d;

    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    iget-object v0, p0, Lo7/e2;->i:Lo7/k1;

    .line 74
    .line 75
    sget-object v1, Lo7/f2;->e0:Ln7/f1;

    .line 76
    .line 77
    iget-object v2, v0, Lo7/k1;->k:Ln7/k1;

    .line 78
    .line 79
    new-instance v3, Lo7/e0;

    .line 80
    .line 81
    const/16 v4, 0xf

    .line 82
    .line 83
    invoke-direct {v3, v4, v0, v1}, Lo7/e0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v3}, Ln7/k1;->execute(Ljava/lang/Runnable;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final p(Ln7/i0;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lo7/e2;->m:Lo7/f2;

    .line 4
    .line 5
    iget-object v2, v1, Lo7/f2;->m:Ln7/k1;

    .line 6
    .line 7
    invoke-virtual {v2}, Ln7/k1;->d()V

    .line 8
    .line 9
    .line 10
    iget-boolean v2, v0, Lo7/e2;->j:Z

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    xor-int/2addr v2, v3

    .line 14
    const-string v4, "already started"

    .line 15
    .line 16
    invoke-static {v2, v4}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-boolean v2, v0, Lo7/e2;->k:Z

    .line 20
    .line 21
    xor-int/2addr v2, v3

    .line 22
    const-string v4, "already shutdown"

    .line 23
    .line 24
    invoke-static {v2, v4}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-boolean v2, v1, Lo7/f2;->H:Z

    .line 28
    .line 29
    xor-int/2addr v2, v3

    .line 30
    const-string v4, "Channel is being terminated"

    .line 31
    .line 32
    invoke-static {v2, v4}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iput-boolean v3, v0, Lo7/e2;->j:Z

    .line 36
    .line 37
    new-instance v5, Lo7/k1;

    .line 38
    .line 39
    iget-object v2, v0, Lo7/e2;->d:Ln7/e0;

    .line 40
    .line 41
    iget-object v6, v2, Ln7/e0;->b:Ljava/util/List;

    .line 42
    .line 43
    iget-object v2, v1, Lo7/f2;->t:Ln7/d;

    .line 44
    .line 45
    invoke-virtual {v2}, Ln7/d;->e()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    iget-object v8, v1, Lo7/f2;->s:Lo7/u2;

    .line 50
    .line 51
    iget-object v9, v1, Lo7/f2;->f:Lo7/l;

    .line 52
    .line 53
    iget-object v2, v9, Lo7/l;->b:Lp7/g;

    .line 54
    .line 55
    iget-object v10, v2, Lp7/g;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 56
    .line 57
    iget-object v11, v1, Lo7/f2;->p:Lo7/u2;

    .line 58
    .line 59
    iget-object v12, v1, Lo7/f2;->m:Ln7/k1;

    .line 60
    .line 61
    new-instance v13, Lo7/w4;

    .line 62
    .line 63
    const/4 v2, 0x4

    .line 64
    move-object/from16 v3, p1

    .line 65
    .line 66
    invoke-direct {v13, v2, v0, v3}, Lo7/w4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iget-object v14, v1, Lo7/f2;->O:Ln7/x;

    .line 70
    .line 71
    iget-object v2, v1, Lo7/f2;->K:Lo7/u2;

    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    new-instance v15, Lb1/m;

    .line 77
    .line 78
    const/16 v2, 0xb

    .line 79
    .line 80
    invoke-direct {v15, v2}, Lb1/m;-><init>(I)V

    .line 81
    .line 82
    .line 83
    iget-object v2, v0, Lo7/e2;->f:Lo7/m;

    .line 84
    .line 85
    iget-object v3, v1, Lo7/f2;->u:Ljava/util/ArrayList;

    .line 86
    .line 87
    iget-object v4, v0, Lo7/e2;->g:Lo7/o;

    .line 88
    .line 89
    move-object/from16 v18, v2

    .line 90
    .line 91
    iget-object v2, v0, Lo7/e2;->e:Ln7/a0;

    .line 92
    .line 93
    move-object/from16 v17, v2

    .line 94
    .line 95
    move-object/from16 v19, v3

    .line 96
    .line 97
    move-object/from16 v16, v4

    .line 98
    .line 99
    invoke-direct/range {v5 .. v19}, Lo7/k1;-><init>(Ljava/util/List;Ljava/lang/String;Lo7/u2;Lo7/l;Ljava/util/concurrent/ScheduledExecutorService;Lo7/u2;Ln7/k1;Lo7/w4;Ln7/x;Lb1/m;Lo7/o;Ln7/a0;Ln7/e;Ljava/util/ArrayList;)V

    .line 100
    .line 101
    .line 102
    iget-object v2, v1, Lo7/f2;->M:Lo7/o;

    .line 103
    .line 104
    iget-object v3, v1, Lo7/f2;->l:Lo7/u2;

    .line 105
    .line 106
    invoke-virtual {v3}, Lo7/u2;->q()J

    .line 107
    .line 108
    .line 109
    move-result-wide v8

    .line 110
    move-object v10, v5

    .line 111
    new-instance v5, Ln7/w;

    .line 112
    .line 113
    const-string v6, "Child Subchannel started"

    .line 114
    .line 115
    sget-object v7, Ln7/v;->b:Ln7/v;

    .line 116
    .line 117
    invoke-direct/range {v5 .. v10}, Ln7/w;-><init>(Ljava/lang/String;Ln7/v;JLo7/k1;)V

    .line 118
    .line 119
    .line 120
    move-object v3, v5

    .line 121
    move-object v5, v10

    .line 122
    invoke-virtual {v2, v3}, Lo7/o;->b(Ln7/w;)V

    .line 123
    .line 124
    .line 125
    iput-object v5, v0, Lo7/e2;->i:Lo7/k1;

    .line 126
    .line 127
    iget-object v2, v1, Lo7/f2;->O:Ln7/x;

    .line 128
    .line 129
    iget-object v2, v2, Ln7/x;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 130
    .line 131
    invoke-virtual {v5}, Lo7/k1;->c()Ln7/a0;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    iget-wide v3, v3, Ln7/a0;->c:J

    .line 136
    .line 137
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    check-cast v2, Ln7/z;

    .line 146
    .line 147
    iget-object v1, v1, Lo7/f2;->A:Ljava/util/HashSet;

    .line 148
    .line 149
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method public final q(Ljava/util/List;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lo7/e2;->m:Lo7/f2;

    .line 2
    .line 3
    iget-object v0, v0, Lo7/f2;->m:Ln7/k1;

    .line 4
    .line 5
    invoke-virtual {v0}, Ln7/k1;->d()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lo7/e2;->h:Ljava/util/List;

    .line 9
    .line 10
    iget-object v0, p0, Lo7/e2;->i:Lo7/k1;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v3, "newAddressGroups contains null entry"

    .line 30
    .line 31
    invoke-static {v2, v3}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    xor-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    const-string v2, "newAddressGroups is empty"

    .line 42
    .line 43
    invoke-static {v2, v1}, Lo4/b;->d(Ljava/lang/String;Z)V

    .line 44
    .line 45
    .line 46
    new-instance v1, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object v1, v0, Lo7/k1;->k:Ln7/k1;

    .line 56
    .line 57
    new-instance v2, Lo7/e0;

    .line 58
    .line 59
    const/16 v3, 0xe

    .line 60
    .line 61
    invoke-direct {v2, v3, v0, p1}, Lo7/e0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ln7/k1;->execute(Ljava/lang/Runnable;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lo7/e2;->e:Ln7/a0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ln7/a0;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
