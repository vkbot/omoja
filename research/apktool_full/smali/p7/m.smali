.class public final Lp7/m;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:Ll/d;

.field public final c:Lr7/h;

.field public d:Z

.field public final synthetic e:Lp7/n;


# direct methods
.method public constructor <init>(Lp7/n;Lr7/h;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp7/m;->e:Lp7/n;

    .line 5
    .line 6
    new-instance p1, Ll/d;

    .line 7
    .line 8
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 9
    .line 10
    const/4 v0, 0x6

    .line 11
    invoke-direct {p1, v0}, Ll/d;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lp7/m;->b:Ll/d;

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lp7/m;->d:Z

    .line 18
    .line 19
    iput-object p2, p0, Lp7/m;->c:Lr7/h;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "OkHttpClientTransport"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 19
    :try_start_0
    iget-object v2, p0, Lp7/m;->c:Lr7/h;

    .line 20
    .line 21
    invoke-virtual {v2, p0}, Lr7/h;->b(Lp7/m;)Z

    .line 22
    .line 23
    .line 24
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    iget-object v3, p0, Lp7/m;->e:Lp7/n;

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    :try_start_1
    iget-object v2, v3, Lp7/n;->F:Lo7/p1;

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v2}, Lo7/p1;->a()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v2

    .line 38
    goto :goto_4

    .line 39
    :cond_1
    iget-object v2, v3, Lp7/n;->k:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :try_start_2
    iget-object v3, p0, Lp7/m;->e:Lp7/n;

    .line 43
    .line 44
    iget-object v3, v3, Lp7/n;->v:Ln7/f1;

    .line 45
    .line 46
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    if-nez v3, :cond_2

    .line 48
    .line 49
    :try_start_3
    sget-object v2, Ln7/f1;->m:Ln7/f1;

    .line 50
    .line 51
    const-string v3, "End of stream or IOException"

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    :cond_2
    iget-object v2, p0, Lp7/m;->e:Lp7/n;

    .line 58
    .line 59
    sget-object v4, Lr7/a;->e:Lr7/a;

    .line 60
    .line 61
    invoke-virtual {v2, v1, v4, v3}, Lp7/n;->r(ILr7/a;Ln7/f1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    .line 63
    .line 64
    :try_start_4
    iget-object v1, p0, Lp7/m;->c:Lr7/h;

    .line 65
    .line 66
    invoke-virtual {v1}, Lr7/h;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_3

    .line 70
    :catch_0
    move-exception v1

    .line 71
    goto :goto_1

    .line 72
    :catch_1
    move-exception v1

    .line 73
    goto :goto_2

    .line 74
    :goto_1
    const-string v2, "bio == null"

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_3

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_3
    throw v1

    .line 88
    :goto_2
    sget-object v2, Lp7/n;->Q:Ljava/util/logging/Logger;

    .line 89
    .line 90
    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 91
    .line 92
    const-string v4, "Exception closing frame reader"

    .line 93
    .line 94
    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    :goto_3
    iget-object v1, p0, Lp7/m;->e:Lp7/n;

    .line 98
    .line 99
    iget-object v1, v1, Lp7/n;->h:Lcom/bumptech/glide/manager/t;

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/bumptech/glide/manager/t;->l()V

    .line 102
    .line 103
    .line 104
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto :goto_6

    .line 112
    :catchall_1
    move-exception v3

    .line 113
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 114
    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 115
    :goto_4
    :try_start_7
    iget-object v3, p0, Lp7/m;->e:Lp7/n;

    .line 116
    .line 117
    sget-object v4, Lr7/a;->d:Lr7/a;

    .line 118
    .line 119
    sget-object v5, Ln7/f1;->l:Ln7/f1;

    .line 120
    .line 121
    const-string v6, "error in frame handler"

    .line 122
    .line 123
    invoke-virtual {v5, v6}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    invoke-virtual {v5, v2}, Ln7/f1;->g(Ljava/lang/Throwable;)Ln7/f1;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    sget-object v5, Lp7/n;->P:Ljava/util/Map;

    .line 132
    .line 133
    invoke-virtual {v3, v1, v4, v2}, Lp7/n;->r(ILr7/a;Ln7/f1;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 134
    .line 135
    .line 136
    :try_start_8
    iget-object v1, p0, Lp7/m;->c:Lr7/h;

    .line 137
    .line 138
    invoke-virtual {v1}, Lr7/h;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    .line 139
    .line 140
    .line 141
    goto :goto_3

    .line 142
    :catch_2
    move-exception v1

    .line 143
    goto :goto_5

    .line 144
    :catch_3
    move-exception v1

    .line 145
    goto :goto_2

    .line 146
    :goto_5
    const-string v2, "bio == null"

    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-eqz v2, :cond_4

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_4
    throw v1

    .line 160
    :goto_6
    return-void

    .line 161
    :catchall_2
    move-exception v1

    .line 162
    :try_start_9
    iget-object v2, p0, Lp7/m;->c:Lr7/h;

    .line 163
    .line 164
    invoke-virtual {v2}, Lr7/h;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_4

    .line 165
    .line 166
    .line 167
    goto :goto_9

    .line 168
    :catch_4
    move-exception v2

    .line 169
    goto :goto_7

    .line 170
    :catch_5
    move-exception v2

    .line 171
    goto :goto_8

    .line 172
    :goto_7
    const-string v3, "bio == null"

    .line 173
    .line 174
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    if-nez v3, :cond_5

    .line 183
    .line 184
    throw v2

    .line 185
    :goto_8
    sget-object v3, Lp7/n;->Q:Ljava/util/logging/Logger;

    .line 186
    .line 187
    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 188
    .line 189
    const-string v5, "Exception closing frame reader"

    .line 190
    .line 191
    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    .line 193
    .line 194
    :cond_5
    :goto_9
    iget-object v2, p0, Lp7/m;->e:Lp7/n;

    .line 195
    .line 196
    iget-object v2, v2, Lp7/n;->h:Lcom/bumptech/glide/manager/t;

    .line 197
    .line 198
    invoke-virtual {v2}, Lcom/bumptech/glide/manager/t;->l()V

    .line 199
    .line 200
    .line 201
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw v1
.end method
