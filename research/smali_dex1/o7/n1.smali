.class public final Lo7/n1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lo7/p1;


# direct methods
.method public synthetic constructor <init>(Lo7/p1;I)V
    .registers 3

    .line 1
    iput p2, p0, Lo7/n1;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lo7/n1;->c:Lo7/p1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 14

    .line 1
    iget v0, p0, Lo7/n1;->b:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_11c

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lo7/n1;->c:Lo7/p1;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_a
    iget-object v3, p0, Lo7/n1;->c:Lo7/p1;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    iput-object v4, v3, Lo7/p1;->f:Ljava/util/concurrent/ScheduledFuture;

    .line 15
    .line 16
    iget v4, v3, Lo7/p1;->d:I

    .line 17
    .line 18
    const/4 v5, 0x2

    .line 19
    if-ne v4, v5, :cond_2a

    .line 20
    .line 21
    const/4 v4, 0x4

    .line 22
    iput v4, v3, Lo7/p1;->d:I

    .line 23
    .line 24
    iget-object v4, v3, Lo7/p1;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 25
    .line 26
    iget-object v5, v3, Lo7/p1;->g:Lo7/q1;

    .line 27
    .line 28
    iget-wide v6, v3, Lo7/p1;->j:J

    .line 29
    .line 30
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 31
    .line 32
    invoke-interface {v4, v5, v6, v7, v8}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    iput-object v4, v3, Lo7/p1;->e:Ljava/util/concurrent/ScheduledFuture;

    .line 37
    .line 38
    move v3, v1

    .line 39
    goto :goto_47

    .line 40
    :catchall_27
    move-exception v1

    .line 41
    goto/16 :goto_f2

    .line 42
    .line 43
    :cond_2a
    const/4 v6, 0x3

    .line 44
    if-ne v4, v6, :cond_46

    .line 45
    .line 46
    iget-object v4, v3, Lo7/p1;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 47
    .line 48
    iget-object v6, v3, Lo7/p1;->h:Lo7/q1;

    .line 49
    .line 50
    iget-wide v7, v3, Lo7/p1;->i:J

    .line 51
    .line 52
    iget-object v9, v3, Lo7/p1;->b:Li4/f;

    .line 53
    .line 54
    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 55
    .line 56
    invoke-virtual {v9}, Li4/f;->a()J

    .line 57
    .line 58
    .line 59
    move-result-wide v11

    .line 60
    sub-long/2addr v7, v11

    .line 61
    invoke-interface {v4, v6, v7, v8, v10}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    iput-object v4, v3, Lo7/p1;->f:Ljava/util/concurrent/ScheduledFuture;

    .line 66
    .line 67
    iget-object v3, p0, Lo7/n1;->c:Lo7/p1;

    .line 68
    .line 69
    iput v5, v3, Lo7/p1;->d:I

    .line 70
    .line 71
    :cond_46
    move v3, v2

    .line 72
    :goto_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_a .. :try_end_48} :catchall_27

    .line 73
    if-eqz v3, :cond_f1

    .line 74
    .line 75
    iget-object v0, p0, Lo7/n1;->c:Lo7/p1;

    .line 76
    .line 77
    iget-object v0, v0, Lo7/p1;->c:Ln/p;

    .line 78
    .line 79
    iget-object v3, v0, Ln/p;->c:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v3, Lp7/n;

    .line 82
    .line 83
    new-instance v4, Lo7/o1;

    .line 84
    .line 85
    invoke-direct {v4, v0}, Lo7/o1;-><init>(Ln/p;)V

    .line 86
    .line 87
    .line 88
    sget-object v0, Lm4/n;->b:Lm4/n;

    .line 89
    .line 90
    iget-object v5, v3, Lp7/n;->k:Ljava/lang/Object;

    .line 91
    .line 92
    monitor-enter v5

    .line 93
    :try_start_5c
    iget-object v6, v3, Lp7/n;->i:Lp7/d;

    .line 94
    .line 95
    if-eqz v6, :cond_e9

    .line 96
    .line 97
    iget-boolean v6, v3, Lp7/n;->y:Z

    .line 98
    .line 99
    if-eqz v6, :cond_83

    .line 100
    .line 101
    invoke-virtual {v3}, Lp7/n;->k()Ln7/g1;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    sget-object v2, Lo7/d1;->g:Ljava/util/logging/Logger;

    .line 106
    .line 107
    new-instance v2, Lo7/c1;

    .line 108
    .line 109
    invoke-direct {v2, v4, v1}, Lo7/c1;-><init>(Lo7/o1;Ljava/lang/Throwable;)V
    :try_end_6f
    .catchall {:try_start_5c .. :try_end_6f} :catchall_80

    .line 110
    .line 111
    .line 112
    :try_start_6f
    invoke-virtual {v0, v2}, Lm4/n;->execute(Ljava/lang/Runnable;)V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_73

    .line 113
    .line 114
    .line 115
    goto :goto_7d

    .line 116
    :catchall_73
    move-exception v0

    .line 117
    :try_start_74
    sget-object v1, Lo7/d1;->g:Ljava/util/logging/Logger;

    .line 118
    .line 119
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 120
    .line 121
    const-string v3, "Failed to execute PingCallback"

    .line 122
    .line 123
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    .line 125
    .line 126
    :goto_7d
    monitor-exit v5

    .line 127
    goto/16 :goto_f1

    .line 128
    .line 129
    :catchall_80
    move-exception v0

    .line 130
    goto/16 :goto_ef

    .line 131
    .line 132
    :cond_83
    iget-object v6, v3, Lp7/n;->x:Lo7/d1;

    .line 133
    .line 134
    if-eqz v6, :cond_8b

    .line 135
    .line 136
    const-wide/16 v7, 0x0

    .line 137
    .line 138
    move v1, v2

    .line 139
    goto :goto_a9

    .line 140
    :cond_8b
    iget-object v6, v3, Lp7/n;->d:Ljava/util/Random;

    .line 141
    .line 142
    invoke-virtual {v6}, Ljava/util/Random;->nextLong()J

    .line 143
    .line 144
    .line 145
    move-result-wide v7

    .line 146
    iget-object v6, v3, Lp7/n;->e:Lo7/u2;

    .line 147
    .line 148
    invoke-virtual {v6}, Lo7/u2;->r()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    check-cast v6, Li4/f;

    .line 153
    .line 154
    invoke-virtual {v6}, Li4/f;->b()V

    .line 155
    .line 156
    .line 157
    new-instance v9, Lo7/d1;

    .line 158
    .line 159
    invoke-direct {v9, v7, v8, v6}, Lo7/d1;-><init>(JLi4/f;)V

    .line 160
    .line 161
    .line 162
    iput-object v9, v3, Lp7/n;->x:Lo7/d1;

    .line 163
    .line 164
    iget-object v6, v3, Lp7/n;->L:Lo7/w4;

    .line 165
    .line 166
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    move-object v6, v9

    .line 170
    :goto_a9
    if-eqz v1, :cond_b6

    .line 171
    .line 172
    iget-object v1, v3, Lp7/n;->i:Lp7/d;

    .line 173
    .line 174
    const/16 v3, 0x20

    .line 175
    .line 176
    ushr-long v9, v7, v3

    .line 177
    .line 178
    long-to-int v3, v9

    .line 179
    long-to-int v7, v7

    .line 180
    invoke-virtual {v1, v2, v3, v7}, Lp7/d;->y(ZII)V

    .line 181
    .line 182
    .line 183
    :cond_b6
    monitor-exit v5
    :try_end_b7
    .catchall {:try_start_74 .. :try_end_b7} :catchall_80

    .line 184
    monitor-enter v6

    .line 185
    :try_start_b8
    iget-boolean v1, v6, Lo7/d1;->d:Z

    .line 186
    .line 187
    if-nez v1, :cond_c5

    .line 188
    .line 189
    iget-object v1, v6, Lo7/d1;->c:Ljava/util/LinkedHashMap;

    .line 190
    .line 191
    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    monitor-exit v6

    .line 195
    goto :goto_f1

    .line 196
    :catchall_c3
    move-exception v0

    .line 197
    goto :goto_e7

    .line 198
    :cond_c5
    iget-object v1, v6, Lo7/d1;->e:Ln7/g1;

    .line 199
    .line 200
    if-eqz v1, :cond_cf

    .line 201
    .line 202
    new-instance v2, Lo7/c1;

    .line 203
    .line 204
    invoke-direct {v2, v4, v1}, Lo7/c1;-><init>(Lo7/o1;Ljava/lang/Throwable;)V

    .line 205
    .line 206
    .line 207
    goto :goto_d7

    .line 208
    :cond_cf
    iget-wide v1, v6, Lo7/d1;->f:J

    .line 209
    .line 210
    new-instance v3, Lo7/c1;

    .line 211
    .line 212
    invoke-direct {v3, v4, v1, v2}, Lo7/c1;-><init>(Lo7/o1;J)V

    .line 213
    .line 214
    .line 215
    move-object v2, v3

    .line 216
    :goto_d7
    monitor-exit v6
    :try_end_d8
    .catchall {:try_start_b8 .. :try_end_d8} :catchall_c3

    .line 217
    :try_start_d8
    invoke-virtual {v0, v2}, Lm4/n;->execute(Ljava/lang/Runnable;)V
    :try_end_db
    .catchall {:try_start_d8 .. :try_end_db} :catchall_dc

    .line 218
    .line 219
    .line 220
    goto :goto_f1

    .line 221
    :catchall_dc
    move-exception v0

    .line 222
    sget-object v1, Lo7/d1;->g:Ljava/util/logging/Logger;

    .line 223
    .line 224
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 225
    .line 226
    const-string v3, "Failed to execute PingCallback"

    .line 227
    .line 228
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    .line 230
    .line 231
    goto :goto_f1

    .line 232
    :goto_e7
    :try_start_e7
    monitor-exit v6
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_c3

    .line 233
    throw v0

    .line 234
    :cond_e9
    :try_start_e9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 235
    .line 236
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 237
    .line 238
    .line 239
    throw v0

    .line 240
    :goto_ef
    monitor-exit v5
    :try_end_f0
    .catchall {:try_start_e9 .. :try_end_f0} :catchall_80

    .line 241
    throw v0

    .line 242
    :cond_f1
    :goto_f1
    return-void

    .line 243
    :goto_f2
    :try_start_f2
    monitor-exit v0
    :try_end_f3
    .catchall {:try_start_f2 .. :try_end_f3} :catchall_27

    .line 244
    throw v1

    .line 245
    :pswitch_f4
    iget-object v0, p0, Lo7/n1;->c:Lo7/p1;

    .line 246
    .line 247
    monitor-enter v0

    .line 248
    :try_start_f7
    iget-object v3, p0, Lo7/n1;->c:Lo7/p1;

    .line 249
    .line 250
    iget v4, v3, Lo7/p1;->d:I

    .line 251
    .line 252
    const/4 v5, 0x6

    .line 253
    if-eq v4, v5, :cond_103

    .line 254
    .line 255
    iput v5, v3, Lo7/p1;->d:I

    .line 256
    .line 257
    goto :goto_104

    .line 258
    :catchall_101
    move-exception v1

    .line 259
    goto :goto_119

    .line 260
    :cond_103
    move v1, v2

    .line 261
    :goto_104
    monitor-exit v0
    :try_end_105
    .catchall {:try_start_f7 .. :try_end_105} :catchall_101

    .line 262
    if-eqz v1, :cond_118

    .line 263
    .line 264
    iget-object v0, v3, Lo7/p1;->c:Ln/p;

    .line 265
    .line 266
    iget-object v0, v0, Ln/p;->c:Ljava/lang/Object;

    .line 267
    .line 268
    check-cast v0, Lp7/n;

    .line 269
    .line 270
    sget-object v1, Ln7/f1;->m:Ln7/f1;

    .line 271
    .line 272
    const-string v2, "Keepalive failed. The connection is likely gone"

    .line 273
    .line 274
    invoke-virtual {v1, v2}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-virtual {v0, v1}, Lp7/n;->q(Ln7/f1;)V

    .line 279
    .line 280
    .line 281
    :cond_118
    return-void

    .line 282
    :goto_119
    :try_start_119
    monitor-exit v0
    :try_end_11a
    .catchall {:try_start_119 .. :try_end_11a} :catchall_101

    .line 283
    throw v1

    .line 284
    nop

    .line 285
    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_f4
    .end packed-switch
.end method
