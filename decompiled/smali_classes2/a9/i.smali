.class public final La9/i;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 12
    iput p1, p0, La9/i;->b:I

    iput-object p2, p0, La9/i;->d:Ljava/lang/Object;

    iput-object p3, p0, La9/i;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo7/a;Ljava/util/concurrent/Callable;)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    iput v0, p0, La9/i;->b:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, La9/i;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, La9/i;->d:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lu4/i;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, La9/i;->b:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La9/i;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    :try_start_0
    iget-object v2, p0, La9/i;->d:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v2, Lu4/i;

    .line 6
    .line 7
    iget-object v2, v2, Lu4/i;->c:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    const/4 v3, 0x1

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :try_start_1
    iget-object v0, p0, La9/i;->d:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lu4/i;

    .line 16
    .line 17
    iget v4, v0, Lu4/i;->d:I

    .line 18
    .line 19
    const/4 v5, 0x4

    .line 20
    if-ne v4, v5, :cond_0

    .line 21
    .line 22
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    goto :goto_5

    .line 35
    :cond_0
    :try_start_2
    iget-wide v6, v0, Lu4/i;->e:J

    .line 36
    .line 37
    const-wide/16 v8, 0x1

    .line 38
    .line 39
    add-long/2addr v6, v8

    .line 40
    iput-wide v6, v0, Lu4/i;->e:J

    .line 41
    .line 42
    iput v5, v0, Lu4/i;->d:I

    .line 43
    .line 44
    move v0, v3

    .line 45
    :cond_1
    iget-object v4, p0, La9/i;->d:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v4, Lu4/i;

    .line 48
    .line 49
    iget-object v4, v4, Lu4/i;->c:Ljava/util/ArrayDeque;

    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Ljava/lang/Runnable;

    .line 56
    .line 57
    iput-object v4, p0, La9/i;->c:Ljava/lang/Object;

    .line 58
    .line 59
    if-nez v4, :cond_3

    .line 60
    .line 61
    iget-object v0, p0, La9/i;->d:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Lu4/i;

    .line 64
    .line 65
    iput v3, v0, Lu4/i;->d:I

    .line 66
    .line 67
    monitor-exit v2

    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    :goto_2
    return-void

    .line 72
    :cond_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 74
    .line 75
    .line 76
    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 77
    or-int/2addr v1, v2

    .line 78
    const/4 v2, 0x0

    .line 79
    :try_start_4
    iget-object v3, p0, La9/i;->c:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v3, Ljava/lang/Runnable;

    .line 82
    .line 83
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 84
    .line 85
    .line 86
    :goto_3
    :try_start_5
    iput-object v2, p0, La9/i;->c:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catchall_1
    move-exception v0

    .line 90
    goto :goto_6

    .line 91
    :catchall_2
    move-exception v0

    .line 92
    goto :goto_4

    .line 93
    :catch_0
    move-exception v3

    .line 94
    :try_start_6
    sget-object v4, Lu4/i;->g:Ljava/util/logging/Logger;

    .line 95
    .line 96
    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 97
    .line 98
    new-instance v6, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v7, "Exception while executing runnable "

    .line 104
    .line 105
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v7, p0, La9/i;->c:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v7, Ljava/lang/Runnable;

    .line 111
    .line 112
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 120
    .line 121
    .line 122
    goto :goto_3

    .line 123
    :goto_4
    :try_start_7
    iput-object v2, p0, La9/i;->c:Ljava/lang/Object;

    .line 124
    .line 125
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 126
    :goto_5
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 127
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 128
    :goto_6
    if-eqz v1, :cond_4

    .line 129
    .line 130
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 135
    .line 136
    .line 137
    :cond_4
    throw v0
.end method

