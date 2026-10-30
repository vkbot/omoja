.class public final Le0/x1;
.super Landroid/media/session/MediaController$Callback;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static q:Ljava/lang/String;

.field public static volatile r:Landroid/media/session/MediaController;


# instance fields
.field public a:Ln0/g;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Landroid/graphics/Bitmap;

.field public f:Ljava/lang/Long;

.field public g:Ljava/lang/Long;

.field public final h:Landroid/media/AudioManager;

.field public final i:Landroid/media/session/MediaSessionManager;

.field public final j:Landroid/content/ComponentName;

.field public final k:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public final l:Le0/v;

.field public final m:Ljava/util/concurrent/ScheduledFuture;

.field public final n:Landroid/os/Handler;

.field public volatile o:Z

.field public p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ln0/g;->c:Ln0/g;

    .line 5
    .line 6
    iput-object v0, p0, Le0/x1;->a:Ln0/g;

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    iput-object v0, p0, Le0/x1;->b:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Le0/x1;->c:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Le0/x1;->d:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Le0/x1;->e:Landroid/graphics/Bitmap;

    .line 18
    .line 19
    const-wide/16 v1, 0x0

    .line 20
    .line 21
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iput-object v1, p0, Le0/x1;->f:Ljava/lang/Long;

    .line 26
    .line 27
    iput-object v1, p0, Le0/x1;->g:Ljava/lang/Long;

    .line 28
    .line 29
    const/16 v1, 0xe

    .line 30
    .line 31
    new-array v1, v1, [B

    .line 32
    .line 33
    fill-array-data v1, :array_0

    .line 34
    .line 35
    .line 36
    const/16 v2, 0x8

    .line 37
    .line 38
    new-array v3, v2, [B

    .line 39
    .line 40
    fill-array-data v3, :array_1

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const/4 v3, -0x1

    .line 48
    invoke-static {v3, v1}, Le0/w;->c(ILjava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    iput-object v4, p0, Le0/x1;->k:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 53
    .line 54
    const/16 v1, 0x11

    .line 55
    .line 56
    new-array v1, v1, [B

    .line 57
    .line 58
    fill-array-data v1, :array_2

    .line 59
    .line 60
    .line 61
    new-array v3, v2, [B

    .line 62
    .line 63
    fill-array-data v3, :array_3

    .line 64
    .line 65
    .line 66
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const-wide/16 v5, 0x12c

    .line 71
    .line 72
    invoke-static {v5, v6, v1}, Le0/w;->b(JLjava/lang/String;)Le0/v;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iput-object v1, p0, Le0/x1;->l:Le0/v;

    .line 77
    .line 78
    new-instance v1, Landroid/os/Handler;

    .line 79
    .line 80
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 85
    .line 86
    .line 87
    iput-object v1, p0, Le0/x1;->n:Landroid/os/Handler;

    .line 88
    .line 89
    const/4 v1, 0x1

    .line 90
    iput-boolean v1, p0, Le0/x1;->o:Z

    .line 91
    .line 92
    const/4 v3, 0x0

    .line 93
    iput-boolean v3, p0, Le0/x1;->p:Z

    .line 94
    .line 95
    new-instance v3, Landroid/content/ComponentName;

    .line 96
    .line 97
    const-class v5, Lcom/example/navistart/NLService;

    .line 98
    .line 99
    invoke-direct {v3, p1, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .line 101
    .line 102
    iput-object v3, p0, Le0/x1;->j:Landroid/content/ComponentName;

    .line 103
    .line 104
    const/4 v3, 0x5

    .line 105
    new-array v3, v3, [B

    .line 106
    .line 107
    fill-array-data v3, :array_4

    .line 108
    .line 109
    .line 110
    new-array v5, v2, [B

    .line 111
    .line 112
    fill-array-data v5, :array_5

    .line 113
    .line 114
    .line 115
    invoke-static {v3, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    check-cast v3, Landroid/media/AudioManager;

    .line 124
    .line 125
    iput-object v3, p0, Le0/x1;->h:Landroid/media/AudioManager;

    .line 126
    .line 127
    const/16 v3, 0xd

    .line 128
    .line 129
    new-array v3, v3, [B

    .line 130
    .line 131
    fill-array-data v3, :array_6

    .line 132
    .line 133
    .line 134
    new-array v2, v2, [B

    .line 135
    .line 136
    fill-array-data v2, :array_7

    .line 137
    .line 138
    .line 139
    invoke-static {v3, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    check-cast p1, Landroid/media/session/MediaSessionManager;

    .line 148
    .line 149
    iput-object p1, p0, Le0/x1;->i:Landroid/media/session/MediaSessionManager;

    .line 150
    .line 151
    invoke-virtual {p0}, Le0/x1;->a()Landroid/media/session/MediaController;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p0, p1}, Le0/x1;->e(Landroid/media/session/MediaController;)V

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Le0/x1;->m:Ljava/util/concurrent/ScheduledFuture;

    .line 159
    .line 160
    if-eqz p1, :cond_0

    .line 161
    .line 162
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-nez p1, :cond_0

    .line 167
    .line 168
    iget-object p1, p0, Le0/x1;->m:Ljava/util/concurrent/ScheduledFuture;

    .line 169
    .line 170
    invoke-interface {p1, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 171
    .line 172
    .line 173
    iput-object v0, p0, Le0/x1;->m:Ljava/util/concurrent/ScheduledFuture;

    .line 174
    .line 175
    :cond_0
    new-instance v5, Le0/v1;

    .line 176
    .line 177
    invoke-direct {v5, p0, v1}, Le0/v1;-><init>(Le0/x1;I)V

    .line 178
    .line 179
    .line 180
    const-wide/16 v8, 0xbb8

    .line 181
    .line 182
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 183
    .line 184
    const-wide/16 v6, 0x0

    .line 185
    .line 186
    invoke-interface/range {v4 .. v10}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    iput-object p1, p0, Le0/x1;->m:Ljava/util/concurrent/ScheduledFuture;

    .line 191
    .line 192
    return-void

    .line 193
    :array_0
    .array-data 1
        -0x14t
        -0x30t
        0xat
        0x36t
        -0x23t
        0x72t
        -0x76t
        -0x1bt
        -0x32t
        -0xbt
        0xbt
        0x30t
        -0x3at
        0x42t
    .end array-data

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    nop

    .line 205
    :array_1
    .array-data 1
        -0x5ft
        -0x5bt
        0x79t
        0x5ft
        -0x42t
        0x3bt
        -0x1ct
        -0x7dt
    .end array-data

    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    :array_2
    .array-data 1
        -0x50t
        0x48t
        0x1t
        -0x7ft
        0x2dt
        0x3dt
        -0x30t
        0x29t
        -0x42t
        0x63t
        0x33t
        -0x5dt
        0x8t
        0x3ct
        -0x2at
        0x32t
        -0x72t
    .end array-data

    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    nop

    .line 227
    :array_3
    .array-data 1
        -0x9t
        0xdt
        0x55t
        -0x34t
        0x58t
        0x4et
        -0x47t
        0x4at
    .end array-data

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    :array_4
    .array-data 1
        0x30t
        0x26t
        0x5ct
        -0x38t
        0x75t
    .end array-data

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    nop

    .line 243
    :array_5
    .array-data 1
        0x51t
        0x53t
        0x38t
        -0x5ft
        0x1at
        -0x71t
        -0x2dt
        -0x2at
    .end array-data

    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    :array_6
    .array-data 1
        0x7ft
        0x1ft
        -0x66t
        -0x76t
        -0x1bt
        0x29t
        0x74t
        0x14t
        0x61t
        0x9t
        -0x69t
        -0x74t
        -0x16t
    .end array-data

    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    nop

    .line 263
    :array_7
    .array-data 1
        0x12t
        0x7at
        -0x2t
        -0x1dt
        -0x7ct
        0x76t
        0x7t
        0x71t
    .end array-data
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void

    .line 23
    :cond_1
    :goto_0
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lh0/b;->n()Lcom/example/navistart/cores/ProLanProxy;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/example/navistart/cores/ProLanProxy;->onIfoSend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 34
    .line 35
    .line 36
    if-eqz p3, :cond_2

    .line 37
    .line 38
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getByteCount()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    const/4 v0, 0x0

    .line 50
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const/16 v2, 0xb

    .line 56
    .line 57
    new-array v2, v2, [B

    .line 58
    .line 59
    fill-array-data v2, :array_0

    .line 60
    .line 61
    .line 62
    const/16 v3, 0x8

    .line 63
    .line 64
    new-array v4, v3, [B

    .line 65
    .line 66
    fill-array-data v4, :array_1

    .line 67
    .line 68
    .line 69
    invoke-static {v2, v4, v1, p0}, Lcom/google/protobuf/q;->u([B[BLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const/4 p0, 0x2

    .line 73
    new-array v2, p0, [B

    .line 74
    .line 75
    fill-array-data v2, :array_2

    .line 76
    .line 77
    .line 78
    new-array v4, v3, [B

    .line 79
    .line 80
    fill-array-data v4, :array_3

    .line 81
    .line 82
    .line 83
    invoke-static {v2, v4, v1, p1}, Lcom/google/protobuf/q;->u([B[BLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    new-array p1, p0, [B

    .line 87
    .line 88
    fill-array-data p1, :array_4

    .line 89
    .line 90
    .line 91
    new-array v2, v3, [B

    .line 92
    .line 93
    fill-array-data v2, :array_5

    .line 94
    .line 95
    .line 96
    invoke-static {p1, v2, v1, p2}, Lcom/google/protobuf/q;->u([B[BLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    new-array p1, p0, [B

    .line 100
    .line 101
    fill-array-data p1, :array_6

    .line 102
    .line 103
    .line 104
    new-array p2, v3, [B

    .line 105
    .line 106
    fill-array-data p2, :array_7

    .line 107
    .line 108
    .line 109
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    new-array p0, p0, [B

    .line 120
    .line 121
    fill-array-data p0, :array_8

    .line 122
    .line 123
    .line 124
    new-array p1, v3, [B

    .line 125
    .line 126
    fill-array-data p1, :array_9

    .line 127
    .line 128
    .line 129
    invoke-static {p0, p1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-static {p0}, Lh0/b;->v(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :array_0
    .array-data 1
        0x9t
        0x73t
        -0x50t
        0x45t
        -0x4et
        -0x24t
        -0x7ct
        0xbt
        0x2bt
        0x3ct
        -0x1dt
    .end array-data

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    :array_1
    .array-data 1
        0x44t
        0x6t
        -0x3dt
        0x2ct
        -0x2ft
        -0x6bt
        -0x16t
        0x6dt
    .end array-data

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :array_2
    .array-data 1
        -0x2ct
        -0x65t
    .end array-data

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    nop

    .line 171
    :array_3
    .array-data 1
        -0x8t
        -0x45t
        -0xat
        -0x57t
        0x70t
        -0x1ft
        0x73t
        0x3dt
    .end array-data

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :array_4
    .array-data 1
        -0x29t
        -0x71t
    .end array-data

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    nop

    .line 185
    :array_5
    .array-data 1
        -0x5t
        -0x51t
        0x39t
        0x4ct
        -0x11t
        0x16t
        0x31t
        -0x41t
    .end array-data

    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    :array_6
    .array-data 1
        0x46t
        0xet
    .end array-data

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    nop

    .line 199
    :array_7
    .array-data 1
        0x6at
        0x2et
        0x41t
        -0x74t
        -0xdt
        0xdt
        0xft
        -0x7t
    .end array-data

    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    :array_8
    .array-data 1
        0x1at
        0x54t
    .end array-data

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    nop

    .line 213
    :array_9
    .array-data 1
        0x20t
        0x74t
        -0x3et
        -0x20t
        -0x6ct
        0x32t
        0xbt
        -0x22t
    .end array-data
.end method

.method public static d(Landroid/media/session/MediaController;)V
    .locals 2

    .line 1
    sput-object p0, Le0/x1;->r:Landroid/media/session/MediaController;

    .line 2
    .line 3
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/16 v0, 0x18

    .line 13
    .line 14
    new-array v0, v0, [B

    .line 15
    .line 16
    fill-array-data v0, :array_0

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    new-array v1, v1, [B

    .line 22
    .line 23
    fill-array-data v1, :array_1

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget-object v1, Le0/x1;->r:Landroid/media/session/MediaController;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p0, v0, v1}, Lu0/a;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void

    .line 40
    nop

    .line 41
    :array_0
    .array-data 1
        0x3bt
        -0x11t
        0x57t
        -0x5et
        -0x3dt
        0x42t
        0x32t
        0x2dt
        0x35t
        -0x1t
        0x41t
        -0x47t
        -0x39t
        0x73t
        0x5t
        0x1dt
        0x16t
        -0x12t
        0x57t
        -0x41t
        -0x36t
        0x40t
        0x23t
        0x0t
    .end array-data

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    :array_1
    .array-data 1
        0x78t
        -0x66t
        0x25t
        -0x30t
        -0x5at
        0x2ct
        0x46t
        0x72t
    .end array-data
.end method


# virtual methods
.method public final a()Landroid/media/session/MediaController;
    .locals 8

    .line 1
    sget-object v0, Le0/x1;->r:Landroid/media/session/MediaController;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Le0/x1;->p:Z

    .line 7
    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :try_start_0
    iget-object v2, p0, Le0/x1;->i:Landroid/media/session/MediaSessionManager;

    .line 12
    .line 13
    iget-object v3, p0, Le0/x1;->j:Landroid/content/ComponentName;

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-object v2, v0

    .line 21
    :goto_0
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_2

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Landroid/media/session/MediaController;

    .line 44
    .line 45
    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    const/16 v6, 0x18

    .line 54
    .line 55
    new-array v6, v6, [B

    .line 56
    .line 57
    fill-array-data v6, :array_0

    .line 58
    .line 59
    .line 60
    const/16 v7, 0x8

    .line 61
    .line 62
    new-array v7, v7, [B

    .line 63
    .line 64
    fill-array-data v7, :array_1

    .line 65
    .line 66
    .line 67
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    const-string v7, ""

    .line 72
    .line 73
    invoke-virtual {v5, v6, v7}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_0

    .line 82
    .line 83
    sput-object v3, Le0/x1;->r:Landroid/media/session/MediaController;

    .line 84
    .line 85
    sget-object v3, Le0/x1;->r:Landroid/media/session/MediaController;

    .line 86
    .line 87
    iget-object v4, p0, Le0/x1;->n:Landroid/os/Handler;

    .line 88
    .line 89
    new-instance v5, Lb1/n;

    .line 90
    .line 91
    invoke-direct {v5, p0, v0, v3, v1}, Lb1/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    .line 96
    .line 97
    iput-boolean v1, p0, Le0/x1;->p:Z

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    iput-boolean v1, p0, Le0/x1;->p:Z

    .line 101
    .line 102
    :cond_2
    sget-object v0, Le0/x1;->r:Landroid/media/session/MediaController;

    .line 103
    .line 104
    return-object v0

    .line 105
    :array_0
    .array-data 1
        -0xft
        0x1ct
        0x8t
        -0x79t
        0x62t
        0x4dt
        -0xdt
        0x2bt
        -0x1t
        0xct
        0x1et
        -0x64t
        0x66t
        0x7ct
        -0x3ct
        0x1bt
        -0x24t
        0x1dt
        0x8t
        -0x66t
        0x6bt
        0x4ft
        -0x1et
        0x6t
    .end array-data

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    :array_1
    .array-data 1
        -0x4et
        0x69t
        0x7at
        -0xbt
        0x7t
        0x23t
        -0x79t
        0x74t
    .end array-data
.end method

.method public final c(Ln0/g;)V
    .locals 2

    .line 1
    new-instance v0, La4/g;

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, La4/g;-><init>(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Le0/x1;->k:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 9
    .line 10
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final e(Landroid/media/session/MediaController;)V
    .locals 2

    .line 1
    new-instance v0, La1/a;

    .line 2
    .line 3
    const/16 v1, 0x16

    .line 4
    .line 5
    invoke-direct {v0, v1, p0, p1}, La1/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Le0/x1;->n:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, La1/a;

    .line 5
    .line 6
    const/16 v1, 0x15

    .line 7
    .line 8
    invoke-direct {v0, v1, p0, p1}, La1/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Le0/x1;->l:Le0/v;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Le0/v;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, La1/a;

    .line 5
    .line 6
    const/16 v1, 0x17

    .line 7
    .line 8
    invoke-direct {v0, v1, p0, p1}, La1/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Le0/x1;->l:Le0/v;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Le0/v;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
