.class public final Lk/h;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lk/b;


# static fields
.field public static final k:Landroid/graphics/Bitmap$Config;


# instance fields
.field public final b:Lk/l;

.field public final c:Ljava/util/Set;

.field public final d:Lp2/e;

.field public final e:J

.field public f:J

.field public g:I

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    sput-object v0, Lk/h;->k:Landroid/graphics/Bitmap$Config;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(J)V
    .registers 7

    .line 1
    new-instance v0, Lk/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lk/l;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    .line 25
    const/16 v3, 0x1a

    .line 26
    .line 27
    if-lt v2, v3, :cond_23

    .line 28
    .line 29
    invoke-static {}, Lc5/h;->e()Landroid/graphics/Bitmap$Config;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    :cond_23
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-wide p1, p0, Lk/h;->e:J

    .line 44
    .line 45
    iput-object v0, p0, Lk/h;->b:Lk/l;

    .line 46
    .line 47
    iput-object v1, p0, Lk/h;->c:Ljava/util/Set;

    .line 48
    .line 49
    new-instance p1, Lp2/e;

    .line 50
    .line 51
    const/16 p2, 0xd

    .line 52
    .line 53
    invoke-direct {p1, p2}, Lp2/e;-><init>(I)V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lk/h;->d:Lp2/e;

    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Hits="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lk/h;->g:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", misses="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lk/h;->h:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", puts="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lk/h;->i:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", evictions="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lk/h;->j:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", currentSize="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-wide v1, p0, Lk/h;->f:J

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", maxSize="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-wide v1, p0, Lk/h;->e:J

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, "\nStrategy="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lk/h;->b:Lk/l;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v1, "LruBitmapPool"

    .line 78
    .line 79
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 5

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk/h;->d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_10

    .line 6
    .line 7
    if-eqz p3, :cond_9

    .line 8
    .line 9
    goto :goto_b

    .line 10
    :cond_9
    sget-object p3, Lk/h;->k:Landroid/graphics/Bitmap$Config;

    .line 11
    .line 12
    :goto_b
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :cond_10
    return-object v0
.end method

