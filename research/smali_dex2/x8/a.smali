.class public final Lx8/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lv8/u1;


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Lv8/e;

.field public final synthetic d:Lx8/b;


# direct methods
.method public constructor <init>(Lx8/b;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx8/a;->d:Lx8/b;

    .line 5
    .line 6
    sget-object p1, Lx8/d;->p:La9/w;

    .line 7
    .line 8
    iput-object p1, p0, Lx8/a;->b:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method

.method public static final a(Lx8/a;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lx8/a;->c:Lv8/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lx8/a;->c:Lv8/e;

    .line 8
    .line 9
    sget-object v1, Lx8/d;->l:La9/w;

    .line 10
    .line 11
    iput-object v1, p0, Lx8/a;->b:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object p0, p0, Lx8/a;->d:Lx8/b;

    .line 14
    .line 15
    invoke-virtual {p0}, Lx8/b;->m()Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-nez p0, :cond_20

    .line 20
    .line 21
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 22
    .line 23
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v0, p0}, Lv8/e;->resumeWith(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_20
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 34
    .line 35
    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v0, p0}, Lv8/e;->resumeWith(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final b(La9/u;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lx8/a;->c:Lv8/e;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lv8/e;->b(La9/u;I)V

    .line 6
    .line 7
    .line 8
    :cond_7
    return-void
.end method

.method public final c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 17

    .line 1
    sget-object v0, Lx8/b;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    iget-object v6, p0, Lx8/a;->d:Lx8/b;

    .line 4
    .line 5
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lx8/k;

    .line 10
    .line 11
    :goto_a
    sget-object v1, Lx8/b;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 12
    .line 13
    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    const/4 v12, 0x1

    .line 18
    invoke-virtual {v6, v1, v2, v12}, Lx8/b;->q(JZ)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2a

    .line 23
    .line 24
    sget-object v0, Lx8/d;->l:La9/w;

    .line 25
    .line 26
    iput-object v0, p0, Lx8/a;->b:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-virtual {v6}, Lx8/b;->m()Ljava/lang/Throwable;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_27

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0

    .line 40
    :cond_27
    sget v1, La9/v;->a:I

    .line 41
    .line 42
    throw v0

    .line 43
    :cond_2a
    sget-object v1, Lx8/b;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 44
    .line 45
    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    sget v1, Lx8/d;->b:I

    .line 50
    .line 51
    int-to-long v1, v1

    .line 52
    div-long v7, v3, v1

    .line 53
    .line 54
    rem-long v1, v3, v1

    .line 55
    .line 56
    long-to-int v2, v1

    .line 57
    iget-wide v9, v0, La9/u;->d:J

    .line 58
    .line 59
    cmp-long v1, v9, v7

    .line 60
    .line 61
    if-eqz v1, :cond_45

    .line 62
    .line 63
    invoke-virtual {v6, v7, v8, v0}, Lx8/b;->l(JLx8/k;)Lx8/k;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    if-nez v1, :cond_46

    .line 68
    .line 69
    goto :goto_a

    .line 70
    :cond_45
    move-object v1, v0

    .line 71
    :cond_46
    const/4 v11, 0x0

    .line 72
    move-object v7, v1

    .line 73
    move v8, v2

    .line 74
    move-wide v9, v3

    .line 75
    invoke-virtual/range {v6 .. v11}, Lx8/b;->z(Lx8/k;IJLx8/a;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sget-object v7, Lx8/d;->m:La9/w;

    .line 80
    .line 81
    const/4 v8, 0x0

    .line 82
    if-eq v0, v7, :cond_120

    .line 83
    .line 84
    sget-object v9, Lx8/d;->o:La9/w;

    .line 85
    .line 86
    if-ne v0, v9, :cond_64

    .line 87
    .line 88
    invoke-virtual {v6}, Lx8/b;->o()J

    .line 89
    .line 90
    .line 91
    move-result-wide v7

    .line 92
    cmp-long v0, v3, v7

    .line 93
    .line 94
    if-gez v0, :cond_62

    .line 95
    .line 96
    invoke-virtual {v1}, La9/e;->a()V

    .line 97
    .line 98
    .line 99
    :cond_62
    move-object v0, v1

    .line 100
    goto :goto_a

    .line 101
    :cond_64
    sget-object v10, Lx8/d;->n:La9/w;

    .line 102
    .line 103
    if-ne v0, v10, :cond_116

    .line 104
    .line 105
    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {v0}, Lv8/a0;->b(Lkotlin/coroutines/Continuation;)Lv8/e;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    :try_start_70
    iput-object v10, p0, Lx8/a;->c:Lv8/e;

    .line 114
    .line 115
    move-object v5, p0

    .line 116
    move-object v0, v6

    .line 117
    invoke-virtual/range {v0 .. v5}, Lx8/b;->z(Lx8/k;IJLx8/a;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    if-ne v6, v7, :cond_82

    .line 122
    .line 123
    invoke-virtual {p0, v1, v2}, Lx8/a;->b(La9/u;I)V

    .line 124
    .line 125
    .line 126
    goto/16 :goto_104

    .line 127
    .line 128
    :catchall_7f
    move-exception v0

    .line 129
    goto/16 :goto_112

    .line 130
    .line 131
    :cond_82
    if-ne v6, v9, :cond_f8

    .line 132
    .line 133
    invoke-virtual {v0}, Lx8/b;->o()J

    .line 134
    .line 135
    .line 136
    move-result-wide v6

    .line 137
    cmp-long v2, v3, v6

    .line 138
    .line 139
    if-gez v2, :cond_8f

    .line 140
    .line 141
    invoke-virtual {v1}, La9/e;->a()V

    .line 142
    .line 143
    .line 144
    :cond_8f
    sget-object v1, Lx8/b;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 145
    .line 146
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    check-cast v1, Lx8/k;

    .line 151
    .line 152
    :cond_97
    :goto_97
    sget-object v2, Lx8/b;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 153
    .line 154
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 155
    .line 156
    .line 157
    move-result-wide v2

    .line 158
    invoke-virtual {v0, v2, v3, v12}, Lx8/b;->q(JZ)Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-eqz v2, :cond_a7

    .line 163
    .line 164
    invoke-static {p0}, Lx8/a;->a(Lx8/a;)V

    .line 165
    .line 166
    .line 167
    goto :goto_104

    .line 168
    :cond_a7
    sget-object v2, Lx8/b;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 169
    .line 170
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 171
    .line 172
    .line 173
    move-result-wide v3

    .line 174
    sget v2, Lx8/d;->b:I

    .line 175
    .line 176
    int-to-long v6, v2

    .line 177
    div-long v13, v3, v6

    .line 178
    .line 179
    rem-long v6, v3, v6

    .line 180
    .line 181
    long-to-int v2, v6

    .line 182
    iget-wide v6, v1, La9/u;->d:J

    .line 183
    .line 184
    cmp-long v6, v6, v13

    .line 185
    .line 186
    if-eqz v6, :cond_c3

    .line 187
    .line 188
    invoke-virtual {v0, v13, v14, v1}, Lx8/b;->l(JLx8/k;)Lx8/k;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    if-nez v6, :cond_c2

    .line 193
    .line 194
    goto :goto_97

    .line 195
    :cond_c2
    move-object v1, v6

    .line 196
    :cond_c3
    move-object v5, p0

    .line 197
    invoke-virtual/range {v0 .. v5}, Lx8/b;->z(Lx8/k;IJLx8/a;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    sget-object v7, Lx8/d;->m:La9/w;

    .line 202
    .line 203
    if-ne v6, v7, :cond_d0

    .line 204
    .line 205
    invoke-virtual {p0, v1, v2}, Lx8/a;->b(La9/u;I)V

    .line 206
    .line 207
    .line 208
    goto :goto_104

    .line 209
    :cond_d0
    sget-object v2, Lx8/d;->o:La9/w;

    .line 210
    .line 211
    if-ne v6, v2, :cond_e0

    .line 212
    .line 213
    invoke-virtual {v0}, Lx8/b;->o()J

    .line 214
    .line 215
    .line 216
    move-result-wide v6

    .line 217
    cmp-long v2, v3, v6

    .line 218
    .line 219
    if-gez v2, :cond_97

    .line 220
    .line 221
    invoke-virtual {v1}, La9/e;->a()V

    .line 222
    .line 223
    .line 224
    goto :goto_97

    .line 225
    :cond_e0
    sget-object v0, Lx8/d;->n:La9/w;

    .line 226
    .line 227
    if-eq v6, v0, :cond_f0

    .line 228
    .line 229
    invoke-virtual {v1}, La9/e;->a()V

    .line 230
    .line 231
    .line 232
    iput-object v6, p0, Lx8/a;->b:Ljava/lang/Object;

    .line 233
    .line 234
    iput-object v8, p0, Lx8/a;->c:Lv8/e;

    .line 235
    .line 236
    goto :goto_ff

    .line 237
    :goto_ec
    invoke-virtual {v10, v0, v8}, Lv8/e;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 238
    .line 239
    .line 240
    goto :goto_104

    .line 241
    :cond_f0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 242
    .line 243
    const-string v1, "unexpected"

    .line 244
    .line 245
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    throw v0

    .line 249
    :cond_f8
    invoke-virtual {v1}, La9/e;->a()V

    .line 250
    .line 251
    .line 252
    iput-object v6, p0, Lx8/a;->b:Ljava/lang/Object;

    .line 253
    .line 254
    iput-object v8, p0, Lx8/a;->c:Lv8/e;

    .line 255
    .line 256
    :goto_ff
    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 257
    .line 258
    .line 259
    move-result-object v0
    :try_end_103
    .catchall {:try_start_70 .. :try_end_103} :catchall_7f

    .line 260
    goto :goto_ec

    .line 261
    :goto_104
    invoke-virtual {v10}, Lv8/e;->q()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    if-ne v0, v1, :cond_111

    .line 270
    .line 271
    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 272
    .line 273
    .line 274
    :cond_111
    return-object v0

    .line 275
    :goto_112
    invoke-virtual {v10}, Lv8/e;->x()V

    .line 276
    .line 277
    .line 278
    throw v0

    .line 279
    :cond_116
    invoke-virtual {v1}, La9/e;->a()V

    .line 280
    .line 281
    .line 282
    iput-object v0, p0, Lx8/a;->b:Ljava/lang/Object;

    .line 283
    .line 284
    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    return-object v0

    .line 289
    :cond_120
    const-string v0, "unreachable"

    .line 290
    .line 291
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    return-object v8
.end method

.method public final d()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lx8/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    sget-object v1, Lx8/d;->p:La9/w;

    .line 4
    .line 5
    if-eq v0, v1, :cond_1f

    .line 6
    .line 7
    iput-object v1, p0, Lx8/a;->b:Ljava/lang/Object;

    .line 8
    .line 9
    sget-object v1, Lx8/d;->l:La9/w;

    .line 10
    .line 11
    if-eq v0, v1, :cond_d

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_d
    iget-object v0, p0, Lx8/a;->d:Lx8/b;

    .line 15
    .line 16
    invoke-virtual {v0}, Lx8/b;->m()Ljava/lang/Throwable;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_1c

    .line 21
    .line 22
    new-instance v0, Lx8/l;

    .line 23
    .line 24
    const-string v1, "Channel was closed"

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_1c
    sget v1, La9/v;->a:I

    .line 30
    .line 31
    throw v0

    .line 32
    :cond_1f
    const-string v0, "`hasNext()` has not been invoked"

    .line 33
    .line 34
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    return-object v0
.end method
