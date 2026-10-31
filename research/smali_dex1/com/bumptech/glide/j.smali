.class public final Lcom/bumptech/glide/j;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Ln/u;

.field public final b:Li7/i;

.field public final c:Ll/d;

.field public final d:Li7/i;

.field public final e:Lcom/bumptech/glide/load/data/i;

.field public final f:Li7/i;

.field public final g:Li7/i;

.field public final h:Ll/d;

.field public final i:Lx/b;

.field public final j:Ld0/d;


# direct methods
.method public constructor <init>()V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ll/d;

    .line 5
    .line 6
    const/16 v1, 0x15

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ll/d;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/bumptech/glide/j;->h:Ll/d;

    .line 12
    .line 13
    new-instance v0, Lx/b;

    .line 14
    .line 15
    invoke-direct {v0}, Lx/b;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/bumptech/glide/j;->i:Lx/b;

    .line 19
    .line 20
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    .line 21
    .line 22
    const/16 v1, 0x14

    .line 23
    .line 24
    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Ld0/a;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v2, Ld0/b;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v3, Ld0/d;

    .line 38
    .line 39
    invoke-direct {v3, v0, v1, v2}, Ld0/d;-><init>(Landroidx/core/util/Pools$SynchronizedPool;Ld0/c;Ld0/f;)V

    .line 40
    .line 41
    .line 42
    iput-object v3, p0, Lcom/bumptech/glide/j;->j:Ld0/d;

    .line 43
    .line 44
    new-instance v0, Ln/u;

    .line 45
    .line 46
    invoke-direct {v0, v3}, Ln/u;-><init>(Ld0/d;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/bumptech/glide/j;->a:Ln/u;

    .line 50
    .line 51
    new-instance v0, Li7/i;

    .line 52
    .line 53
    const/4 v1, 0x4

    .line 54
    invoke-direct {v0, v1}, Li7/i;-><init>(I)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/bumptech/glide/j;->b:Li7/i;

    .line 58
    .line 59
    new-instance v0, Ll/d;

    .line 60
    .line 61
    const/16 v1, 0x16

    .line 62
    .line 63
    invoke-direct {v0, v1}, Ll/d;-><init>(I)V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lcom/bumptech/glide/j;->c:Ll/d;

    .line 67
    .line 68
    new-instance v0, Li7/i;

    .line 69
    .line 70
    const/4 v1, 0x6

    .line 71
    invoke-direct {v0, v1}, Li7/i;-><init>(I)V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/bumptech/glide/j;->d:Li7/i;

    .line 75
    .line 76
    new-instance v0, Lcom/bumptech/glide/load/data/i;

    .line 77
    .line 78
    invoke-direct {v0}, Lcom/bumptech/glide/load/data/i;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lcom/bumptech/glide/j;->e:Lcom/bumptech/glide/load/data/i;

    .line 82
    .line 83
    new-instance v0, Li7/i;

    .line 84
    .line 85
    const/4 v1, 0x3

    .line 86
    invoke-direct {v0, v1}, Li7/i;-><init>(I)V

    .line 87
    .line 88
    .line 89
    iput-object v0, p0, Lcom/bumptech/glide/j;->f:Li7/i;

    .line 90
    .line 91
    new-instance v0, Li7/i;

    .line 92
    .line 93
    const/4 v1, 0x5

    .line 94
    invoke-direct {v0, v1}, Li7/i;-><init>(I)V

    .line 95
    .line 96
    .line 97
    iput-object v0, p0, Lcom/bumptech/glide/j;->g:Li7/i;

    .line 98
    .line 99
    const-string v0, "Animation"

    .line 100
    .line 101
    const-string v1, "Bitmap"

    .line 102
    .line 103
    const-string v2, "BitmapDrawable"

    .line 104
    .line 105
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    .line 121
    .line 122
    const-string v2, "legacy_prepend_all"

    .line 123
    .line 124
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    :goto_82
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_92

    .line 136
    .line 137
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    check-cast v2, Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    goto :goto_82

    .line 147
    :cond_92
    const-string v0, "legacy_append"

    .line 148
    .line 149
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/bumptech/glide/j;->c:Ll/d;

    .line 153
    .line 154
    monitor-enter v0

    .line 155
    :try_start_9a
    new-instance v2, Ljava/util/ArrayList;

    .line 156
    .line 157
    iget-object v3, v0, Ll/d;->d:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v3, Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 162
    .line 163
    .line 164
    iget-object v3, v0, Ll/d;->d:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v3, Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    const/4 v4, 0x0

    .line 176
    move v5, v4

    .line 177
    :goto_b0
    if-ge v5, v3, :cond_c4

    .line 178
    .line 179
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    add-int/lit8 v5, v5, 0x1

    .line 184
    .line 185
    check-cast v6, Ljava/lang/String;

    .line 186
    .line 187
    iget-object v7, v0, Ll/d;->d:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v7, Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    goto :goto_b0

    .line 195
    :catchall_c2
    move-exception v1

    .line 196
    goto :goto_e2

    .line 197
    :cond_c4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    :cond_c8
    :goto_c8
    if-ge v4, v3, :cond_e0

    .line 202
    .line 203
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    add-int/lit8 v4, v4, 0x1

    .line 208
    .line 209
    check-cast v5, Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v6

    .line 215
    if-nez v6, :cond_c8

    .line 216
    .line 217
    iget-object v6, v0, Ll/d;->d:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast v6, Ljava/util/ArrayList;

    .line 220
    .line 221
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_df
    .catchall {:try_start_9a .. :try_end_df} :catchall_c2

    .line 222
    .line 223
    .line 224
    goto :goto_c8

    .line 225
    :cond_e0
    monitor-exit v0

    .line 226
    return-void

    .line 227
    :goto_e2
    :try_start_e2
    monitor-exit v0
    :try_end_e3
    .catchall {:try_start_e2 .. :try_end_e3} :catchall_c2

    .line 228
    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Lh/b;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/j;->b:Li7/i;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, v0, Li7/i;->b:Ljava/util/ArrayList;

    .line 5
    .line 6
    new-instance v2, Lx/a;

    .line 7
    .line 8
    invoke-direct {v2, p1, p2}, Lx/a;-><init>(Ljava/lang/Class;Lh/b;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_f
    move-exception p1

    .line 17
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    .line 18
    throw p1
.end method

.method public final b(Ljava/lang/Class;Lh/k;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/j;->d:Li7/i;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, v0, Li7/i;->b:Ljava/util/ArrayList;

    .line 5
    .line 6
    new-instance v2, Lx/d;

    .line 7
    .line 8
    invoke-direct {v2, p1, p2}, Lx/d;-><init>(Ljava/lang/Class;Lh/k;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_f
    move-exception p1

    .line 17
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    .line 18
    throw p1
.end method

.method public final c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/j;->a:Ln/u;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, v0, Ln/u;->a:Ln/z;

    .line 5
    .line 6
    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1e

    .line 7
    :try_start_6
    new-instance v2, Ln/x;

    .line 8
    .line 9
    invoke-direct {v2, p1, p2, p3}, Ln/x;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, v1, Ln/z;->a:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    invoke-virtual {p1, p2, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_22

    .line 19
    .line 20
    .line 21
    :try_start_14
    monitor-exit v1

    .line 22
    iget-object p1, v0, Ln/u;->b:Lcom/bumptech/glide/f;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/bumptech/glide/f;->a:Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1e

    .line 27
    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_1e
    move-exception p1

    .line 32
    goto :goto_24

    .line 33
    :goto_20
    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_22

    .line 34
    :try_start_21
    throw p1

    .line 35
    :catchall_22
    move-exception p1

    .line 36
    goto :goto_20

    .line 37
    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_1e

    .line 38
    throw p1
.end method

.method public final d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lh/j;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/j;->c:Ll/d;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-virtual {v0, p1}, Ll/d;->t(Ljava/lang/String;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance v1, Lx/c;

    .line 9
    .line 10
    invoke-direct {v1, p2, p3, p4}, Lx/c;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lh/j;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_11
    move-exception p1

    .line 19
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    .line 20
    throw p1
.end method

.method public final e()Ljava/util/ArrayList;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/j;->g:Li7/i;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, v0, Li7/i;->b:Ljava/util/ArrayList;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_15

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_d

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_d
    new-instance v0, Lcom/bumptech/glide/i;

    .line 15
    .line 16
    const-string v1, "Failed to find image header parser."

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :catchall_15
    move-exception v1

    .line 23
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    .line 24
    throw v1
.end method

.method public final f(Ljava/lang/Object;)Ljava/util/List;
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/j;->a:Ln/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    monitor-enter v0

    .line 11
    :try_start_a
    iget-object v2, v0, Ln/u;->b:Lcom/bumptech/glide/f;

    .line 12
    .line 13
    iget-object v2, v2, Lcom/bumptech/glide/f;->a:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ln/t;

    .line 20
    .line 21
    if-nez v2, :cond_18

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    goto :goto_1a

    .line 25
    :cond_18
    iget-object v2, v2, Ln/t;->a:Ljava/util/List;

    .line 26
    .line 27
    :goto_1a
    if-nez v2, :cond_4e

    .line 28
    .line 29
    iget-object v2, v0, Ln/u;->a:Ln/z;

    .line 30
    .line 31
    invoke-virtual {v2, v1}, Ln/z;->a(Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget-object v3, v0, Ln/u;->b:Lcom/bumptech/glide/f;

    .line 40
    .line 41
    iget-object v3, v3, Lcom/bumptech/glide/f;->a:Ljava/util/HashMap;

    .line 42
    .line 43
    new-instance v4, Ln/t;

    .line 44
    .line 45
    invoke-direct {v4, v2}, Ln/t;-><init>(Ljava/util/List;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Ln/t;

    .line 53
    .line 54
    if-nez v3, :cond_38

    .line 55
    .line 56
    goto :goto_4e

    .line 57
    :cond_38
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v3, "Already cached loaders for model: "

    .line 62
    .line 63
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1
    :try_end_4c
    .catchall {:try_start_a .. :try_end_4c} :catchall_4c

    .line 77
    :catchall_4c
    move-exception p1

    .line 78
    goto :goto_b7

    .line 79
    :cond_4e
    :goto_4e
    monitor-exit v0

    .line 80
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_9f

    .line 85
    .line 86
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 91
    .line 92
    const/4 v3, 0x0

    .line 93
    const/4 v4, 0x1

    .line 94
    move v5, v3

    .line 95
    :goto_5e
    if-ge v5, v0, :cond_7c

    .line 96
    .line 97
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    check-cast v6, Ln/r;

    .line 102
    .line 103
    invoke-interface {v6, p1}, Ln/r;->a(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    if-eqz v7, :cond_79

    .line 108
    .line 109
    if-eqz v4, :cond_76

    .line 110
    .line 111
    new-instance v1, Ljava/util/ArrayList;

    .line 112
    .line 113
    sub-int v4, v0, v5

    .line 114
    .line 115
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    .line 117
    .line 118
    move v4, v3

    .line 119
    :cond_76
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    :cond_79
    add-int/lit8 v5, v5, 0x1

    .line 123
    .line 124
    goto :goto_5e

    .line 125
    :cond_7c
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_83

    .line 130
    .line 131
    return-object v1

    .line 132
    :cond_83
    new-instance v0, Lcom/bumptech/glide/i;

    .line 133
    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string v3, "Found ModelLoaders for model class: "

    .line 137
    .line 138
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v2, ", but none that handle this specific model instance: "

    .line 145
    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw v0

    .line 160
    :cond_9f
    new-instance v0, Lcom/bumptech/glide/i;

    .line 161
    .line 162
    const-string v1, "Failed to find any ModelLoaders registered for model class: "

    .line 163
    .line 164
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw v0

    .line 184
    :goto_b7
    :try_start_b7
    monitor-exit v0
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_4c

    .line 185
    throw p1
.end method

.method public final g(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/g;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/j;->e:Lcom/bumptech/glide/load/data/i;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-static {p1}, Lc0/g;->b(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v1, v0, Lcom/bumptech/glide/load/data/i;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/bumptech/glide/load/data/f;

    .line 20
    .line 21
    if-nez v1, :cond_40

    .line 22
    .line 23
    iget-object v2, v0, Lcom/bumptech/glide/load/data/i;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    :cond_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_40

    .line 40
    .line 41
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Lcom/bumptech/glide/load/data/f;

    .line 46
    .line 47
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/f;->a()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_22

    .line 60
    .line 61
    move-object v1, v3

    .line 62
    goto :goto_40

    .line 63
    :catchall_3e
    move-exception p1

    .line 64
    goto :goto_4a

    .line 65
    :cond_40
    :goto_40
    if-nez v1, :cond_44

    .line 66
    .line 67
    sget-object v1, Lcom/bumptech/glide/load/data/i;->d:Lcom/bumptech/glide/load/data/h;

    .line 68
    .line 69
    :cond_44
    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/data/f;->b(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/g;

    .line 70
    .line 71
    .line 72
    move-result-object p1
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_3e

    .line 73
    monitor-exit v0

    .line 74
    return-object p1

    .line 75
    :goto_4a
    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_3e

    .line 76
    throw p1
.end method

.method public final h(Lcom/bumptech/glide/load/data/f;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/j;->e:Lcom/bumptech/glide/load/data/i;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, v0, Lcom/bumptech/glide/load/data/i;->c:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/f;->a()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_10
    move-exception p1

    .line 18
    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    .line 19
    throw p1
.end method

.method public final i(Ljava/lang/Class;Ljava/lang/Class;Lv/a;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/j;->f:Li7/i;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, v0, Li7/i;->b:Ljava/util/ArrayList;

    .line 5
    .line 6
    new-instance v2, Lv/b;

    .line 7
    .line 8
    invoke-direct {v2, p1, p2, p3}, Lv/b;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lv/a;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_f
    move-exception p1

    .line 17
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    .line 18
    throw p1
.end method
