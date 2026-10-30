.class public final Lj/h;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/ArrayList;

.field public c:Lcom/bumptech/glide/e;

.field public d:Ljava/lang/Object;

.field public e:I

.field public f:I

.field public g:Ljava/lang/Class;

.field public h:Lc0/h;

.field public i:Lh/h;

.field public j:Ljava/util/Map;

.field public k:Ljava/lang/Class;

.field public l:Z

.field public m:Z

.field public n:Lh/e;

.field public o:Lcom/bumptech/glide/h;

.field public p:Lj/m;

.field public q:Z

.field public r:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lj/h;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lj/h;->b:Ljava/util/ArrayList;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 8

    .line 1
    iget-boolean v0, p0, Lj/h;->m:Z

    .line 2
    .line 3
    iget-object v1, p0, Lj/h;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lj/h;->m:Z

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lj/h;->b()Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    move v4, v3

    .line 23
    :goto_0
    if-ge v4, v2, :cond_3

    .line 24
    .line 25
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Ln/q;

    .line 30
    .line 31
    iget-object v6, v5, Ln/q;->a:Lh/e;

    .line 32
    .line 33
    iget-object v7, v5, Ln/q;->b:Ljava/util/List;

    .line 34
    .line 35
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-nez v6, :cond_0

    .line 40
    .line 41
    iget-object v5, v5, Ln/q;->a:Lh/e;

    .line 42
    .line 43
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    :cond_0
    move v5, v3

    .line 47
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-ge v5, v6, :cond_2

    .line 52
    .line 53
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-nez v6, :cond_1

    .line 62
    .line 63
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    return-object v1
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 9

    .line 1
    iget-boolean v0, p0, Lj/h;->l:Z

    .line 2
    .line 3
    iget-object v1, p0, Lj/h;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lj/h;->l:Z

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lj/h;->c:Lcom/bumptech/glide/e;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/bumptech/glide/e;->a()Lcom/bumptech/glide/j;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v2, p0, Lj/h;->d:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/j;->f(Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    :goto_0
    if-ge v3, v2, :cond_1

    .line 31
    .line 32
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Ln/r;

    .line 37
    .line 38
    iget-object v5, p0, Lj/h;->d:Ljava/lang/Object;

    .line 39
    .line 40
    iget v6, p0, Lj/h;->e:I

    .line 41
    .line 42
    iget v7, p0, Lj/h;->f:I

    .line 43
    .line 44
    iget-object v8, p0, Lj/h;->i:Lh/h;

    .line 45
    .line 46
    invoke-interface {v4, v5, v6, v7, v8}, Ln/r;->b(Ljava/lang/Object;IILh/h;)Ln/q;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    return-object v1
.end method

.method public final c(Ljava/lang/Class;)Lj/b0;
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    iget-object v0, v1, Lj/h;->c:Lcom/bumptech/glide/e;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bumptech/glide/e;->a()Lcom/bumptech/glide/j;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v9, v1, Lj/h;->g:Ljava/lang/Class;

    .line 12
    .line 13
    iget-object v10, v1, Lj/h;->k:Ljava/lang/Class;

    .line 14
    .line 15
    iget-object v2, v0, Lcom/bumptech/glide/j;->i:Lx/b;

    .line 16
    .line 17
    iget-object v4, v2, Lx/b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 18
    .line 19
    const/4 v11, 0x0

    .line 20
    invoke-virtual {v4, v11}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Lc0/n;

    .line 25
    .line 26
    if-nez v4, :cond_0

    .line 27
    .line 28
    new-instance v4, Lc0/n;

    .line 29
    .line 30
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    :cond_0
    iput-object v3, v4, Lc0/n;->a:Ljava/lang/Class;

    .line 34
    .line 35
    iput-object v9, v4, Lc0/n;->b:Ljava/lang/Class;

    .line 36
    .line 37
    iput-object v10, v4, Lc0/n;->c:Ljava/lang/Class;

    .line 38
    .line 39
    iget-object v5, v2, Lx/b;->a:Landroidx/collection/ArrayMap;

    .line 40
    .line 41
    monitor-enter v5

    .line 42
    :try_start_0
    iget-object v6, v2, Lx/b;->a:Landroidx/collection/ArrayMap;

    .line 43
    .line 44
    invoke-virtual {v6, v4}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    check-cast v6, Lj/b0;

    .line 49
    .line 50
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 51
    iget-object v2, v2, Lx/b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 52
    .line 53
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object v2, v0, Lcom/bumptech/glide/j;->i:Lx/b;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    sget-object v2, Lx/b;->c:Lj/b0;

    .line 62
    .line 63
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_1

    .line 68
    .line 69
    return-object v11

    .line 70
    :cond_1
    if-nez v6, :cond_f

    .line 71
    .line 72
    new-instance v12, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    iget-object v2, v0, Lcom/bumptech/glide/j;->c:Ll/d;

    .line 78
    .line 79
    invoke-virtual {v2, v3, v9}, Ll/d;->u(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 80
    .line 81
    .line 82
    move-result-object v13

    .line 83
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result v14

    .line 87
    const/4 v2, 0x0

    .line 88
    :goto_0
    if-ge v2, v14, :cond_c

    .line 89
    .line 90
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    add-int/lit8 v16, v2, 0x1

    .line 95
    .line 96
    check-cast v4, Ljava/lang/Class;

    .line 97
    .line 98
    iget-object v2, v0, Lcom/bumptech/glide/j;->f:Li7/i;

    .line 99
    .line 100
    invoke-virtual {v2, v4, v10}, Li7/i;->e(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    const/4 v6, 0x0

    .line 109
    :goto_1
    if-ge v6, v5, :cond_b

    .line 110
    .line 111
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    add-int/lit8 v17, v6, 0x1

    .line 116
    .line 117
    check-cast v7, Ljava/lang/Class;

    .line 118
    .line 119
    iget-object v6, v0, Lcom/bumptech/glide/j;->c:Ll/d;

    .line 120
    .line 121
    monitor-enter v6

    .line 122
    :try_start_1
    new-instance v8, Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .line 126
    .line 127
    iget-object v11, v6, Ll/d;->d:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v11, Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 132
    .line 133
    .line 134
    move-result v15

    .line 135
    const/4 v1, 0x0

    .line 136
    :goto_2
    const/16 v18, 0x1

    .line 137
    .line 138
    if-ge v1, v15, :cond_6

    .line 139
    .line 140
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v19

    .line 144
    add-int/lit8 v1, v1, 0x1

    .line 145
    .line 146
    move/from16 v20, v1

    .line 147
    .line 148
    move-object/from16 v1, v19

    .line 149
    .line 150
    check-cast v1, Ljava/lang/String;

    .line 151
    .line 152
    move-object/from16 v19, v2

    .line 153
    .line 154
    iget-object v2, v6, Ll/d;->c:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v2, Ljava/util/HashMap;

    .line 157
    .line 158
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    check-cast v1, Ljava/util/List;

    .line 163
    .line 164
    if-nez v1, :cond_3

    .line 165
    .line 166
    :cond_2
    move-object/from16 v2, v19

    .line 167
    .line 168
    move/from16 v1, v20

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    if-eqz v2, :cond_2

    .line 180
    .line 181
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    check-cast v2, Lx/c;

    .line 186
    .line 187
    move-object/from16 v21, v1

    .line 188
    .line 189
    iget-object v1, v2, Lx/c;->a:Ljava/lang/Class;

    .line 190
    .line 191
    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-eqz v1, :cond_4

    .line 196
    .line 197
    iget-object v1, v2, Lx/c;->b:Ljava/lang/Class;

    .line 198
    .line 199
    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-eqz v1, :cond_4

    .line 204
    .line 205
    move/from16 v1, v18

    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_4
    const/4 v1, 0x0

    .line 209
    :goto_4
    if-eqz v1, :cond_5

    .line 210
    .line 211
    iget-object v1, v2, Lx/c;->c:Lh/j;

    .line 212
    .line 213
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    .line 215
    .line 216
    goto :goto_5

    .line 217
    :catchall_0
    move-exception v0

    .line 218
    goto/16 :goto_a

    .line 219
    .line 220
    :cond_5
    :goto_5
    move-object/from16 v1, v21

    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_6
    move-object/from16 v19, v2

    .line 224
    .line 225
    monitor-exit v6

    .line 226
    iget-object v1, v0, Lcom/bumptech/glide/j;->f:Li7/i;

    .line 227
    .line 228
    monitor-enter v1

    .line 229
    :try_start_2
    invoke-virtual {v7, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-eqz v2, :cond_7

    .line 234
    .line 235
    sget-object v2, Lv/c;->c:Lv/c;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 236
    .line 237
    monitor-exit v1

    .line 238
    goto :goto_8

    .line 239
    :catchall_1
    move-exception v0

    .line 240
    goto/16 :goto_9

    .line 241
    .line 242
    :cond_7
    :try_start_3
    iget-object v2, v1, Li7/i;->b:Ljava/util/ArrayList;

    .line 243
    .line 244
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 245
    .line 246
    .line 247
    move-result v6

    .line 248
    const/4 v11, 0x0

    .line 249
    :goto_6
    if-ge v11, v6, :cond_a

    .line 250
    .line 251
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v15

    .line 255
    add-int/lit8 v11, v11, 0x1

    .line 256
    .line 257
    check-cast v15, Lv/b;

    .line 258
    .line 259
    move-object/from16 v20, v2

    .line 260
    .line 261
    iget-object v2, v15, Lv/b;->a:Ljava/lang/Class;

    .line 262
    .line 263
    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    if-eqz v2, :cond_8

    .line 268
    .line 269
    iget-object v2, v15, Lv/b;->b:Ljava/lang/Class;

    .line 270
    .line 271
    invoke-virtual {v7, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    if-eqz v2, :cond_8

    .line 276
    .line 277
    move/from16 v2, v18

    .line 278
    .line 279
    goto :goto_7

    .line 280
    :cond_8
    const/4 v2, 0x0

    .line 281
    :goto_7
    if-eqz v2, :cond_9

    .line 282
    .line 283
    iget-object v2, v15, Lv/b;->c:Lv/a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 284
    .line 285
    monitor-exit v1

    .line 286
    :goto_8
    new-instance v1, Lj/l;

    .line 287
    .line 288
    move-object v6, v8

    .line 289
    iget-object v8, v0, Lcom/bumptech/glide/j;->j:Ld0/d;

    .line 290
    .line 291
    move v15, v5

    .line 292
    move-object v5, v7

    .line 293
    move-object v7, v2

    .line 294
    move-object v2, v1

    .line 295
    invoke-direct/range {v2 .. v8}, Lj/l;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lv/a;Landroidx/core/util/Pools$Pool;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-object/from16 v1, p0

    .line 302
    .line 303
    move-object/from16 v3, p1

    .line 304
    .line 305
    move v5, v15

    .line 306
    move/from16 v6, v17

    .line 307
    .line 308
    move-object/from16 v2, v19

    .line 309
    .line 310
    const/4 v11, 0x0

    .line 311
    goto/16 :goto_1

    .line 312
    .line 313
    :cond_9
    move-object/from16 v3, p1

    .line 314
    .line 315
    move-object/from16 v2, v20

    .line 316
    .line 317
    goto :goto_6

    .line 318
    :cond_a
    move-object v5, v7

    .line 319
    :try_start_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 320
    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    .line 325
    .line 326
    const-string v3, "No transcoder registered to transcode from "

    .line 327
    .line 328
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    const-string v3, " to "

    .line 335
    .line 336
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    throw v0

    .line 350
    :goto_9
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 351
    throw v0

    .line 352
    :goto_a
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 353
    throw v0

    .line 354
    :cond_b
    move-object/from16 v1, p0

    .line 355
    .line 356
    move-object/from16 v3, p1

    .line 357
    .line 358
    move/from16 v2, v16

    .line 359
    .line 360
    goto/16 :goto_0

    .line 361
    .line 362
    :cond_c
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    if-eqz v1, :cond_d

    .line 367
    .line 368
    move-object/from16 v3, p1

    .line 369
    .line 370
    move-object v4, v9

    .line 371
    move-object v5, v10

    .line 372
    const/4 v11, 0x0

    .line 373
    goto :goto_b

    .line 374
    :cond_d
    new-instance v2, Lj/b0;

    .line 375
    .line 376
    iget-object v7, v0, Lcom/bumptech/glide/j;->j:Ld0/d;

    .line 377
    .line 378
    move-object/from16 v3, p1

    .line 379
    .line 380
    move-object v4, v9

    .line 381
    move-object v5, v10

    .line 382
    move-object v6, v12

    .line 383
    invoke-direct/range {v2 .. v7}, Lj/b0;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Landroidx/core/util/Pools$Pool;)V

    .line 384
    .line 385
    .line 386
    move-object v11, v2

    .line 387
    :goto_b
    iget-object v0, v0, Lcom/bumptech/glide/j;->i:Lx/b;

    .line 388
    .line 389
    iget-object v1, v0, Lx/b;->a:Landroidx/collection/ArrayMap;

    .line 390
    .line 391
    monitor-enter v1

    .line 392
    :try_start_6
    iget-object v0, v0, Lx/b;->a:Landroidx/collection/ArrayMap;

    .line 393
    .line 394
    new-instance v2, Lc0/n;

    .line 395
    .line 396
    invoke-direct {v2, v3, v4, v5}, Lc0/n;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 397
    .line 398
    .line 399
    if-eqz v11, :cond_e

    .line 400
    .line 401
    move-object v3, v11

    .line 402
    goto :goto_c

    .line 403
    :cond_e
    sget-object v3, Lx/b;->c:Lj/b0;

    .line 404
    .line 405
    :goto_c
    invoke-virtual {v0, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    monitor-exit v1

    .line 409
    return-object v11

    .line 410
    :catchall_2
    move-exception v0

    .line 411
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 412
    throw v0

    .line 413
    :cond_f
    return-object v6

    .line 414
    :catchall_3
    move-exception v0

    .line 415
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 416
    throw v0
.end method

.method public final d(Ljava/lang/Object;)Lh/b;
    .locals 7

    .line 1
    iget-object v0, p0, Lj/h;->c:Lcom/bumptech/glide/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/e;->a()Lcom/bumptech/glide/j;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/bumptech/glide/j;->b:Li7/i;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v2, v0, Li7/i;->b:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x0

    .line 21
    :cond_0
    if-ge v4, v3, :cond_1

    .line 22
    .line 23
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    add-int/lit8 v4, v4, 0x1

    .line 28
    .line 29
    check-cast v5, Lx/a;

    .line 30
    .line 31
    iget-object v6, v5, Lx/a;->a:Ljava/lang/Class;

    .line 32
    .line 33
    invoke-virtual {v6, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-eqz v6, :cond_0

    .line 38
    .line 39
    iget-object v1, v5, Lx/a;->b:Lh/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    monitor-exit v0

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    monitor-exit v0

    .line 46
    const/4 v1, 0x0

    .line 47
    :goto_0
    if-eqz v1, :cond_2

    .line 48
    .line 49
    return-object v1

    .line 50
    :cond_2
    new-instance v0, Lcom/bumptech/glide/i;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string v1, "Failed to find source encoder for data class: "

    .line 57
    .line 58
    invoke-static {p1, v1}, Lai/onnxruntime/a;->j(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0

    .line 66
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    throw p1
.end method

.method public final e(Ljava/lang/Class;)Lh/l;
    .locals 4

    .line 1
    iget-object v0, p0, Lj/h;->j:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lh/l;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lj/h;->j:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/util/Map$Entry;

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Ljava/lang/Class;

    .line 38
    .line 39
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lh/l;

    .line 50
    .line 51
    :cond_1
    if-nez v0, :cond_4

    .line 52
    .line 53
    iget-object v0, p0, Lj/h;->j:Ljava/util/Map;

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    iget-boolean v0, p0, Lj/h;->q:Z

    .line 62
    .line 63
    if-nez v0, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const-string v0, "Missing transformation for "

    .line 67
    .line 68
    const-string v1, ". If you wish to ignore unknown resource types, use the optional transformation methods."

    .line 69
    .line 70
    invoke-static {p1, v0, v1}, Landroidx/navigation/b;->p(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    const/4 p1, 0x0

    .line 74
    return-object p1

    .line 75
    :cond_3
    :goto_0
    sget-object p1, Lp/c;->b:Lp/c;

    .line 76
    .line 77
    return-object p1

    .line 78
    :cond_4
    return-object v0
.end method
