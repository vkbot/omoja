.class public final Lv7/t;
.super Ln7/j0;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final n:Ln7/a;


# instance fields
.field public final f:Lv7/l;

.field public final g:Ln7/k1;

.field public final h:Lv7/e;

.field public final i:Lo7/u2;

.field public final j:Ljava/util/concurrent/ScheduledExecutorService;

.field public k:Ll/d;

.field public l:Ljava/lang/Long;

.field public final m:Ln7/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ln7/a;

    .line 2
    .line 3
    const-string v1, "addressTrackerKey"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ln7/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lv7/t;->n:Ln7/a;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ln7/e;)V
    .locals 4

    .line 1
    sget-object v0, Lo7/u2;->d:Lo7/u2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ln7/e;->c()Ln7/e;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, p0, Lv7/t;->m:Ln7/e;

    .line 11
    .line 12
    new-instance v2, Lv7/d;

    .line 13
    .line 14
    invoke-direct {v2, p0, p1}, Lv7/d;-><init>(Lv7/t;Ln7/e;)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lv7/e;

    .line 18
    .line 19
    invoke-direct {v3, v2}, Lv7/e;-><init>(Lv7/a;)V

    .line 20
    .line 21
    .line 22
    iput-object v3, p0, Lv7/t;->h:Lv7/e;

    .line 23
    .line 24
    new-instance v2, Lv7/l;

    .line 25
    .line 26
    invoke-direct {v2}, Lv7/l;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v2, p0, Lv7/t;->f:Lv7/l;

    .line 30
    .line 31
    invoke-virtual {p1}, Ln7/e;->f()Ln7/k1;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string v3, "syncContext"

    .line 36
    .line 37
    invoke-static {v2, v3}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Lv7/t;->g:Ln7/k1;

    .line 41
    .line 42
    invoke-virtual {p1}, Ln7/e;->d()Ljava/util/concurrent/ScheduledExecutorService;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string v2, "timeService"

    .line 47
    .line 48
    invoke-static {p1, v2}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lv7/t;->j:Ljava/util/concurrent/ScheduledExecutorService;

    .line 52
    .line 53
    iput-object v0, p0, Lv7/t;->i:Lo7/u2;

    .line 54
    .line 55
    const/4 p1, 0x1

    .line 56
    const-string v0, "OutlierDetection lb created."

    .line 57
    .line 58
    invoke-virtual {v1, p1, v0}, Ln7/e;->m(ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public static g(Ljava/util/List;)Z
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Ln7/r;

    .line 19
    .line 20
    iget-object v2, v2, Ln7/r;->a:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    add-int/2addr v1, v2

    .line 27
    if-le v1, v3, :cond_0

    .line 28
    .line 29
    return v0

    .line 30
    :cond_1
    return v3
.end method

.method public static h(Lv7/l;I)Ljava/util/ArrayList;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lv7/l;->b:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lv7/k;

    .line 27
    .line 28
    invoke-virtual {v1}, Lv7/k;->c()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    int-to-long v4, p1

    .line 33
    cmp-long v2, v2, v4

    .line 34
    .line 35
    if-ltz v2, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a(Ln7/g0;)Ln7/f1;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lv7/t;->h:Lv7/e;

    .line 6
    .line 7
    iget-object v3, v0, Lv7/t;->f:Lv7/l;

    .line 8
    .line 9
    iget-object v4, v0, Lv7/t;->m:Ln7/e;

    .line 10
    .line 11
    const-string v5, "Received resolution result: {0}"

    .line 12
    .line 13
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    const/4 v7, 0x1

    .line 18
    invoke-virtual {v4, v7, v5, v6}, Ln7/e;->n(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object v5, v1, Ln7/g0;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v5, Lv7/o;

    .line 24
    .line 25
    new-instance v6, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v7, v1, Ln7/g0;->a:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    if-eqz v8, :cond_0

    .line 41
    .line 42
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    check-cast v8, Ln7/r;

    .line 47
    .line 48
    iget-object v8, v8, Ln7/r;->a:Ljava/util/List;

    .line 49
    .line 50
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object v7, v3, Lv7/l;->b:Ljava/util/HashMap;

    .line 55
    .line 56
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    invoke-interface {v7, v6}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 61
    .line 62
    .line 63
    iget-object v7, v3, Lv7/l;->b:Ljava/util/HashMap;

    .line 64
    .line 65
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    if-eqz v8, :cond_1

    .line 78
    .line 79
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    check-cast v8, Lv7/k;

    .line 84
    .line 85
    iput-object v5, v8, Lv7/k;->a:Lv7/o;

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    iget-object v7, v3, Lv7/l;->b:Ljava/util/HashMap;

    .line 89
    .line 90
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    const/4 v9, 0x0

    .line 95
    move v10, v9

    .line 96
    :cond_2
    :goto_2
    if-ge v10, v8, :cond_3

    .line 97
    .line 98
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    add-int/lit8 v10, v10, 0x1

    .line 103
    .line 104
    check-cast v11, Ljava/net/SocketAddress;

    .line 105
    .line 106
    invoke-virtual {v7, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v12

    .line 110
    if-nez v12, :cond_2

    .line 111
    .line 112
    new-instance v12, Lv7/k;

    .line 113
    .line 114
    invoke-direct {v12, v5}, Lv7/k;-><init>(Lv7/o;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v7, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_3
    iget-object v6, v5, Lv7/o;->g:Lo7/o4;

    .line 122
    .line 123
    iget-object v7, v5, Lv7/o;->a:Ljava/lang/Long;

    .line 124
    .line 125
    iget-object v6, v6, Lo7/o4;->a:Ln7/k0;

    .line 126
    .line 127
    invoke-virtual {v2, v6}, Lv7/e;->i(Ln7/k0;)V

    .line 128
    .line 129
    .line 130
    iget-object v6, v5, Lv7/o;->e:Lv7/n;

    .line 131
    .line 132
    if-nez v6, :cond_6

    .line 133
    .line 134
    iget-object v6, v5, Lv7/o;->f:Lv7/n;

    .line 135
    .line 136
    if-eqz v6, :cond_4

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_4
    iget-object v4, v0, Lv7/t;->k:Ll/d;

    .line 140
    .line 141
    if-eqz v4, :cond_9

    .line 142
    .line 143
    invoke-virtual {v4}, Ll/d;->j()V

    .line 144
    .line 145
    .line 146
    const/4 v4, 0x0

    .line 147
    iput-object v4, v0, Lv7/t;->l:Ljava/lang/Long;

    .line 148
    .line 149
    iget-object v3, v3, Lv7/l;->b:Ljava/util/HashMap;

    .line 150
    .line 151
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    if-eqz v4, :cond_9

    .line 164
    .line 165
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    check-cast v4, Lv7/k;

    .line 170
    .line 171
    invoke-virtual {v4}, Lv7/k;->d()Z

    .line 172
    .line 173
    .line 174
    move-result v6

    .line 175
    if-eqz v6, :cond_5

    .line 176
    .line 177
    invoke-virtual {v4}, Lv7/k;->e()V

    .line 178
    .line 179
    .line 180
    :cond_5
    iput v9, v4, Lv7/k;->e:I

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_6
    :goto_4
    iget-object v6, v0, Lv7/t;->l:Ljava/lang/Long;

    .line 184
    .line 185
    const-wide/16 v8, 0x0

    .line 186
    .line 187
    if-nez v6, :cond_7

    .line 188
    .line 189
    move-object v6, v7

    .line 190
    goto :goto_5

    .line 191
    :cond_7
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 192
    .line 193
    .line 194
    move-result-wide v10

    .line 195
    iget-object v6, v0, Lv7/t;->i:Lo7/u2;

    .line 196
    .line 197
    invoke-virtual {v6}, Lo7/u2;->q()J

    .line 198
    .line 199
    .line 200
    move-result-wide v12

    .line 201
    iget-object v6, v0, Lv7/t;->l:Ljava/lang/Long;

    .line 202
    .line 203
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 204
    .line 205
    .line 206
    move-result-wide v14

    .line 207
    sub-long/2addr v12, v14

    .line 208
    sub-long/2addr v10, v12

    .line 209
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    .line 210
    .line 211
    .line 212
    move-result-wide v10

    .line 213
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    :goto_5
    iget-object v10, v0, Lv7/t;->k:Ll/d;

    .line 218
    .line 219
    if-eqz v10, :cond_8

    .line 220
    .line 221
    invoke-virtual {v10}, Ll/d;->j()V

    .line 222
    .line 223
    .line 224
    iget-object v3, v3, Lv7/l;->b:Ljava/util/HashMap;

    .line 225
    .line 226
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 235
    .line 236
    .line 237
    move-result v10

    .line 238
    if-eqz v10, :cond_8

    .line 239
    .line 240
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v10

    .line 244
    check-cast v10, Lv7/k;

    .line 245
    .line 246
    iget-object v11, v10, Lv7/k;->b:Ll/d;

    .line 247
    .line 248
    iget-object v12, v11, Ll/d;->c:Ljava/lang/Object;

    .line 249
    .line 250
    check-cast v12, Ljava/util/concurrent/atomic/AtomicLong;

    .line 251
    .line 252
    invoke-virtual {v12, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 253
    .line 254
    .line 255
    iget-object v11, v11, Ll/d;->d:Ljava/lang/Object;

    .line 256
    .line 257
    check-cast v11, Ljava/util/concurrent/atomic/AtomicLong;

    .line 258
    .line 259
    invoke-virtual {v11, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 260
    .line 261
    .line 262
    iget-object v10, v10, Lv7/k;->c:Ll/d;

    .line 263
    .line 264
    iget-object v11, v10, Ll/d;->c:Ljava/lang/Object;

    .line 265
    .line 266
    check-cast v11, Ljava/util/concurrent/atomic/AtomicLong;

    .line 267
    .line 268
    invoke-virtual {v11, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 269
    .line 270
    .line 271
    iget-object v10, v10, Ll/d;->d:Ljava/lang/Object;

    .line 272
    .line 273
    check-cast v10, Ljava/util/concurrent/atomic/AtomicLong;

    .line 274
    .line 275
    invoke-virtual {v10, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 276
    .line 277
    .line 278
    goto :goto_6

    .line 279
    :cond_8
    iget-object v12, v0, Lv7/t;->g:Ln7/k1;

    .line 280
    .line 281
    new-instance v14, Lc3/e;

    .line 282
    .line 283
    const/4 v3, 0x6

    .line 284
    invoke-direct {v14, v0, v5, v4, v3}, Lc3/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 288
    .line 289
    .line 290
    move-result-wide v17

    .line 291
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 292
    .line 293
    .line 294
    move-result-wide v15

    .line 295
    iget-object v3, v0, Lv7/t;->j:Ljava/util/concurrent/ScheduledExecutorService;

    .line 296
    .line 297
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 298
    .line 299
    .line 300
    new-instance v13, Ln7/j1;

    .line 301
    .line 302
    invoke-direct {v13, v14}, Ln7/j1;-><init>(Ljava/lang/Runnable;)V

    .line 303
    .line 304
    .line 305
    new-instance v11, Ln7/i1;

    .line 306
    .line 307
    invoke-direct/range {v11 .. v16}, Ln7/i1;-><init>(Ln7/k1;Ln7/j1;Lc3/e;J)V

    .line 308
    .line 309
    .line 310
    sget-object v21, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 311
    .line 312
    move-wide/from16 v19, v15

    .line 313
    .line 314
    move-object v15, v3

    .line 315
    move-object/from16 v16, v11

    .line 316
    .line 317
    invoke-interface/range {v15 .. v21}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    new-instance v4, Ll/d;

    .line 322
    .line 323
    invoke-direct {v4, v13, v3}, Ll/d;-><init>(Ln7/j1;Ljava/util/concurrent/ScheduledFuture;)V

    .line 324
    .line 325
    .line 326
    iput-object v4, v0, Lv7/t;->k:Ll/d;

    .line 327
    .line 328
    :cond_9
    sget-object v3, Ln7/b;->b:Ln7/b;

    .line 329
    .line 330
    iget-object v3, v1, Ln7/g0;->a:Ljava/util/List;

    .line 331
    .line 332
    iget-object v1, v1, Ln7/g0;->b:Ln7/b;

    .line 333
    .line 334
    iget-object v4, v5, Lv7/o;->g:Lo7/o4;

    .line 335
    .line 336
    iget-object v4, v4, Lo7/o4;->b:Ljava/lang/Object;

    .line 337
    .line 338
    new-instance v5, Ln7/g0;

    .line 339
    .line 340
    invoke-direct {v5, v3, v1, v4}, Ln7/g0;-><init>(Ljava/util/List;Ln7/b;Ljava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v2, v5}, Lv7/e;->d(Ln7/g0;)V

    .line 344
    .line 345
    .line 346
    sget-object v1, Ln7/f1;->e:Ln7/f1;

    .line 347
    .line 348
    return-object v1
.end method

.method public final c(Ln7/f1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv7/t;->h:Lv7/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lv7/e;->c(Ln7/f1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lv7/t;->h:Lv7/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lv7/e;->f()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