.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, La9/i;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, La9/i;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lo7/a;

    .line 9
    .line 10
    :try_start_0
    iget-object v1, p0, La9/i;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/util/concurrent/Callable;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lo7/a;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_2

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v1

    .line 25
    goto :goto_1

    .line 26
    :goto_0
    new-instance v2, Ljava/lang/RuntimeException;

    .line 27
    .line 28
    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Lo7/a;->f(Ljava/lang/Exception;)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    invoke-virtual {v0, v1}, Lo7/a;->f(Ljava/lang/Exception;)V

    .line 36
    .line 37
    .line 38
    :goto_2
    return-void

    .line 39
    :pswitch_0
    iget-object v0, p0, La9/i;->d:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Lz2/e;

    .line 42
    .line 43
    iget-object v0, v0, Lz2/e;->c:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter v0

    .line 46
    :try_start_1
    iget-object v1, p0, La9/i;->d:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v1, Lz2/e;

    .line 49
    .line 50
    iget-object v1, v1, Lz2/e;->d:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v1, Lz2/b;

    .line 53
    .line 54
    iget-object v2, p0, La9/i;->c:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v2, Lo7/a;

    .line 57
    .line 58
    invoke-virtual {v2}, Lo7/a;->d()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-interface {v1, v2}, Lz2/b;->c(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    monitor-exit v0

    .line 66
    return-void

    .line 67
    :catchall_1
    move-exception v1

    .line 68
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    throw v1

    .line 70
    :pswitch_1
    iget-object v0, p0, La9/i;->d:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v0, Lz2/e;

    .line 73
    .line 74
    iget-object v0, v0, Lz2/e;->c:Ljava/lang/Object;

    .line 75
    .line 76
    monitor-enter v0

    .line 77
    :try_start_2
    iget-object v1, p0, La9/i;->d:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v1, Lz2/e;

    .line 80
    .line 81
    iget-object v1, v1, Lz2/e;->d:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v1, Lz2/a;

    .line 84
    .line 85
    iget-object v2, p0, La9/i;->c:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v2, Lo7/a;

    .line 88
    .line 89
    iget-object v3, v2, Lo7/a;->b:Ljava/lang/Object;

    .line 90
    .line 91
    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 92
    :try_start_3
    iget-object v2, v2, Lo7/a;->e:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v2, Ljava/lang/Exception;

    .line 95
    .line 96
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 97
    :try_start_4
    invoke-static {v2}, Lr2/a;->b(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-interface {v1, v2}, Lz2/a;->a(Ljava/lang/Exception;)V

    .line 101
    .line 102
    .line 103
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 104
    return-void

    .line 105
    :catchall_2
    move-exception v1

    .line 106
    goto :goto_3

    .line 107
    :catchall_3
    move-exception v1

    .line 108
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 109
    :try_start_6
    throw v1

    .line 110
    :goto_3
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 111
    throw v1

    .line 112
    :pswitch_2
    :try_start_7
    invoke-virtual {p0}, La9/i;->a()V
    :try_end_7
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_1

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :catch_1
    move-exception v0

    .line 117
    iget-object v1, p0, La9/i;->d:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v1, Lu4/i;

    .line 120
    .line 121
    iget-object v1, v1, Lu4/i;->c:Ljava/util/ArrayDeque;

    .line 122
    .line 123
    monitor-enter v1

    .line 124
    :try_start_8
    iget-object v2, p0, La9/i;->d:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v2, Lu4/i;

    .line 127
    .line 128
    const/4 v3, 0x1

    .line 129
    iput v3, v2, Lu4/i;->d:I

    .line 130
    .line 131
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 132
    throw v0

    .line 133
    :catchall_4
    move-exception v0

    .line 134
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 135
    throw v0

    .line 136
    :pswitch_3
    iget-object v0, p0, La9/i;->d:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v0, Lm/c;

    .line 139
    .line 140
    iget-boolean v1, v0, Lm/c;->e:Z

    .line 141
    .line 142
    if-eqz v1, :cond_0

    .line 143
    .line 144
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 145
    .line 146
    invoke-direct {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 162
    .line 163
    .line 164
    :cond_0
    :try_start_a
    iget-object v1, p0, La9/i;->c:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v1, Ljava/lang/Runnable;

    .line 167
    .line 168
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 169
    .line 170
    .line 171
    goto :goto_4

    .line 172
    :catchall_5
    move-exception v1

    .line 173
    iget-object v0, v0, Lm/c;->d:Lm/d;

    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    const-string v0, "GlideExecutor"

    .line 179
    .line 180
    const/4 v2, 0x6

    .line 181
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-eqz v2, :cond_1

    .line 186
    .line 187
    const-string v2, "Request threw uncaught throwable"

    .line 188
    .line 189
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    .line 191
    .line 192
    :cond_1
    :goto_4
    return-void

    .line 193
    :pswitch_4
    iget-object v0, p0, La9/i;->d:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v0, La9/j;

    .line 196
    .line 197
    iget-object v1, v0, La9/j;->b:Lv8/t;

    .line 198
    .line 199
    const/4 v2, 0x0

    .line 200
    :cond_2
    :try_start_b
    iget-object v3, p0, La9/i;->c:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast v3, Ljava/lang/Runnable;

    .line 203
    .line 204
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 205
    .line 206
    .line 207
    goto :goto_5

    .line 208
    :catchall_6
    move-exception v3

    .line 209
    sget-object v4, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 210
    .line 211
    invoke-static {v3, v4}, Lv8/w;->a(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V

    .line 212
    .line 213
    .line 214
    :goto_5
    invoke-virtual {v0}, La9/j;->y()Ljava/lang/Runnable;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    if-nez v3, :cond_3

    .line 219
    .line 220
    goto :goto_6

    .line 221
    :cond_3
    iput-object v3, p0, La9/i;->c:Ljava/lang/Object;

    .line 222
    .line 223
    add-int/lit8 v2, v2, 0x1

    .line 224
    .line 225
    const/16 v3, 0x10

    .line 226
    .line 227
    if-lt v2, v3, :cond_2

    .line 228
    .line 229
    invoke-virtual {v1, v0}, Lv8/t;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    if-eqz v3, :cond_2

    .line 234
    .line 235
    invoke-virtual {v1, v0, p0}, Lv8/t;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 236
    .line 237
    .line 238
    :goto_6
    return-void

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, La9/i;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    iget-object v0, p0, La9/i;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ljava/lang/Runnable;

    .line 14
    .line 15
    const-string v1, "}"

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v3, "SequentialExecutorWorker{running="

    .line 22
    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v2, "SequentialExecutorWorker{state="

    .line 40
    .line 41
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, La9/i;->d:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v2, Lu4/i;

    .line 47
    .line 48
    iget v2, v2, Lu4/i;->d:I

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    if-eq v2, v3, :cond_4

    .line 52
    .line 53
    const/4 v3, 0x2

    .line 54
    if-eq v2, v3, :cond_3

    .line 55
    .line 56
    const/4 v3, 0x3

    .line 57
    if-eq v2, v3, :cond_2

    .line 58
    .line 59
    const/4 v3, 0x4

    .line 60
    if-eq v2, v3, :cond_1

    .line 61
    .line 62
    const-string v2, "null"

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const-string v2, "RUNNING"

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    const-string v2, "QUEUED"

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    const-string v2, "QUEUING"

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    const-string v2, "IDLE"

    .line 75
    .line 76
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    :goto_1
    return-object v0

    .line 87
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