.method public final declared-synchronized c(Landroid/graphics/Bitmap;)V
    .registers 10

    .line 1
    const-string v0, "Reject bitmap from pool, bitmap: "

    .line 2
    .line 3
    const-string v1, "Put bitmap in pool="

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    if-eqz p1, :cond_dc

    .line 7
    .line 8
    :try_start_7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_d4

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x2

    .line 19
    if-eqz v2, :cond_87

    .line 20
    .line 21
    iget-object v2, p0, Lk/h;->b:Lk/l;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lc0/p;->c(Landroid/graphics/Bitmap;)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    int-to-long v4, v2

    .line 31
    iget-wide v6, p0, Lk/h;->e:J

    .line 32
    .line 33
    cmp-long v2, v4, v6

    .line 34
    .line 35
    if-gtz v2, :cond_87

    .line 36
    .line 37
    iget-object v2, p0, Lk/h;->c:Ljava/util/Set;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_31

    .line 48
    .line 49
    goto :goto_87

    .line 50
    :cond_31
    iget-object v0, p0, Lk/h;->b:Lk/l;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Lc0/p;->c(Landroid/graphics/Bitmap;)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iget-object v2, p0, Lk/h;->b:Lk/l;

    .line 60
    .line 61
    invoke-virtual {v2, p1}, Lk/l;->e(Landroid/graphics/Bitmap;)V

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lk/h;->d:Lp2/e;

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    iget v2, p0, Lk/h;->i:I

    .line 70
    .line 71
    add-int/lit8 v2, v2, 0x1

    .line 72
    .line 73
    iput v2, p0, Lk/h;->i:I

    .line 74
    .line 75
    iget-wide v4, p0, Lk/h;->f:J

    .line 76
    .line 77
    int-to-long v6, v0

    .line 78
    add-long/2addr v4, v6

    .line 79
    iput-wide v4, p0, Lk/h;->f:J

    .line 80
    .line 81
    const-string v0, "LruBitmapPool"

    .line 82
    .line 83
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_75

    .line 88
    .line 89
    const-string v0, "LruBitmapPool"

    .line 90
    .line 91
    iget-object v2, p0, Lk/h;->b:Lk/l;

    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-static {p1}, Lc0/p;->c(Landroid/graphics/Bitmap;)I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {v2, p1}, Lk/l;->c(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    goto :goto_75

    .line 116
    :catchall_73
    move-exception p1

    .line 117
    goto :goto_e4

    .line 118
    :cond_75
    :goto_75
    const-string p1, "LruBitmapPool"

    .line 119
    .line 120
    invoke-static {p1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_80

    .line 125
    .line 126
    invoke-virtual {p0}, Lk/h;->a()V

    .line 127
    .line 128
    .line 129
    :cond_80
    iget-wide v0, p0, Lk/h;->e:J

    .line 130
    .line 131
    invoke-virtual {p0, v0, v1}, Lk/h;->e(J)V
    :try_end_85
    .catchall {:try_start_7 .. :try_end_85} :catchall_73

    .line 132
    .line 133
    .line 134
    monitor-exit p0

    .line 135
    return-void

    .line 136
    :cond_87
    :goto_87
    :try_start_87
    const-string v1, "LruBitmapPool"

    .line 137
    .line 138
    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_cf

    .line 143
    .line 144
    const-string v1, "LruBitmapPool"

    .line 145
    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lk/h;->b:Lk/l;

    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    invoke-static {p1}, Lc0/p;->c(Landroid/graphics/Bitmap;)I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-static {v0, v3}, Lk/l;->c(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v0, ", is mutable: "

    .line 172
    .line 173
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v0, ", is allowed config: "

    .line 184
    .line 185
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lk/h;->c:Ljava/util/Set;

    .line 189
    .line 190
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    :cond_cf
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_d2
    .catchall {:try_start_87 .. :try_end_d2} :catchall_73

    .line 209
    .line 210
    .line 211
    monitor-exit p0

    .line 212
    return-void

    .line 213
    :cond_d4
    :try_start_d4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 214
    .line 215
    const-string v0, "Cannot pool recycled bitmap"

    .line 216
    .line 217
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw p1

    .line 221
    :cond_dc
    new-instance p1, Ljava/lang/NullPointerException;

    .line 222
    .line 223
    const-string v0, "Bitmap must not be null"

    .line 224
    .line 225
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw p1

    .line 229
    :goto_e4
    monitor-exit p0
    :try_end_e5
    .catchall {:try_start_d4 .. :try_end_e5} :catchall_73

    .line 230
    throw p1
.end method

.method public final declared-synchronized d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 12

    .line 1
    const-string v0, "Get bitmap="

    .line 2
    .line 3
    const-string v1, "Missing bitmap="

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v3, 0x1a

    .line 9
    .line 10
    if-ge v2, v3, :cond_c

    .line 11
    .line 12
    goto :goto_12

    .line 13
    :cond_c
    invoke-static {}, Lc5/h;->e()Landroid/graphics/Bitmap$Config;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eq p3, v2, :cond_99

    .line 18
    .line 19
    :goto_12
    iget-object v2, p0, Lk/h;->b:Lk/l;

    .line 20
    .line 21
    if-eqz p3, :cond_18

    .line 22
    .line 23
    move-object v3, p3

    .line 24
    goto :goto_1a

    .line 25
    :cond_18
    sget-object v3, Lk/h;->k:Landroid/graphics/Bitmap$Config;

    .line 26
    .line 27
    :goto_1a
    invoke-virtual {v2, p1, p2, v3}, Lk/l;->b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x1

    .line 32
    if-nez v2, :cond_4c

    .line 33
    .line 34
    const-string v4, "LruBitmapPool"

    .line 35
    .line 36
    const/4 v5, 0x3

    .line 37
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_46

    .line 42
    .line 43
    const-string v4, "LruBitmapPool"

    .line 44
    .line 45
    iget-object v5, p0, Lk/h;->b:Lk/l;

    .line 46
    .line 47
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    mul-int v5, p1, p2

    .line 51
    .line 52
    invoke-static {p3}, Lc0/p;->d(Landroid/graphics/Bitmap$Config;)I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    mul-int/2addr v6, v5

    .line 57
    invoke-static {v6, p3}, Lk/l;->c(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    goto :goto_46

    .line 69
    :catchall_44
    move-exception p1

    .line 70
    goto :goto_b2

    .line 71
    :cond_46
    :goto_46
    iget v1, p0, Lk/h;->h:I

    .line 72
    .line 73
    add-int/2addr v1, v3

    .line 74
    iput v1, p0, Lk/h;->h:I

    .line 75
    .line 76
    goto :goto_6b

    .line 77
    :cond_4c
    iget v1, p0, Lk/h;->g:I

    .line 78
    .line 79
    add-int/2addr v1, v3

    .line 80
    iput v1, p0, Lk/h;->g:I

    .line 81
    .line 82
    iget-wide v4, p0, Lk/h;->f:J

    .line 83
    .line 84
    iget-object v1, p0, Lk/h;->b:Lk/l;

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    invoke-static {v2}, Lc0/p;->c(Landroid/graphics/Bitmap;)I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    int-to-long v6, v1

    .line 94
    sub-long/2addr v4, v6

    .line 95
    iput-wide v4, p0, Lk/h;->f:J

    .line 96
    .line 97
    iget-object v1, p0, Lk/h;->d:Lp2/e;

    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 106
    .line 107
    .line 108
    :goto_6b
    const-string v1, "LruBitmapPool"

    .line 109
    .line 110
    const/4 v3, 0x2

    .line 111
    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_8c

    .line 116
    .line 117
    const-string v1, "LruBitmapPool"

    .line 118
    .line 119
    iget-object v4, p0, Lk/h;->b:Lk/l;

    .line 120
    .line 121
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    mul-int/2addr p1, p2

    .line 125
    invoke-static {p3}, Lc0/p;->d(Landroid/graphics/Bitmap$Config;)I

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    mul-int/2addr p2, p1

    .line 130
    invoke-static {p2, p3}, Lk/l;->c(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    :cond_8c
    const-string p1, "LruBitmapPool"

    .line 142
    .line 143
    invoke-static {p1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_97

    .line 148
    .line 149
    invoke-virtual {p0}, Lk/h;->a()V
    :try_end_97
    .catchall {:try_start_5 .. :try_end_97} :catchall_44

    .line 150
    .line 151
    .line 152
    :cond_97
    monitor-exit p0

    .line 153
    return-object v2

    .line 154
    :cond_99
    :try_start_99
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 155
    .line 156
    new-instance p2, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string v0, "Cannot create a mutable Bitmap with config: "

    .line 159
    .line 160
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string p3, ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions"

    .line 167
    .line 168
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    throw p1

    .line 179
    :goto_b2
    monitor-exit p0
    :try_end_b3
    .catchall {:try_start_99 .. :try_end_b3} :catchall_44

    .line 180
    throw p1
.end method

.method public final declared-synchronized e(J)V
    .registers 9

    .line 1
    monitor-enter p0

    .line 2
    :goto_1
    :try_start_1
    iget-wide v0, p0, Lk/h;->f:J

    .line 3
    .line 4
    cmp-long v0, v0, p1

    .line 5
    .line 6
    if-lez v0, :cond_97

    .line 7
    .line 8
    iget-object v0, p0, Lk/h;->b:Lk/l;

    .line 9
    .line 10
    iget-object v1, v0, Lk/l;->b:Landroid/support/v4/media/h;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/support/v4/media/h;->s()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/graphics/Bitmap;

    .line 17
    .line 18
    if-eqz v1, :cond_1e

    .line 19
    .line 20
    invoke-static {v1}, Lc0/p;->c(Landroid/graphics/Bitmap;)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2, v1}, Lk/l;->a(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    .line 29
    .line 30
    .line 31
    :cond_1e
    if-nez v1, :cond_3c

    .line 32
    .line 33
    const-string p1, "LruBitmapPool"

    .line 34
    .line 35
    const/4 p2, 0x5

    .line 36
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_36

    .line 41
    .line 42
    const-string p1, "LruBitmapPool"

    .line 43
    .line 44
    const-string p2, "Size mismatch, resetting"

    .line 45
    .line 46
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lk/h;->a()V

    .line 50
    .line 51
    .line 52
    goto :goto_36

    .line 53
    :catchall_34
    move-exception p1

    .line 54
    goto :goto_99

    .line 55
    :cond_36
    :goto_36
    const-wide/16 p1, 0x0

    .line 56
    .line 57
    iput-wide p1, p0, Lk/h;->f:J
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_34

    .line 58
    .line 59
    monitor-exit p0

    .line 60
    return-void

    .line 61
    :cond_3c
    :try_start_3c
    iget-object v0, p0, Lk/h;->d:Lp2/e;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    iget-wide v2, p0, Lk/h;->f:J

    .line 67
    .line 68
    iget-object v0, p0, Lk/h;->b:Lk/l;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-static {v1}, Lc0/p;->c(Landroid/graphics/Bitmap;)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    int-to-long v4, v0

    .line 78
    sub-long/2addr v2, v4

    .line 79
    iput-wide v2, p0, Lk/h;->f:J

    .line 80
    .line 81
    iget v0, p0, Lk/h;->j:I

    .line 82
    .line 83
    add-int/lit8 v0, v0, 0x1

    .line 84
    .line 85
    iput v0, p0, Lk/h;->j:I

    .line 86
    .line 87
    const-string v0, "LruBitmapPool"

    .line 88
    .line 89
    const/4 v2, 0x3

    .line 90
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_86

    .line 95
    .line 96
    const-string v0, "LruBitmapPool"

    .line 97
    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v3, "Evicting bitmap="

    .line 104
    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v3, p0, Lk/h;->b:Lk/l;

    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-static {v1}, Lc0/p;->c(Landroid/graphics/Bitmap;)I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-static {v3, v4}, Lk/l;->c(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    :cond_86
    const-string v0, "LruBitmapPool"

    .line 136
    .line 137
    const/4 v2, 0x2

    .line 138
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_92

    .line 143
    .line 144
    invoke-virtual {p0}, Lk/h;->a()V

    .line 145
    .line 146
    .line 147
    :cond_92
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_95
    .catchall {:try_start_3c .. :try_end_95} :catchall_34

    .line 148
    .line 149
    .line 150
    goto/16 :goto_1

    .line 151
    .line 152
    :cond_97
    monitor-exit p0

    .line 153
    return-void

    .line 154
    :goto_99
    :try_start_99
    monitor-exit p0
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_34

    .line 155
    throw p1
.end method

.method public final j(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 5

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk/h;->d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_b
    if-eqz p3, :cond_e

    .line 13
    .line 14
    goto :goto_10

    .line 15
    :cond_e
    sget-object p3, Lk/h;->k:Landroid/graphics/Bitmap$Config;

    .line 16
    .line 17
    :goto_10
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public final l(I)V
    .registers 6

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "LruBitmapPool"

    .line 3
    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1a

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "trimMemory, level="

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_1a
    const/16 v0, 0x28

    .line 28
    .line 29
    if-ge p1, v0, :cond_34

    .line 30
    .line 31
    const/16 v0, 0x14

    .line 32
    .line 33
    if-lt p1, v0, :cond_23

    .line 34
    .line 35
    goto :goto_34

    .line 36
    :cond_23
    if-ge p1, v0, :cond_2b

    .line 37
    .line 38
    const/16 v0, 0xf

    .line 39
    .line 40
    if-ne p1, v0, :cond_2a

    .line 41
    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    return-void

    .line 44
    :cond_2b
    :goto_2b
    iget-wide v0, p0, Lk/h;->e:J

    .line 45
    .line 46
    const-wide/16 v2, 0x2

    .line 47
    .line 48
    div-long/2addr v0, v2

    .line 49
    invoke-virtual {p0, v0, v1}, Lk/h;->e(J)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_34
    :goto_34
    invoke-virtual {p0}, Lk/h;->n()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final n()V
    .registers 3

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "LruBitmapPool"

    .line 3
    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_e

    .line 9
    .line 10
    const-string v0, "clearMemory"

    .line 11
    .line 12
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    :cond_e
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    invoke-virtual {p0, v0, v1}, Lk/h;->e(J)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
