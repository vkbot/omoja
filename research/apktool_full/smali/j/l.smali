.class public final Lj/l;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Ljava/util/List;

.field public final c:Lv/a;

.field public final d:Landroidx/core/util/Pools$Pool;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lv/a;Landroidx/core/util/Pools$Pool;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj/l;->a:Ljava/lang/Class;

    .line 5
    .line 6
    iput-object p4, p0, Lj/l;->b:Ljava/util/List;

    .line 7
    .line 8
    iput-object p5, p0, Lj/l;->c:Lv/a;

    .line 9
    .line 10
    iput-object p6, p0, Lj/l;->d:Landroidx/core/util/Pools$Pool;

    .line 11
    .line 12
    new-instance p4, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string p5, "Failed DecodePath{"

    .line 15
    .line 16
    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, "->"

    .line 27
    .line 28
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p1, "}"

    .line 49
    .line 50
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Lj/l;->e:Ljava/lang/String;

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final a(IILcom/bumptech/glide/load/data/g;Lh/h;Lj/i;)Lj/d0;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p5

    .line 4
    .line 5
    iget-object v7, v1, Lj/l;->d:Landroidx/core/util/Pools$Pool;

    .line 6
    .line 7
    invoke-interface {v7}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "Argument must not be null"

    .line 12
    .line 13
    invoke-static {v2, v3}, Lc0/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    move-object v6, v2

    .line 17
    check-cast v6, Ljava/util/List;

    .line 18
    .line 19
    move/from16 v3, p1

    .line 20
    .line 21
    move/from16 v4, p2

    .line 22
    .line 23
    move-object/from16 v2, p3

    .line 24
    .line 25
    move-object/from16 v5, p4

    .line 26
    .line 27
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lj/l;->b(Lcom/bumptech/glide/load/data/g;IILh/h;Ljava/util/List;)Lj/d0;

    .line 28
    .line 29
    .line 30
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-interface {v7, v6}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    iget-object v3, v0, Lj/i;->c:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v3, Lj/k;

    .line 37
    .line 38
    iget v0, v0, Lj/i;->b:I

    .line 39
    .line 40
    iget-object v4, v3, Lj/k;->b:Lj/h;

    .line 41
    .line 42
    invoke-interface {v2}, Lj/d0;->get()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object v13

    .line 50
    const/4 v5, 0x4

    .line 51
    const/4 v6, 0x0

    .line 52
    if-eq v0, v5, :cond_0

    .line 53
    .line 54
    invoke-virtual {v4, v13}, Lj/h;->e(Ljava/lang/Class;)Lh/l;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    iget-object v7, v3, Lj/k;->i:Lcom/bumptech/glide/e;

    .line 59
    .line 60
    iget v8, v3, Lj/k;->m:I

    .line 61
    .line 62
    iget v9, v3, Lj/k;->n:I

    .line 63
    .line 64
    invoke-interface {v5, v7, v2, v8, v9}, Lh/l;->a(Landroid/content/Context;Lj/d0;II)Lj/d0;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    move-object v12, v5

    .line 69
    move-object v5, v7

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    move-object v5, v2

    .line 72
    move-object v12, v6

    .line 73
    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-nez v7, :cond_1

    .line 78
    .line 79
    invoke-interface {v2}, Lj/d0;->recycle()V

    .line 80
    .line 81
    .line 82
    :cond_1
    iget-object v2, v4, Lj/h;->c:Lcom/bumptech/glide/e;

    .line 83
    .line 84
    invoke-virtual {v2}, Lcom/bumptech/glide/e;->a()Lcom/bumptech/glide/j;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    iget-object v2, v2, Lcom/bumptech/glide/j;->d:Li7/i;

    .line 89
    .line 90
    invoke-interface {v5}, Lj/d0;->d()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    invoke-virtual {v2, v7}, Li7/i;->d(Ljava/lang/Class;)Lh/k;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    if-eqz v2, :cond_3

    .line 99
    .line 100
    iget-object v2, v4, Lj/h;->c:Lcom/bumptech/glide/e;

    .line 101
    .line 102
    invoke-virtual {v2}, Lcom/bumptech/glide/e;->a()Lcom/bumptech/glide/j;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    iget-object v2, v2, Lcom/bumptech/glide/j;->d:Li7/i;

    .line 107
    .line 108
    invoke-interface {v5}, Lj/d0;->d()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-virtual {v2, v6}, Li7/i;->d(Ljava/lang/Class;)Lh/k;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    if-eqz v6, :cond_2

    .line 117
    .line 118
    iget-object v2, v3, Lj/k;->p:Lh/h;

    .line 119
    .line 120
    invoke-interface {v6, v2}, Lh/k;->e(Lh/h;)I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    :goto_1
    move-object v15, v6

    .line 125
    goto :goto_2

    .line 126
    :cond_2
    new-instance v0, Lcom/bumptech/glide/i;

    .line 127
    .line 128
    invoke-interface {v5}, Lj/d0;->d()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-direct {v0, v2}, Lcom/bumptech/glide/i;-><init>(Ljava/lang/Class;)V

    .line 133
    .line 134
    .line 135
    throw v0

    .line 136
    :cond_3
    const/4 v2, 0x3

    .line 137
    goto :goto_1

    .line 138
    :goto_2
    iget-object v6, v3, Lj/k;->v:Lh/e;

    .line 139
    .line 140
    invoke-virtual {v4}, Lj/h;->b()Ljava/util/ArrayList;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    const/4 v9, 0x0

    .line 149
    move v10, v9

    .line 150
    :goto_3
    const/4 v11, 0x1

    .line 151
    if-ge v10, v8, :cond_5

    .line 152
    .line 153
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v14

    .line 157
    check-cast v14, Ln/q;

    .line 158
    .line 159
    iget-object v14, v14, Ln/q;->a:Lh/e;

    .line 160
    .line 161
    invoke-interface {v14, v6}, Lh/e;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v14

    .line 165
    if-eqz v14, :cond_4

    .line 166
    .line 167
    move v6, v11

    .line 168
    goto :goto_4

    .line 169
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_5
    move v6, v9

    .line 173
    :goto_4
    iget-object v7, v3, Lj/k;->o:Lj/m;

    .line 174
    .line 175
    iget v7, v7, Lj/m;->a:I

    .line 176
    .line 177
    packed-switch v7, :pswitch_data_0

    .line 178
    .line 179
    .line 180
    const/4 v7, 0x1

    .line 181
    if-nez v6, :cond_6

    .line 182
    .line 183
    const/4 v6, 0x3

    .line 184
    if-eq v0, v6, :cond_7

    .line 185
    .line 186
    :cond_6
    if-ne v0, v7, :cond_8

    .line 187
    .line 188
    :cond_7
    const/4 v0, 0x2

    .line 189
    if-ne v2, v0, :cond_8

    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_8
    :pswitch_0
    const/4 v7, 0x0

    .line 193
    :goto_5
    if-eqz v7, :cond_f

    .line 194
    .line 195
    if-eqz v15, :cond_e

    .line 196
    .line 197
    invoke-static {v2}, Lcom/bumptech/glide/g;->c(I)I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_d

    .line 202
    .line 203
    if-ne v0, v11, :cond_9

    .line 204
    .line 205
    new-instance v6, Lj/f0;

    .line 206
    .line 207
    iget-object v0, v4, Lj/h;->c:Lcom/bumptech/glide/e;

    .line 208
    .line 209
    iget-object v7, v0, Lcom/bumptech/glide/e;->a:Lk/g;

    .line 210
    .line 211
    iget-object v8, v3, Lj/k;->v:Lh/e;

    .line 212
    .line 213
    move v0, v9

    .line 214
    iget-object v9, v3, Lj/k;->j:Lh/e;

    .line 215
    .line 216
    iget v10, v3, Lj/k;->m:I

    .line 217
    .line 218
    move v2, v11

    .line 219
    iget v11, v3, Lj/k;->n:I

    .line 220
    .line 221
    iget-object v14, v3, Lj/k;->p:Lh/h;

    .line 222
    .line 223
    move v4, v2

    .line 224
    invoke-direct/range {v6 .. v14}, Lj/f0;-><init>(Lk/g;Lh/e;Lh/e;IILh/l;Ljava/lang/Class;Lh/h;)V

    .line 225
    .line 226
    .line 227
    goto :goto_7

    .line 228
    :cond_9
    const/4 v0, 0x1

    .line 229
    if-eq v2, v0, :cond_c

    .line 230
    .line 231
    const/4 v0, 0x2

    .line 232
    if-eq v2, v0, :cond_b

    .line 233
    .line 234
    const/4 v0, 0x3

    .line 235
    if-eq v2, v0, :cond_a

    .line 236
    .line 237
    const-string v0, "null"

    .line 238
    .line 239
    goto :goto_6

    .line 240
    :cond_a
    const-string v0, "NONE"

    .line 241
    .line 242
    goto :goto_6

    .line 243
    :cond_b
    const-string v0, "TRANSFORMED"

    .line 244
    .line 245
    goto :goto_6

    .line 246
    :cond_c
    const-string v0, "SOURCE"

    .line 247
    .line 248
    :goto_6
    const-string v2, "Unknown strategy: "

    .line 249
    .line 250
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    const/4 v0, 0x0

    .line 258
    return-object v0

    .line 259
    :cond_d
    move v0, v9

    .line 260
    move v4, v11

    .line 261
    new-instance v6, Lj/e;

    .line 262
    .line 263
    iget-object v2, v3, Lj/k;->v:Lh/e;

    .line 264
    .line 265
    iget-object v7, v3, Lj/k;->j:Lh/e;

    .line 266
    .line 267
    invoke-direct {v6, v2, v7}, Lj/e;-><init>(Lh/e;Lh/e;)V

    .line 268
    .line 269
    .line 270
    :goto_7
    sget-object v2, Lj/c0;->f:Ld0/d;

    .line 271
    .line 272
    invoke-virtual {v2}, Ld0/d;->acquire()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    check-cast v2, Lj/c0;

    .line 277
    .line 278
    iput-boolean v0, v2, Lj/c0;->e:Z

    .line 279
    .line 280
    iput-boolean v4, v2, Lj/c0;->d:Z

    .line 281
    .line 282
    iput-object v5, v2, Lj/c0;->c:Lj/d0;

    .line 283
    .line 284
    iget-object v0, v3, Lj/k;->g:La5/h;

    .line 285
    .line 286
    iput-object v6, v0, La5/h;->c:Ljava/lang/Object;

    .line 287
    .line 288
    iput-object v15, v0, La5/h;->d:Ljava/lang/Object;

    .line 289
    .line 290
    iput-object v2, v0, La5/h;->e:Ljava/lang/Object;

    .line 291
    .line 292
    move-object v5, v2

    .line 293
    goto :goto_8

    .line 294
    :cond_e
    new-instance v0, Lcom/bumptech/glide/i;

    .line 295
    .line 296
    invoke-interface {v5}, Lj/d0;->get()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    invoke-direct {v0, v2}, Lcom/bumptech/glide/i;-><init>(Ljava/lang/Class;)V

    .line 305
    .line 306
    .line 307
    throw v0

    .line 308
    :cond_f
    :goto_8
    iget-object v0, v1, Lj/l;->c:Lv/a;

    .line 309
    .line 310
    move-object/from16 v2, p4

    .line 311
    .line 312
    invoke-interface {v0, v5, v2}, Lv/a;->a(Lj/d0;Lh/h;)Lj/d0;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    return-object v0

    .line 317
    :catchall_0
    move-exception v0

    .line 318
    invoke-interface {v7, v6}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    throw v0

    .line 322
    nop

    .line 323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lcom/bumptech/glide/load/data/g;IILh/h;Ljava/util/List;)Lj/d0;
    .locals 9

    .line 1
    iget-object v0, p0, Lj/l;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v1, :cond_3

    .line 10
    .line 11
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Lh/j;

    .line 16
    .line 17
    :try_start_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/g;->d()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-interface {v4, v5, p4}, Lh/j;->b(Ljava/lang/Object;Lh/h;)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_1

    .line 26
    .line 27
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/g;->d()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-interface {v4, v5, p2, p3, p4}, Lh/j;->a(Ljava/lang/Object;IILh/h;)Lj/d0;

    .line 32
    .line 33
    .line 34
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_2

    .line 36
    :catch_0
    move-exception v5

    .line 37
    goto :goto_1

    .line 38
    :catch_1
    move-exception v5

    .line 39
    goto :goto_1

    .line 40
    :catch_2
    move-exception v5

    .line 41
    :goto_1
    const/4 v6, 0x2

    .line 42
    const-string v7, "DecodePath"

    .line 43
    .line 44
    invoke-static {v7, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_0

    .line 49
    .line 50
    new-instance v6, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v8, "Failed to decode data for "

    .line 53
    .line 54
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-static {v7, v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .line 66
    .line 67
    :cond_0
    invoke-interface {p5, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    :goto_3
    if-eqz v2, :cond_4

    .line 77
    .line 78
    return-object v2

    .line 79
    :cond_4
    new-instance p1, Lj/z;

    .line 80
    .line 81
    new-instance p2, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {p2, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 84
    .line 85
    .line 86
    iget-object p3, p0, Lj/l;->e:Ljava/lang/String;

    .line 87
    .line 88
    invoke-direct {p1, p3, p2}, Lj/z;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 89
    .line 90
    .line 91
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DecodePath{ dataClass="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lj/l;->a:Ljava/lang/Class;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", decoders="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lj/l;->b:Ljava/util/List;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", transcoder="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lj/l;->c:Lv/a;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 v1, 0x7d

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method
