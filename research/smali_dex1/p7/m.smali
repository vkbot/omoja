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
    .registers 4

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
    .registers 8

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
    :cond_11
    :goto_11
    const/4 v1, 0x0

    .line 19
    :try_start_12
    iget-object v2, p0, Lp7/m;->c:Lr7/h;

    .line 20
    .line 21
    invoke-virtual {v2, p0}, Lr7/h;->b(Lp7/m;)Z

    .line 22
    .line 23
    .line 24
    move-result v2
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_24

    .line 25
    iget-object v3, p0, Lp7/m;->e:Lp7/n;

    .line 26
    .line 27
    if-eqz v2, :cond_26

    .line 28
    .line 29
    :try_start_1c
    iget-object v2, v3, Lp7/n;->F:Lo7/p1;

    .line 30
    .line 31
    if-eqz v2, :cond_11

    .line 32
    .line 33
    invoke-virtual {v2}, Lo7/p1;->a()V

    .line 34
    .line 35
    .line 36
    goto :goto_11

    .line 37
    :catchall_24
    move-exception v2

    .line 38
    goto :goto_72

    .line 39
    :cond_26
    iget-object v2, v3, Lp7/n;->k:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter v2
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_24

    .line 42
    :try_start_29
    iget-object v3, p0, Lp7/m;->e:Lp7/n;

    .line 43
    .line 44
    iget-object v3, v3, Lp7/n;->v:Ln7/f1;

    .line 45
    .line 46
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_6f

    .line 47
    if-nez v3, :cond_38

    .line 48
    .line 49
    :try_start_30
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
    :cond_38
    iget-object v2, p0, Lp7/m;->e:Lp7/n;

    .line 58
    .line 59
    sget-object v4, Lr7/a;->e:Lr7/a;

    .line 60
    .line 61
    invoke-virtual {v2, v1, v4, v3}, Lp7/n;->r(ILr7/a;Ln7/f1;)V
    :try_end_3f
    .catchall {:try_start_30 .. :try_end_3f} :catchall_24

    .line 62
    .line 63
    .line 64
    :try_start_3f
    iget-object v1, p0, Lp7/m;->c:Lr7/h;

    .line 65
    .line 66
    invoke-virtual {v1}, Lr7/h;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_44} :catch_47
    .catch Ljava/lang/RuntimeException; {:try_start_3f .. :try_end_44} :catch_45

    .line 67
    .line 68
    .line 69
    goto :goto_60

    .line 70
    :catch_45
    move-exception v1

    .line 71
    goto :goto_49

    .line 72
    :catch_47
    move-exception v1

    .line 73
    goto :goto_57

    .line 74
    :goto_49
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
    if-eqz v2, :cond_56

    .line 85
    .line 86
    goto :goto_60

    .line 87
    :cond_56
    throw v1

    .line 88
    :goto_57
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
    :goto_60
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
    goto :goto_9f

    .line 112
    :catchall_6f
    move-exception v3

    .line 113
    :try_start_70
    monitor-exit v2
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    .line 114
    :try_start_71
    throw v3
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_24

    .line 115
    :goto_72
    :try_start_72
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
    :try_end_87
    .catchall {:try_start_72 .. :try_end_87} :catchall_a0

    .line 134
    .line 135
    .line 136
    :try_start_87
    iget-object v1, p0, Lp7/m;->c:Lr7/h;

    .line 137
    .line 138
    invoke-virtual {v1}, Lr7/h;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8c} :catch_8f
    .catch Ljava/lang/RuntimeException; {:try_start_87 .. :try_end_8c} :catch_8d

    .line 139
    .line 140
    .line 141
    goto :goto_60

    .line 142
    :catch_8d
    move-exception v1

    .line 143
    goto :goto_91

    .line 144
    :catch_8f
    move-exception v1

    .line 145
    goto :goto_57

    .line 146
    :goto_91
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
    if-eqz v2, :cond_9e

    .line 157
    .line 158
    goto :goto_60

    .line 159
    :cond_9e
    throw v1

    .line 160
    :goto_9f
    return-void

    .line 161
    :catchall_a0
    move-exception v1

    .line 162
    :try_start_a1
    iget-object v2, p0, Lp7/m;->c:Lr7/h;

    .line 163
    .line 164
    invoke-virtual {v2}, Lr7/h;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a6} :catch_a9
    .catch Ljava/lang/RuntimeException; {:try_start_a1 .. :try_end_a6} :catch_a7

    .line 165
    .line 166
    .line 167
    goto :goto_c1

    .line 168
    :catch_a7
    move-exception v2

    .line 169
    goto :goto_ab

    .line 170
    :catch_a9
    move-exception v2

    .line 171
    goto :goto_b8

    .line 172
    :goto_ab
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
    if-nez v3, :cond_c1

    .line 183
    .line 184
    throw v2

    .line 185
    :goto_b8
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
    :cond_c1
    :goto_c1
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
