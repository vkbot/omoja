.class public final Lq/f0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lh/j;


# static fields
.field public static final d:Lh/g;

.field public static final e:Lh/g;

.field public static final f:Lc5/e;

.field public static final g:Ljava/util/List;


# instance fields
.field public final a:Lq/e0;

.field public final b:Lk/b;

.field public final c:Lc5/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lq/k;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, v2}, Lq/k;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lh/g;

    .line 14
    .line 15
    const-string v3, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame"

    .line 16
    .line 17
    invoke-direct {v2, v3, v0, v1}, Lh/g;-><init>(Ljava/lang/String;Ljava/lang/Object;Lh/f;)V

    .line 18
    .line 19
    .line 20
    sput-object v2, Lq/f0;->d:Lh/g;

    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Lq/k;

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    invoke-direct {v1, v2}, Lq/k;-><init>(I)V

    .line 31
    .line 32
    .line 33
    new-instance v2, Lh/g;

    .line 34
    .line 35
    const-string v3, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption"

    .line 36
    .line 37
    invoke-direct {v2, v3, v0, v1}, Lh/g;-><init>(Ljava/lang/String;Ljava/lang/Object;Lh/f;)V

    .line 38
    .line 39
    .line 40
    sput-object v2, Lq/f0;->e:Lh/g;

    .line 41
    .line 42
    new-instance v0, Lc5/e;

    .line 43
    .line 44
    const/16 v1, 0x11

    .line 45
    .line 46
    invoke-direct {v0, v1}, Lc5/e;-><init>(I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lq/f0;->f:Lc5/e;

    .line 50
    .line 51
    const-string v0, "TP1A"

    .line 52
    .line 53
    const-string v1, "TD1A.220804.031"

    .line 54
    .line 55
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    sput-object v0, Lq/f0;->g:Ljava/util/List;

    .line 68
    .line 69
    return-void
.end method

.method public constructor <init>(Lk/b;Lq/e0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq/f0;->b:Lk/b;

    .line 5
    .line 6
    iput-object p2, p0, Lq/f0;->a:Lq/e0;

    .line 7
    .line 8
    sget-object p1, Lq/f0;->f:Lc5/e;

    .line 9
    .line 10
    iput-object p1, p0, Lq/f0;->c:Lc5/e;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILh/h;)Lj/d0;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p4

    .line 4
    .line 5
    sget-object v10, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 6
    .line 7
    sget-object v2, Lq/f0;->d:Lh/g;

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Lh/h;->c(Lh/g;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Ljava/lang/Long;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 16
    .line 17
    .line 18
    move-result-wide v4

    .line 19
    const-wide/16 v2, 0x0

    .line 20
    .line 21
    cmp-long v2, v4, v2

    .line 22
    .line 23
    if-gez v2, :cond_1

    .line 24
    .line 25
    const-wide/16 v2, -0x1

    .line 26
    .line 27
    cmp-long v2, v4, v2

    .line 28
    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string v0, "Requested frame must be non-negative, or DEFAULT_FRAME, given: "

    .line 33
    .line 34
    invoke-static {v4, v5, v0}, Lai/onnxruntime/a;->h(JLjava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    return-object v0

    .line 43
    :cond_1
    :goto_0
    sget-object v2, Lq/f0;->e:Lh/g;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Lh/h;->c(Lh/g;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Ljava/lang/Integer;

    .line 50
    .line 51
    if-nez v2, :cond_2

    .line 52
    .line 53
    const/4 v2, 0x2

    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    :cond_2
    sget-object v3, Lq/o;->g:Lh/g;

    .line 59
    .line 60
    invoke-virtual {v0, v3}, Lh/h;->c(Lh/g;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lq/o;

    .line 65
    .line 66
    if-nez v0, :cond_3

    .line 67
    .line 68
    sget-object v0, Lq/o;->f:Lq/o;

    .line 69
    .line 70
    :cond_3
    move-object v9, v0

    .line 71
    iget-object v0, v1, Lq/f0;->c:Lc5/e;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    .line 77
    .line 78
    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 79
    .line 80
    .line 81
    const/4 v11, 0x1

    .line 82
    const-wide/16 v12, 0x1

    .line 83
    .line 84
    const/4 v14, 0x0

    .line 85
    const/16 v15, 0x1d

    .line 86
    .line 87
    :try_start_0
    iget-object v0, v1, Lq/f0;->a:Lq/e0;

    .line 88
    .line 89
    move-object/from16 v6, p1

    .line 90
    .line 91
    invoke-interface {v0, v3, v6}, Lq/e0;->h(Landroid/media/MediaMetadataRetriever;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    move/from16 v7, p2

    .line 99
    .line 100
    move/from16 v8, p3

    .line 101
    .line 102
    move-object v2, v6

    .line 103
    move v6, v0

    .line 104
    invoke-virtual/range {v1 .. v9}, Lq/f0;->c(Ljava/lang/Object;Landroid/media/MediaMetadataRetriever;JIIILq/o;)Landroid/graphics/Bitmap;

    .line 105
    .line 106
    .line 107
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 109
    .line 110
    if-lt v2, v15, :cond_9

    .line 111
    .line 112
    instance-of v2, v3, Ljava/lang/AutoCloseable;

    .line 113
    .line 114
    if-eqz v2, :cond_4

    .line 115
    .line 116
    check-cast v3, Ljava/lang/AutoCloseable;

    .line 117
    .line 118
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_4
    instance-of v2, v3, Ljava/util/concurrent/ExecutorService;

    .line 123
    .line 124
    if-eqz v2, :cond_8

    .line 125
    .line 126
    check-cast v3, Ljava/util/concurrent/ExecutorService;

    .line 127
    .line 128
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    if-ne v3, v2, :cond_5

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_5
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-nez v2, :cond_a

    .line 140
    .line 141
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 142
    .line 143
    .line 144
    :cond_6
    :goto_1
    if-nez v2, :cond_7

    .line 145
    .line 146
    :try_start_1
    invoke-interface {v3, v12, v13, v10}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 147
    .line 148
    .line 149
    move-result v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 150
    goto :goto_1

    .line 151
    :catch_0
    if-nez v14, :cond_6

    .line 152
    .line 153
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move v14, v11

    .line 157
    goto :goto_1

    .line 158
    :cond_7
    if-eqz v14, :cond_a

    .line 159
    .line 160
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_8
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_9
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 173
    .line 174
    .line 175
    :cond_a
    :goto_2
    iget-object v2, v1, Lq/f0;->b:Lk/b;

    .line 176
    .line 177
    invoke-static {v0, v2}, Lq/e;->c(Landroid/graphics/Bitmap;Lk/b;)Lq/e;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    return-object v0

    .line 182
    :catchall_0
    move-exception v0

    .line 183
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 184
    .line 185
    if-lt v2, v15, :cond_f

    .line 186
    .line 187
    instance-of v2, v3, Ljava/lang/AutoCloseable;

    .line 188
    .line 189
    if-nez v2, :cond_e

    .line 190
    .line 191
    instance-of v2, v3, Ljava/util/concurrent/ExecutorService;

    .line 192
    .line 193
    if-eqz v2, :cond_d

    .line 194
    .line 195
    check-cast v3, Ljava/util/concurrent/ExecutorService;

    .line 196
    .line 197
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    if-eq v3, v2, :cond_10

    .line 202
    .line 203
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    if-nez v2, :cond_10

    .line 208
    .line 209
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 210
    .line 211
    .line 212
    :cond_b
    :goto_3
    if-nez v2, :cond_c

    .line 213
    .line 214
    :try_start_2
    invoke-interface {v3, v12, v13, v10}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 215
    .line 216
    .line 217
    move-result v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 218
    goto :goto_3

    .line 219
    :catch_1
    if-nez v14, :cond_b

    .line 220
    .line 221
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 222
    .line 223
    .line 224
    move v14, v11

    .line 225
    goto :goto_3

    .line 226
    :cond_c
    if-eqz v14, :cond_10

    .line 227
    .line 228
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 233
    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_d
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 237
    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_e
    check-cast v3, Ljava/lang/AutoCloseable;

    .line 241
    .line 242
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    .line 243
    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_f
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 247
    .line 248
    .line 249
    :cond_10
    :goto_4
    throw v0
.end method

.method public final b(Ljava/lang/Object;Lh/h;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public final c(Ljava/lang/Object;Landroid/media/MediaMetadataRetriever;JIIILq/o;)Landroid/graphics/Bitmap;
    .locals 13

    .line 1
    move-object v1, p2

    .line 2
    move/from16 v2, p6

    .line 3
    .line 4
    move/from16 v3, p7

    .line 5
    .line 6
    move-object/from16 v4, p8

    .line 7
    .line 8
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v7, 0x3

    .line 11
    const/4 v8, 0x0

    .line 12
    const-string v9, "VideoDecoder"

    .line 13
    .line 14
    if-eqz v0, :cond_5

    .line 15
    .line 16
    const-string v5, ".+_cheets|cheets_.+"

    .line 17
    .line 18
    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_5

    .line 23
    .line 24
    const/16 v0, 0xc

    .line 25
    .line 26
    :try_start_0
    invoke-virtual {p2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v5, "video/webm"

    .line 31
    .line 32
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    goto :goto_5

    .line 39
    :cond_0
    new-instance v5, Landroid/media/MediaExtractor;

    .line 40
    .line 41
    invoke-direct {v5}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    .line 43
    .line 44
    :try_start_1
    iget-object v0, p0, Lq/f0;->a:Lq/e0;

    .line 45
    .line 46
    invoke-interface {v0, v5, p1}, Lq/e0;->e(Landroid/media/MediaExtractor;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getTrackCount()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/4 v6, 0x0

    .line 54
    :goto_0
    if-ge v6, v0, :cond_2

    .line 55
    .line 56
    invoke-virtual {v5, v6}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    .line 57
    .line 58
    .line 59
    move-result-object v10

    .line 60
    const-string v11, "mime"

    .line 61
    .line 62
    invoke-virtual {v10, v11}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    const-string v11, "video/x-vnd.on2.vp8"

    .line 67
    .line 68
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    if-nez v10, :cond_1

    .line 73
    .line 74
    add-int/lit8 v6, v6, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->release()V

    .line 78
    .line 79
    .line 80
    const-string v0, "Cannot decode VP8 video on CrOS."

    .line 81
    .line 82
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const/4 v0, 0x0

    .line 86
    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    goto :goto_2

    .line 89
    :cond_2
    :goto_1
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->release()V

    .line 90
    .line 91
    .line 92
    goto :goto_5

    .line 93
    :catchall_1
    move-exception v0

    .line 94
    move-object v5, v8

    .line 95
    :goto_2
    :try_start_2
    invoke-static {v9, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-eqz v6, :cond_3

    .line 100
    .line 101
    const-string v6, "Exception trying to extract track info for a webm video on CrOS."

    .line 102
    .line 103
    invoke-static {v9, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 104
    .line 105
    .line 106
    goto :goto_3

    .line 107
    :catchall_2
    move-exception v0

    .line 108
    goto :goto_4

    .line 109
    :cond_3
    :goto_3
    if-eqz v5, :cond_5

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :goto_4
    if-eqz v5, :cond_4

    .line 113
    .line 114
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->release()V

    .line 115
    .line 116
    .line 117
    :cond_4
    throw v0

    .line 118
    :cond_5
    :goto_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 119
    .line 120
    const/16 v5, 0x1b

    .line 121
    .line 122
    const/16 v10, 0x18

    .line 123
    .line 124
    if-lt v0, v5, :cond_8

    .line 125
    .line 126
    const/high16 v0, -0x80000000

    .line 127
    .line 128
    if-eq v2, v0, :cond_8

    .line 129
    .line 130
    if-eq v3, v0, :cond_8

    .line 131
    .line 132
    sget-object v0, Lq/o;->e:Lq/o;

    .line 133
    .line 134
    if-eq v4, v0, :cond_8

    .line 135
    .line 136
    const/16 v0, 0x12

    .line 137
    .line 138
    :try_start_3
    invoke-virtual {p2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    const/16 v5, 0x13

    .line 147
    .line 148
    invoke-virtual {p2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    invoke-virtual {p2, v10}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    const/16 v11, 0x5a

    .line 165
    .line 166
    if-eq v6, v11, :cond_6

    .line 167
    .line 168
    const/16 v11, 0x10e

    .line 169
    .line 170
    if-ne v6, v11, :cond_7

    .line 171
    .line 172
    :cond_6
    move v12, v5

    .line 173
    move v5, v0

    .line 174
    move v0, v12

    .line 175
    :cond_7
    invoke-virtual {v4, v0, v5, v2, v3}, Lq/o;->b(IIII)F

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    int-to-float v0, v0

    .line 180
    mul-float/2addr v0, v2

    .line 181
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    int-to-float v3, v5

    .line 186
    mul-float/2addr v2, v3

    .line 187
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    move-wide/from16 v2, p3

    .line 192
    .line 193
    move/from16 v4, p5

    .line 194
    .line 195
    move v5, v0

    .line 196
    invoke-static/range {v1 .. v6}, Lq/c0;->a(Landroid/media/MediaMetadataRetriever;JIII)Landroid/graphics/Bitmap;

    .line 197
    .line 198
    .line 199
    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 200
    goto :goto_6

    .line 201
    :catchall_3
    move-exception v0

    .line 202
    invoke-static {v9, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-eqz v2, :cond_8

    .line 207
    .line 208
    const-string v2, "Exception trying to decode a scaled frame on oreo+, falling back to a fullsize frame"

    .line 209
    .line 210
    invoke-static {v9, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    .line 212
    .line 213
    :cond_8
    :goto_6
    if-nez v8, :cond_9

    .line 214
    .line 215
    invoke-virtual/range {p2 .. p5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    .line 216
    .line 217
    .line 218
    move-result-object v8

    .line 219
    :cond_9
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 220
    .line 221
    const-string v2, "Pixel"

    .line 222
    .line 223
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    const/16 v2, 0x21

    .line 228
    .line 229
    if-eqz v0, :cond_b

    .line 230
    .line 231
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 232
    .line 233
    if-ne v0, v2, :cond_b

    .line 234
    .line 235
    sget-object v0, Lq/f0;->g:Ljava/util/List;

    .line 236
    .line 237
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    if-eqz v2, :cond_e

    .line 246
    .line 247
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    check-cast v2, Ljava/lang/String;

    .line 252
    .line 253
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    if-eqz v2, :cond_a

    .line 260
    .line 261
    goto :goto_7

    .line 262
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 263
    .line 264
    const/16 v3, 0x1e

    .line 265
    .line 266
    if-lt v0, v3, :cond_e

    .line 267
    .line 268
    if-ge v0, v2, :cond_e

    .line 269
    .line 270
    :goto_7
    const/16 v0, 0x24

    .line 271
    .line 272
    :try_start_4
    invoke-virtual {p2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    const/16 v2, 0x23

    .line 277
    .line 278
    invoke-virtual {p2, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    const/4 v3, 0x7

    .line 291
    const/4 v4, 0x6

    .line 292
    if-eq v0, v3, :cond_c

    .line 293
    .line 294
    if-ne v0, v4, :cond_e

    .line 295
    .line 296
    :cond_c
    if-ne v2, v4, :cond_e

    .line 297
    .line 298
    invoke-virtual {p2, v10}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 307
    .line 308
    .line 309
    move-result v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    .line 310
    const/16 v1, 0xb4

    .line 311
    .line 312
    if-ne v0, v1, :cond_e

    .line 313
    .line 314
    invoke-static {v9, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-eqz v0, :cond_d

    .line 319
    .line 320
    const-string v0, "Applying HDR 180 deg thumbnail correction"

    .line 321
    .line 322
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .line 324
    .line 325
    :cond_d
    new-instance v0, Landroid/graphics/Matrix;

    .line 326
    .line 327
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    int-to-float v1, v1

    .line 335
    const/high16 v2, 0x40000000    # 2.0f

    .line 336
    .line 337
    div-float/2addr v1, v2

    .line 338
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    .line 339
    .line 340
    .line 341
    move-result v3

    .line 342
    int-to-float v3, v3

    .line 343
    div-float/2addr v3, v2

    .line 344
    const/high16 v2, 0x43340000    # 180.0f

    .line 345
    .line 346
    invoke-virtual {v0, v2, v1, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 347
    .line 348
    .line 349
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    const/4 v3, 0x1

    .line 358
    const/4 v4, 0x0

    .line 359
    const/4 v5, 0x0

    .line 360
    move-object/from16 p6, v0

    .line 361
    .line 362
    move/from16 p4, v1

    .line 363
    .line 364
    move/from16 p5, v2

    .line 365
    .line 366
    move/from16 p7, v3

    .line 367
    .line 368
    move p2, v4

    .line 369
    move/from16 p3, v5

    .line 370
    .line 371
    move-object p1, v8

    .line 372
    invoke-static/range {p1 .. p7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 373
    .line 374
    .line 375
    move-result-object v8

    .line 376
    goto :goto_8

    .line 377
    :catch_0
    invoke-static {v9, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    if-eqz v0, :cond_e

    .line 382
    .line 383
    const-string v0, "Exception trying to extract HDR transfer function or rotation"

    .line 384
    .line 385
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .line 387
    .line 388
    :cond_e
    :goto_8
    if-eqz v8, :cond_f

    .line 389
    .line 390
    return-object v8

    .line 391
    :cond_f
    new-instance v0, La8/a;

    .line 392
    .line 393
    const-string v1, "MediaMetadataRetriever failed to retrieve a frame without throwing, check the adb logs for .*MetadataRetriever.* prior to this exception for details"

    .line 394
    .line 395
    const/4 v2, 0x3

    .line 396
    invoke-direct {v0, v1, v2}, La8/a;-><init>(Ljava/lang/String;I)V

    .line 397
    .line 398
    .line 399
    throw v0
.end method
