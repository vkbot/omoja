.class public final Lh8/y;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lx7/d;
.implements Ln9/b;


# static fields
.field public static final r:[Lh8/x;

.field public static final s:[Lh8/x;


# instance fields
.field public final b:Lx7/d;

.field public final c:Lb8/c;

.field public final d:I

.field public final e:I

.field public volatile f:Le8/f;

.field public volatile g:Z

.field public final h:Lp8/b;

.field public volatile i:Z

.field public final j:Ljava/util/concurrent/atomic/AtomicReference;

.field public final k:Ljava/util/concurrent/atomic/AtomicLong;

.field public l:Ln9/b;

.field public m:J

.field public n:J

.field public o:I

.field public p:I

.field public final q:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Lh8/x;

    .line 3
    .line 4
    sput-object v1, Lh8/y;->r:[Lh8/x;

    .line 5
    .line 6
    new-array v0, v0, [Lh8/x;

    .line 7
    .line 8
    sput-object v0, Lh8/y;->s:[Lh8/x;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lx7/d;Lc5/e;II)V
    .registers 7

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
    iput-object v0, p0, Lh8/y;->h:Lp8/b;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lh8/y;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 17
    .line 18
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lh8/y;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 24
    .line 25
    iput-object p1, p0, Lh8/y;->b:Lx7/d;

    .line 26
    .line 27
    iput-object p2, p0, Lh8/y;->c:Lb8/c;

    .line 28
    .line 29
    iput p3, p0, Lh8/y;->d:I

    .line 30
    .line 31
    iput p4, p0, Lh8/y;->e:I

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    shr-int/lit8 p2, p3, 0x1

    .line 35
    .line 36
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput p1, p0, Lh8/y;->q:I

    .line 41
    .line 42
    sget-object p1, Lh8/y;->r:[Lh8/x;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lh8/y;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lh8/y;->g:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lh8/y;->c()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final b()Z
    .registers 4

    .line 1
    iget-boolean v0, p0, Lh8/y;->i:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_d

    .line 5
    .line 6
    iget-object v0, p0, Lh8/y;->f:Le8/f;

    .line 7
    .line 8
    if-eqz v0, :cond_2e

    .line 9
    .line 10
    invoke-interface {v0}, Le8/g;->clear()V

    .line 11
    .line 12
    .line 13
    return v1

    .line 14
    :cond_d
    iget-object v0, p0, Lh8/y;->h:Lp8/b;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_2f

    .line 21
    .line 22
    iget-object v0, p0, Lh8/y;->f:Le8/f;

    .line 23
    .line 24
    if-eqz v0, :cond_1c

    .line 25
    .line 26
    invoke-interface {v0}, Le8/g;->clear()V

    .line 27
    .line 28
    .line 29
    :cond_1c
    iget-object v0, p0, Lh8/y;->h:Lp8/b;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lp8/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sget-object v2, Lp8/d;->a:Lp8/c;

    .line 39
    .line 40
    if-eq v0, v2, :cond_2e

    .line 41
    .line 42
    iget-object v2, p0, Lh8/y;->b:Lx7/d;

    .line 43
    .line 44
    invoke-interface {v2, v0}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    :cond_2e
    return v1

    .line 48
    :cond_2f
    const/4 v0, 0x0

    .line 49
    return v0
.end method

.method public final c()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_9

    .line 6
    .line 7
    invoke-virtual {p0}, Lh8/y;->h()V

    .line 8
    .line 9
    .line 10
    :cond_9
    return-void
.end method

.method public final cancel()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lh8/y;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_4e

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lh8/y;->i:Z

    .line 7
    .line 8
    iget-object v0, p0, Lh8/y;->l:Ln9/b;

    .line 9
    .line 10
    invoke-interface {v0}, Ln9/b;->cancel()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lh8/y;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, [Lh8/x;

    .line 20
    .line 21
    sget-object v2, Lh8/y;->s:[Lh8/x;

    .line 22
    .line 23
    if-eq v1, v2, :cond_41

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, [Lh8/x;

    .line 30
    .line 31
    if-eq v0, v2, :cond_41

    .line 32
    .line 33
    array-length v1, v0

    .line 34
    const/4 v2, 0x0

    .line 35
    :goto_22
    if-ge v2, v1, :cond_2f

    .line 36
    .line 37
    aget-object v3, v0, v2

    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {v3}, Lo8/f;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_22

    .line 48
    :cond_2f
    iget-object v0, p0, Lh8/y;->h:Lp8/b;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lp8/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_41

    .line 58
    .line 59
    sget-object v1, Lp8/d;->a:Lp8/c;

    .line 60
    .line 61
    if-eq v0, v1, :cond_41

    .line 62
    .line 63
    invoke-static {v0}, La/a;->s(Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    :cond_41
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_4e

    .line 71
    .line 72
    iget-object v0, p0, Lh8/y;->f:Le8/f;

    .line 73
    .line 74
    if-eqz v0, :cond_4e

    .line 75
    .line 76
    invoke-interface {v0}, Le8/g;->clear()V

    .line 77
    .line 78
    .line 79
    :cond_4e
    return-void
.end method

.method public final d(J)V
    .registers 4

    .line 1
    invoke-static {p1, p2}, Lo8/f;->c(J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_e

    .line 6
    .line 7
    iget-object v0, p0, Lh8/y;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    .line 9
    invoke-static {v0, p1, p2}, Le3/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lh8/y;->c()V

    .line 13
    .line 14
    .line 15
    :cond_e
    return-void
.end method

.method public final e(Ljava/lang/Object;)V
    .registers 11

    .line 1
    iget-boolean v0, p0, Lh8/y;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    goto/16 :goto_c8

    .line 6
    .line 7
    :cond_6
    :try_start_6
    iget-object v0, p0, Lh8/y;->c:Lb8/c;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lb8/c;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "The mapper returned a null Publisher"

    .line 14
    .line 15
    invoke-static {p1, v0}, Ld8/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast p1, Ln9/a;
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_110

    .line 19
    .line 20
    instance-of v0, p1, Ljava/util/concurrent/Callable;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_d9

    .line 24
    .line 25
    :try_start_18
    check-cast p1, Ljava/util/concurrent/Callable;

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_c9

    .line 31
    const v0, 0x7fffffff

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    if-eqz p1, :cond_af

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const-string v4, "Scalar queue full?!"

    .line 42
    .line 43
    if-nez v3, :cond_91

    .line 44
    .line 45
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_91

    .line 50
    .line 51
    iget-object v3, p0, Lh8/y;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 54
    .line 55
    .line 56
    move-result-wide v5

    .line 57
    iget-object v3, p0, Lh8/y;->f:Le8/f;

    .line 58
    .line 59
    const-wide/16 v7, 0x0

    .line 60
    .line 61
    cmp-long v7, v5, v7

    .line 62
    .line 63
    if-eqz v7, :cond_75

    .line 64
    .line 65
    if-eqz v3, :cond_48

    .line 66
    .line 67
    invoke-interface {v3}, Le8/g;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-eqz v7, :cond_75

    .line 72
    .line 73
    :cond_48
    iget-object v3, p0, Lh8/y;->b:Lx7/d;

    .line 74
    .line 75
    invoke-interface {v3, p1}, Lx7/d;->e(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    const-wide v3, 0x7fffffffffffffffL

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    cmp-long p1, v5, v3

    .line 84
    .line 85
    if-eqz p1, :cond_5b

    .line 86
    .line 87
    iget-object p1, p0, Lh8/y;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 90
    .line 91
    .line 92
    :cond_5b
    iget p1, p0, Lh8/y;->d:I

    .line 93
    .line 94
    if-eq p1, v0, :cond_8a

    .line 95
    .line 96
    iget-boolean p1, p0, Lh8/y;->i:Z

    .line 97
    .line 98
    if-nez p1, :cond_8a

    .line 99
    .line 100
    iget p1, p0, Lh8/y;->p:I

    .line 101
    .line 102
    add-int/2addr p1, v2

    .line 103
    iput p1, p0, Lh8/y;->p:I

    .line 104
    .line 105
    iget v0, p0, Lh8/y;->q:I

    .line 106
    .line 107
    if-ne p1, v0, :cond_8a

    .line 108
    .line 109
    iput v1, p0, Lh8/y;->p:I

    .line 110
    .line 111
    iget-object p1, p0, Lh8/y;->l:Ln9/b;

    .line 112
    .line 113
    int-to-long v0, v0

    .line 114
    invoke-interface {p1, v0, v1}, Ln9/b;->d(J)V

    .line 115
    .line 116
    .line 117
    goto :goto_8a

    .line 118
    :cond_75
    if-nez v3, :cond_7b

    .line 119
    .line 120
    invoke-virtual {p0}, Lh8/y;->i()Le8/f;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    :cond_7b
    invoke-interface {v3, p1}, Le8/g;->offer(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-nez p1, :cond_8a

    .line 129
    .line 130
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 131
    .line 132
    invoke-direct {p1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, p1}, Lh8/y;->onError(Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_8a
    :goto_8a
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-nez p1, :cond_ab

    .line 144
    .line 145
    goto :goto_c8

    .line 146
    :cond_91
    invoke-virtual {p0}, Lh8/y;->i()Le8/f;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-interface {v0, p1}, Le8/g;->offer(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-nez p1, :cond_a4

    .line 155
    .line 156
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 157
    .line 158
    invoke-direct {p1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, p1}, Lh8/y;->onError(Ljava/lang/Throwable;)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :cond_a4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-eqz p1, :cond_ab

    .line 170
    .line 171
    goto :goto_c8

    .line 172
    :cond_ab
    invoke-virtual {p0}, Lh8/y;->h()V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :cond_af
    iget p1, p0, Lh8/y;->d:I

    .line 177
    .line 178
    if-eq p1, v0, :cond_c8

    .line 179
    .line 180
    iget-boolean p1, p0, Lh8/y;->i:Z

    .line 181
    .line 182
    if-nez p1, :cond_c8

    .line 183
    .line 184
    iget p1, p0, Lh8/y;->p:I

    .line 185
    .line 186
    add-int/2addr p1, v2

    .line 187
    iput p1, p0, Lh8/y;->p:I

    .line 188
    .line 189
    iget v0, p0, Lh8/y;->q:I

    .line 190
    .line 191
    if-ne p1, v0, :cond_c8

    .line 192
    .line 193
    iput v1, p0, Lh8/y;->p:I

    .line 194
    .line 195
    iget-object p1, p0, Lh8/y;->l:Ln9/b;

    .line 196
    .line 197
    int-to-long v0, v0

    .line 198
    invoke-interface {p1, v0, v1}, Ln9/b;->d(J)V

    .line 199
    .line 200
    .line 201
    :cond_c8
    :goto_c8
    return-void

    .line 202
    :catchall_c9
    move-exception p1

    .line 203
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lh8/y;->h:Lp8/b;

    .line 207
    .line 208
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    invoke-static {v0, p1}, Lp8/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0}, Lh8/y;->c()V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :cond_d9
    new-instance v0, Lh8/x;

    .line 219
    .line 220
    iget-wide v2, p0, Lh8/y;->m:J

    .line 221
    .line 222
    const-wide/16 v4, 0x1

    .line 223
    .line 224
    add-long/2addr v4, v2

    .line 225
    iput-wide v4, p0, Lh8/y;->m:J

    .line 226
    .line 227
    invoke-direct {v0, p0, v2, v3}, Lh8/x;-><init>(Lh8/y;J)V

    .line 228
    .line 229
    .line 230
    iget-object v2, p0, Lh8/y;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 231
    .line 232
    :goto_e7
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    check-cast v3, [Lh8/x;

    .line 237
    .line 238
    sget-object v4, Lh8/y;->s:[Lh8/x;

    .line 239
    .line 240
    if-ne v3, v4, :cond_f5

    .line 241
    .line 242
    invoke-static {v0}, Lo8/f;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 243
    .line 244
    .line 245
    return-void

    .line 246
    :cond_f5
    array-length v4, v3

    .line 247
    add-int/lit8 v5, v4, 0x1

    .line 248
    .line 249
    new-array v5, v5, [Lh8/x;

    .line 250
    .line 251
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    .line 253
    .line 254
    aput-object v0, v5, v4

    .line 255
    .line 256
    :cond_ff
    invoke-virtual {v2, v3, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v4

    .line 260
    if-eqz v4, :cond_109

    .line 261
    .line 262
    invoke-interface {p1, v0}, Ln9/a;->a(Lx7/d;)V

    .line 263
    .line 264
    .line 265
    return-void

    .line 266
    :cond_109
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    if-eq v4, v3, :cond_ff

    .line 271
    .line 272
    goto :goto_e7

    .line 273
    :catchall_110
    move-exception p1

    .line 274
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 275
    .line 276
    .line 277
    iget-object v0, p0, Lh8/y;->l:Ln9/b;

    .line 278
    .line 279
    invoke-interface {v0}, Ln9/b;->cancel()V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0, p1}, Lh8/y;->onError(Ljava/lang/Throwable;)V

    .line 283
    .line 284
    .line 285
    return-void
.end method

.method public final f(Ln9/b;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lh8/y;->l:Ln9/b;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lo8/f;->e(Ln9/b;Ln9/b;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_27

    .line 8
    .line 9
    iput-object p1, p0, Lh8/y;->l:Ln9/b;

    .line 10
    .line 11
    iget-object v0, p0, Lh8/y;->b:Lx7/d;

    .line 12
    .line 13
    invoke-interface {v0, p0}, Lx7/d;->f(Ln9/b;)V

    .line 14
    .line 15
    .line 16
    iget-boolean v0, p0, Lh8/y;->i:Z

    .line 17
    .line 18
    if-nez v0, :cond_27

    .line 19
    .line 20
    iget v0, p0, Lh8/y;->d:I

    .line 21
    .line 22
    const v1, 0x7fffffff

    .line 23
    .line 24
    .line 25
    if-ne v0, v1, :cond_23

    .line 26
    .line 27
    const-wide v0, 0x7fffffffffffffffL

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v0, v1}, Ln9/b;->d(J)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_23
    int-to-long v0, v0

    .line 37
    invoke-interface {p1, v0, v1}, Ln9/b;->d(J)V

    .line 38
    .line 39
    .line 40
    :cond_27
    return-void
.end method

.method public final h()V
    .registers 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Lh8/y;->b:Lx7/d;

    .line 4
    .line 5
    const/4 v4, 0x1

    .line 6
    :cond_5
    :goto_5
    invoke-virtual {v1}, Lh8/y;->b()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_d

    .line 11
    .line 12
    goto/16 :goto_1ba

    .line 13
    .line 14
    :cond_d
    iget-object v0, v1, Lh8/y;->f:Le8/f;

    .line 15
    .line 16
    iget-object v5, v1, Lh8/y;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 17
    .line 18
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 19
    .line 20
    .line 21
    move-result-wide v5

    .line 22
    const-wide v7, 0x7fffffffffffffffL

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    cmp-long v9, v5, v7

    .line 28
    .line 29
    if-nez v9, :cond_20

    .line 30
    .line 31
    const/4 v9, 0x1

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    const/4 v9, 0x0

    .line 34
    :goto_21
    const-wide/16 v12, 0x1

    .line 35
    .line 36
    const-wide/16 v14, 0x0

    .line 37
    .line 38
    if-eqz v0, :cond_6f

    .line 39
    .line 40
    move-wide/from16 v16, v14

    .line 41
    .line 42
    :goto_29
    move-wide v7, v14

    .line 43
    const/16 v18, 0x0

    .line 44
    .line 45
    :goto_2c
    cmp-long v19, v5, v14

    .line 46
    .line 47
    if-eqz v19, :cond_4d

    .line 48
    .line 49
    const/16 v19, 0x1

    .line 50
    .line 51
    invoke-interface {v0}, Le8/g;->poll()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v1}, Lh8/y;->b()Z

    .line 56
    .line 57
    .line 58
    move-result v18

    .line 59
    if-eqz v18, :cond_3e

    .line 60
    .line 61
    goto/16 :goto_1ba

    .line 62
    .line 63
    :cond_3e
    if-nez v3, :cond_43

    .line 64
    .line 65
    move-object/from16 v18, v3

    .line 66
    .line 67
    goto :goto_4f

    .line 68
    :cond_43
    invoke-interface {v2, v3}, Lx7/d;->e(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    add-long v16, v16, v12

    .line 72
    .line 73
    add-long/2addr v7, v12

    .line 74
    sub-long/2addr v5, v12

    .line 75
    move-object/from16 v18, v3

    .line 76
    .line 77
    goto :goto_2c

    .line 78
    :cond_4d
    const/16 v19, 0x1

    .line 79
    .line 80
    :goto_4f
    cmp-long v3, v7, v14

    .line 81
    .line 82
    if-eqz v3, :cond_62

    .line 83
    .line 84
    if-eqz v9, :cond_5b

    .line 85
    .line 86
    const-wide v5, 0x7fffffffffffffffL

    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    goto :goto_62

    .line 92
    :cond_5b
    iget-object v3, v1, Lh8/y;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 93
    .line 94
    neg-long v5, v7

    .line 95
    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 96
    .line 97
    .line 98
    move-result-wide v5

    .line 99
    :cond_62
    :goto_62
    cmp-long v3, v5, v14

    .line 100
    .line 101
    if-eqz v3, :cond_73

    .line 102
    .line 103
    if-nez v18, :cond_69

    .line 104
    .line 105
    goto :goto_73

    .line 106
    :cond_69
    const-wide v7, 0x7fffffffffffffffL

    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    goto :goto_29

    .line 112
    :cond_6f
    const/16 v19, 0x1

    .line 113
    .line 114
    move-wide/from16 v16, v14

    .line 115
    .line 116
    :cond_73
    :goto_73
    iget-boolean v0, v1, Lh8/y;->g:Z

    .line 117
    .line 118
    iget-object v3, v1, Lh8/y;->f:Le8/f;

    .line 119
    .line 120
    iget-object v7, v1, Lh8/y;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 121
    .line 122
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    check-cast v7, [Lh8/x;

    .line 127
    .line 128
    array-length v8, v7

    .line 129
    if-eqz v0, :cond_a5

    .line 130
    .line 131
    if-eqz v3, :cond_8a

    .line 132
    .line 133
    invoke-interface {v3}, Le8/g;->isEmpty()Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_a5

    .line 138
    .line 139
    :cond_8a
    if-nez v8, :cond_a5

    .line 140
    .line 141
    iget-object v0, v1, Lh8/y;->h:Lp8/b;

    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    invoke-static {v0}, Lp8/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    sget-object v3, Lp8/d;->a:Lp8/c;

    .line 151
    .line 152
    if-eq v0, v3, :cond_1ba

    .line 153
    .line 154
    if-nez v0, :cond_a0

    .line 155
    .line 156
    invoke-interface {v2}, Lx7/d;->a()V

    .line 157
    .line 158
    .line 159
    goto/16 :goto_1ba

    .line 160
    .line 161
    :cond_a0
    invoke-interface {v2, v0}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_1ba

    .line 165
    .line 166
    :cond_a5
    if-eqz v8, :cond_19e

    .line 167
    .line 168
    iget-wide v10, v1, Lh8/y;->n:J

    .line 169
    .line 170
    iget v0, v1, Lh8/y;->o:I

    .line 171
    .line 172
    if-le v8, v0, :cond_b8

    .line 173
    .line 174
    aget-object v3, v7, v0

    .line 175
    .line 176
    move-wide/from16 v20, v12

    .line 177
    .line 178
    iget-wide v12, v3, Lh8/x;->b:J

    .line 179
    .line 180
    cmp-long v3, v12, v10

    .line 181
    .line 182
    if-eqz v3, :cond_d9

    .line 183
    .line 184
    goto :goto_ba

    .line 185
    :cond_b8
    move-wide/from16 v20, v12

    .line 186
    .line 187
    :goto_ba
    if-gt v8, v0, :cond_bd

    .line 188
    .line 189
    const/4 v0, 0x0

    .line 190
    :cond_bd
    const/4 v3, 0x0

    .line 191
    :goto_be
    if-ge v3, v8, :cond_d1

    .line 192
    .line 193
    aget-object v12, v7, v0

    .line 194
    .line 195
    iget-wide v12, v12, Lh8/x;->b:J

    .line 196
    .line 197
    cmp-long v12, v12, v10

    .line 198
    .line 199
    if-nez v12, :cond_c9

    .line 200
    .line 201
    goto :goto_d1

    .line 202
    :cond_c9
    add-int/lit8 v0, v0, 0x1

    .line 203
    .line 204
    if-ne v0, v8, :cond_ce

    .line 205
    .line 206
    const/4 v0, 0x0

    .line 207
    :cond_ce
    add-int/lit8 v3, v3, 0x1

    .line 208
    .line 209
    goto :goto_be

    .line 210
    :cond_d1
    :goto_d1
    iput v0, v1, Lh8/y;->o:I

    .line 211
    .line 212
    aget-object v3, v7, v0

    .line 213
    .line 214
    iget-wide v10, v3, Lh8/x;->b:J

    .line 215
    .line 216
    iput-wide v10, v1, Lh8/y;->n:J

    .line 217
    .line 218
    :cond_d9
    move v3, v0

    .line 219
    const/4 v0, 0x0

    .line 220
    const/4 v10, 0x0

    .line 221
    :goto_dc
    if-ge v10, v8, :cond_18f

    .line 222
    .line 223
    invoke-virtual {v1}, Lh8/y;->b()Z

    .line 224
    .line 225
    .line 226
    move-result v11

    .line 227
    if-eqz v11, :cond_e6

    .line 228
    .line 229
    goto/16 :goto_1ba

    .line 230
    .line 231
    :cond_e6
    aget-object v11, v7, v3

    .line 232
    .line 233
    const/4 v12, 0x0

    .line 234
    :goto_e9
    invoke-virtual {v1}, Lh8/y;->b()Z

    .line 235
    .line 236
    .line 237
    move-result v13

    .line 238
    if-eqz v13, :cond_f1

    .line 239
    .line 240
    goto/16 :goto_1ba

    .line 241
    .line 242
    :cond_f1
    iget-object v13, v11, Lh8/x;->g:Le8/g;

    .line 243
    .line 244
    if-nez v13, :cond_fa

    .line 245
    .line 246
    move-object v13, v7

    .line 247
    move-wide/from16 v22, v14

    .line 248
    .line 249
    goto/16 :goto_161

    .line 250
    .line 251
    :cond_fa
    move-wide/from16 v22, v14

    .line 252
    .line 253
    :goto_fc
    cmp-long v24, v5, v22

    .line 254
    .line 255
    if-eqz v24, :cond_13c

    .line 256
    .line 257
    :try_start_100
    invoke-interface {v13}, Le8/g;->poll()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v12
    :try_end_104
    .catchall {:try_start_100 .. :try_end_104} :catchall_117

    .line 261
    if-nez v12, :cond_107

    .line 262
    .line 263
    goto :goto_13c

    .line 264
    :cond_107
    invoke-interface {v2, v12}, Lx7/d;->e(Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1}, Lh8/y;->b()Z

    .line 268
    .line 269
    .line 270
    move-result v24

    .line 271
    if-eqz v24, :cond_112

    .line 272
    .line 273
    goto/16 :goto_1ba

    .line 274
    .line 275
    :cond_112
    sub-long v5, v5, v20

    .line 276
    .line 277
    add-long v14, v14, v20

    .line 278
    .line 279
    goto :goto_fc

    .line 280
    :catchall_117
    move-exception v0

    .line 281
    invoke-static {v0}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 282
    .line 283
    .line 284
    invoke-static {v11}, Lo8/f;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 285
    .line 286
    .line 287
    iget-object v12, v1, Lh8/y;->h:Lp8/b;

    .line 288
    .line 289
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    invoke-static {v12, v0}, Lp8/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 293
    .line 294
    .line 295
    iget-object v0, v1, Lh8/y;->l:Ln9/b;

    .line 296
    .line 297
    invoke-interface {v0}, Ln9/b;->cancel()V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1}, Lh8/y;->b()Z

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-eqz v0, :cond_133

    .line 305
    .line 306
    goto/16 :goto_1ba

    .line 307
    .line 308
    :cond_133
    invoke-virtual {v1, v11}, Lh8/y;->j(Lh8/x;)V

    .line 309
    .line 310
    .line 311
    add-int/lit8 v10, v10, 0x1

    .line 312
    .line 313
    move-object v13, v7

    .line 314
    move/from16 v0, v19

    .line 315
    .line 316
    goto :goto_188

    .line 317
    :cond_13c
    :goto_13c
    cmp-long v13, v14, v22

    .line 318
    .line 319
    if-eqz v13, :cond_155

    .line 320
    .line 321
    if-nez v9, :cond_14b

    .line 322
    .line 323
    iget-object v5, v1, Lh8/y;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 324
    .line 325
    move-object v13, v7

    .line 326
    neg-long v6, v14

    .line 327
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 328
    .line 329
    .line 330
    move-result-wide v5

    .line 331
    goto :goto_151

    .line 332
    :cond_14b
    move-object v13, v7

    .line 333
    const-wide v5, 0x7fffffffffffffffL

    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    :goto_151
    invoke-virtual {v11, v14, v15}, Lh8/x;->b(J)V

    .line 339
    .line 340
    .line 341
    goto :goto_156

    .line 342
    :cond_155
    move-object v13, v7

    .line 343
    :goto_156
    cmp-long v7, v5, v22

    .line 344
    .line 345
    if-eqz v7, :cond_161

    .line 346
    .line 347
    if-nez v12, :cond_15d

    .line 348
    .line 349
    goto :goto_161

    .line 350
    :cond_15d
    move-object v7, v13

    .line 351
    move-wide/from16 v14, v22

    .line 352
    .line 353
    goto :goto_e9

    .line 354
    :cond_161
    :goto_161
    iget-boolean v7, v11, Lh8/x;->f:Z

    .line 355
    .line 356
    iget-object v12, v11, Lh8/x;->g:Le8/g;

    .line 357
    .line 358
    if-eqz v7, :cond_17d

    .line 359
    .line 360
    if-eqz v12, :cond_16f

    .line 361
    .line 362
    invoke-interface {v12}, Le8/g;->isEmpty()Z

    .line 363
    .line 364
    .line 365
    move-result v7

    .line 366
    if-eqz v7, :cond_17d

    .line 367
    .line 368
    :cond_16f
    invoke-virtual {v1, v11}, Lh8/y;->j(Lh8/x;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v1}, Lh8/y;->b()Z

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    if-eqz v0, :cond_179

    .line 376
    .line 377
    goto :goto_1ba

    .line 378
    :cond_179
    add-long v16, v16, v20

    .line 379
    .line 380
    move/from16 v0, v19

    .line 381
    .line 382
    :cond_17d
    cmp-long v7, v5, v22

    .line 383
    .line 384
    if-nez v7, :cond_183

    .line 385
    .line 386
    :goto_181
    move v10, v0

    .line 387
    goto :goto_193

    .line 388
    :cond_183
    add-int/lit8 v3, v3, 0x1

    .line 389
    .line 390
    if-ne v3, v8, :cond_188

    .line 391
    .line 392
    const/4 v3, 0x0

    .line 393
    :cond_188
    :goto_188
    add-int/lit8 v10, v10, 0x1

    .line 394
    .line 395
    move-object v7, v13

    .line 396
    move-wide/from16 v14, v22

    .line 397
    .line 398
    goto/16 :goto_dc

    .line 399
    .line 400
    :cond_18f
    move-object v13, v7

    .line 401
    move-wide/from16 v22, v14

    .line 402
    .line 403
    goto :goto_181

    .line 404
    :goto_193
    iput v3, v1, Lh8/y;->o:I

    .line 405
    .line 406
    aget-object v0, v13, v3

    .line 407
    .line 408
    iget-wide v5, v0, Lh8/x;->b:J

    .line 409
    .line 410
    iput-wide v5, v1, Lh8/y;->n:J

    .line 411
    .line 412
    :goto_19b
    move-wide/from16 v5, v16

    .line 413
    .line 414
    goto :goto_1a2

    .line 415
    :cond_19e
    move-wide/from16 v22, v14

    .line 416
    .line 417
    const/4 v10, 0x0

    .line 418
    goto :goto_19b

    .line 419
    :goto_1a2
    cmp-long v0, v5, v22

    .line 420
    .line 421
    if-eqz v0, :cond_1af

    .line 422
    .line 423
    iget-boolean v0, v1, Lh8/y;->i:Z

    .line 424
    .line 425
    if-nez v0, :cond_1af

    .line 426
    .line 427
    iget-object v0, v1, Lh8/y;->l:Ln9/b;

    .line 428
    .line 429
    invoke-interface {v0, v5, v6}, Ln9/b;->d(J)V

    .line 430
    .line 431
    .line 432
    :cond_1af
    if-eqz v10, :cond_1b3

    .line 433
    .line 434
    goto/16 :goto_5

    .line 435
    .line 436
    :cond_1b3
    neg-int v0, v4

    .line 437
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 438
    .line 439
    .line 440
    move-result v4

    .line 441
    if-nez v4, :cond_5

    .line 442
    .line 443
    :cond_1ba
    :goto_1ba
    return-void
.end method

.method public final i()Le8/f;
    .registers 3

    .line 1
    iget-object v0, p0, Lh8/y;->f:Le8/f;

    .line 2
    .line 3
    if-nez v0, :cond_1c

    .line 4
    .line 5
    iget v0, p0, Lh8/y;->d:I

    .line 6
    .line 7
    const v1, 0x7fffffff

    .line 8
    .line 9
    .line 10
    if-ne v0, v1, :cond_13

    .line 11
    .line 12
    new-instance v0, Ll8/b;

    .line 13
    .line 14
    iget v1, p0, Lh8/y;->e:I

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ll8/b;-><init>(I)V

    .line 17
    .line 18
    .line 19
    goto :goto_1a

    .line 20
    :cond_13
    new-instance v0, Ll8/a;

    .line 21
    .line 22
    iget v1, p0, Lh8/y;->d:I

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ll8/a;-><init>(I)V

    .line 25
    .line 26
    .line 27
    :goto_1a
    iput-object v0, p0, Lh8/y;->f:Le8/f;

    .line 28
    .line 29
    :cond_1c
    return-object v0
.end method

.method public final j(Lh8/x;)V
    .registers 9

    .line 1
    :goto_0
    iget-object v0, p0, Lh8/y;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, [Lh8/x;

    .line 8
    .line 9
    array-length v2, v1

    .line 10
    if-nez v2, :cond_c

    .line 11
    .line 12
    goto :goto_37

    .line 13
    :cond_c
    const/4 v3, 0x0

    .line 14
    move v4, v3

    .line 15
    :goto_e
    if-ge v4, v2, :cond_18

    .line 16
    .line 17
    aget-object v5, v1, v4

    .line 18
    .line 19
    if-ne v5, p1, :cond_15

    .line 20
    .line 21
    goto :goto_19

    .line 22
    :cond_15
    add-int/lit8 v4, v4, 0x1

    .line 23
    .line 24
    goto :goto_e

    .line 25
    :cond_18
    const/4 v4, -0x1

    .line 26
    :goto_19
    if-gez v4, :cond_1c

    .line 27
    .line 28
    goto :goto_37

    .line 29
    :cond_1c
    const/4 v5, 0x1

    .line 30
    if-ne v2, v5, :cond_22

    .line 31
    .line 32
    sget-object v2, Lh8/y;->r:[Lh8/x;

    .line 33
    .line 34
    goto :goto_31

    .line 35
    :cond_22
    add-int/lit8 v6, v2, -0x1

    .line 36
    .line 37
    new-array v6, v6, [Lh8/x;

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
    :cond_31
    :goto_31
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_38

    .line 55
    .line 56
    :goto_37
    return-void

    .line 57
    :cond_38
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-eq v3, v1, :cond_31

    .line 62
    .line 63
    goto :goto_0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lh8/y;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    invoke-static {p1}, La/a;->s(Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_8
    iget-object v0, p0, Lh8/y;->h:Lp8/b;

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
    if-eqz v0, :cond_1a

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lh8/y;->g:Z

    .line 22
    .line 23
    invoke-virtual {p0}, Lh8/y;->c()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1a
    invoke-static {p1}, La/a;->s(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
