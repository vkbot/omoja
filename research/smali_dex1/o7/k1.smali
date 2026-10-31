.class public final Lo7/k1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ln7/z;


# instance fields
.field public final a:Ln7/a0;

.field public final b:Ljava/lang/String;

.field public final c:Lo7/u2;

.field public final d:Lo7/w4;

.field public final e:Lo7/z;

.field public final f:Ljava/util/concurrent/ScheduledExecutorService;

.field public final g:Ln7/x;

.field public final h:Lb1/m;

.field public final i:Ln7/e;

.field public final j:Ljava/util/List;

.field public final k:Ln7/k1;

.field public final l:Lo7/h1;

.field public volatile m:Ljava/util/List;

.field public n:Lo7/r0;

.field public final o:Li4/f;

.field public p:Ll/d;

.field public q:Ll/d;

.field public r:Lo7/n2;

.field public final s:Ljava/util/ArrayList;

.field public final t:Lo7/e1;

.field public u:Lo7/g1;

.field public volatile v:Lo7/g1;

.field public volatile w:Ln7/k;

.field public x:Ln7/f1;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lo7/u2;Lo7/l;Ljava/util/concurrent/ScheduledExecutorService;Lo7/u2;Ln7/k1;Lo7/w4;Ln7/x;Lb1/m;Lo7/o;Ln7/a0;Ln7/e;Ljava/util/ArrayList;)V
    .registers 20

    move-object/from16 v0, p12

    move-object/from16 v1, p13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lo7/k1;->s:Ljava/util/ArrayList;

    .line 3
    new-instance v2, Lo7/e1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lo7/e1;-><init>(Ln7/z;I)V

    iput-object v2, p0, Lo7/k1;->t:Lo7/e1;

    .line 4
    sget-object v2, Ln7/j;->e:Ln7/j;

    invoke-static {v2}, Ln7/k;->a(Ln7/j;)Ln7/k;

    move-result-object v2

    iput-object v2, p0, Lo7/k1;->w:Ln7/k;

    .line 5
    const-string v2, "addressGroups"

    invoke-static {p1, v2}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const-string v3, "addressGroups is empty"

    invoke-static {v3, v2}, Lo4/b;->d(Ljava/lang/String;Z)V

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 8
    const-string v4, "addressGroups contains null entry"

    invoke-static {v3, v4}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_32

    .line 9
    :cond_42
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 11
    iput-object p1, p0, Lo7/k1;->m:Ljava/util/List;

    .line 12
    new-instance v2, Lo7/h1;

    .line 13
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, v2, Lo7/h1;->a:Ljava/util/List;

    .line 15
    iput-object v2, p0, Lo7/k1;->l:Lo7/h1;

    .line 16
    iput-object p2, p0, Lo7/k1;->b:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lo7/k1;->c:Lo7/u2;

    .line 18
    iput-object p4, p0, Lo7/k1;->e:Lo7/z;

    .line 19
    iput-object p5, p0, Lo7/k1;->f:Ljava/util/concurrent/ScheduledExecutorService;

    .line 20
    invoke-virtual {p6}, Lo7/u2;->r()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li4/f;

    iput-object p1, p0, Lo7/k1;->o:Li4/f;

    .line 21
    iput-object p7, p0, Lo7/k1;->k:Ln7/k1;

    .line 22
    iput-object p8, p0, Lo7/k1;->d:Lo7/w4;

    .line 23
    iput-object p9, p0, Lo7/k1;->g:Ln7/x;

    .line 24
    iput-object p10, p0, Lo7/k1;->h:Lb1/m;

    .line 25
    const-string p1, "channelTracer"

    move-object/from16 p2, p11

    invoke-static {p2, p1}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    const-string p1, "logId"

    invoke-static {v0, p1}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo7/k1;->a:Ln7/a0;

    .line 27
    const-string p1, "channelLogger"

    invoke-static {v1, p1}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lo7/k1;->i:Ln7/e;

    move-object/from16 p1, p14

    .line 28
    iput-object p1, p0, Lo7/k1;->j:Ljava/util/List;

    return-void
.end method

