.class public final Ll/e;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ll/a;


# instance fields
.field public final b:Ll/j;

.field public final c:Ljava/io/File;

.field public final d:J

.field public final e:Ll/d;

.field public f:Lf/c;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ll/d;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ll/d;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ll/e;->e:Ll/d;

    .line 11
    .line 12
    iput-object p1, p0, Ll/e;->c:Ljava/io/File;

    .line 13
    .line 14
    const-wide/32 v0, 0xfa00000

    .line 15
    .line 16
    .line 17
    iput-wide v0, p0, Ll/e;->d:J

    .line 18
    .line 19
    new-instance p1, Ll/j;

    .line 20
    .line 21
    invoke-direct {p1}, Ll/j;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Ll/e;->b:Ll/j;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lf/c;
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Ll/e;->f:Lf/c;

    .line 3
    .line 4
    if-nez v0, :cond_12

    .line 5
    .line 6
    iget-object v0, p0, Ll/e;->c:Ljava/io/File;

    .line 7
    .line 8
    iget-wide v1, p0, Ll/e;->d:J

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lf/c;->e0(Ljava/io/File;J)Lf/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Ll/e;->f:Lf/c;

    .line 15
    .line 16
    goto :goto_12

    .line 17
    :catchall_10
    move-exception v0

    .line 18
    goto :goto_16

    .line 19
    :cond_12
    :goto_12
    iget-object v0, p0, Ll/e;->f:Lf/c;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_10

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-object v0

    .line 23
    :goto_16
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_10

    .line 24
    throw v0
.end method

