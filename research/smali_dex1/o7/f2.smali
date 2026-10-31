.class public final Lo7/f2;
.super Ln7/m0;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ln7/z;


# static fields
.field public static final c0:Ljava/util/logging/Logger;

.field public static final d0:Ljava/util/regex/Pattern;

.field public static final e0:Ln7/f1;

.field public static final f0:Ln7/f1;

.field public static final g0:Lo7/l2;

.field public static final h0:Lo7/s1;

.field public static final i0:Lo7/g0;


# instance fields
.field public final A:Ljava/util/HashSet;

.field public B:Ljava/util/LinkedHashSet;

.field public final C:Ljava/lang/Object;

.field public final D:Ljava/util/HashSet;

.field public final E:Lo7/l0;

.field public final F:Lb1/m;

.field public final G:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public H:Z

.field public volatile I:Z

.field public final J:Ljava/util/concurrent/CountDownLatch;

.field public final K:Lo7/u2;

.field public final L:Lb1/m;

.field public final M:Lo7/o;

.field public final N:Lo7/m;

.field public final O:Ln7/x;

.field public final P:Lo7/c2;

.field public Q:Lo7/l2;

.field public R:Z

.field public final S:Z

.field public final T:Lo7/f;

.field public final U:J

.field public final V:J

.field public final W:Z

.field public final X:Ln7/h;

.field public final Y:Lo7/e1;

.field public final Z:Lc0/h;

.field public final a:Ln7/a0;

.field public final a0:Lo7/n3;

.field public final b:Ljava/lang/String;

.field public b0:I

.field public final c:Ln7/b1;

.field public final d:Lm5/a;

.field public final e:Lo7/w4;

.field public final f:Lo7/l;

.field public final g:Lo7/d2;

.field public final h:Ljava/util/concurrent/Executor;

.field public final i:Ln/p;

.field public final j:Lo7/x1;

.field public final k:Lo7/x1;

.field public final l:Lo7/u2;

.field public final m:Ln7/k1;

.field public final n:Ln7/q;

.field public final o:Ln7/i;

.field public final p:Lo7/u2;

.field public final q:J

.field public final r:Lc0/h;

.field public final s:Lo7/u2;

.field public final t:Ln7/d;

.field public final u:Ljava/util/ArrayList;

.field public v:Lo7/h4;

.field public w:Z

.field public x:Lo7/y1;

.field public volatile y:Ln7/h0;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 1
    const-class v0, Lo7/f2;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lo7/f2;->c0:Ljava/util/logging/Logger;

    .line 12
    .line 13
    const-string v0, "[a-zA-Z][a-zA-Z0-9+.-]*:/.*"

    .line 14
    .line 15
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lo7/f2;->d0:Ljava/util/regex/Pattern;

    .line 20
    .line 21
    sget-object v0, Ln7/f1;->m:Ln7/f1;

    .line 22
    .line 23
    const-string v1, "Channel shutdownNow invoked"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 26
    .line 27
    .line 28
    const-string v1, "Channel shutdown invoked"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sput-object v1, Lo7/f2;->e0:Ln7/f1;

    .line 35
    .line 36
    const-string v1, "Subchannel shutdown invoked"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sput-object v0, Lo7/f2;->f0:Ln7/f1;

    .line 43
    .line 44
    new-instance v1, Lo7/l2;

    .line 45
    .line 46
    new-instance v3, Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 49
    .line 50
    .line 51
    new-instance v4, Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 54
    .line 55
    .line 56
    const/4 v6, 0x0

    .line 57
    const/4 v7, 0x0

    .line 58
    const/4 v2, 0x0

    .line 59
    const/4 v5, 0x0

    .line 60
    invoke-direct/range {v1 .. v7}, Lo7/l2;-><init>(Lo7/j2;Ljava/util/HashMap;Ljava/util/HashMap;Lo7/d4;Ljava/lang/Object;Ljava/util/Map;)V

    .line 61
    .line 62
    .line 63
    sput-object v1, Lo7/f2;->g0:Lo7/l2;

    .line 64
    .line 65
    new-instance v0, Lo7/s1;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 68
    .line 69
    .line 70
    sput-object v0, Lo7/f2;->h0:Lo7/s1;

    .line 71
    .line 72
    new-instance v0, Lo7/g0;

    .line 73
    .line 74
    const/4 v1, 0x1

    .line 75
    invoke-direct {v0, v1}, Lo7/g0;-><init>(I)V

    .line 76
    .line 77
    .line 78
    sput-object v0, Lo7/f2;->i0:Lo7/g0;

    .line 79
    .line 80
    return-void
.end method

