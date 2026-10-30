.class public final Lr7/h;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final b:Ll9/a0;

.field public final c:Lr7/f;

.field public final d:Lr7/c;


# direct methods
.method public constructor <init>(Ll9/a0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr7/h;->b:Ll9/a0;

    .line 5
    .line 6
    new-instance v0, Lr7/f;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lr7/f;-><init>(Ll9/a0;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lr7/h;->c:Lr7/f;

    .line 12
    .line 13
    new-instance p1, Lr7/c;

    .line 14
    .line 15
    invoke-direct {p1, v0}, Lr7/c;-><init>(Lr7/f;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lr7/h;->d:Lr7/c;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final S(Lp7/m;IBI)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p4, :cond_c

    .line 4
    .line 5
    and-int/lit8 v2, p3, 0x1

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    move v2, v3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v2, v1

    .line 13
    :goto_0
    and-int/lit8 v4, p3, 0x8

    .line 14
    .line 15
    if-eqz v4, :cond_1

    .line 16
    .line 17
    iget-object v4, p0, Lr7/h;->b:Ll9/a0;

    .line 18
    .line 19
    invoke-virtual {v4}, Ll9/a0;->readByte()B

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    and-int/lit16 v4, v4, 0xff

    .line 24
    .line 25
    int-to-short v4, v4

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v4, v1

    .line 28
    :goto_1
    and-int/lit8 v5, p3, 0x20

    .line 29
    .line 30
    if-eqz v5, :cond_2

    .line 31
    .line 32
    iget-object v5, p0, Lr7/h;->b:Ll9/a0;

    .line 33
    .line 34
    invoke-virtual {v5}, Ll9/a0;->readInt()I

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5}, Ll9/a0;->readByte()B

    .line 38
    .line 39
    .line 40
    add-int/lit8 p2, p2, -0x5

    .line 41
    .line 42
    :cond_2
    invoke-static {p2, p3, v4}, Lr7/j;->b(IBS)I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    invoke-virtual {p0, p2, v4, p3, p4}, Lr7/h;->y(ISBI)Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    iget-object p3, p1, Lp7/m;->b:Ll/d;

    .line 51
    .line 52
    invoke-virtual {p3}, Ll/d;->z()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_3

    .line 57
    .line 58
    iget-object v4, p3, Ll/d;->c:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v4, Ljava/util/logging/Logger;

    .line 61
    .line 62
    iget-object p3, p3, Ll/d;->d:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p3, Ljava/util/logging/Level;

    .line 65
    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v6, "INBOUND"

    .line 72
    .line 73
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v6, " HEADERS: streamId="

    .line 77
    .line 78
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v6, " headers="

    .line 85
    .line 86
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v6, " endStream="

    .line 93
    .line 94
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-virtual {v4, p3, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_3
    iget-object p3, p1, Lp7/m;->e:Lp7/n;

    .line 108
    .line 109
    iget p3, p3, Lp7/n;->K:I

    .line 110
    .line 111
    const v4, 0x7fffffff

    .line 112
    .line 113
    .line 114
    if-eq p3, v4, :cond_6

    .line 115
    .line 116
    const-wide/16 v4, 0x0

    .line 117
    .line 118
    move p3, v1

    .line 119
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    if-ge p3, v6, :cond_4

    .line 124
    .line 125
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    check-cast v6, Lr7/b;

    .line 130
    .line 131
    iget-object v7, v6, Lr7/b;->a:Ll9/o;

    .line 132
    .line 133
    invoke-virtual {v7}, Ll9/o;->c()I

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    add-int/lit8 v7, v7, 0x20

    .line 138
    .line 139
    iget-object v6, v6, Lr7/b;->b:Ll9/o;

    .line 140
    .line 141
    invoke-virtual {v6}, Ll9/o;->c()I

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    add-int/2addr v6, v7

    .line 146
    int-to-long v6, v6

    .line 147
    add-long/2addr v4, v6

    .line 148
    add-int/lit8 p3, p3, 0x1

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_4
    const-wide/32 v6, 0x7fffffff

    .line 152
    .line 153
    .line 154
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 155
    .line 156
    .line 157
    move-result-wide v4

    .line 158
    long-to-int p3, v4

    .line 159
    iget-object v4, p1, Lp7/m;->e:Lp7/n;

    .line 160
    .line 161
    iget v4, v4, Lp7/n;->K:I

    .line 162
    .line 163
    if-le p3, v4, :cond_6

    .line 164
    .line 165
    sget-object v0, Ln7/f1;->j:Ln7/f1;

    .line 166
    .line 167
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 168
    .line 169
    if-eqz v2, :cond_5

    .line 170
    .line 171
    const-string v5, "trailer"

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_5
    const-string v5, "header"

    .line 175
    .line 176
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    const-string v7, "Response "

    .line 179
    .line 180
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v5, " metadata larger than "

    .line 187
    .line 188
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v4, ": "

    .line 195
    .line 196
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p3

    .line 206
    invoke-virtual {v0, p3}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    :cond_6
    iget-object p3, p1, Lp7/m;->e:Lp7/n;

    .line 211
    .line 212
    iget-object p3, p3, Lp7/n;->k:Ljava/lang/Object;

    .line 213
    .line 214
    monitor-enter p3

    .line 215
    :try_start_0
    iget-object v4, p1, Lp7/m;->e:Lp7/n;

    .line 216
    .line 217
    iget-object v4, v4, Lp7/n;->n:Ljava/util/HashMap;

    .line 218
    .line 219
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    check-cast v4, Lp7/k;

    .line 228
    .line 229
    if-nez v4, :cond_8

    .line 230
    .line 231
    iget-object p2, p1, Lp7/m;->e:Lp7/n;

    .line 232
    .line 233
    invoke-virtual {p2, p4}, Lp7/n;->l(I)Z

    .line 234
    .line 235
    .line 236
    move-result p2

    .line 237
    if-eqz p2, :cond_7

    .line 238
    .line 239
    iget-object p2, p1, Lp7/m;->e:Lp7/n;

    .line 240
    .line 241
    iget-object p2, p2, Lp7/n;->i:Lp7/d;

    .line 242
    .line 243
    sget-object v0, Lr7/a;->g:Lr7/a;

    .line 244
    .line 245
    invoke-virtual {p2, p4, v0}, Lp7/d;->S(ILr7/a;)V

    .line 246
    .line 247
    .line 248
    goto :goto_4

    .line 249
    :catchall_0
    move-exception p1

    .line 250
    goto :goto_5

    .line 251
    :cond_7
    move v1, v3

    .line 252
    goto :goto_4

    .line 253
    :cond_8
    if-nez v0, :cond_9

    .line 254
    .line 255
    iget-object v0, v4, Lp7/k;->m:Lp7/j;

    .line 256
    .line 257
    iget-object v0, v0, Lp7/j;->I:Lw7/c;

    .line 258
    .line 259
    sget-object v0, Lw7/b;->a:Lw7/a;

    .line 260
    .line 261
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    iget-object v0, v4, Lp7/k;->m:Lp7/j;

    .line 265
    .line 266
    invoke-virtual {v0, p2, v2}, Lp7/j;->o(Ljava/util/ArrayList;Z)V

    .line 267
    .line 268
    .line 269
    goto :goto_4

    .line 270
    :cond_9
    if-nez v2, :cond_a

    .line 271
    .line 272
    iget-object p2, p1, Lp7/m;->e:Lp7/n;

    .line 273
    .line 274
    iget-object p2, p2, Lp7/n;->i:Lp7/d;

    .line 275
    .line 276
    sget-object v2, Lr7/a;->j:Lr7/a;

    .line 277
    .line 278
    invoke-virtual {p2, p4, v2}, Lp7/d;->S(ILr7/a;)V

    .line 279
    .line 280
    .line 281
    :cond_a
    iget-object p2, v4, Lp7/k;->m:Lp7/j;

    .line 282
    .line 283
    new-instance v2, Ln7/v0;

    .line 284
    .line 285
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 286
    .line 287
    .line 288
    sget-object v3, Lo7/v;->b:Lo7/v;

    .line 289
    .line 290
    invoke-virtual {p2, v0, v3, v1, v2}, Lo7/b1;->g(Ln7/f1;Lo7/v;ZLn7/v0;)V

    .line 291
    .line 292
    .line 293
    :goto_4
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    if-eqz v1, :cond_b

    .line 295
    .line 296
    iget-object p1, p1, Lp7/m;->e:Lp7/n;

    .line 297
    .line 298
    new-instance p2, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    const-string p3, "Received header for unknown stream: "

    .line 301
    .line 302
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object p2

    .line 312
    invoke-static {p1, p2}, Lp7/n;->e(Lp7/n;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    :cond_b
    return-void

    .line 316
    :goto_5
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    throw p1

    .line 318
    :cond_c
    const-string p1, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    .line 319
    .line 320
    new-array p2, v1, [Ljava/lang/Object;

    .line 321
    .line 322
    invoke-static {p1, p2}, Lr7/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    throw v0
.end method

.method public final V(Lp7/m;IBI)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p4, :cond_2

    .line 3
    .line 4
    and-int/lit8 v1, p3, 0x8

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lr7/h;->b:Ll9/a0;

    .line 9
    .line 10
    invoke-virtual {v0}, Ll9/a0;->readByte()B

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    and-int/lit16 v0, v0, 0xff

    .line 15
    .line 16
    int-to-short v0, v0

    .line 17
    :cond_0
    iget-object v1, p0, Lr7/h;->b:Ll9/a0;

    .line 18
    .line 19
    invoke-virtual {v1}, Ll9/a0;->readInt()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const v2, 0x7fffffff

    .line 24
    .line 25
    .line 26
    and-int/2addr v1, v2

    .line 27
    add-int/lit8 p2, p2, -0x4

    .line 28
    .line 29
    invoke-static {p2, p3, v0}, Lr7/j;->b(IBS)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    invoke-virtual {p0, p2, v0, p3, p4}, Lr7/h;->y(ISBI)Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    iget-object p3, p1, Lp7/m;->b:Ll/d;

    .line 38
    .line 39
    invoke-virtual {p3}, Ll/d;->z()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object v0, p3, Ll/d;->c:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Ljava/util/logging/Logger;

    .line 48
    .line 49
    iget-object p3, p3, Ll/d;->d:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p3, Ljava/util/logging/Level;

    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v3, "INBOUND"

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v3, " PUSH_PROMISE: streamId="

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v3, " promisedStreamId="

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v1, " headers="

    .line 80
    .line 81
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {v0, p3, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_1
    iget-object p2, p1, Lp7/m;->e:Lp7/n;

    .line 95
    .line 96
    iget-object p2, p2, Lp7/n;->k:Ljava/lang/Object;

    .line 97
    .line 98
    monitor-enter p2

    .line 99
    :try_start_0
    iget-object p1, p1, Lp7/m;->e:Lp7/n;

    .line 100
    .line 101
    iget-object p1, p1, Lp7/n;->i:Lp7/d;

    .line 102
    .line 103
    sget-object p3, Lr7/a;->d:Lr7/a;

    .line 104
    .line 105
    invoke-virtual {p1, p4, p3}, Lp7/d;->S(ILr7/a;)V

    .line 106
    .line 107
    .line 108
    monitor-exit p2

    .line 109
    return-void

    .line 110
    :catchall_0
    move-exception p1

    .line 111
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    throw p1

    .line 113
    :cond_2
    const-string p1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    .line 114
    .line 115
    new-array p2, v0, [Ljava/lang/Object;

    .line 116
    .line 117
    invoke-static {p1, p2}, Lr7/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    const/4 p1, 0x0

    .line 121
    throw p1
.end method

.method public final b(Lp7/m;)Z
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object v3, v1, Lr7/h;->b:Ll9/a0;

    .line 7
    .line 8
    const-wide/16 v4, 0x9

    .line 9
    .line 10
    invoke-virtual {v3, v4, v5}, Ll9/a0;->Y(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    iget-object v3, v1, Lr7/h;->b:Ll9/a0;

    .line 14
    .line 15
    invoke-static {v3}, Lr7/j;->a(Ll9/a0;)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x0

    .line 20
    if-ltz v3, :cond_1d

    .line 21
    .line 22
    const/16 v5, 0x4000

    .line 23
    .line 24
    if-gt v3, v5, :cond_1d

    .line 25
    .line 26
    iget-object v5, v1, Lr7/h;->b:Ll9/a0;

    .line 27
    .line 28
    invoke-virtual {v5}, Ll9/a0;->readByte()B

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    and-int/lit16 v5, v5, 0xff

    .line 33
    .line 34
    int-to-byte v5, v5

    .line 35
    iget-object v6, v1, Lr7/h;->b:Ll9/a0;

    .line 36
    .line 37
    invoke-virtual {v6}, Ll9/a0;->readByte()B

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    and-int/lit16 v6, v6, 0xff

    .line 42
    .line 43
    int-to-byte v6, v6

    .line 44
    iget-object v7, v1, Lr7/h;->b:Ll9/a0;

    .line 45
    .line 46
    invoke-virtual {v7}, Ll9/a0;->readInt()I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    const v8, 0x7fffffff

    .line 51
    .line 52
    .line 53
    and-int v10, v7, v8

    .line 54
    .line 55
    sget-object v7, Lr7/j;->a:Ljava/util/logging/Logger;

    .line 56
    .line 57
    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 58
    .line 59
    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    const/4 v9, 0x1

    .line 64
    if-eqz v8, :cond_0

    .line 65
    .line 66
    invoke-static {v9, v10, v3, v5, v6}, Lr7/g;->a(ZIIBB)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    const/16 v7, 0x8

    .line 74
    .line 75
    const-wide/16 v11, 0x0

    .line 76
    .line 77
    packed-switch v5, :pswitch_data_0

    .line 78
    .line 79
    .line 80
    iget-object v0, v1, Lr7/h;->b:Ll9/a0;

    .line 81
    .line 82
    int-to-long v2, v3

    .line 83
    invoke-virtual {v0, v2, v3}, Ll9/a0;->skip(J)V

    .line 84
    .line 85
    .line 86
    return v9

    .line 87
    :pswitch_0
    const/4 v5, 0x4

    .line 88
    if-ne v3, v5, :cond_7

    .line 89
    .line 90
    iget-object v3, v1, Lr7/h;->b:Ll9/a0;

    .line 91
    .line 92
    invoke-virtual {v3}, Ll9/a0;->readInt()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    int-to-long v5, v3

    .line 97
    const-wide/32 v7, 0x7fffffff

    .line 98
    .line 99
    .line 100
    and-long/2addr v5, v7

    .line 101
    cmp-long v3, v5, v11

    .line 102
    .line 103
    if-eqz v3, :cond_6

    .line 104
    .line 105
    iget-object v7, v0, Lp7/m;->b:Ll/d;

    .line 106
    .line 107
    invoke-virtual {v7, v5, v6, v9, v10}, Ll/d;->G(JII)V

    .line 108
    .line 109
    .line 110
    move v7, v9

    .line 111
    iget-object v9, v0, Lp7/m;->e:Lp7/n;

    .line 112
    .line 113
    if-nez v3, :cond_2

    .line 114
    .line 115
    const-string v0, "Received 0 flow control window increment."

    .line 116
    .line 117
    if-nez v10, :cond_1

    .line 118
    .line 119
    invoke-static {v9, v0}, Lp7/n;->e(Lp7/n;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return v7

    .line 123
    :cond_1
    sget-object v2, Ln7/f1;->l:Ln7/f1;

    .line 124
    .line 125
    invoke-virtual {v2, v0}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    sget-object v12, Lo7/v;->b:Lo7/v;

    .line 130
    .line 131
    sget-object v14, Lr7/a;->d:Lr7/a;

    .line 132
    .line 133
    const/4 v15, 0x0

    .line 134
    const/4 v13, 0x0

    .line 135
    move v8, v7

    .line 136
    invoke-virtual/range {v9 .. v15}, Lp7/n;->h(ILn7/f1;Lo7/v;ZLr7/a;Ln7/v0;)V

    .line 137
    .line 138
    .line 139
    return v8

    .line 140
    :cond_2
    move v8, v7

    .line 141
    iget-object v3, v9, Lp7/n;->k:Ljava/lang/Object;

    .line 142
    .line 143
    monitor-enter v3

    .line 144
    iget-object v7, v0, Lp7/m;->e:Lp7/n;

    .line 145
    .line 146
    if-nez v10, :cond_3

    .line 147
    .line 148
    :try_start_1
    iget-object v0, v7, Lp7/n;->j:Lb7/p;

    .line 149
    .line 150
    long-to-int v2, v5

    .line 151
    invoke-virtual {v0, v4, v2}, Lb7/p;->e(Lp7/v;I)V

    .line 152
    .line 153
    .line 154
    monitor-exit v3

    .line 155
    return v8

    .line 156
    :catchall_0
    move-exception v0

    .line 157
    goto :goto_1

    .line 158
    :cond_3
    iget-object v4, v7, Lp7/n;->n:Ljava/util/HashMap;

    .line 159
    .line 160
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    check-cast v4, Lp7/k;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    .line 170
    iget-object v7, v0, Lp7/m;->e:Lp7/n;

    .line 171
    .line 172
    if-eqz v4, :cond_4

    .line 173
    .line 174
    :try_start_2
    iget-object v7, v7, Lp7/n;->j:Lb7/p;

    .line 175
    .line 176
    iget-object v4, v4, Lp7/k;->m:Lp7/j;

    .line 177
    .line 178
    iget-object v9, v4, Lp7/j;->w:Ljava/lang/Object;

    .line 179
    .line 180
    monitor-enter v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    :try_start_3
    iget-object v4, v4, Lp7/j;->J:Lp7/v;

    .line 182
    .line 183
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 184
    long-to-int v5, v5

    .line 185
    :try_start_4
    invoke-virtual {v7, v4, v5}, Lb7/p;->e(Lp7/v;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 186
    .line 187
    .line 188
    goto :goto_0

    .line 189
    :catchall_1
    move-exception v0

    .line 190
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 191
    :try_start_6
    throw v0

    .line 192
    :cond_4
    invoke-virtual {v7, v10}, Lp7/n;->l(I)Z

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-nez v4, :cond_5

    .line 197
    .line 198
    move v2, v8

    .line 199
    :cond_5
    :goto_0
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 200
    if-eqz v2, :cond_18

    .line 201
    .line 202
    iget-object v0, v0, Lp7/m;->e:Lp7/n;

    .line 203
    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    const-string v3, "Received window_update for unknown stream: "

    .line 207
    .line 208
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-static {v0, v2}, Lp7/n;->e(Lp7/n;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    return v8

    .line 222
    :goto_1
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 223
    throw v0

    .line 224
    :cond_6
    const-string v0, "windowSizeIncrement was 0"

    .line 225
    .line 226
    new-array v2, v2, [Ljava/lang/Object;

    .line 227
    .line 228
    invoke-static {v0, v2}, Lr7/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    throw v4

    .line 232
    :cond_7
    const-string v0, "TYPE_WINDOW_UPDATE length !=4: %s"

    .line 233
    .line 234
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-static {v0, v2}, Lr7/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    throw v4

    .line 246
    :pswitch_1
    move v8, v9

    .line 247
    iget-object v5, v1, Lr7/h;->b:Ll9/a0;

    .line 248
    .line 249
    if-lt v3, v7, :cond_12

    .line 250
    .line 251
    if-nez v10, :cond_11

    .line 252
    .line 253
    invoke-virtual {v5}, Ll9/a0;->readInt()I

    .line 254
    .line 255
    .line 256
    move-result v6

    .line 257
    invoke-virtual {v5}, Ll9/a0;->readInt()I

    .line 258
    .line 259
    .line 260
    move-result v9

    .line 261
    sub-int/2addr v3, v7

    .line 262
    invoke-static {}, Lr7/a;->values()[Lr7/a;

    .line 263
    .line 264
    .line 265
    move-result-object v7

    .line 266
    array-length v10, v7

    .line 267
    :goto_2
    if-ge v2, v10, :cond_9

    .line 268
    .line 269
    aget-object v13, v7, v2

    .line 270
    .line 271
    iget v14, v13, Lr7/a;->b:I

    .line 272
    .line 273
    if-ne v14, v9, :cond_8

    .line 274
    .line 275
    goto :goto_3

    .line 276
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 277
    .line 278
    goto :goto_2

    .line 279
    :cond_9
    move-object v13, v4

    .line 280
    :goto_3
    if-eqz v13, :cond_10

    .line 281
    .line 282
    sget-object v2, Ll9/o;->e:Ll9/o;

    .line 283
    .line 284
    if-lez v3, :cond_a

    .line 285
    .line 286
    int-to-long v2, v3

    .line 287
    invoke-virtual {v5, v2, v3}, Ll9/a0;->f(J)Ll9/o;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    :cond_a
    iget-object v3, v0, Lp7/m;->e:Lp7/n;

    .line 292
    .line 293
    iget-object v5, v0, Lp7/m;->b:Ll/d;

    .line 294
    .line 295
    invoke-virtual {v5, v8, v6, v13, v2}, Ll/d;->C(IILr7/a;Ll9/o;)V

    .line 296
    .line 297
    .line 298
    sget-object v5, Lr7/a;->m:Lr7/a;

    .line 299
    .line 300
    if-ne v13, v5, :cond_b

    .line 301
    .line 302
    invoke-virtual {v2}, Ll9/o;->l()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v5

    .line 306
    sget-object v7, Lp7/n;->Q:Ljava/util/logging/Logger;

    .line 307
    .line 308
    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 309
    .line 310
    new-instance v10, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    const-string v0, ": Received GOAWAY with ENHANCE_YOUR_CALM. Debug data: "

    .line 319
    .line 320
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-virtual {v7, v9, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    const-string v0, "too_many_pings"

    .line 334
    .line 335
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    if-eqz v0, :cond_b

    .line 340
    .line 341
    iget-object v0, v3, Lp7/n;->J:Lcom/bumptech/glide/m;

    .line 342
    .line 343
    invoke-virtual {v0}, Lcom/bumptech/glide/m;->run()V

    .line 344
    .line 345
    .line 346
    :cond_b
    iget v0, v13, Lr7/a;->b:I

    .line 347
    .line 348
    int-to-long v9, v0

    .line 349
    sget-object v0, Lo7/x0;->e:[Lo7/x0;

    .line 350
    .line 351
    array-length v5, v0

    .line 352
    int-to-long v13, v5

    .line 353
    cmp-long v5, v9, v13

    .line 354
    .line 355
    if-gez v5, :cond_d

    .line 356
    .line 357
    cmp-long v5, v9, v11

    .line 358
    .line 359
    if-gez v5, :cond_c

    .line 360
    .line 361
    goto :goto_4

    .line 362
    :cond_c
    long-to-int v5, v9

    .line 363
    aget-object v0, v0, v5

    .line 364
    .line 365
    goto :goto_5

    .line 366
    :cond_d
    :goto_4
    move-object v0, v4

    .line 367
    :goto_5
    if-nez v0, :cond_e

    .line 368
    .line 369
    sget-object v0, Lo7/x0;->d:Lo7/x0;

    .line 370
    .line 371
    iget-object v0, v0, Lo7/x0;->c:Ln7/f1;

    .line 372
    .line 373
    iget-object v0, v0, Ln7/f1;->a:Ln7/e1;

    .line 374
    .line 375
    iget v0, v0, Ln7/e1;->b:I

    .line 376
    .line 377
    invoke-static {v0}, Ln7/f1;->d(I)Ln7/f1;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    new-instance v5, Ljava/lang/StringBuilder;

    .line 382
    .line 383
    const-string v7, "Unrecognized HTTP/2 error code: "

    .line 384
    .line 385
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v5

    .line 395
    invoke-virtual {v0, v5}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    goto :goto_6

    .line 400
    :cond_e
    iget-object v0, v0, Lo7/x0;->c:Ln7/f1;

    .line 401
    .line 402
    :goto_6
    const-string v5, "Received Goaway"

    .line 403
    .line 404
    invoke-virtual {v0, v5}, Ln7/f1;->b(Ljava/lang/String;)Ln7/f1;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    invoke-virtual {v2}, Ll9/o;->c()I

    .line 409
    .line 410
    .line 411
    move-result v5

    .line 412
    if-lez v5, :cond_f

    .line 413
    .line 414
    invoke-virtual {v2}, Ll9/o;->l()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    invoke-virtual {v0, v2}, Ln7/f1;->b(Ljava/lang/String;)Ln7/f1;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    :cond_f
    sget-object v2, Lp7/n;->P:Ljava/util/Map;

    .line 423
    .line 424
    invoke-virtual {v3, v6, v4, v0}, Lp7/n;->r(ILr7/a;Ln7/f1;)V

    .line 425
    .line 426
    .line 427
    return v8

    .line 428
    :cond_10
    const-string v0, "TYPE_GOAWAY unexpected error code: %d"

    .line 429
    .line 430
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 431
    .line 432
    .line 433
    move-result-object v2

    .line 434
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v2

    .line 438
    invoke-static {v0, v2}, Lr7/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 439
    .line 440
    .line 441
    throw v4

    .line 442
    :cond_11
    const-string v0, "TYPE_GOAWAY streamId != 0"

    .line 443
    .line 444
    new-array v2, v2, [Ljava/lang/Object;

    .line 445
    .line 446
    invoke-static {v0, v2}, Lr7/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    .line 448
    .line 449
    throw v4

    .line 450
    :cond_12
    const-string v0, "TYPE_GOAWAY length < 8: %s"

    .line 451
    .line 452
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    invoke-static {v0, v2}, Lr7/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    .line 462
    .line 463
    throw v4

    .line 464
    :pswitch_2
    move v8, v9

    .line 465
    if-ne v3, v7, :cond_1a

    .line 466
    .line 467
    if-nez v10, :cond_19

    .line 468
    .line 469
    iget-object v3, v1, Lr7/h;->b:Ll9/a0;

    .line 470
    .line 471
    invoke-virtual {v3}, Ll9/a0;->readInt()I

    .line 472
    .line 473
    .line 474
    move-result v3

    .line 475
    iget-object v5, v1, Lr7/h;->b:Ll9/a0;

    .line 476
    .line 477
    invoke-virtual {v5}, Ll9/a0;->readInt()I

    .line 478
    .line 479
    .line 480
    move-result v5

    .line 481
    and-int/2addr v6, v8

    .line 482
    if-eqz v6, :cond_13

    .line 483
    .line 484
    move v2, v8

    .line 485
    :cond_13
    const-string v6, "Received unexpected ping ack. Expecting "

    .line 486
    .line 487
    int-to-long v9, v3

    .line 488
    const/16 v7, 0x20

    .line 489
    .line 490
    shl-long/2addr v9, v7

    .line 491
    int-to-long v11, v5

    .line 492
    const-wide v13, 0xffffffffL

    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    and-long/2addr v11, v13

    .line 498
    or-long/2addr v9, v11

    .line 499
    iget-object v7, v0, Lp7/m;->b:Ll/d;

    .line 500
    .line 501
    invoke-virtual {v7, v8, v9, v10}, Ll/d;->D(IJ)V

    .line 502
    .line 503
    .line 504
    iget-object v7, v0, Lp7/m;->e:Lp7/n;

    .line 505
    .line 506
    iget-object v7, v7, Lp7/n;->k:Ljava/lang/Object;

    .line 507
    .line 508
    if-nez v2, :cond_14

    .line 509
    .line 510
    monitor-enter v7

    .line 511
    :try_start_8
    iget-object v0, v0, Lp7/m;->e:Lp7/n;

    .line 512
    .line 513
    iget-object v0, v0, Lp7/n;->i:Lp7/d;

    .line 514
    .line 515
    invoke-virtual {v0, v8, v3, v5}, Lp7/d;->y(ZII)V

    .line 516
    .line 517
    .line 518
    monitor-exit v7

    .line 519
    goto/16 :goto_b

    .line 520
    .line 521
    :catchall_2
    move-exception v0

    .line 522
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 523
    throw v0

    .line 524
    :cond_14
    monitor-enter v7

    .line 525
    :try_start_9
    iget-object v0, v0, Lp7/m;->e:Lp7/n;

    .line 526
    .line 527
    iget-object v2, v0, Lp7/n;->x:Lo7/d1;

    .line 528
    .line 529
    if-eqz v2, :cond_16

    .line 530
    .line 531
    iget-wide v11, v2, Lo7/d1;->a:J

    .line 532
    .line 533
    cmp-long v3, v11, v9

    .line 534
    .line 535
    if-nez v3, :cond_15

    .line 536
    .line 537
    iput-object v4, v0, Lp7/n;->x:Lo7/d1;

    .line 538
    .line 539
    goto :goto_8

    .line 540
    :catchall_3
    move-exception v0

    .line 541
    goto/16 :goto_c

    .line 542
    .line 543
    :cond_15
    sget-object v0, Lp7/n;->Q:Ljava/util/logging/Logger;

    .line 544
    .line 545
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 546
    .line 547
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 548
    .line 549
    new-instance v3, Ljava/lang/StringBuilder;

    .line 550
    .line 551
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    const-string v5, ", got "

    .line 558
    .line 559
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v3

    .line 569
    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    goto :goto_7

    .line 573
    :cond_16
    sget-object v0, Lp7/n;->Q:Ljava/util/logging/Logger;

    .line 574
    .line 575
    const-string v2, "Received unexpected ping ack. No ping outstanding"

    .line 576
    .line 577
    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    :goto_7
    move-object v2, v4

    .line 581
    :goto_8
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 582
    if-eqz v2, :cond_18

    .line 583
    .line 584
    monitor-enter v2

    .line 585
    :try_start_a
    iget-boolean v0, v2, Lo7/d1;->d:Z

    .line 586
    .line 587
    if-eqz v0, :cond_17

    .line 588
    .line 589
    monitor-exit v2

    .line 590
    goto :goto_b

    .line 591
    :catchall_4
    move-exception v0

    .line 592
    goto :goto_a

    .line 593
    :cond_17
    iput-boolean v8, v2, Lo7/d1;->d:Z

    .line 594
    .line 595
    iget-object v0, v2, Lo7/d1;->b:Li4/f;

    .line 596
    .line 597
    invoke-virtual {v0}, Li4/f;->a()J

    .line 598
    .line 599
    .line 600
    move-result-wide v5

    .line 601
    iput-wide v5, v2, Lo7/d1;->f:J

    .line 602
    .line 603
    iget-object v0, v2, Lo7/d1;->c:Ljava/util/LinkedHashMap;

    .line 604
    .line 605
    iput-object v4, v2, Lo7/d1;->c:Ljava/util/LinkedHashMap;

    .line 606
    .line 607
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 608
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 613
    .line 614
    .line 615
    move-result-object v2

    .line 616
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 617
    .line 618
    .line 619
    move-result v0

    .line 620
    if-eqz v0, :cond_18

    .line 621
    .line 622
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    check-cast v0, Ljava/util/Map$Entry;

    .line 627
    .line 628
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    move-result-object v3

    .line 632
    check-cast v3, Ljava/util/concurrent/Executor;

    .line 633
    .line 634
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    check-cast v0, Lo7/o1;

    .line 639
    .line 640
    new-instance v4, Lo7/c1;

    .line 641
    .line 642
    invoke-direct {v4, v0, v5, v6}, Lo7/c1;-><init>(Lo7/o1;J)V

    .line 643
    .line 644
    .line 645
    :try_start_b
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 646
    .line 647
    .line 648
    goto :goto_9

    .line 649
    :catchall_5
    move-exception v0

    .line 650
    sget-object v3, Lo7/d1;->g:Ljava/util/logging/Logger;

    .line 651
    .line 652
    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 653
    .line 654
    const-string v7, "Failed to execute PingCallback"

    .line 655
    .line 656
    invoke-virtual {v3, v4, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 657
    .line 658
    .line 659
    goto :goto_9

    .line 660
    :goto_a
    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 661
    throw v0

    .line 662
    :cond_18
    :goto_b
    return v8

    .line 663
    :goto_c
    :try_start_d
    monitor-exit v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 664
    throw v0

    .line 665
    :cond_19
    const-string v0, "TYPE_PING streamId != 0"

    .line 666
    .line 667
    new-array v2, v2, [Ljava/lang/Object;

    .line 668
    .line 669
    invoke-static {v0, v2}, Lr7/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 670
    .line 671
    .line 672
    throw v4

    .line 673
    :cond_1a
    const-string v0, "TYPE_PING length != 8: %s"

    .line 674
    .line 675
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 676
    .line 677
    .line 678
    move-result-object v2

    .line 679
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    move-result-object v2

    .line 683
    invoke-static {v0, v2}, Lr7/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 684
    .line 685
    .line 686
    throw v4

    .line 687
    :pswitch_3
    move v8, v9

    .line 688
    invoke-virtual {v1, v0, v3, v6, v10}, Lr7/h;->V(Lp7/m;IBI)V

    .line 689
    .line 690
    .line 691
    return v8

    .line 692
    :pswitch_4
    move v8, v9

    .line 693
    invoke-virtual {v1, v0, v3, v6, v10}, Lr7/h;->d0(Lp7/m;IBI)V

    .line 694
    .line 695
    .line 696
    return v8

    .line 697
    :pswitch_5
    move v8, v9

    .line 698
    invoke-virtual {v1, v0, v3, v10}, Lr7/h;->c0(Lp7/m;II)V

    .line 699
    .line 700
    .line 701
    return v8

    .line 702
    :pswitch_6
    move v8, v9

    .line 703
    const/4 v0, 0x5

    .line 704
    if-ne v3, v0, :cond_1c

    .line 705
    .line 706
    if-eqz v10, :cond_1b

    .line 707
    .line 708
    iget-object v0, v1, Lr7/h;->b:Ll9/a0;

    .line 709
    .line 710
    invoke-virtual {v0}, Ll9/a0;->readInt()I

    .line 711
    .line 712
    .line 713
    invoke-virtual {v0}, Ll9/a0;->readByte()B

    .line 714
    .line 715
    .line 716
    return v8

    .line 717
    :cond_1b
    const-string v0, "TYPE_PRIORITY streamId == 0"

    .line 718
    .line 719
    new-array v2, v2, [Ljava/lang/Object;

    .line 720
    .line 721
    invoke-static {v0, v2}, Lr7/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 722
    .line 723
    .line 724
    throw v4

    .line 725
    :cond_1c
    const-string v0, "TYPE_PRIORITY length: %d != 5"

    .line 726
    .line 727
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 728
    .line 729
    .line 730
    move-result-object v2

    .line 731
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    move-result-object v2

    .line 735
    invoke-static {v0, v2}, Lr7/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 736
    .line 737
    .line 738
    throw v4

    .line 739
    :pswitch_7
    move v8, v9

    .line 740
    invoke-virtual {v1, v0, v3, v6, v10}, Lr7/h;->S(Lp7/m;IBI)V

    .line 741
    .line 742
    .line 743
    return v8

    .line 744
    :pswitch_8
    move v8, v9

    .line 745
    invoke-virtual {v1, v0, v3, v6, v10}, Lr7/h;->c(Lp7/m;IBI)V

    .line 746
    .line 747
    .line 748
    return v8

    .line 749
    :cond_1d
    const-string v0, "FRAME_SIZE_ERROR: %s"

    .line 750
    .line 751
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 752
    .line 753
    .line 754
    move-result-object v2

    .line 755
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v2

    .line 759
    invoke-static {v0, v2}, Lr7/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 760
    .line 761
    .line 762
    throw v4

    .line 763
    :catch_0
    return v2

    .line 764
    nop

    .line 765
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lp7/m;IBI)V
    .locals 8

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    move v7, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v7, v1

    .line 10
    :goto_0
    and-int/lit8 v0, p3, 0x20

    .line 11
    .line 12
    if-nez v0, :cond_5

    .line 13
    .line 14
    and-int/lit8 v0, p3, 0x8

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lr7/h;->b:Ll9/a0;

    .line 19
    .line 20
    invoke-virtual {v0}, Ll9/a0;->readByte()B

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    and-int/lit16 v0, v0, 0xff

    .line 25
    .line 26
    int-to-short v0, v0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v0, v1

    .line 29
    :goto_1
    invoke-static {p2, p3, v0}, Lr7/j;->b(IBS)I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    iget-object p3, p0, Lr7/h;->b:Ll9/a0;

    .line 34
    .line 35
    iget-object v2, p1, Lp7/m;->b:Ll/d;

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    iget-object v5, p3, Ll9/a0;->c:Ll9/l;

    .line 39
    .line 40
    move v4, p4

    .line 41
    invoke-virtual/range {v2 .. v7}, Ll/d;->B(IILl9/l;IZ)V

    .line 42
    .line 43
    .line 44
    iget-object p4, p1, Lp7/m;->e:Lp7/n;

    .line 45
    .line 46
    iget-object v2, p4, Lp7/n;->k:Ljava/lang/Object;

    .line 47
    .line 48
    monitor-enter v2

    .line 49
    :try_start_0
    iget-object p4, p4, Lp7/n;->n:Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {p4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p4

    .line 59
    check-cast p4, Lp7/k;

    .line 60
    .line 61
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 62
    if-nez p4, :cond_3

    .line 63
    .line 64
    iget-object p4, p1, Lp7/m;->e:Lp7/n;

    .line 65
    .line 66
    invoke-virtual {p4, v4}, Lp7/n;->l(I)Z

    .line 67
    .line 68
    .line 69
    move-result p4

    .line 70
    iget-object v2, p1, Lp7/m;->e:Lp7/n;

    .line 71
    .line 72
    if-eqz p4, :cond_2

    .line 73
    .line 74
    iget-object p4, v2, Lp7/n;->k:Ljava/lang/Object;

    .line 75
    .line 76
    monitor-enter p4

    .line 77
    :try_start_1
    iget-object v2, p1, Lp7/m;->e:Lp7/n;

    .line 78
    .line 79
    iget-object v2, v2, Lp7/n;->i:Lp7/d;

    .line 80
    .line 81
    sget-object v3, Lr7/a;->g:Lr7/a;

    .line 82
    .line 83
    invoke-virtual {v2, v4, v3}, Lp7/d;->S(ILr7/a;)V

    .line 84
    .line 85
    .line 86
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    int-to-long v2, v6

    .line 88
    invoke-virtual {p3, v2, v3}, Ll9/a0;->skip(J)V

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    move-object p1, v0

    .line 94
    :try_start_2
    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    throw p1

    .line 96
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string p2, "Received data for unknown stream: "

    .line 99
    .line 100
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {v2, p1}, Lp7/n;->e(Lp7/n;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_3
    int-to-long v2, v6

    .line 115
    invoke-virtual {p3, v2, v3}, Ll9/a0;->Y(J)V

    .line 116
    .line 117
    .line 118
    new-instance v4, Ll9/l;

    .line 119
    .line 120
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 121
    .line 122
    .line 123
    iget-object p3, p3, Ll9/a0;->c:Ll9/l;

    .line 124
    .line 125
    invoke-virtual {v4, p3, v2, v3}, Ll9/l;->write(Ll9/l;J)V

    .line 126
    .line 127
    .line 128
    iget-object p3, p4, Lp7/k;->m:Lp7/j;

    .line 129
    .line 130
    iget-object p3, p3, Lp7/j;->I:Lw7/c;

    .line 131
    .line 132
    sget-object p3, Lw7/b;->a:Lw7/a;

    .line 133
    .line 134
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    iget-object p3, p1, Lp7/m;->e:Lp7/n;

    .line 138
    .line 139
    iget-object p3, p3, Lp7/n;->k:Ljava/lang/Object;

    .line 140
    .line 141
    monitor-enter p3

    .line 142
    :try_start_3
    iget-object p4, p4, Lp7/k;->m:Lp7/j;

    .line 143
    .line 144
    sub-int v2, p2, v6

    .line 145
    .line 146
    invoke-virtual {p4, v2, v7, v4}, Lp7/j;->n(IZLl9/l;)V

    .line 147
    .line 148
    .line 149
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 150
    :goto_2
    iget-object p3, p1, Lp7/m;->e:Lp7/n;

    .line 151
    .line 152
    iget p4, p3, Lp7/n;->s:I

    .line 153
    .line 154
    add-int/2addr p4, p2

    .line 155
    iput p4, p3, Lp7/n;->s:I

    .line 156
    .line 157
    int-to-float p2, p4

    .line 158
    iget p4, p3, Lp7/n;->f:I

    .line 159
    .line 160
    int-to-float p4, p4

    .line 161
    const/high16 v2, 0x3f000000    # 0.5f

    .line 162
    .line 163
    mul-float/2addr p4, v2

    .line 164
    cmpl-float p2, p2, p4

    .line 165
    .line 166
    if-ltz p2, :cond_4

    .line 167
    .line 168
    iget-object p2, p3, Lp7/n;->k:Ljava/lang/Object;

    .line 169
    .line 170
    monitor-enter p2

    .line 171
    :try_start_4
    iget-object p3, p1, Lp7/m;->e:Lp7/n;

    .line 172
    .line 173
    iget-object p4, p3, Lp7/n;->i:Lp7/d;

    .line 174
    .line 175
    iget p3, p3, Lp7/n;->s:I

    .line 176
    .line 177
    int-to-long v2, p3

    .line 178
    invoke-virtual {p4, v1, v2, v3}, Lp7/d;->V(IJ)V

    .line 179
    .line 180
    .line 181
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 182
    iget-object p1, p1, Lp7/m;->e:Lp7/n;

    .line 183
    .line 184
    iput v1, p1, Lp7/n;->s:I

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :catchall_1
    move-exception v0

    .line 188
    move-object p1, v0

    .line 189
    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 190
    throw p1

    .line 191
    :cond_4
    :goto_3
    iget-object p1, p0, Lr7/h;->b:Ll9/a0;

    .line 192
    .line 193
    int-to-long p2, v0

    .line 194
    invoke-virtual {p1, p2, p3}, Ll9/a0;->skip(J)V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :catchall_2
    move-exception v0

    .line 199
    move-object p1, v0

    .line 200
    :try_start_6
    monitor-exit p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 201
    throw p1

    .line 202
    :catchall_3
    move-exception v0

    .line 203
    move-object p1, v0

    .line 204
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 205
    throw p1

    .line 206
    :cond_5
    const-string p1, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    .line 207
    .line 208
    new-array p2, v1, [Ljava/lang/Object;

    .line 209
    .line 210
    invoke-static {p1, p2}, Lr7/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    const/4 p1, 0x0

    .line 214
    throw p1
.end method

.method public final c0(Lp7/m;II)V
    .locals 10

    .line 1
    const/4 v2, 0x4

    .line 2
    const/4 v3, 0x0

    .line 3
    if-ne p2, v2, :cond_8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p3, :cond_7

    .line 7
    .line 8
    iget-object v4, p0, Lr7/h;->b:Ll9/a0;

    .line 9
    .line 10
    invoke-virtual {v4}, Ll9/a0;->readInt()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    invoke-static {}, Lr7/a;->values()[Lr7/a;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    array-length v6, v5

    .line 19
    move v7, v2

    .line 20
    :goto_0
    if-ge v7, v6, :cond_1

    .line 21
    .line 22
    aget-object v8, v5, v7

    .line 23
    .line 24
    iget v9, v8, Lr7/a;->b:I

    .line 25
    .line 26
    if-ne v9, v4, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move-object v8, v3

    .line 33
    :goto_1
    if-eqz v8, :cond_6

    .line 34
    .line 35
    iget-object v3, p1, Lp7/m;->b:Ll/d;

    .line 36
    .line 37
    const/4 v4, 0x1

    .line 38
    invoke-virtual {v3, v4, p3, v8}, Ll/d;->E(IILr7/a;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v8}, Lp7/n;->v(Lr7/a;)Ln7/f1;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const-string v5, "Rst Stream"

    .line 46
    .line 47
    invoke-virtual {v3, v5}, Ln7/f1;->b(Ljava/lang/String;)Ln7/f1;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    iget-object v5, v3, Ln7/f1;->a:Ln7/e1;

    .line 52
    .line 53
    sget-object v6, Ln7/e1;->e:Ln7/e1;

    .line 54
    .line 55
    if-eq v5, v6, :cond_3

    .line 56
    .line 57
    sget-object v6, Ln7/e1;->h:Ln7/e1;

    .line 58
    .line 59
    if-ne v5, v6, :cond_2

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    move v4, v2

    .line 63
    :cond_3
    :goto_2
    iget-object v2, p1, Lp7/m;->e:Lp7/n;

    .line 64
    .line 65
    iget-object v7, v2, Lp7/n;->k:Ljava/lang/Object;

    .line 66
    .line 67
    monitor-enter v7

    .line 68
    :try_start_0
    iget-object v2, p1, Lp7/m;->e:Lp7/n;

    .line 69
    .line 70
    iget-object v2, v2, Lp7/n;->n:Ljava/util/HashMap;

    .line 71
    .line 72
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Lp7/k;

    .line 81
    .line 82
    if-eqz v2, :cond_5

    .line 83
    .line 84
    iget-object v2, v2, Lp7/k;->m:Lp7/j;

    .line 85
    .line 86
    iget-object v2, v2, Lp7/j;->I:Lw7/c;

    .line 87
    .line 88
    sget-object v2, Lw7/b;->a:Lw7/a;

    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    iget-object v0, p1, Lp7/m;->e:Lp7/n;

    .line 94
    .line 95
    sget-object v2, Lr7/a;->i:Lr7/a;

    .line 96
    .line 97
    if-ne v8, v2, :cond_4

    .line 98
    .line 99
    sget-object v2, Lo7/v;->c:Lo7/v;

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    goto :goto_4

    .line 104
    :cond_4
    sget-object v2, Lo7/v;->b:Lo7/v;

    .line 105
    .line 106
    :goto_3
    const/4 v5, 0x0

    .line 107
    const/4 v6, 0x0

    .line 108
    move-object v1, v3

    .line 109
    move-object v3, v2

    .line 110
    move-object v2, v1

    .line 111
    move v1, p3

    .line 112
    invoke-virtual/range {v0 .. v6}, Lp7/n;->h(ILn7/f1;Lo7/v;ZLr7/a;Ln7/v0;)V

    .line 113
    .line 114
    .line 115
    :cond_5
    monitor-exit v7

    .line 116
    return-void

    .line 117
    :goto_4
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    throw v0

    .line 119
    :cond_6
    const-string v0, "TYPE_RST_STREAM unexpected error code: %d"

    .line 120
    .line 121
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-static {v0, v1}, Lr7/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    throw v3

    .line 133
    :cond_7
    const-string v0, "TYPE_RST_STREAM streamId == 0"

    .line 134
    .line 135
    new-array v1, v2, [Ljava/lang/Object;

    .line 136
    .line 137
    invoke-static {v0, v1}, Lr7/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    throw v3

    .line 141
    :cond_8
    const-string v0, "TYPE_RST_STREAM length: %d != 4"

    .line 142
    .line 143
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-static {v0, v1}, Lr7/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    throw v3
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lr7/h;->b:Ll9/a0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll9/a0;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d0(Lp7/m;IBI)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p4, :cond_15

    .line 4
    .line 5
    const/4 p4, 0x1

    .line 6
    and-int/2addr p3, p4

    .line 7
    if-eqz p3, :cond_1

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_a

    .line 12
    .line 13
    :cond_0
    const-string p1, "FRAME_SIZE_ERROR ack frame should be empty!"

    .line 14
    .line 15
    new-array p2, v1, [Ljava/lang/Object;

    .line 16
    .line 17
    invoke-static {p1, p2}, Lr7/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    throw v0

    .line 21
    :cond_1
    rem-int/lit8 p3, p2, 0x6

    .line 22
    .line 23
    if-nez p3, :cond_14

    .line 24
    .line 25
    new-instance p3, Lj/i;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    invoke-direct {p3, v2}, Lj/i;-><init>(I)V

    .line 29
    .line 30
    .line 31
    move v2, v1

    .line 32
    :goto_0
    const/4 v3, 0x4

    .line 33
    const/4 v4, 0x7

    .line 34
    if-ge v2, p2, :cond_6

    .line 35
    .line 36
    iget-object v5, p0, Lr7/h;->b:Ll9/a0;

    .line 37
    .line 38
    invoke-virtual {v5}, Ll9/a0;->readShort()S

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    iget-object v6, p0, Lr7/h;->b:Ll9/a0;

    .line 43
    .line 44
    invoke-virtual {v6}, Ll9/a0;->readInt()I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    packed-switch v5, :pswitch_data_0

    .line 49
    .line 50
    .line 51
    goto :goto_3

    .line 52
    :pswitch_0
    const/16 v3, 0x4000

    .line 53
    .line 54
    if-lt v6, v3, :cond_2

    .line 55
    .line 56
    const v3, 0xffffff

    .line 57
    .line 58
    .line 59
    if-gt v6, v3, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    const-string p1, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    .line 63
    .line 64
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-static {p1, p2}, Lr7/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    throw v0

    .line 76
    :pswitch_1
    if-ltz v6, :cond_3

    .line 77
    .line 78
    move v3, v4

    .line 79
    goto :goto_2

    .line 80
    :cond_3
    const-string p1, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    .line 81
    .line 82
    new-array p2, v1, [Ljava/lang/Object;

    .line 83
    .line 84
    invoke-static {p1, p2}, Lr7/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    throw v0

    .line 88
    :pswitch_2
    if-eqz v6, :cond_5

    .line 89
    .line 90
    if-ne v6, p4, :cond_4

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_4
    const-string p1, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    .line 94
    .line 95
    new-array p2, v1, [Ljava/lang/Object;

    .line 96
    .line 97
    invoke-static {p1, p2}, Lr7/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    throw v0

    .line 101
    :cond_5
    :goto_1
    :pswitch_3
    move v3, v5

    .line 102
    :goto_2
    :pswitch_4
    invoke-virtual {p3, v3, v6}, Lj/i;->c(II)V

    .line 103
    .line 104
    .line 105
    :goto_3
    add-int/lit8 v2, v2, 0x6

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_6
    iget-object p2, p1, Lp7/m;->b:Ll/d;

    .line 109
    .line 110
    invoke-virtual {p2, p4, p3}, Ll/d;->F(ILj/i;)V

    .line 111
    .line 112
    .line 113
    iget-object p2, p1, Lp7/m;->e:Lp7/n;

    .line 114
    .line 115
    iget-object v2, p2, Lp7/n;->k:Ljava/lang/Object;

    .line 116
    .line 117
    monitor-enter v2

    .line 118
    :try_start_0
    invoke-virtual {p3, v3}, Lj/i;->b(I)Z

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    if-eqz p2, :cond_7

    .line 123
    .line 124
    iget-object p2, p3, Lj/i;->c:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast p2, [I

    .line 127
    .line 128
    aget p2, p2, v3

    .line 129
    .line 130
    iget-object v3, p1, Lp7/m;->e:Lp7/n;

    .line 131
    .line 132
    iput p2, v3, Lp7/n;->C:I

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :catchall_0
    move-exception p1

    .line 136
    goto/16 :goto_b

    .line 137
    .line 138
    :cond_7
    :goto_4
    invoke-virtual {p3, v4}, Lj/i;->b(I)Z

    .line 139
    .line 140
    .line 141
    move-result p2

    .line 142
    if-eqz p2, :cond_a

    .line 143
    .line 144
    iget-object p2, p3, Lj/i;->c:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast p2, [I

    .line 147
    .line 148
    aget p2, p2, v4

    .line 149
    .line 150
    iget-object v3, p1, Lp7/m;->e:Lp7/n;

    .line 151
    .line 152
    iget-object v3, v3, Lp7/n;->j:Lb7/p;

    .line 153
    .line 154
    if-ltz p2, :cond_9

    .line 155
    .line 156
    iget v4, v3, Lb7/p;->b:I

    .line 157
    .line 158
    sub-int v4, p2, v4

    .line 159
    .line 160
    iput p2, v3, Lb7/p;->b:I

    .line 161
    .line 162
    iget-object p2, v3, Lb7/p;->c:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast p2, Lp7/n;

    .line 165
    .line 166
    invoke-virtual {p2}, Lp7/n;->i()[Lp7/v;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    array-length v3, p2

    .line 171
    const/4 v5, 0x0

    .line 172
    move v6, v5

    .line 173
    :goto_5
    if-ge v6, v3, :cond_8

    .line 174
    .line 175
    aget-object v7, p2, v6

    .line 176
    .line 177
    invoke-virtual {v7, v4}, Lp7/v;->a(I)I

    .line 178
    .line 179
    .line 180
    add-int/lit8 v6, v6, 0x1

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_8
    if-lez v4, :cond_b

    .line 184
    .line 185
    const/4 v5, 0x1

    .line 186
    goto :goto_6

    .line 187
    :cond_9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    const-string v3, "Invalid initial window size: "

    .line 191
    .line 192
    invoke-static {p2, v3}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    invoke-static {p2}, Lj1/i;->k(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    const/4 v5, 0x0

    .line 200
    goto :goto_6

    .line 201
    :cond_a
    move v5, v1

    .line 202
    :cond_b
    :goto_6
    iget-boolean p2, p1, Lp7/m;->d:Z

    .line 203
    .line 204
    const/4 v3, 0x2

    .line 205
    if-eqz p2, :cond_d

    .line 206
    .line 207
    iget-object p2, p1, Lp7/m;->e:Lp7/n;

    .line 208
    .line 209
    iget-object v4, p2, Lp7/n;->h:Lcom/bumptech/glide/manager/t;

    .line 210
    .line 211
    iget-object v6, p2, Lp7/n;->u:Ln7/b;

    .line 212
    .line 213
    iget-object v4, v4, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast v4, Lo7/k1;

    .line 216
    .line 217
    iget-object v4, v4, Lo7/k1;->j:Ljava/util/List;

    .line 218
    .line 219
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 224
    .line 225
    .line 226
    move-result v7

    .line 227
    if-nez v7, :cond_c

    .line 228
    .line 229
    iput-object v6, p2, Lp7/n;->u:Ln7/b;

    .line 230
    .line 231
    iget-object p2, p1, Lp7/m;->e:Lp7/n;

    .line 232
    .line 233
    iget-object p2, p2, Lp7/n;->h:Lcom/bumptech/glide/manager/t;

    .line 234
    .line 235
    iget-object v4, p2, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 236
    .line 237
    check-cast v4, Lo7/k1;

    .line 238
    .line 239
    iget-object v6, v4, Lo7/k1;->i:Ln7/e;

    .line 240
    .line 241
    const-string v7, "READY"

    .line 242
    .line 243
    invoke-virtual {v6, v3, v7}, Ln7/e;->m(ILjava/lang/String;)V

    .line 244
    .line 245
    .line 246
    iget-object v4, v4, Lo7/k1;->k:Ln7/k1;

    .line 247
    .line 248
    new-instance v6, Lo7/i1;

    .line 249
    .line 250
    const/4 v7, 0x0

    .line 251
    invoke-direct {v6, p2, v7}, Lo7/i1;-><init>(Lcom/bumptech/glide/manager/t;I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v4, v6}, Ln7/k1;->execute(Ljava/lang/Runnable;)V

    .line 255
    .line 256
    .line 257
    iput-boolean v1, p1, Lp7/m;->d:Z

    .line 258
    .line 259
    goto :goto_7

    .line 260
    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    new-instance p1, Ljava/lang/ClassCastException;

    .line 268
    .line 269
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 270
    .line 271
    .line 272
    throw p1

    .line 273
    :cond_d
    :goto_7
    iget-object p2, p1, Lp7/m;->e:Lp7/n;

    .line 274
    .line 275
    iget-object p2, p2, Lp7/n;->i:Lp7/d;

    .line 276
    .line 277
    iget-object v4, p2, Lp7/d;->d:Ll/d;

    .line 278
    .line 279
    invoke-virtual {v4}, Ll/d;->z()Z

    .line 280
    .line 281
    .line 282
    move-result v6

    .line 283
    if-eqz v6, :cond_e

    .line 284
    .line 285
    iget-object v6, v4, Ll/d;->c:Ljava/lang/Object;

    .line 286
    .line 287
    check-cast v6, Ljava/util/logging/Logger;

    .line 288
    .line 289
    iget-object v4, v4, Ll/d;->d:Ljava/lang/Object;

    .line 290
    .line 291
    check-cast v4, Ljava/util/logging/Level;

    .line 292
    .line 293
    const-string v7, "OUTBOUND"

    .line 294
    .line 295
    const-string v8, " SETTINGS: ack=true"

    .line 296
    .line 297
    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    invoke-virtual {v6, v4, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    .line 303
    .line 304
    :cond_e
    :try_start_1
    iget-object v4, p2, Lp7/d;->c:Lp7/b;

    .line 305
    .line 306
    invoke-virtual {v4, p3}, Lp7/b;->b(Lj/i;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    .line 308
    .line 309
    goto :goto_8

    .line 310
    :catch_0
    move-exception v4

    .line 311
    :try_start_2
    iget-object p2, p2, Lp7/d;->b:Lp7/n;

    .line 312
    .line 313
    invoke-virtual {p2, v4}, Lp7/n;->n(Ljava/lang/Exception;)V

    .line 314
    .line 315
    .line 316
    :goto_8
    if-eqz v5, :cond_f

    .line 317
    .line 318
    iget-object p2, p1, Lp7/m;->e:Lp7/n;

    .line 319
    .line 320
    iget-object p2, p2, Lp7/n;->j:Lb7/p;

    .line 321
    .line 322
    invoke-virtual {p2}, Lb7/p;->f()V

    .line 323
    .line 324
    .line 325
    :cond_f
    iget-object p1, p1, Lp7/m;->e:Lp7/n;

    .line 326
    .line 327
    invoke-virtual {p1}, Lp7/n;->s()Z

    .line 328
    .line 329
    .line 330
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 331
    iget p1, p3, Lj/i;->b:I

    .line 332
    .line 333
    and-int/lit8 p2, p1, 0x2

    .line 334
    .line 335
    const/4 v2, -0x1

    .line 336
    if-eqz p2, :cond_10

    .line 337
    .line 338
    iget-object p2, p3, Lj/i;->c:Ljava/lang/Object;

    .line 339
    .line 340
    check-cast p2, [I

    .line 341
    .line 342
    aget p2, p2, p4

    .line 343
    .line 344
    goto :goto_9

    .line 345
    :cond_10
    move p2, v2

    .line 346
    :goto_9
    if-ltz p2, :cond_13

    .line 347
    .line 348
    iget-object p2, p0, Lr7/h;->d:Lr7/c;

    .line 349
    .line 350
    and-int/2addr p1, v3

    .line 351
    if-eqz p1, :cond_11

    .line 352
    .line 353
    iget-object p1, p3, Lj/i;->c:Ljava/lang/Object;

    .line 354
    .line 355
    check-cast p1, [I

    .line 356
    .line 357
    aget v2, p1, p4

    .line 358
    .line 359
    :cond_11
    iput v2, p2, Lr7/c;->c:I

    .line 360
    .line 361
    iput v2, p2, Lr7/c;->d:I

    .line 362
    .line 363
    iget p1, p2, Lr7/c;->h:I

    .line 364
    .line 365
    if-ge v2, p1, :cond_13

    .line 366
    .line 367
    if-nez v2, :cond_12

    .line 368
    .line 369
    iget-object p1, p2, Lr7/c;->e:[Lr7/b;

    .line 370
    .line 371
    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    iget-object p1, p2, Lr7/c;->e:[Lr7/b;

    .line 375
    .line 376
    array-length p1, p1

    .line 377
    sub-int/2addr p1, p4

    .line 378
    iput p1, p2, Lr7/c;->f:I

    .line 379
    .line 380
    iput v1, p2, Lr7/c;->g:I

    .line 381
    .line 382
    iput v1, p2, Lr7/c;->h:I

    .line 383
    .line 384
    return-void

    .line 385
    :cond_12
    sub-int/2addr p1, v2

    .line 386
    invoke-virtual {p2, p1}, Lr7/c;->a(I)I

    .line 387
    .line 388
    .line 389
    :cond_13
    :goto_a
    return-void

    .line 390
    :goto_b
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 391
    throw p1

    .line 392
    :cond_14
    const-string p1, "TYPE_SETTINGS length %% 6 != 0: %s"

    .line 393
    .line 394
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 395
    .line 396
    .line 397
    move-result-object p2

    .line 398
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object p2

    .line 402
    invoke-static {p1, p2}, Lr7/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    throw v0

    .line 406
    :cond_15
    const-string p1, "TYPE_SETTINGS streamId != 0"

    .line 407
    .line 408
    new-array p2, v1, [Ljava/lang/Object;

    .line 409
    .line 410
    invoke-static {p1, p2}, Lr7/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    .line 412
    .line 413
    throw v0

    .line 414
    nop

    .line 415
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final y(ISBI)Ljava/util/ArrayList;
    .locals 3

    .line 1
    iget-object v0, p0, Lr7/h;->c:Lr7/f;

    .line 2
    .line 3
    iput p1, v0, Lr7/f;->f:I

    .line 4
    .line 5
    iput p1, v0, Lr7/f;->c:I

    .line 6
    .line 7
    iput-short p2, v0, Lr7/f;->g:S

    .line 8
    .line 9
    iput-byte p3, v0, Lr7/f;->d:B

    .line 10
    .line 11
    iput p4, v0, Lr7/f;->e:I

    .line 12
    .line 13
    iget-object p1, p0, Lr7/h;->d:Lr7/c;

    .line 14
    .line 15
    iget-object p2, p1, Lr7/c;->b:Ll9/a0;

    .line 16
    .line 17
    iget-object p3, p1, Lr7/c;->a:Ljava/util/ArrayList;

    .line 18
    .line 19
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ll9/a0;->k()Z

    .line 20
    .line 21
    .line 22
    move-result p4

    .line 23
    if-nez p4, :cond_c

    .line 24
    .line 25
    invoke-virtual {p2}, Ll9/a0;->readByte()B

    .line 26
    .line 27
    .line 28
    move-result p4

    .line 29
    and-int/lit16 v0, p4, 0xff

    .line 30
    .line 31
    const/16 v1, 0x80

    .line 32
    .line 33
    if-eq v0, v1, :cond_b

    .line 34
    .line 35
    and-int/lit16 v2, p4, 0x80

    .line 36
    .line 37
    if-ne v2, v1, :cond_3

    .line 38
    .line 39
    const/16 p4, 0x7f

    .line 40
    .line 41
    invoke-virtual {p1, v0, p4}, Lr7/c;->e(II)I

    .line 42
    .line 43
    .line 44
    move-result p4

    .line 45
    add-int/lit8 v0, p4, -0x1

    .line 46
    .line 47
    if-ltz v0, :cond_1

    .line 48
    .line 49
    sget-object v1, Lr7/e;->b:[Lr7/b;

    .line 50
    .line 51
    array-length v2, v1

    .line 52
    add-int/lit8 v2, v2, -0x1

    .line 53
    .line 54
    if-gt v0, v2, :cond_1

    .line 55
    .line 56
    aget-object p4, v1, v0

    .line 57
    .line 58
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    sget-object v1, Lr7/e;->b:[Lr7/b;

    .line 63
    .line 64
    array-length v1, v1

    .line 65
    sub-int/2addr v0, v1

    .line 66
    iget v1, p1, Lr7/c;->f:I

    .line 67
    .line 68
    add-int/lit8 v1, v1, 0x1

    .line 69
    .line 70
    add-int/2addr v1, v0

    .line 71
    if-ltz v1, :cond_2

    .line 72
    .line 73
    iget-object v0, p1, Lr7/c;->e:[Lr7/b;

    .line 74
    .line 75
    array-length v2, v0

    .line 76
    add-int/lit8 v2, v2, -0x1

    .line 77
    .line 78
    if-gt v1, v2, :cond_2

    .line 79
    .line 80
    aget-object p4, v0, v1

    .line 81
    .line 82
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    const-string p1, "Header index too large "

    .line 87
    .line 88
    invoke-static {p4, p1}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {p1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const/4 p1, 0x0

    .line 96
    return-object p1

    .line 97
    :cond_3
    const/16 v1, 0x40

    .line 98
    .line 99
    if-ne v0, v1, :cond_4

    .line 100
    .line 101
    invoke-virtual {p1}, Lr7/c;->d()Ll9/o;

    .line 102
    .line 103
    .line 104
    move-result-object p4

    .line 105
    invoke-static {p4}, Lr7/e;->a(Ll9/o;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Lr7/c;->d()Ll9/o;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    new-instance v1, Lr7/b;

    .line 113
    .line 114
    invoke-direct {v1, p4, v0}, Lr7/b;-><init>(Ll9/o;Ll9/o;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v1}, Lr7/c;->c(Lr7/b;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_4
    and-int/lit8 v2, p4, 0x40

    .line 122
    .line 123
    if-ne v2, v1, :cond_5

    .line 124
    .line 125
    const/16 p4, 0x3f

    .line 126
    .line 127
    invoke-virtual {p1, v0, p4}, Lr7/c;->e(II)I

    .line 128
    .line 129
    .line 130
    move-result p4

    .line 131
    add-int/lit8 p4, p4, -0x1

    .line 132
    .line 133
    invoke-virtual {p1, p4}, Lr7/c;->b(I)Ll9/o;

    .line 134
    .line 135
    .line 136
    move-result-object p4

    .line 137
    invoke-virtual {p1}, Lr7/c;->d()Ll9/o;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    new-instance v1, Lr7/b;

    .line 142
    .line 143
    invoke-direct {v1, p4, v0}, Lr7/b;-><init>(Ll9/o;Ll9/o;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v1}, Lr7/c;->c(Lr7/b;)V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :cond_5
    and-int/lit8 p4, p4, 0x20

    .line 152
    .line 153
    const/16 v1, 0x20

    .line 154
    .line 155
    if-ne p4, v1, :cond_8

    .line 156
    .line 157
    const/16 p4, 0x1f

    .line 158
    .line 159
    invoke-virtual {p1, v0, p4}, Lr7/c;->e(II)I

    .line 160
    .line 161
    .line 162
    move-result p4

    .line 163
    iput p4, p1, Lr7/c;->d:I

    .line 164
    .line 165
    if-ltz p4, :cond_7

    .line 166
    .line 167
    iget v0, p1, Lr7/c;->c:I

    .line 168
    .line 169
    if-gt p4, v0, :cond_7

    .line 170
    .line 171
    iget v0, p1, Lr7/c;->h:I

    .line 172
    .line 173
    if-ge p4, v0, :cond_0

    .line 174
    .line 175
    if-nez p4, :cond_6

    .line 176
    .line 177
    iget-object p4, p1, Lr7/c;->e:[Lr7/b;

    .line 178
    .line 179
    const/4 v0, 0x0

    .line 180
    invoke-static {p4, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    iget-object p4, p1, Lr7/c;->e:[Lr7/b;

    .line 184
    .line 185
    array-length p4, p4

    .line 186
    add-int/lit8 p4, p4, -0x1

    .line 187
    .line 188
    iput p4, p1, Lr7/c;->f:I

    .line 189
    .line 190
    const/4 p4, 0x0

    .line 191
    iput p4, p1, Lr7/c;->g:I

    .line 192
    .line 193
    iput p4, p1, Lr7/c;->h:I

    .line 194
    .line 195
    goto/16 :goto_0

    .line 196
    .line 197
    :cond_6
    sub-int/2addr v0, p4

    .line 198
    invoke-virtual {p1, v0}, Lr7/c;->a(I)I

    .line 199
    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :cond_7
    const-string p2, "Invalid dynamic table size update "

    .line 204
    .line 205
    iget p1, p1, Lr7/c;->d:I

    .line 206
    .line 207
    invoke-static {p1, p2}, Ln0/b;->y(ILjava/lang/String;)V

    .line 208
    .line 209
    .line 210
    const/4 p1, 0x0

    .line 211
    return-object p1

    .line 212
    :cond_8
    const/16 p4, 0x10

    .line 213
    .line 214
    if-eq v0, p4, :cond_a

    .line 215
    .line 216
    if-nez v0, :cond_9

    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_9
    const/16 p4, 0xf

    .line 220
    .line 221
    invoke-virtual {p1, v0, p4}, Lr7/c;->e(II)I

    .line 222
    .line 223
    .line 224
    move-result p4

    .line 225
    add-int/lit8 p4, p4, -0x1

    .line 226
    .line 227
    invoke-virtual {p1, p4}, Lr7/c;->b(I)Ll9/o;

    .line 228
    .line 229
    .line 230
    move-result-object p4

    .line 231
    invoke-virtual {p1}, Lr7/c;->d()Ll9/o;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    new-instance v1, Lr7/b;

    .line 236
    .line 237
    invoke-direct {v1, p4, v0}, Lr7/b;-><init>(Ll9/o;Ll9/o;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    goto/16 :goto_0

    .line 244
    .line 245
    :cond_a
    :goto_1
    invoke-virtual {p1}, Lr7/c;->d()Ll9/o;

    .line 246
    .line 247
    .line 248
    move-result-object p4

    .line 249
    invoke-static {p4}, Lr7/e;->a(Ll9/o;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1}, Lr7/c;->d()Ll9/o;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    new-instance v1, Lr7/b;

    .line 257
    .line 258
    invoke-direct {v1, p4, v0}, Lr7/b;-><init>(Ll9/o;Ll9/o;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    goto/16 :goto_0

    .line 265
    .line 266
    :cond_b
    const-string p1, "index == 0"

    .line 267
    .line 268
    invoke-static {p1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    const/4 p1, 0x0

    .line 272
    return-object p1

    .line 273
    :cond_c
    new-instance p1, Ljava/util/ArrayList;

    .line 274
    .line 275
    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 279
    .line 280
    .line 281
    return-object p1
.end method