.method public final b(Lh/e;La5/h;)V
    .registers 10

    .line 1
    const-string v0, "Had two simultaneous puts for: "

    .line 2
    .line 3
    const-string v1, "Put: Obtained: "

    .line 4
    .line 5
    iget-object v2, p0, Ll/e;->b:Ll/j;

    .line 6
    .line 7
    invoke-virtual {v2, p1}, Ll/j;->a(Lh/e;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Ll/e;->e:Ll/d;

    .line 12
    .line 13
    monitor-enter v3

    .line 14
    :try_start_d
    iget-object v4, v3, Ll/d;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v4, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Ll/b;

    .line 23
    .line 24
    if-nez v4, :cond_3e

    .line 25
    .line 26
    iget-object v4, v3, Ll/d;->d:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v4, Ll/c;

    .line 29
    .line 30
    iget-object v5, v4, Ll/c;->a:Ljava/util/ArrayDeque;

    .line 31
    .line 32
    monitor-enter v5
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_38

    .line 33
    :try_start_20
    iget-object v4, v4, Ll/c;->a:Ljava/util/ArrayDeque;

    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Ll/b;

    .line 40
    .line 41
    monitor-exit v5
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_3b

    .line 42
    if-nez v4, :cond_30

    .line 43
    .line 44
    :try_start_2b
    new-instance v4, Ll/b;

    .line 45
    .line 46
    invoke-direct {v4}, Ll/b;-><init>()V

    .line 47
    .line 48
    .line 49
    :cond_30
    iget-object v5, v3, Ll/d;->c:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v5, Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_38

    .line 54
    .line 55
    .line 56
    goto :goto_3e

    .line 57
    :catchall_38
    move-exception p1

    .line 58
    goto/16 :goto_d6

    .line 59
    .line 60
    :catchall_3b
    move-exception p1

    .line 61
    :try_start_3c
    monitor-exit v5
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    .line 62
    :try_start_3d
    throw p1

    .line 63
    :cond_3e
    :goto_3e
    iget v5, v4, Ll/b;->b:I

    .line 64
    .line 65
    const/4 v6, 0x1

    .line 66
    add-int/2addr v5, v6

    .line 67
    iput v5, v4, Ll/b;->b:I

    .line 68
    .line 69
    monitor-exit v3
    :try_end_45
    .catchall {:try_start_3d .. :try_end_45} :catchall_38

    .line 70
    iget-object v3, v4, Ll/b;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 73
    .line 74
    .line 75
    :try_start_4a
    const-string v3, "DiskLruCacheWrapper"

    .line 76
    .line 77
    const/4 v4, 0x2

    .line 78
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_6f

    .line 83
    .line 84
    const-string v3, "DiskLruCacheWrapper"

    .line 85
    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, " for for Key: "

    .line 95
    .line 96
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catchall {:try_start_4a .. :try_end_6c} :catchall_6d

    .line 107
    .line 108
    .line 109
    goto :goto_6f

    .line 110
    :catchall_6d
    move-exception p1

    .line 111
    goto :goto_d0

    .line 112
    :cond_6f
    :goto_6f
    :try_start_6f
    invoke-virtual {p0}, Ll/e;->a()Lf/c;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1, v2}, Lf/c;->c0(Ljava/lang/String;)Lr5/c;

    .line 117
    .line 118
    .line 119
    move-result-object v1
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_77} :catch_aa
    .catchall {:try_start_6f .. :try_end_77} :catchall_6d

    .line 120
    if-eqz v1, :cond_7f

    .line 121
    .line 122
    :catch_79
    :cond_79
    :goto_79
    iget-object p1, p0, Ll/e;->e:Ll/d;

    .line 123
    .line 124
    invoke-virtual {p1, v2}, Ll/d;->K(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_7f
    :try_start_7f
    invoke-virtual {p1, v2}, Lf/c;->S(Ljava/lang/String;)Lcom/bumptech/glide/manager/s;

    .line 129
    .line 130
    .line 131
    move-result-object p1
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_83} :catch_aa
    .catchall {:try_start_7f .. :try_end_83} :catchall_6d

    .line 132
    if-eqz p1, :cond_b5

    .line 133
    .line 134
    :try_start_85
    invoke-virtual {p1}, Lcom/bumptech/glide/manager/s;->g()Ljava/io/File;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iget-object v1, p2, La5/h;->c:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v1, Lh/b;

    .line 141
    .line 142
    iget-object v3, p2, La5/h;->d:Ljava/lang/Object;

    .line 143
    .line 144
    iget-object p2, p2, La5/h;->e:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast p2, Lh/h;

    .line 147
    .line 148
    invoke-interface {v1, v3, v0, p2}, Lh/b;->h(Ljava/lang/Object;Ljava/io/File;Lh/h;)Z

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    if-eqz p2, :cond_a2

    .line 153
    .line 154
    iget-object p2, p1, Lcom/bumptech/glide/manager/s;->e:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast p2, Lf/c;

    .line 157
    .line 158
    invoke-static {p2, p1, v6}, Lf/c;->b(Lf/c;Lcom/bumptech/glide/manager/s;Z)V

    .line 159
    .line 160
    .line 161
    iput-boolean v6, p1, Lcom/bumptech/glide/manager/s;->b:Z
    :try_end_a2
    .catchall {:try_start_85 .. :try_end_a2} :catchall_ac

    .line 162
    .line 163
    :cond_a2
    :try_start_a2
    iget-boolean p2, p1, Lcom/bumptech/glide/manager/s;->b:Z
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a4} :catch_aa
    .catchall {:try_start_a2 .. :try_end_a4} :catchall_6d

    .line 164
    .line 165
    if-nez p2, :cond_79

    .line 166
    .line 167
    :try_start_a6
    invoke-virtual {p1}, Lcom/bumptech/glide/manager/s;->a()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_79
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_6d

    .line 168
    .line 169
    .line 170
    goto :goto_79

    .line 171
    :catch_aa
    move-exception p1

    .line 172
    goto :goto_bf

    .line 173
    :catchall_ac
    move-exception p2

    .line 174
    :try_start_ad
    iget-boolean v0, p1, Lcom/bumptech/glide/manager/s;->b:Z
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_af} :catch_aa
    .catchall {:try_start_ad .. :try_end_af} :catchall_6d

    .line 175
    .line 176
    if-nez v0, :cond_b4

    .line 177
    .line 178
    :try_start_b1
    invoke-virtual {p1}, Lcom/bumptech/glide/manager/s;->a()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_6d

    .line 179
    .line 180
    .line 181
    :catch_b4
    :cond_b4
    :try_start_b4
    throw p2

    .line 182
    :cond_b5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 183
    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw p1
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_bf} :catch_aa
    .catchall {:try_start_b4 .. :try_end_bf} :catchall_6d

    .line 192
    :goto_bf
    :try_start_bf
    const-string p2, "DiskLruCacheWrapper"

    .line 193
    .line 194
    const/4 v0, 0x5

    .line 195
    invoke-static {p2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 196
    .line 197
    .line 198
    move-result p2

    .line 199
    if-eqz p2, :cond_79

    .line 200
    .line 201
    const-string p2, "DiskLruCacheWrapper"

    .line 202
    .line 203
    const-string v0, "Unable to put to disk cache"

    .line 204
    .line 205
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cf
    .catchall {:try_start_bf .. :try_end_cf} :catchall_6d

    .line 206
    .line 207
    .line 208
    goto :goto_79

    .line 209
    :goto_d0
    iget-object p2, p0, Ll/e;->e:Ll/d;

    .line 210
    .line 211
    invoke-virtual {p2, v2}, Ll/d;->K(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    throw p1

    .line 215
    :goto_d6
    :try_start_d6
    monitor-exit v3
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_38

    .line 216
    throw p1
.end method

.method public final c(Lh/e;)Ljava/io/File;
    .registers 6

    .line 1
    iget-object v0, p0, Ll/e;->b:Ll/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ll/j;->a(Lh/e;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    const-string v2, "DiskLruCacheWrapper"

    .line 9
    .line 10
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_28

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v3, "Get: Obtained: "

    .line 19
    .line 20
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v3, " for for Key: "

    .line 27
    .line 28
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_28
    :try_start_28
    invoke-virtual {p0}, Ll/e;->a()Lf/c;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1, v0}, Lf/c;->c0(Ljava/lang/String;)Lr5/c;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_47

    .line 50
    .line 51
    iget-object p1, p1, Lr5/c;->c:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p1, [Ljava/io/File;

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    aget-object p1, p1, v0
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_39} :catch_3a

    .line 57
    .line 58
    return-object p1

    .line 59
    :catch_3a
    move-exception p1

    .line 60
    const/4 v0, 0x5

    .line 61
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_47

    .line 66
    .line 67
    const-string v0, "Unable to get from disk cache"

    .line 68
    .line 69
    invoke-static {v2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .line 71
    .line 72
    :cond_47
    const/4 p1, 0x0

    .line 73
    return-object p1
.end method
