.class public final Lj8/g;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lz7/a;
.implements Lx7/h;


# static fields
.field public static final p:[Lj8/f;

.field public static final q:[Lj8/f;


# instance fields
.field public final b:Lx7/h;

.field public final c:Le0/g;

.field public final d:I

.field public final e:I

.field public volatile f:Le8/f;

.field public volatile g:Z

.field public final h:Lp8/b;

.field public volatile i:Z

.field public final j:Ljava/util/concurrent/atomic/AtomicReference;

.field public k:Lz7/a;

.field public l:J

.field public m:J

.field public n:I

.field public o:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Lj8/f;

    .line 3
    .line 4
    sput-object v1, Lj8/g;->p:[Lj8/f;

    .line 5
    .line 6
    new-array v0, v0, [Lj8/f;

    .line 7
    .line 8
    sput-object v0, Lj8/g;->q:[Lj8/f;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lx7/h;Le0/g;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lp8/b;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lj8/g;->h:Lp8/b;

    .line 10
    .line 11
    iput-object p1, p0, Lj8/g;->b:Lx7/h;

    .line 12
    .line 13
    iput-object p2, p0, Lj8/g;->c:Le0/g;

    .line 14
    .line 15
    const p1, 0x7fffffff

    .line 16
    .line 17
    .line 18
    iput p1, p0, Lj8/g;->d:I

    .line 19
    .line 20
    iput p3, p0, Lj8/g;->e:I

    .line 21
    .line 22
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 23
    .line 24
    sget-object p2, Lj8/g;->p:[Lj8/f;

    .line 25
    .line 26
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lj8/g;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj8/g;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lj8/g;->g:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lj8/g;->f()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final b(Lz7/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj8/g;->k:Lz7/a;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lc8/a;->e(Lz7/a;Lz7/a;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Lj8/g;->k:Lz7/a;

    .line 10
    .line 11
    iget-object p1, p0, Lj8/g;->b:Lx7/h;

    .line 12
    .line 13
    invoke-interface {p1, p0}, Lx7/h;->b(Lz7/a;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lj8/g;->i:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lj8/g;->h:Lp8/b;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Throwable;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Lj8/g;->d()Z

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lj8/g;->h:Lp8/b;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lp8/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget-object v2, Lp8/d;->a:Lp8/c;

    .line 30
    .line 31
    if-eq v0, v2, :cond_1

    .line 32
    .line 33
    iget-object v2, p0, Lj8/g;->b:Lx7/h;

    .line 34
    .line 35
    invoke-interface {v2, v0}, Lx7/h;->onError(Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return v1

    .line 39
    :cond_2
    const/4 v0, 0x0

    .line 40
    return v0
.end method

.method public final d()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lj8/g;->k:Lz7/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lz7/a;->dispose()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lj8/g;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, [Lj8/f;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    sget-object v3, Lj8/g;->q:[Lj8/f;

    .line 16
    .line 17
    if-eq v1, v3, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, [Lj8/f;

    .line 24
    .line 25
    if-eq v0, v3, :cond_1

    .line 26
    .line 27
    array-length v1, v0

    .line 28
    :goto_0
    if-ge v2, v1, :cond_0

    .line 29
    .line 30
    aget-object v3, v0, v2

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {v3}, Lc8/a;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v0, 0x1

    .line 42
    return v0

    .line 43
    :cond_1
    return v2
.end method

.method public final dispose()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lj8/g;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lj8/g;->i:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lj8/g;->d()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lj8/g;->h:Lp8/b;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lp8/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    sget-object v1, Lp8/d;->a:Lp8/c;

    .line 26
    .line 27
    if-eq v0, v1, :cond_0

    .line 28
    .line 29
    invoke-static {v0}, La/a;->s(Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lj8/g;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lj8/g;->c:Le0/g;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Le0/g;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lx7/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 13
    .line 14
    iget v0, p0, Lj8/g;->d:I

    .line 15
    .line 16
    const v1, 0x7fffffff

    .line 17
    .line 18
    .line 19
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    monitor-enter p0

    .line 22
    :try_start_1
    iget v0, p0, Lj8/g;->o:I

    .line 23
    .line 24
    iget v1, p0, Lj8/g;->d:I

    .line 25
    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    iput v0, p0, Lj8/g;->o:I

    .line 31
    .line 32
    monitor-exit p0

    .line 33
    goto :goto_1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    throw p1

    .line 38
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p1

    .line 40
    :cond_2
    :goto_1
    instance-of v0, p1, Ljava/util/concurrent/Callable;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    if-eqz v0, :cond_a

    .line 44
    .line 45
    check-cast p1, Ljava/util/concurrent/Callable;

    .line 46
    .line 47
    const v0, 0x7fffffff

    .line 48
    .line 49
    .line 50
    :try_start_2
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    if-nez p1, :cond_3

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_4

    .line 62
    .line 63
    const/4 v2, 0x1

    .line 64
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    iget-object v1, p0, Lj8/g;->b:Lx7/h;

    .line 71
    .line 72
    invoke-interface {v1, p1}, Lx7/h;->e(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_8

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_4
    iget-object v1, p0, Lj8/g;->f:Le8/f;

    .line 83
    .line 84
    if-nez v1, :cond_6

    .line 85
    .line 86
    iget v1, p0, Lj8/g;->d:I

    .line 87
    .line 88
    if-ne v1, v0, :cond_5

    .line 89
    .line 90
    new-instance v1, Ll8/b;

    .line 91
    .line 92
    iget v2, p0, Lj8/g;->e:I

    .line 93
    .line 94
    invoke-direct {v1, v2}, Ll8/b;-><init>(I)V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_5
    new-instance v1, Ll8/a;

    .line 99
    .line 100
    iget v2, p0, Lj8/g;->d:I

    .line 101
    .line 102
    invoke-direct {v1, v2}, Ll8/a;-><init>(I)V

    .line 103
    .line 104
    .line 105
    :goto_2
    iput-object v1, p0, Lj8/g;->f:Le8/f;

    .line 106
    .line 107
    :cond_6
    invoke-interface {v1, p1}, Le8/g;->offer(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-nez p1, :cond_7

    .line 112
    .line 113
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 114
    .line 115
    const-string v1, "Scalar queue full?!"

    .line 116
    .line 117
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p1}, Lj8/g;->onError(Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_7
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_8

    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_8
    invoke-virtual {p0}, Lj8/g;->g()V

    .line 132
    .line 133
    .line 134
    goto :goto_3

    .line 135
    :catchall_1
    move-exception p1

    .line 136
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 137
    .line 138
    .line 139
    iget-object v1, p0, Lj8/g;->h:Lp8/b;

    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    invoke-static {v1, p1}, Lp8/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lj8/g;->f()V

    .line 148
    .line 149
    .line 150
    :goto_3
    iget p1, p0, Lj8/g;->d:I

    .line 151
    .line 152
    if-ne p1, v0, :cond_9

    .line 153
    .line 154
    goto :goto_5

    .line 155
    :cond_9
    monitor-enter p0

    .line 156
    const/4 p1, 0x0

    .line 157
    :try_start_3
    throw p1

    .line 158
    :catchall_2
    move-exception p1

    .line 159
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 160
    throw p1

    .line 161
    :cond_a
    new-instance v0, Lj8/f;

    .line 162
    .line 163
    iget-wide v2, p0, Lj8/g;->l:J

    .line 164
    .line 165
    const-wide/16 v4, 0x1

    .line 166
    .line 167
    add-long/2addr v4, v2

    .line 168
    iput-wide v4, p0, Lj8/g;->l:J

    .line 169
    .line 170
    invoke-direct {v0, p0, v2, v3}, Lj8/f;-><init>(Lj8/g;J)V

    .line 171
    .line 172
    .line 173
    iget-object v2, p0, Lj8/g;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 174
    .line 175
    :goto_4
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    check-cast v3, [Lj8/f;

    .line 180
    .line 181
    sget-object v4, Lj8/g;->q:[Lj8/f;

    .line 182
    .line 183
    if-ne v3, v4, :cond_b

    .line 184
    .line 185
    invoke-static {v0}, Lc8/a;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 186
    .line 187
    .line 188
    goto :goto_5

    .line 189
    :cond_b
    array-length v4, v3

    .line 190
    add-int/lit8 v5, v4, 0x1

    .line 191
    .line 192
    new-array v5, v5, [Lj8/f;

    .line 193
    .line 194
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    .line 196
    .line 197
    aput-object v0, v5, v4

    .line 198
    .line 199
    :cond_c
    invoke-virtual {v2, v3, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    if-eqz v4, :cond_d

    .line 204
    .line 205
    invoke-virtual {p1, v0}, Lx7/g;->c(Lx7/h;)V

    .line 206
    .line 207
    .line 208
    :goto_5
    return-void

    .line 209
    :cond_d
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    if-eq v4, v3, :cond_c

    .line 214
    .line 215
    goto :goto_4

    .line 216
    :catchall_3
    move-exception p1

    .line 217
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 218
    .line 219
    .line 220
    iget-object v0, p0, Lj8/g;->k:Lz7/a;

    .line 221
    .line 222
    invoke-interface {v0}, Lz7/a;->dispose()V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0, p1}, Lj8/g;->onError(Ljava/lang/Throwable;)V

    .line 226
    .line 227
    .line 228
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lj8/g;->g()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 13

    .line 1
    iget-object v0, p0, Lj8/g;->b:Lx7/h;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    move v2, v1

    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lj8/g;->c()Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-eqz v3, :cond_1

    .line 10
    .line 11
    goto/16 :goto_8

    .line 12
    .line 13
    :cond_1
    iget-object v3, p0, Lj8/g;->f:Le8/f;

    .line 14
    .line 15
    if-eqz v3, :cond_5

    .line 16
    .line 17
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lj8/g;->c()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_3

    .line 22
    .line 23
    goto/16 :goto_8

    .line 24
    .line 25
    :cond_3
    invoke-interface {v3}, Le8/g;->poll()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    if-nez v4, :cond_4

    .line 30
    .line 31
    if-nez v4, :cond_2

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_4
    invoke-interface {v0, v4}, Lx7/h;->e(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_5
    :goto_2
    iget-boolean v3, p0, Lj8/g;->g:Z

    .line 39
    .line 40
    iget-object v4, p0, Lj8/g;->f:Le8/f;

    .line 41
    .line 42
    iget-object v5, p0, Lj8/g;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    check-cast v5, [Lj8/f;

    .line 49
    .line 50
    array-length v6, v5

    .line 51
    iget v7, p0, Lj8/g;->d:I

    .line 52
    .line 53
    const v8, 0x7fffffff

    .line 54
    .line 55
    .line 56
    if-ne v7, v8, :cond_1e

    .line 57
    .line 58
    if-eqz v3, :cond_8

    .line 59
    .line 60
    if-eqz v4, :cond_6

    .line 61
    .line 62
    invoke-interface {v4}, Le8/g;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_8

    .line 67
    .line 68
    :cond_6
    if-nez v6, :cond_8

    .line 69
    .line 70
    iget-object v1, p0, Lj8/g;->h:Lp8/b;

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-static {v1}, Lp8/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    sget-object v2, Lp8/d;->a:Lp8/c;

    .line 80
    .line 81
    if-eq v1, v2, :cond_1d

    .line 82
    .line 83
    if-nez v1, :cond_7

    .line 84
    .line 85
    invoke-interface {v0}, Lx7/h;->a()V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_8

    .line 89
    .line 90
    :cond_7
    invoke-interface {v0, v1}, Lx7/h;->onError(Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_8

    .line 94
    .line 95
    :cond_8
    const/4 v3, 0x0

    .line 96
    if-eqz v6, :cond_1a

    .line 97
    .line 98
    iget-wide v9, p0, Lj8/g;->m:J

    .line 99
    .line 100
    iget v4, p0, Lj8/g;->n:I

    .line 101
    .line 102
    if-le v6, v4, :cond_9

    .line 103
    .line 104
    aget-object v7, v5, v4

    .line 105
    .line 106
    iget-wide v11, v7, Lj8/f;->b:J

    .line 107
    .line 108
    cmp-long v7, v11, v9

    .line 109
    .line 110
    if-eqz v7, :cond_e

    .line 111
    .line 112
    :cond_9
    if-gt v6, v4, :cond_a

    .line 113
    .line 114
    move v4, v3

    .line 115
    :cond_a
    move v7, v3

    .line 116
    :goto_3
    if-ge v7, v6, :cond_d

    .line 117
    .line 118
    aget-object v11, v5, v4

    .line 119
    .line 120
    iget-wide v11, v11, Lj8/f;->b:J

    .line 121
    .line 122
    cmp-long v11, v11, v9

    .line 123
    .line 124
    if-nez v11, :cond_b

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_b
    add-int/lit8 v4, v4, 0x1

    .line 128
    .line 129
    if-ne v4, v6, :cond_c

    .line 130
    .line 131
    move v4, v3

    .line 132
    :cond_c
    add-int/lit8 v7, v7, 0x1

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_d
    :goto_4
    iput v4, p0, Lj8/g;->n:I

    .line 136
    .line 137
    aget-object v7, v5, v4

    .line 138
    .line 139
    iget-wide v9, v7, Lj8/f;->b:J

    .line 140
    .line 141
    iput-wide v9, p0, Lj8/g;->m:J

    .line 142
    .line 143
    :cond_e
    move v7, v3

    .line 144
    move v9, v7

    .line 145
    :goto_5
    if-ge v7, v6, :cond_19

    .line 146
    .line 147
    invoke-virtual {p0}, Lj8/g;->c()Z

    .line 148
    .line 149
    .line 150
    move-result v10

    .line 151
    if-eqz v10, :cond_f

    .line 152
    .line 153
    goto/16 :goto_8

    .line 154
    .line 155
    :cond_f
    aget-object v10, v5, v4

    .line 156
    .line 157
    :cond_10
    invoke-virtual {p0}, Lj8/g;->c()Z

    .line 158
    .line 159
    .line 160
    move-result v11

    .line 161
    if-eqz v11, :cond_11

    .line 162
    .line 163
    goto/16 :goto_8

    .line 164
    .line 165
    :cond_11
    iget-object v11, v10, Lj8/f;->e:Le8/g;

    .line 166
    .line 167
    if-nez v11, :cond_12

    .line 168
    .line 169
    goto :goto_6

    .line 170
    :cond_12
    :try_start_0
    invoke-interface {v11}, Le8/g;->poll()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    if-nez v12, :cond_16

    .line 175
    .line 176
    if-nez v12, :cond_10

    .line 177
    .line 178
    :goto_6
    iget-boolean v11, v10, Lj8/f;->d:Z

    .line 179
    .line 180
    iget-object v12, v10, Lj8/f;->e:Le8/g;

    .line 181
    .line 182
    if-eqz v11, :cond_15

    .line 183
    .line 184
    if-eqz v12, :cond_13

    .line 185
    .line 186
    invoke-interface {v12}, Le8/g;->isEmpty()Z

    .line 187
    .line 188
    .line 189
    move-result v11

    .line 190
    if-eqz v11, :cond_15

    .line 191
    .line 192
    :cond_13
    invoke-virtual {p0, v10}, Lj8/g;->h(Lj8/f;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0}, Lj8/g;->c()Z

    .line 196
    .line 197
    .line 198
    move-result v9

    .line 199
    if-eqz v9, :cond_14

    .line 200
    .line 201
    goto :goto_8

    .line 202
    :cond_14
    move v9, v1

    .line 203
    :cond_15
    add-int/lit8 v4, v4, 0x1

    .line 204
    .line 205
    if-ne v4, v6, :cond_18

    .line 206
    .line 207
    move v4, v3

    .line 208
    goto :goto_7

    .line 209
    :cond_16
    invoke-interface {v0, v12}, Lx7/h;->e(Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0}, Lj8/g;->c()Z

    .line 213
    .line 214
    .line 215
    move-result v12

    .line 216
    if-eqz v12, :cond_12

    .line 217
    .line 218
    goto :goto_8

    .line 219
    :catchall_0
    move-exception v9

    .line 220
    invoke-static {v9}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 221
    .line 222
    .line 223
    invoke-static {v10}, Lc8/a;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 224
    .line 225
    .line 226
    iget-object v11, p0, Lj8/g;->h:Lp8/b;

    .line 227
    .line 228
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    invoke-static {v11, v9}, Lp8/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0}, Lj8/g;->c()Z

    .line 235
    .line 236
    .line 237
    move-result v9

    .line 238
    if-eqz v9, :cond_17

    .line 239
    .line 240
    goto :goto_8

    .line 241
    :cond_17
    invoke-virtual {p0, v10}, Lj8/g;->h(Lj8/f;)V

    .line 242
    .line 243
    .line 244
    add-int/lit8 v7, v7, 0x1

    .line 245
    .line 246
    move v9, v1

    .line 247
    :cond_18
    :goto_7
    add-int/2addr v7, v1

    .line 248
    goto :goto_5

    .line 249
    :cond_19
    iput v4, p0, Lj8/g;->n:I

    .line 250
    .line 251
    aget-object v3, v5, v4

    .line 252
    .line 253
    iget-wide v3, v3, Lj8/f;->b:J

    .line 254
    .line 255
    iput-wide v3, p0, Lj8/g;->m:J

    .line 256
    .line 257
    move v3, v9

    .line 258
    :cond_1a
    if-eqz v3, :cond_1c

    .line 259
    .line 260
    iget v3, p0, Lj8/g;->d:I

    .line 261
    .line 262
    if-ne v3, v8, :cond_1b

    .line 263
    .line 264
    goto/16 :goto_0

    .line 265
    .line 266
    :cond_1b
    monitor-enter p0

    .line 267
    const/4 v0, 0x0

    .line 268
    :try_start_1
    throw v0

    .line 269
    :catchall_1
    move-exception v0

    .line 270
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 271
    throw v0

    .line 272
    :cond_1c
    neg-int v2, v2

    .line 273
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    if-nez v2, :cond_0

    .line 278
    .line 279
    :cond_1d
    :goto_8
    return-void

    .line 280
    :cond_1e
    monitor-enter p0

    .line 281
    const/4 v0, 0x0

    .line 282
    :try_start_2
    throw v0

    .line 283
    :catchall_2
    move-exception v0

    .line 284
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 285
    throw v0
.end method

.method public final h(Lj8/f;)V
    .locals 7

    .line 1
    :goto_0
    iget-object v0, p0, Lj8/g;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, [Lj8/f;

    .line 8
    .line 9
    array-length v2, v1

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_4

    .line 13
    :cond_0
    const/4 v3, 0x0

    .line 14
    move v4, v3

    .line 15
    :goto_1
    if-ge v4, v2, :cond_2

    .line 16
    .line 17
    aget-object v5, v1, v4

    .line 18
    .line 19
    if-ne v5, p1, :cond_1

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    const/4 v4, -0x1

    .line 26
    :goto_2
    if-gez v4, :cond_3

    .line 27
    .line 28
    goto :goto_4

    .line 29
    :cond_3
    const/4 v5, 0x1

    .line 30
    if-ne v2, v5, :cond_4

    .line 31
    .line 32
    sget-object v2, Lj8/g;->p:[Lj8/f;

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_4
    add-int/lit8 v6, v2, -0x1

    .line 36
    .line 37
    new-array v6, v6, [Lj8/f;

    .line 38
    .line 39
    invoke-static {v1, v3, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v3, v4, 0x1

    .line 43
    .line 44
    sub-int/2addr v2, v4

    .line 45
    sub-int/2addr v2, v5

    .line 46
    invoke-static {v1, v3, v6, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    .line 48
    .line 49
    move-object v2, v6

    .line 50
    :cond_5
    :goto_3
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_6

    .line 55
    .line 56
    :goto_4
    return-void

    .line 57
    :cond_6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-eq v3, v1, :cond_5

    .line 62
    .line 63
    goto :goto_0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj8/g;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, La/a;->s(Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lj8/g;->h:Lp8/b;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p1}, Lp8/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lj8/g;->g:Z

    .line 22
    .line 23
    invoke-virtual {p0}, Lj8/g;->f()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-static {p1}, La/a;->s(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