.method public constructor <init>(Lo7/g2;Lp7/g;Lo7/u2;Ln/p;Lo7/u2;Ljava/util/ArrayList;)V
    .registers 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    sget-object v4, Lo7/u2;->d:Lo7/u2;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v8, Ln7/k1;

    .line 15
    .line 16
    new-instance v5, Lo7/u1;

    .line 17
    .line 18
    invoke-direct {v5, v0}, Lo7/u1;-><init>(Lo7/f2;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v8, v5}, Ln7/k1;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 22
    .line 23
    .line 24
    iput-object v8, v0, Lo7/f2;->m:Ln7/k1;

    .line 25
    .line 26
    new-instance v5, Lc0/h;

    .line 27
    .line 28
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v6, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v6, v5, Lc0/h;->b:Ljava/lang/Object;

    .line 37
    .line 38
    sget-object v6, Ln7/j;->e:Ln7/j;

    .line 39
    .line 40
    iput-object v6, v5, Lc0/h;->c:Ljava/lang/Object;

    .line 41
    .line 42
    iput-object v5, v0, Lo7/f2;->r:Lc0/h;

    .line 43
    .line 44
    new-instance v5, Ljava/util/HashSet;

    .line 45
    .line 46
    const/16 v6, 0x10

    .line 47
    .line 48
    const/high16 v7, 0x3f400000    # 0.75f

    .line 49
    .line 50
    invoke-direct {v5, v6, v7}, Ljava/util/HashSet;-><init>(IF)V

    .line 51
    .line 52
    .line 53
    iput-object v5, v0, Lo7/f2;->A:Ljava/util/HashSet;

    .line 54
    .line 55
    new-instance v5, Ljava/lang/Object;

    .line 56
    .line 57
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v5, v0, Lo7/f2;->C:Ljava/lang/Object;

    .line 61
    .line 62
    new-instance v5, Ljava/util/HashSet;

    .line 63
    .line 64
    const/4 v13, 0x1

    .line 65
    invoke-direct {v5, v13, v7}, Ljava/util/HashSet;-><init>(IF)V

    .line 66
    .line 67
    .line 68
    iput-object v5, v0, Lo7/f2;->D:Ljava/util/HashSet;

    .line 69
    .line 70
    new-instance v5, Lb1/m;

    .line 71
    .line 72
    invoke-direct {v5, v0}, Lb1/m;-><init>(Lo7/f2;)V

    .line 73
    .line 74
    .line 75
    iput-object v5, v0, Lo7/f2;->F:Lb1/m;

    .line 76
    .line 77
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    .line 79
    const/4 v14, 0x0

    .line 80
    invoke-direct {v5, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 81
    .line 82
    .line 83
    iput-object v5, v0, Lo7/f2;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    .line 85
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    .line 86
    .line 87
    invoke-direct {v5, v13}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 88
    .line 89
    .line 90
    iput-object v5, v0, Lo7/f2;->J:Ljava/util/concurrent/CountDownLatch;

    .line 91
    .line 92
    iput v13, v0, Lo7/f2;->b0:I

    .line 93
    .line 94
    sget-object v5, Lo7/f2;->g0:Lo7/l2;

    .line 95
    .line 96
    iput-object v5, v0, Lo7/f2;->Q:Lo7/l2;

    .line 97
    .line 98
    iput-boolean v14, v0, Lo7/f2;->R:Z

    .line 99
    .line 100
    new-instance v5, Lo7/f;

    .line 101
    .line 102
    const/4 v6, 0x1

    .line 103
    invoke-direct {v5, v6}, Lo7/f;-><init>(I)V

    .line 104
    .line 105
    .line 106
    iput-object v5, v0, Lo7/f2;->T:Lo7/f;

    .line 107
    .line 108
    sget-object v5, Ln7/o;->e:Ln7/h;

    .line 109
    .line 110
    iput-object v5, v0, Lo7/f2;->X:Ln7/h;

    .line 111
    .line 112
    new-instance v15, Ln/p;

    .line 113
    .line 114
    const/4 v5, 0x4

    .line 115
    invoke-direct {v15, v5, v0}, Ln/p;-><init>(ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    new-instance v5, Lo7/e1;

    .line 119
    .line 120
    invoke-direct {v5, v0, v6}, Lo7/e1;-><init>(Ln7/z;I)V

    .line 121
    .line 122
    .line 123
    iput-object v5, v0, Lo7/f2;->Y:Lo7/e1;

    .line 124
    .line 125
    new-instance v5, Lc0/h;

    .line 126
    .line 127
    invoke-direct {v5, v0}, Lc0/h;-><init>(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    iput-object v5, v0, Lo7/f2;->Z:Lc0/h;

    .line 131
    .line 132
    iget-object v5, v1, Lo7/g2;->g:Ljava/lang/String;

    .line 133
    .line 134
    const-string v6, "target"

    .line 135
    .line 136
    invoke-static {v5, v6}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iput-object v5, v0, Lo7/f2;->b:Ljava/lang/String;

    .line 140
    .line 141
    new-instance v6, Ln7/a0;

    .line 142
    .line 143
    sget-object v7, Ln7/a0;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 144
    .line 145
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 146
    .line 147
    .line 148
    move-result-wide v9

    .line 149
    const-string v7, "Channel"

    .line 150
    .line 151
    invoke-direct {v6, v9, v10, v7, v5}, Ln7/a0;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iput-object v6, v0, Lo7/f2;->a:Ln7/a0;

    .line 155
    .line 156
    iput-object v4, v0, Lo7/f2;->l:Lo7/u2;

    .line 157
    .line 158
    iget-object v7, v1, Lo7/g2;->b:Ln/p;

    .line 159
    .line 160
    const-string v9, "executorPool"

    .line 161
    .line 162
    invoke-static {v7, v9}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iput-object v7, v0, Lo7/f2;->i:Ln/p;

    .line 166
    .line 167
    iget-object v7, v7, Ln/p;->c:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v7, Lo7/r4;

    .line 170
    .line 171
    invoke-static {v7}, Lo7/s4;->a(Lo7/r4;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    check-cast v7, Ljava/util/concurrent/Executor;

    .line 176
    .line 177
    const-string v9, "executor"

    .line 178
    .line 179
    invoke-static {v7, v9}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iput-object v7, v0, Lo7/f2;->h:Ljava/util/concurrent/Executor;

    .line 183
    .line 184
    new-instance v12, Lo7/x1;

    .line 185
    .line 186
    iget-object v9, v1, Lo7/g2;->c:Ln/p;

    .line 187
    .line 188
    const-string v10, "offloadExecutorPool"

    .line 189
    .line 190
    invoke-static {v9, v10}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-direct {v12, v9}, Lo7/x1;-><init>(Ln/p;)V

    .line 194
    .line 195
    .line 196
    iput-object v12, v0, Lo7/f2;->k:Lo7/x1;

    .line 197
    .line 198
    new-instance v9, Lo7/l;

    .line 199
    .line 200
    invoke-direct {v9, v2, v12}, Lo7/l;-><init>(Lp7/g;Lo7/x1;)V

    .line 201
    .line 202
    .line 203
    iput-object v9, v0, Lo7/f2;->f:Lo7/l;

    .line 204
    .line 205
    new-instance v10, Lo7/d2;

    .line 206
    .line 207
    iget-object v2, v2, Lp7/g;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 208
    .line 209
    invoke-direct {v10, v2}, Lo7/d2;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 210
    .line 211
    .line 212
    iput-object v10, v0, Lo7/f2;->g:Lo7/d2;

    .line 213
    .line 214
    new-instance v2, Lo7/o;

    .line 215
    .line 216
    invoke-virtual {v4}, Lo7/u2;->q()J

    .line 217
    .line 218
    .line 219
    move-result-wide v13

    .line 220
    const-string v11, "Channel for \'"

    .line 221
    .line 222
    move-object/from16 v16, v7

    .line 223
    .line 224
    const-string v7, "\'"

    .line 225
    .line 226
    invoke-static {v11, v5, v7}, Lai/onnxruntime/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v7

    .line 230
    invoke-direct {v2, v6, v13, v14, v7}, Lo7/o;-><init>(Ln7/a0;JLjava/lang/String;)V

    .line 231
    .line 232
    .line 233
    iput-object v2, v0, Lo7/f2;->M:Lo7/o;

    .line 234
    .line 235
    new-instance v11, Lo7/m;

    .line 236
    .line 237
    invoke-direct {v11, v2, v4}, Lo7/m;-><init>(Lo7/o;Lo7/u2;)V

    .line 238
    .line 239
    .line 240
    iput-object v11, v0, Lo7/f2;->N:Lo7/m;

    .line 241
    .line 242
    sget-object v7, Lo7/y0;->m:Lo7/h3;

    .line 243
    .line 244
    iget-boolean v2, v1, Lo7/g2;->p:Z

    .line 245
    .line 246
    iput-boolean v2, v0, Lo7/f2;->W:Z

    .line 247
    .line 248
    new-instance v4, Lo7/w4;

    .line 249
    .line 250
    iget-object v6, v1, Lo7/g2;->h:Ljava/lang/String;

    .line 251
    .line 252
    invoke-direct {v4, v6}, Lo7/w4;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    iput-object v4, v0, Lo7/f2;->e:Lo7/w4;

    .line 256
    .line 257
    iget-object v13, v1, Lo7/g2;->e:Ln7/b1;

    .line 258
    .line 259
    iput-object v13, v0, Lo7/f2;->c:Ln7/b1;

    .line 260
    .line 261
    move-object v6, v9

    .line 262
    new-instance v9, Lo7/i4;

    .line 263
    .line 264
    iget v14, v1, Lo7/g2;->l:I

    .line 265
    .line 266
    move-object/from16 v17, v5

    .line 267
    .line 268
    iget v5, v1, Lo7/g2;->m:I

    .line 269
    .line 270
    invoke-direct {v9, v2, v14, v5, v4}, Lo7/i4;-><init>(ZIILjava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    iget-object v2, v1, Lo7/g2;->y:Lp7/f;

    .line 274
    .line 275
    iget-object v2, v2, Lp7/f;->a:Lp7/h;

    .line 276
    .line 277
    iget v2, v2, Lp7/h;->h:I

    .line 278
    .line 279
    invoke-static {v2}, Lcom/bumptech/glide/g;->c(I)I

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    if-eqz v4, :cond_131

    .line 284
    .line 285
    const/4 v5, 0x1

    .line 286
    if-ne v4, v5, :cond_122

    .line 287
    .line 288
    const/16 v2, 0x50

    .line 289
    .line 290
    goto :goto_133

    .line 291
    :cond_122
    invoke-static {v2}, Lkotlin/collections/unsigned/a;->h(I)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    const-string v4, " not handled"

    .line 296
    .line 297
    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    invoke-static {v2}, Lj1/i;->e(Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    const/4 v2, 0x0

    .line 305
    goto :goto_133

    .line 306
    :cond_131
    const/16 v2, 0x1bb

    .line 307
    .line 308
    :goto_133
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 313
    .line 314
    .line 315
    new-instance v5, Lm5/a;

    .line 316
    .line 317
    move-object v14, v6

    .line 318
    move-object/from16 v4, v16

    .line 319
    .line 320
    move-object v6, v2

    .line 321
    move-object/from16 v2, v17

    .line 322
    .line 323
    invoke-direct/range {v5 .. v12}, Lm5/a;-><init>(Ljava/lang/Integer;Lo7/h3;Ln7/k1;Lo7/i4;Lo7/d2;Lo7/m;Lo7/x1;)V

    .line 324
    .line 325
    .line 326
    iput-object v5, v0, Lo7/f2;->d:Lm5/a;

    .line 327
    .line 328
    iget-object v6, v14, Lo7/l;->b:Lp7/g;

    .line 329
    .line 330
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    .line 332
    .line 333
    const-class v6, Ljava/net/InetSocketAddress;

    .line 334
    .line 335
    invoke-static {v6}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 336
    .line 337
    .line 338
    move-result-object v6

    .line 339
    invoke-static {v2, v13, v5, v6}, Lo7/f2;->i(Ljava/lang/String;Ln7/b1;Lm5/a;Ljava/util/Collection;)Lo7/h4;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    iput-object v2, v0, Lo7/f2;->v:Lo7/h4;

    .line 344
    .line 345
    new-instance v2, Lo7/x1;

    .line 346
    .line 347
    move-object/from16 v5, p4

    .line 348
    .line 349
    invoke-direct {v2, v5}, Lo7/x1;-><init>(Ln/p;)V

    .line 350
    .line 351
    .line 352
    iput-object v2, v0, Lo7/f2;->j:Lo7/x1;

    .line 353
    .line 354
    new-instance v2, Lo7/l0;

    .line 355
    .line 356
    invoke-direct {v2, v4, v8}, Lo7/l0;-><init>(Ljava/util/concurrent/Executor;Ln7/k1;)V

    .line 357
    .line 358
    .line 359
    iput-object v2, v0, Lo7/f2;->E:Lo7/l0;

    .line 360
    .line 361
    invoke-virtual {v2, v15}, Lo7/l0;->b(Lo7/m2;)Ljava/lang/Runnable;

    .line 362
    .line 363
    .line 364
    move-object/from16 v2, p3

    .line 365
    .line 366
    iput-object v2, v0, Lo7/f2;->s:Lo7/u2;

    .line 367
    .line 368
    iget-boolean v2, v1, Lo7/g2;->r:Z

    .line 369
    .line 370
    iput-boolean v2, v0, Lo7/f2;->S:Z

    .line 371
    .line 372
    new-instance v4, Lo7/c2;

    .line 373
    .line 374
    iget-object v5, v0, Lo7/f2;->v:Lo7/h4;

    .line 375
    .line 376
    invoke-virtual {v5}, Lo7/h4;->e()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v5

    .line 380
    invoke-direct {v4, v0, v5}, Lo7/c2;-><init>(Lo7/f2;Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    iput-object v4, v0, Lo7/f2;->P:Lo7/c2;

    .line 384
    .line 385
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    .line 386
    .line 387
    .line 388
    move-result v5

    .line 389
    const/4 v6, 0x0

    .line 390
    :goto_185
    if-ge v6, v5, :cond_198

    .line 391
    .line 392
    move-object/from16 v7, p6

    .line 393
    .line 394
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v9

    .line 398
    add-int/lit8 v6, v6, 0x1

    .line 399
    .line 400
    check-cast v9, Lu7/g;

    .line 401
    .line 402
    new-instance v10, Ln7/f;

    .line 403
    .line 404
    invoke-direct {v10, v4, v9}, Ln7/f;-><init>(Ln7/d;Lu7/g;)V

    .line 405
    .line 406
    .line 407
    move-object v4, v10

    .line 408
    goto :goto_185

    .line 409
    :cond_198
    iput-object v4, v0, Lo7/f2;->t:Ln7/d;

    .line 410
    .line 411
    new-instance v4, Ljava/util/ArrayList;

    .line 412
    .line 413
    iget-object v5, v1, Lo7/g2;->f:Ljava/util/ArrayList;

    .line 414
    .line 415
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 416
    .line 417
    .line 418
    iput-object v4, v0, Lo7/f2;->u:Ljava/util/ArrayList;

    .line 419
    .line 420
    const-string v4, "stopwatchSupplier"

    .line 421
    .line 422
    invoke-static {v3, v4}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    iput-object v3, v0, Lo7/f2;->p:Lo7/u2;

    .line 426
    .line 427
    iget-wide v4, v1, Lo7/g2;->k:J

    .line 428
    .line 429
    const-wide/16 v6, -0x1

    .line 430
    .line 431
    cmp-long v6, v4, v6

    .line 432
    .line 433
    if-nez v6, :cond_1b5

    .line 434
    .line 435
    iput-wide v4, v0, Lo7/f2;->q:J

    .line 436
    .line 437
    goto :goto_1c7

    .line 438
    :cond_1b5
    sget-wide v6, Lo7/g2;->B:J

    .line 439
    .line 440
    cmp-long v6, v4, v6

    .line 441
    .line 442
    if-ltz v6, :cond_1bd

    .line 443
    .line 444
    const/4 v6, 0x1

    .line 445
    goto :goto_1be

    .line 446
    :cond_1bd
    const/4 v6, 0x0

    .line 447
    :goto_1be
    const-string v7, "invalid idleTimeoutMillis %s"

    .line 448
    .line 449
    invoke-static {v6, v7, v4, v5}, Lo4/b;->g(ZLjava/lang/String;J)V

    .line 450
    .line 451
    .line 452
    iget-wide v4, v1, Lo7/g2;->k:J

    .line 453
    .line 454
    iput-wide v4, v0, Lo7/f2;->q:J

    .line 455
    .line 456
    :goto_1c7
    new-instance v4, Lo7/n3;

    .line 457
    .line 458
    new-instance v5, Lcom/bumptech/glide/m;

    .line 459
    .line 460
    const/16 v6, 0xe

    .line 461
    .line 462
    invoke-direct {v5, v6, v0}, Lcom/bumptech/glide/m;-><init>(ILjava/lang/Object;)V

    .line 463
    .line 464
    .line 465
    iget-object v6, v14, Lo7/l;->b:Lp7/g;

    .line 466
    .line 467
    iget-object v6, v6, Lp7/g;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 468
    .line 469
    invoke-virtual {v3}, Lo7/u2;->r()Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v3

    .line 473
    check-cast v3, Li4/f;

    .line 474
    .line 475
    invoke-direct {v4, v5, v8, v6, v3}, Lo7/n3;-><init>(Lcom/bumptech/glide/m;Ln7/k1;Ljava/util/concurrent/ScheduledExecutorService;Li4/f;)V

    .line 476
    .line 477
    .line 478
    iput-object v4, v0, Lo7/f2;->a0:Lo7/n3;

    .line 479
    .line 480
    iget-object v3, v1, Lo7/g2;->i:Ln7/q;

    .line 481
    .line 482
    const-string v4, "decompressorRegistry"

    .line 483
    .line 484
    invoke-static {v3, v4}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    iput-object v3, v0, Lo7/f2;->n:Ln7/q;

    .line 488
    .line 489
    iget-object v3, v1, Lo7/g2;->j:Ln7/i;

    .line 490
    .line 491
    const-string v4, "compressorRegistry"

    .line 492
    .line 493
    invoke-static {v3, v4}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    iput-object v3, v0, Lo7/f2;->o:Ln7/i;

    .line 497
    .line 498
    iget-wide v3, v1, Lo7/g2;->n:J

    .line 499
    .line 500
    iput-wide v3, v0, Lo7/f2;->V:J

    .line 501
    .line 502
    iget-wide v3, v1, Lo7/g2;->o:J

    .line 503
    .line 504
    iput-wide v3, v0, Lo7/f2;->U:J

    .line 505
    .line 506
    new-instance v3, Lo7/u2;

    .line 507
    .line 508
    const/16 v4, 0x10

    .line 509
    .line 510
    invoke-direct {v3, v4}, Lo7/u2;-><init>(I)V

    .line 511
    .line 512
    .line 513
    iput-object v3, v0, Lo7/f2;->K:Lo7/u2;

    .line 514
    .line 515
    new-instance v3, Lb1/m;

    .line 516
    .line 517
    const/16 v4, 0xb

    .line 518
    .line 519
    invoke-direct {v3, v4}, Lb1/m;-><init>(I)V

    .line 520
    .line 521
    .line 522
    iput-object v3, v0, Lo7/f2;->L:Lb1/m;

    .line 523
    .line 524
    iget-object v1, v1, Lo7/g2;->q:Ln7/x;

    .line 525
    .line 526
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 527
    .line 528
    .line 529
    iput-object v1, v0, Lo7/f2;->O:Ln7/x;

    .line 530
    .line 531
    iget-object v1, v1, Ln7/x;->a:Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 532
    .line 533
    invoke-virtual {v0}, Lo7/f2;->c()Ln7/a0;

    .line 534
    .line 535
    .line 536
    move-result-object v3

    .line 537
    iget-wide v3, v3, Ln7/a0;->c:J

    .line 538
    .line 539
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 540
    .line 541
    .line 542
    move-result-object v3

    .line 543
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    check-cast v1, Ln7/z;

    .line 548
    .line 549
    if-nez v2, :cond_229

    .line 550
    .line 551
    const/4 v1, 0x1

    .line 552
    iput-boolean v1, v0, Lo7/f2;->R:Z

    .line 553
    .line 554
    :cond_229
    return-void
.end method

.method public static g(Lo7/f2;)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lo7/f2;->I:Z

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    goto/16 :goto_84

    .line 6
    .line 7
    :cond_6
    iget-object v0, p0, Lo7/f2;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_84

    .line 14
    .line 15
    iget-object v0, p0, Lo7/f2;->A:Ljava/util/HashSet;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_84

    .line 22
    .line 23
    iget-object v0, p0, Lo7/f2;->D:Ljava/util/HashSet;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_84

    .line 30
    .line 31
    iget-object v0, p0, Lo7/f2;->N:Lo7/m;

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    const-string v2, "Terminated"

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Lo7/m;->m(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lo7/f2;->O:Ln7/x;

    .line 40
    .line 41
    iget-object v0, v0, Ln7/x;->a:Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 42
    .line 43
    invoke-virtual {p0}, Lo7/f2;->c()Ln7/a0;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-wide v1, v1, Ln7/a0;->c:J

    .line 48
    .line 49
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Ln7/z;

    .line 58
    .line 59
    iget-object v0, p0, Lo7/f2;->i:Ln/p;

    .line 60
    .line 61
    iget-object v1, p0, Lo7/f2;->h:Ljava/util/concurrent/Executor;

    .line 62
    .line 63
    iget-object v0, v0, Ln/p;->c:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, Lo7/r4;

    .line 66
    .line 67
    invoke-static {v0, v1}, Lo7/s4;->b(Lo7/r4;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lo7/f2;->j:Lo7/x1;

    .line 71
    .line 72
    monitor-enter v0

    .line 73
    :try_start_48
    iget-object v1, v0, Lo7/x1;->c:Ljava/util/concurrent/Executor;

    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    if-eqz v1, :cond_5b

    .line 77
    .line 78
    iget-object v3, v0, Lo7/x1;->b:Ln/p;

    .line 79
    .line 80
    iget-object v3, v3, Ln/p;->c:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v3, Lo7/r4;

    .line 83
    .line 84
    invoke-static {v3, v1}, Lo7/s4;->b(Lo7/r4;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iput-object v2, v0, Lo7/x1;->c:Ljava/util/concurrent/Executor;
    :try_end_58
    .catchall {:try_start_48 .. :try_end_58} :catchall_59

    .line 88
    .line 89
    goto :goto_5b

    .line 90
    :catchall_59
    move-exception p0

    .line 91
    goto :goto_82

    .line 92
    :cond_5b
    :goto_5b
    monitor-exit v0

    .line 93
    iget-object v1, p0, Lo7/f2;->k:Lo7/x1;

    .line 94
    .line 95
    monitor-enter v1

    .line 96
    :try_start_5f
    iget-object v0, v1, Lo7/x1;->c:Ljava/util/concurrent/Executor;

    .line 97
    .line 98
    if-eqz v0, :cond_71

    .line 99
    .line 100
    iget-object v3, v1, Lo7/x1;->b:Ln/p;

    .line 101
    .line 102
    iget-object v3, v3, Ln/p;->c:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v3, Lo7/r4;

    .line 105
    .line 106
    invoke-static {v3, v0}, Lo7/s4;->b(Lo7/r4;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    iput-object v2, v1, Lo7/x1;->c:Ljava/util/concurrent/Executor;
    :try_end_6e
    .catchall {:try_start_5f .. :try_end_6e} :catchall_6f

    .line 110
    .line 111
    goto :goto_71

    .line 112
    :catchall_6f
    move-exception p0

    .line 113
    goto :goto_80

    .line 114
    :cond_71
    :goto_71
    monitor-exit v1

    .line 115
    iget-object v0, p0, Lo7/f2;->f:Lo7/l;

    .line 116
    .line 117
    invoke-virtual {v0}, Lo7/l;->close()V

    .line 118
    .line 119
    .line 120
    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lo7/f2;->I:Z

    .line 122
    .line 123
    iget-object p0, p0, Lo7/f2;->J:Ljava/util/concurrent/CountDownLatch;

    .line 124
    .line 125
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :goto_80
    :try_start_80
    monitor-exit v1
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_6f

    .line 130
    throw p0

    .line 131
    :goto_82
    :try_start_82
    monitor-exit v0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_59

    .line 132
    throw p0

    .line 133
    :cond_84
    :goto_84
    return-void
.end method

.method public static i(Ljava/lang/String;Ln7/b1;Lm5/a;Ljava/util/Collection;)Lo7/h4;
    .registers 13

    .line 1
    const-string v1, "/"

    .line 2
    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    :try_start_8
    new-instance v0, Ljava/net/URI;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/net/URISyntaxException; {:try_start_8 .. :try_end_d} :catch_e

    .line 12
    .line 13
    .line 14
    goto :goto_17

    .line 15
    :catch_e
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-object v0, v3

    .line 24
    :goto_17
    if-eqz v0, :cond_38

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    if-nez v4, :cond_23

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    goto :goto_38

    .line 36
    :cond_23
    monitor-enter p1

    .line 37
    :try_start_24
    iget-object v5, p1, Ln7/b1;->c:Lj4/n;
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_34

    .line 38
    .line 39
    monitor-exit p1

    .line 40
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 41
    .line 42
    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v5, v4}, Lj4/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Ln7/a1;

    .line 51
    .line 52
    goto :goto_39

    .line 53
    :catchall_34
    move-exception v0

    .line 54
    move-object p0, v0

    .line 55
    :try_start_36
    monitor-exit p1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_34

    .line 56
    throw p0

    .line 57
    :cond_38
    :goto_38
    move-object v4, v3

    .line 58
    :goto_39
    if-nez v4, :cond_88

    .line 59
    .line 60
    sget-object v5, Lo7/f2;->d0:Ljava/util/regex/Pattern;

    .line 61
    .line 62
    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-nez v5, :cond_88

    .line 71
    .line 72
    :try_start_47
    new-instance v0, Ljava/net/URI;

    .line 73
    .line 74
    monitor-enter p1
    :try_end_4a
    .catch Ljava/net/URISyntaxException; {:try_start_47 .. :try_end_4a} :catch_80

    .line 75
    :try_start_4a
    iget-object v4, p1, Ln7/b1;->a:Ljava/lang/String;
    :try_end_4c
    .catchall {:try_start_4a .. :try_end_4c} :catchall_7c

    .line 76
    .line 77
    :try_start_4c
    monitor-exit p1

    .line 78
    const-string v5, ""

    .line 79
    .line 80
    new-instance v6, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-direct {v0, v4, v5, v1, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/net/URISyntaxException; {:try_start_4c .. :try_end_5e} :catch_80

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    if-nez v1, :cond_66

    .line 100
    .line 101
    move-object v4, v3

    .line 102
    goto :goto_88

    .line 103
    :cond_66
    monitor-enter p1

    .line 104
    :try_start_67
    iget-object v4, p1, Ln7/b1;->c:Lj4/n;
    :try_end_69
    .catchall {:try_start_67 .. :try_end_69} :catchall_78

    .line 105
    .line 106
    monitor-exit p1

    .line 107
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 108
    .line 109
    invoke-virtual {v1, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {v4, p1}, Lj4/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Ln7/a1;

    .line 118
    .line 119
    move-object v4, p1

    .line 120
    goto :goto_88

    .line 121
    :catchall_78
    move-exception v0

    .line 122
    move-object p0, v0

    .line 123
    :try_start_7a
    monitor-exit p1
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_78

    .line 124
    throw p0

    .line 125
    :catchall_7c
    move-exception v0

    .line 126
    move-object p0, v0

    .line 127
    :try_start_7e
    monitor-exit p1
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7c

    .line 128
    :try_start_7f
    throw p0
    :try_end_80
    .catch Ljava/net/URISyntaxException; {:try_start_7f .. :try_end_80} :catch_80

    .line 129
    :catch_80
    move-exception v0

    .line 130
    move-object p0, v0

    .line 131
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 132
    .line 133
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 134
    .line 135
    .line 136
    throw p1

    .line 137
    :cond_88
    :goto_88
    if-nez v4, :cond_b2

    .line 138
    .line 139
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 140
    .line 141
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    if-lez p2, :cond_a6

    .line 146
    .line 147
    new-instance p2, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string p3, " ("

    .line 150
    .line 151
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string p3, ")"

    .line 158
    .line 159
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    goto :goto_a8

    .line 167
    :cond_a6
    const-string p2, ""

    .line 168
    .line 169
    :goto_a8
    const-string p3, "Could not find a NameResolverProvider for "

    .line 170
    .line 171
    invoke-static {p3, p0, p2}, Lai/onnxruntime/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    throw p1

    .line 179
    :cond_b2
    if-eqz p3, :cond_d0

    .line 180
    .line 181
    const-class p1, Ljava/net/InetSocketAddress;

    .line 182
    .line 183
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-interface {p3, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    if-eqz p1, :cond_c1

    .line 192
    .line 193
    goto :goto_d0

    .line 194
    :cond_c1
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    const-string p2, "Address types of NameResolver \'"

    .line 199
    .line 200
    const-string p3, "\' for \'"

    .line 201
    .line 202
    const-string v0, "\' not supported by transport"

    .line 203
    .line 204
    invoke-static {p2, p1, p3, p0, v0}, Landroidx/navigation/b;->w(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    const/4 p0, 0x0

    .line 208
    return-object p0

    .line 209
    :cond_d0
    :goto_d0
    const-string p1, "dns"

    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p3

    .line 215
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    if-eqz p1, :cond_114

    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    const-string p3, "targetPath"

    .line 226
    .line 227
    invoke-static {p1, p3}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    const-string p3, "/"

    .line 231
    .line 232
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 233
    .line 234
    .line 235
    move-result p3

    .line 236
    const-string v1, "the path component (%s) of the target (%s) must start with \'/\'"

    .line 237
    .line 238
    if-eqz p3, :cond_107

    .line 239
    .line 240
    const/4 p3, 0x1

    .line 241
    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    new-instance v3, Lo7/p0;

    .line 246
    .line 247
    invoke-virtual {v0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    sget-object v6, Lo7/y0;->p:Lo7/u2;

    .line 251
    .line 252
    new-instance v7, Li4/f;

    .line 253
    .line 254
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 255
    .line 256
    .line 257
    sget-boolean v8, Lo7/q0;->a:Z

    .line 258
    .line 259
    move-object v5, p2

    .line 260
    invoke-direct/range {v3 .. v8}, Lo7/p0;-><init>(Ljava/lang/String;Lm5/a;Lo7/r4;Li4/f;Z)V

    .line 261
    .line 262
    .line 263
    goto :goto_115

    .line 264
    :cond_107
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    invoke-static {v1, p0}, Le3/d;->l(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p0

    .line 272
    invoke-static {p0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    const/4 p0, 0x0

    .line 276
    return-object p0

    .line 277
    :cond_114
    move-object v5, p2

    .line 278
    :goto_115
    if-eqz v3, :cond_13a

    .line 279
    .line 280
    new-instance p0, Lo7/h4;

    .line 281
    .line 282
    new-instance p1, Lo7/j;

    .line 283
    .line 284
    new-instance p2, Lo7/u2;

    .line 285
    .line 286
    const/16 p3, 0x9

    .line 287
    .line 288
    invoke-direct {p2, p3}, Lo7/u2;-><init>(I)V

    .line 289
    .line 290
    .line 291
    iget-object p3, v5, Lm5/a;->f:Ljava/lang/Object;

    .line 292
    .line 293
    check-cast p3, Lo7/d2;

    .line 294
    .line 295
    if-eqz p3, :cond_133

    .line 296
    .line 297
    iget-object v0, v5, Lm5/a;->d:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast v0, Ln7/k1;

    .line 300
    .line 301
    invoke-direct {p1, p2, p3, v0}, Lo7/j;-><init>(Lo7/u2;Lo7/d2;Ln7/k1;)V

    .line 302
    .line 303
    .line 304
    invoke-direct {p0, v3, p1, v0}, Lo7/h4;-><init>(Lo7/p0;Lo7/j;Ln7/k1;)V

    .line 305
    .line 306
    .line 307
    return-object p0

    .line 308
    :cond_133
    const-string p0, "ScheduledExecutorService not set in Builder"

    .line 309
    .line 310
    invoke-static {p0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    const/4 p0, 0x0

    .line 314
    return-object p0

    .line 315
    :cond_13a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 316
    .line 317
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 318
    .line 319
    .line 320
    move-result p2

    .line 321
    if-lez p2, :cond_156

    .line 322
    .line 323
    new-instance p2, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    const-string p3, " ("

    .line 326
    .line 327
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    const-string p3, ")"

    .line 334
    .line 335
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object p2

    .line 342
    goto :goto_158

    .line 343
    :cond_156
    const-string p2, ""

    .line 344
    .line 345
    :goto_158
    const-string p3, "cannot create a NameResolver for "

    .line 346
    .line 347
    invoke-static {p3, p0, p2}, Lai/onnxruntime/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object p0

    .line 351
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    throw p1
.end method


# virtual methods
.method public final c()Ln7/a0;
    .registers 2

    .line 1
    iget-object v0, p0, Lo7/f2;->a:Ln7/a0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lo7/f2;->t:Ln7/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Ln7/d;->e()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final f(Ln7/x0;Ln7/c;)Ln7/t;
    .registers 4

    .line 1
    iget-object v0, p0, Lo7/f2;->t:Ln7/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ln7/d;->f(Ln7/x0;Ln7/c;)Ln7/t;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final h()V
    .registers 4

    .line 1
    iget-object v0, p0, Lo7/f2;->m:Ln7/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ln7/k1;->d()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo7/f2;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_56

    .line 13
    .line 14
    iget-boolean v0, p0, Lo7/f2;->z:Z

    .line 15
    .line 16
    if-eqz v0, :cond_12

    .line 17
    .line 18
    goto :goto_56

    .line 19
    :cond_12
    iget-object v0, p0, Lo7/f2;->Y:Lo7/e1;

    .line 20
    .line 21
    iget-object v0, v0, Lk/a;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Ljava/util/Set;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_24

    .line 30
    .line 31
    iget-object v0, p0, Lo7/f2;->a0:Lo7/n3;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    iput-boolean v1, v0, Lo7/n3;->f:Z

    .line 35
    .line 36
    goto :goto_27

    .line 37
    :cond_24
    invoke-virtual {p0}, Lo7/f2;->j()V

    .line 38
    .line 39
    .line 40
    :goto_27
    iget-object v0, p0, Lo7/f2;->x:Lo7/y1;

    .line 41
    .line 42
    if-eqz v0, :cond_2c

    .line 43
    .line 44
    goto :goto_56

    .line 45
    :cond_2c
    const/4 v0, 0x2

    .line 46
    const-string v1, "Exiting idle mode"

    .line 47
    .line 48
    iget-object v2, p0, Lo7/f2;->N:Lo7/m;

    .line 49
    .line 50
    invoke-virtual {v2, v0, v1}, Lo7/m;->m(ILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Lo7/y1;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Lo7/y1;-><init>(Lo7/f2;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lo7/f2;->e:Lo7/w4;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    new-instance v2, Lb1/m;

    .line 64
    .line 65
    invoke-direct {v2, v1, v0}, Lb1/m;-><init>(Lo7/w4;Lo7/y1;)V

    .line 66
    .line 67
    .line 68
    iput-object v2, v0, Lo7/y1;->b:Lb1/m;

    .line 69
    .line 70
    iput-object v0, p0, Lo7/f2;->x:Lo7/y1;

    .line 71
    .line 72
    new-instance v1, Lo7/z1;

    .line 73
    .line 74
    iget-object v2, p0, Lo7/f2;->v:Lo7/h4;

    .line 75
    .line 76
    invoke-direct {v1, p0, v0, v2}, Lo7/z1;-><init>(Lo7/f2;Lo7/y1;Lo7/h4;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lo7/f2;->v:Lo7/h4;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lo7/h4;->A(Ln7/t;)V

    .line 82
    .line 83
    .line 84
    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lo7/f2;->w:Z

    .line 86
    .line 87
    :cond_56
    :goto_56
    return-void
.end method

.method public final j()V
    .registers 10

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    iget-wide v2, p0, Lo7/f2;->q:J

    .line 4
    .line 5
    cmp-long v0, v2, v0

    .line 6
    .line 7
    if-nez v0, :cond_9

    .line 8
    .line 9
    return-void

    .line 10
    :cond_9
    iget-object v0, p0, Lo7/f2;->a0:Lo7/n3;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 16
    .line 17
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    iget-object v3, v0, Lo7/n3;->d:Li4/f;

    .line 22
    .line 23
    invoke-virtual {v3}, Li4/f;->a()J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    add-long/2addr v3, v1

    .line 28
    const/4 v5, 0x1

    .line 29
    iput-boolean v5, v0, Lo7/n3;->f:Z

    .line 30
    .line 31
    iget-wide v5, v0, Lo7/n3;->e:J

    .line 32
    .line 33
    sub-long v5, v3, v5

    .line 34
    .line 35
    const-wide/16 v7, 0x0

    .line 36
    .line 37
    cmp-long v5, v5, v7

    .line 38
    .line 39
    if-ltz v5, :cond_2c

    .line 40
    .line 41
    iget-object v5, v0, Lo7/n3;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 42
    .line 43
    if-nez v5, :cond_44

    .line 44
    .line 45
    :cond_2c
    iget-object v5, v0, Lo7/n3;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 46
    .line 47
    if-eqz v5, :cond_34

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    invoke-interface {v5, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 51
    .line 52
    .line 53
    :cond_34
    iget-object v5, v0, Lo7/n3;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 54
    .line 55
    new-instance v6, Lo7/m3;

    .line 56
    .line 57
    const/4 v7, 0x1

    .line 58
    invoke-direct {v6, v0, v7}, Lo7/m3;-><init>(Lo7/n3;I)V

    .line 59
    .line 60
    .line 61
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 62
    .line 63
    invoke-interface {v5, v6, v1, v2, v7}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iput-object v1, v0, Lo7/n3;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 68
    .line 69
    :cond_44
    iput-wide v3, v0, Lo7/n3;->e:J

    .line 70
    .line 71
    return-void
.end method

.method public final k(Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Lo7/f2;->m:Ln7/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ln7/k1;->d()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p1, :cond_1b

    .line 8
    .line 9
    iget-boolean v1, p0, Lo7/f2;->w:Z

    .line 10
    .line 11
    const-string v2, "nameResolver is not started"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lo7/f2;->x:Lo7/y1;

    .line 17
    .line 18
    if-eqz v1, :cond_15

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    move v1, v0

    .line 23
    :goto_16
    const-string v2, "lbHelper is null"

    .line 24
    .line 25
    invoke-static {v1, v2}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1b
    iget-object v1, p0, Lo7/f2;->v:Lo7/h4;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    if-eqz v1, :cond_43

    .line 32
    .line 33
    invoke-virtual {v1}, Lo7/h4;->z()V

    .line 34
    .line 35
    .line 36
    iput-boolean v0, p0, Lo7/f2;->w:Z

    .line 37
    .line 38
    if-eqz p1, :cond_41

    .line 39
    .line 40
    iget-object p1, p0, Lo7/f2;->b:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v0, p0, Lo7/f2;->c:Ln7/b1;

    .line 43
    .line 44
    iget-object v1, p0, Lo7/f2;->d:Lm5/a;

    .line 45
    .line 46
    iget-object v3, p0, Lo7/f2;->f:Lo7/l;

    .line 47
    .line 48
    iget-object v3, v3, Lo7/l;->b:Lp7/g;

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    const-class v3, Ljava/net/InetSocketAddress;

    .line 54
    .line 55
    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-static {p1, v0, v1, v3}, Lo7/f2;->i(Ljava/lang/String;Ln7/b1;Lm5/a;Ljava/util/Collection;)Lo7/h4;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Lo7/f2;->v:Lo7/h4;

    .line 64
    .line 65
    goto :goto_43

    .line 66
    :cond_41
    iput-object v2, p0, Lo7/f2;->v:Lo7/h4;

    .line 67
    .line 68
    :cond_43
    :goto_43
    iget-object p1, p0, Lo7/f2;->x:Lo7/y1;

    .line 69
    .line 70
    if-eqz p1, :cond_54

    .line 71
    .line 72
    iget-object p1, p1, Lo7/y1;->b:Lb1/m;

    .line 73
    .line 74
    iget-object v0, p1, Lb1/m;->d:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v0, Ln7/j0;

    .line 77
    .line 78
    invoke-virtual {v0}, Ln7/j0;->f()V

    .line 79
    .line 80
    .line 81
    iput-object v2, p1, Lb1/m;->d:Ljava/lang/Object;

    .line 82
    .line 83
    iput-object v2, p0, Lo7/f2;->x:Lo7/y1;

    .line 84
    .line 85
    :cond_54
    iput-object v2, p0, Lo7/f2;->y:Ln7/h0;

    .line 86
    .line 87
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
    iget-object v1, p0, Lo7/f2;->a:Ln7/a0;

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
    const-string v1, "target"

    .line 15
    .line 16
    iget-object v2, p0, Lo7/f2;->b:Ljava/lang/String;

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