.method public static e(Lo7/k1;Ln7/j;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lo7/k1;->k:Ln7/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ln7/k1;->d()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ln7/k;->a(Ln7/j;)Ln7/k;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lo7/k1;->g(Ln7/k;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static f(Lo7/k1;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lo7/k1;->l:Lo7/h1;

    .line 2
    .line 3
    iget-object v1, p0, Lo7/k1;->k:Ln7/k1;

    .line 4
    .line 5
    invoke-virtual {v1}, Ln7/k1;->d()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lo7/k1;->p:Ll/d;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v2, :cond_e

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    move v2, v3

    .line 16
    :goto_f
    const-string v4, "Should have no reconnectTask scheduled"

    .line 17
    .line 18
    invoke-static {v2, v4}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget v2, v0, Lo7/h1;->b:I

    .line 22
    .line 23
    if-nez v2, :cond_23

    .line 24
    .line 25
    iget v2, v0, Lo7/h1;->c:I

    .line 26
    .line 27
    if-nez v2, :cond_23

    .line 28
    .line 29
    iget-object v2, p0, Lo7/k1;->o:Li4/f;

    .line 30
    .line 31
    iput-boolean v3, v2, Li4/f;->a:Z

    .line 32
    .line 33
    invoke-virtual {v2}, Li4/f;->b()V

    .line 34
    .line 35
    .line 36
    :cond_23
    iget-object v2, v0, Lo7/h1;->a:Ljava/util/List;

    .line 37
    .line 38
    iget v3, v0, Lo7/h1;->b:I

    .line 39
    .line 40
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ln7/r;

    .line 45
    .line 46
    iget-object v2, v2, Ln7/r;->a:Ljava/util/List;

    .line 47
    .line 48
    iget v3, v0, Lo7/h1;->c:I

    .line 49
    .line 50
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Ljava/net/SocketAddress;

    .line 55
    .line 56
    instance-of v3, v2, Ln7/u;

    .line 57
    .line 58
    if-eqz v3, :cond_40

    .line 59
    .line 60
    check-cast v2, Ln7/u;

    .line 61
    .line 62
    iget-object v3, v2, Ln7/u;->c:Ljava/net/InetSocketAddress;

    .line 63
    .line 64
    goto :goto_44

    .line 65
    :cond_40
    const/4 v3, 0x0

    .line 66
    move-object v7, v3

    .line 67
    move-object v3, v2

    .line 68
    move-object v2, v7

    .line 69
    :goto_44
    iget-object v4, v0, Lo7/h1;->a:Ljava/util/List;

    .line 70
    .line 71
    iget v0, v0, Lo7/h1;->b:I

    .line 72
    .line 73
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Ln7/r;

    .line 78
    .line 79
    iget-object v0, v0, Ln7/r;->b:Ln7/b;

    .line 80
    .line 81
    sget-object v4, Ln7/r;->d:Ln7/a;

    .line 82
    .line 83
    iget-object v5, v0, Ln7/b;->a:Ljava/util/IdentityHashMap;

    .line 84
    .line 85
    invoke-virtual {v5, v4}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    check-cast v4, Ljava/lang/String;

    .line 90
    .line 91
    new-instance v5, Lo7/y;

    .line 92
    .line 93
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v6, "unknown-authority"

    .line 97
    .line 98
    iput-object v6, v5, Lo7/y;->a:Ljava/lang/String;

    .line 99
    .line 100
    sget-object v6, Ln7/b;->b:Ln7/b;

    .line 101
    .line 102
    iput-object v6, v5, Lo7/y;->b:Ln7/b;

    .line 103
    .line 104
    if-eqz v4, :cond_6a

    .line 105
    .line 106
    goto :goto_6c

    .line 107
    :cond_6a
    iget-object v4, p0, Lo7/k1;->b:Ljava/lang/String;

    .line 108
    .line 109
    :goto_6c
    const-string v6, "authority"

    .line 110
    .line 111
    invoke-static {v4, v6}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iput-object v4, v5, Lo7/y;->a:Ljava/lang/String;

    .line 115
    .line 116
    iput-object v0, v5, Lo7/y;->b:Ln7/b;

    .line 117
    .line 118
    iput-object v2, v5, Lo7/y;->c:Ln7/u;

    .line 119
    .line 120
    new-instance v0, Lo7/j1;

    .line 121
    .line 122
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 123
    .line 124
    .line 125
    iget-object v2, p0, Lo7/k1;->a:Ln7/a0;

    .line 126
    .line 127
    iput-object v2, v0, Lo7/j1;->b:Ln7/a0;

    .line 128
    .line 129
    new-instance v2, Lo7/g1;

    .line 130
    .line 131
    iget-object v4, p0, Lo7/k1;->e:Lo7/z;

    .line 132
    .line 133
    invoke-interface {v4, v3, v5, v0}, Lo7/z;->I(Ljava/net/SocketAddress;Lo7/y;Lo7/j1;)Lo7/c0;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    iget-object v4, p0, Lo7/k1;->h:Lb1/m;

    .line 138
    .line 139
    invoke-direct {v2, v3, v4}, Lo7/g1;-><init>(Lo7/c0;Lb1/m;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2}, Lo7/u0;->c()Ln7/a0;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    iput-object v3, v0, Lo7/j1;->b:Ln7/a0;

    .line 147
    .line 148
    iget-object v3, p0, Lo7/k1;->g:Ln7/x;

    .line 149
    .line 150
    iget-object v3, v3, Ln7/x;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 151
    .line 152
    invoke-virtual {v2}, Lo7/u0;->c()Ln7/a0;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    iget-wide v4, v4, Ln7/a0;->c:J

    .line 157
    .line 158
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    check-cast v3, Ln7/z;

    .line 167
    .line 168
    iput-object v2, p0, Lo7/k1;->u:Lo7/g1;

    .line 169
    .line 170
    iget-object v3, p0, Lo7/k1;->s:Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    new-instance v3, Lcom/bumptech/glide/manager/t;

    .line 176
    .line 177
    invoke-direct {v3, p0, v2}, Lcom/bumptech/glide/manager/t;-><init>(Lo7/k1;Lo7/g1;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, v3}, Lo7/u0;->b(Lo7/m2;)Ljava/lang/Runnable;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    if-eqz v2, :cond_bc

    .line 185
    .line 186
    invoke-virtual {v1, v2}, Ln7/k1;->b(Ljava/lang/Runnable;)V

    .line 187
    .line 188
    .line 189
    :cond_bc
    iget-object p0, p0, Lo7/k1;->i:Ln7/e;

    .line 190
    .line 191
    iget-object v0, v0, Lo7/j1;->b:Ln7/a0;

    .line 192
    .line 193
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    const/4 v1, 0x2

    .line 198
    const-string v2, "Started transport {0}"

    .line 199
    .line 200
    invoke-virtual {p0, v1, v2, v0}, Ln7/e;->n(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    return-void
.end method

.method public static h(Ln7/f1;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Ln7/f1;->a:Ln7/e1;

    .line 7
    .line 8
    iget-object v2, p0, Ln7/f1;->c:Ljava/lang/Throwable;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Ln7/f1;->b:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz p0, :cond_1d

    .line 16
    .line 17
    const-string v1, "("

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p0, ")"

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    :cond_1d
    if-eqz v2, :cond_2c

    .line 31
    .line 32
    const-string p0, "["

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p0, "]"

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method


# virtual methods
.method public final c()Ln7/a0;
    .registers 2

    .line 1
    iget-object v0, p0, Lo7/k1;->a:Ln7/a0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g(Ln7/k;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lo7/k1;->k:Ln7/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ln7/k1;->d()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo7/k1;->w:Ln7/k;

    .line 7
    .line 8
    iget-object v0, v0, Ln7/k;->a:Ln7/j;

    .line 9
    .line 10
    iget-object v1, p1, Ln7/k;->a:Ln7/j;

    .line 11
    .line 12
    if-eq v0, v1, :cond_34

    .line 13
    .line 14
    iget-object v0, p0, Lo7/k1;->w:Ln7/k;

    .line 15
    .line 16
    iget-object v0, v0, Ln7/k;->a:Ln7/j;

    .line 17
    .line 18
    sget-object v1, Ln7/j;->f:Ln7/j;

    .line 19
    .line 20
    if-eq v0, v1, :cond_17

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    const/4 v0, 0x0

    .line 25
    :goto_18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "Cannot transition out of SHUTDOWN to "

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lo7/k1;->w:Ln7/k;

    .line 43
    .line 44
    iget-object v0, p0, Lo7/k1;->d:Lo7/w4;

    .line 45
    .line 46
    iget-object v0, v0, Lo7/w4;->c:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Ln7/i0;

    .line 49
    .line 50
    invoke-interface {v0, p1}, Ln7/i0;->a(Ln7/k;)V

    .line 51
    .line 52
    .line 53
    :cond_34
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {p0}, Lcom/bumptech/glide/c;->t(Ljava/lang/Object;)Lcom/bumptech/glide/manager/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lo7/k1;->a:Ln7/a0;

    .line 6
    .line 7
    iget-wide v1, v1, Ln7/a0;->c:J

    .line 8
    .line 9
    const-string v3, "logId"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, v3}, Lcom/bumptech/glide/manager/s;->b(JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "addressGroups"

    .line 15
    .line 16
    iget-object v2, p0, Lo7/k1;->m:Ljava/util/List;

    .line 17
    .line 18
    invoke-virtual {v0, v2, v1}, Lcom/bumptech/glide/manager/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/s;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
