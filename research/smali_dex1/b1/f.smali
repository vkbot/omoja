.class public final Lb1/f;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final s:Ljava/lang/String;

.field public static final t:Ljava/lang/String;

.field public static final u:Ljava/lang/String;

.field public static final v:Ljava/lang/String;

.field public static final w:Ljava/lang/String;

.field public static volatile x:Lb1/f;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/concurrent/ExecutorService;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final e:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final f:Ljava/lang/String;

.field public volatile g:Landroid/os/IBinder;

.field public volatile h:[B

.field public volatile i:J

.field public volatile j:I

.field public k:J

.field public l:Z

.field public m:Z

.field public n:Z

.field public final o:Lb1/b;

.field public final p:Lb1/b;

.field public final q:Lb1/c;

.field public final r:Lb1/d;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const/16 v0, 0x12

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_7a

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v2, v1, [B

    .line 11
    .line 12
    fill-array-data v2, :array_88

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lb1/f;->s:Ljava/lang/String;

    .line 20
    .line 21
    const/16 v0, 0x14

    .line 22
    .line 23
    new-array v0, v0, [B

    .line 24
    .line 25
    fill-array-data v0, :array_90

    .line 26
    .line 27
    .line 28
    new-array v2, v1, [B

    .line 29
    .line 30
    fill-array-data v2, :array_9e

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lb1/f;->t:Ljava/lang/String;

    .line 38
    .line 39
    const/16 v0, 0x16

    .line 40
    .line 41
    new-array v0, v0, [B

    .line 42
    .line 43
    fill-array-data v0, :array_a6

    .line 44
    .line 45
    .line 46
    new-array v2, v1, [B

    .line 47
    .line 48
    fill-array-data v2, :array_b6

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lb1/f;->u:Ljava/lang/String;

    .line 56
    .line 57
    const/16 v0, 0x2b

    .line 58
    .line 59
    new-array v0, v0, [B

    .line 60
    .line 61
    fill-array-data v0, :array_be

    .line 62
    .line 63
    .line 64
    new-array v2, v1, [B

    .line 65
    .line 66
    fill-array-data v2, :array_d8

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sput-object v0, Lb1/f;->v:Ljava/lang/String;

    .line 74
    .line 75
    const/16 v0, 0x21

    .line 76
    .line 77
    new-array v0, v0, [B

    .line 78
    .line 79
    fill-array-data v0, :array_e0

    .line 80
    .line 81
    .line 82
    new-array v2, v1, [B

    .line 83
    .line 84
    fill-array-data v2, :array_f6

    .line 85
    .line 86
    .line 87
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    const/16 v0, 0x22

    .line 91
    .line 92
    new-array v0, v0, [B

    .line 93
    .line 94
    fill-array-data v0, :array_fe

    .line 95
    .line 96
    .line 97
    new-array v2, v1, [B

    .line 98
    .line 99
    fill-array-data v2, :array_114

    .line 100
    .line 101
    .line 102
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    sput-object v0, Lb1/f;->w:Ljava/lang/String;

    .line 107
    .line 108
    const/4 v0, 0x5

    .line 109
    new-array v0, v0, [B

    .line 110
    .line 111
    fill-array-data v0, :array_11c

    .line 112
    .line 113
    .line 114
    new-array v1, v1, [B

    .line 115
    .line 116
    fill-array-data v1, :array_124

    .line 117
    .line 118
    .line 119
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :array_7a
    .array-data 1
        0x6bt
        0x7ft
        -0x3ft
        -0x7bt
        -0x1ft
        -0x59t
        0x2ft
        -0x51t
        0x54t
        0x77t
        -0x3et
        -0x77t
        -0x1t
        -0x57t
        0x2at
        -0x65t
        0x45t
        0x73t
    .end array-data

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    nop

    .line 137
    :array_88
    .array-data 1
        0x26t
        0x16t
        -0x51t
        -0x14t
        -0x54t
        -0x3at
        0x5ft
        -0x17t
    .end array-data

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    :array_90
    .array-data 1
        -0x55t
        -0xbt
        0x2bt
        0x42t
        -0x75t
        -0x7t
        0x23t
        0x5ft
        -0x5ft
        -0x52t
        0x7ct
        0x5at
        -0x7ct
        -0xdt
        0x22t
        0x42t
        -0x49t
        -0x1ft
        0x73t
        0x52t
    .end array-data

    .line 146
    .line 147
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
    .line 158
    .line 159
    :array_9e
    .array-data 1
        -0x27t
        -0x80t
        0x5t
        0x3bt
        -0x16t
        -0x69t
        0x47t
        0x3at
    .end array-data

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    :array_a6
    .array-data 1
        0x7ft
        -0x4dt
        0x43t
        0x3dt
        -0x66t
        -0x31t
        -0x5ct
        -0x6ft
        0x74t
        -0x4et
        0x2bt
        0x2t
        -0x6et
        -0x34t
        -0x58t
        -0x71t
        0x70t
        -0x50t
        0x1bt
        0x19t
        -0x70t
        -0x3ct
    .end array-data

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    nop

    .line 183
    :array_b6
    .array-data 1
        0x15t
        -0x3et
        0x6dt
        0x70t
        -0xdt
        -0x5ft
        -0x33t
        -0x24t
    .end array-data

    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    :array_be
    .array-data 1
        -0x2t
        0x7ct
        -0x36t
        -0xft
        -0x65t
        0x78t
        0x30t
        -0x40t
        -0xct
        0x27t
        -0x63t
        -0x17t
        -0x6ct
        0x72t
        0x31t
        -0x23t
        -0x1ft
        0x68t
        -0x6ct
        -0x5t
        -0x2ct
        0x7bt
        0x3dt
        -0x35t
        -0x1bt
        0x64t
        -0x7bt
        -0x8t
        -0x2ct
        0x5ft
        0x19t
        -0x34t
        -0x1et
        0x60t
        -0x57t
        -0x17t
        -0x76t
        0x50t
        0x26t
        -0x3ct
        -0x1ft
        0x6ct
        -0x69t
    .end array-data

    .line 192
    .line 193
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
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    :array_d8
    .array-data 1
        -0x74t
        0x9t
        -0x1ct
        -0x78t
        -0x6t
        0x16t
        0x54t
        -0x5bt
    .end array-data

    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    :array_e0
    .array-data 1
        -0x2t
        -0x29t
        -0x28t
        0x55t
        0xdt
        -0x63t
        -0x14t
        0x4bt
        -0xct
        -0x74t
        -0x71t
        0x4dt
        0x2t
        -0x69t
        -0x13t
        0x56t
        -0x1ft
        -0x3dt
        -0x7at
        0x5ft
        0x42t
        -0x42t
        -0x3ft
        0x60t
        -0x3bt
        -0x11t
        -0x49t
        0x7ct
        0x33t
        -0x5dt
        -0x3ft
        0x60t
        -0x35t
    .end array-data

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    nop

    .line 247
    :array_f6
    .array-data 1
        -0x74t
        -0x5et
        -0xat
        0x2ct
        0x6ct
        -0xdt
        -0x78t
        0x2et
    .end array-data

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    :array_fe
    .array-data 1
        -0x6bt
        0x21t
        -0x13t
        0x7dt
        0x72t
        -0x65t
        -0x20t
        0x16t
        -0x61t
        0x7at
        -0x46t
        0x65t
        0x7dt
        -0x6ft
        -0x1ft
        0xbt
        -0x76t
        0x35t
        -0x4dt
        0x77t
        0x3dt
        -0x48t
        -0x33t
        0x3dt
        -0x52t
        0x19t
        -0x7et
        0x54t
        0x4ct
        -0x59t
        -0x3ft
        0x32t
        -0x5dt
        0xdt
    .end array-data

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    nop

    .line 277
    :array_114
    .array-data 1
        -0x19t
        0x54t
        -0x3dt
        0x4t
        0x13t
        -0xbt
        -0x7ct
        0x73t
    .end array-data

    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    :array_11c
    .array-data 1
        0x23t
        0x3at
        -0x1at
        0x7at
        -0x7ct
    .end array-data

    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    nop

    .line 293
    :array_124
    .array-data 1
        0x4dt
        0x55t
        -0x78t
        0x19t
        -0x1ft
        -0x78t
        0x56t
        -0x8t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lb1/f;->b:Landroid/os/Handler;

    .line 14
    .line 15
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lb1/f;->c:Ljava/util/concurrent/ExecutorService;

    .line 20
    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lb1/f;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lb1/f;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 34
    .line 35
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lb1/f;->f:Ljava/lang/String;

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lb1/f;->j:I

    .line 47
    .line 48
    new-instance v0, Lb1/b;

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-direct {v0, p0, v1}, Lb1/b;-><init>(Lb1/f;I)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lb1/f;->o:Lb1/b;

    .line 55
    .line 56
    new-instance v0, Lb1/b;

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    invoke-direct {v0, p0, v1}, Lb1/b;-><init>(Lb1/f;I)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lb1/f;->p:Lb1/b;

    .line 63
    .line 64
    new-instance v0, Lb1/c;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-direct {v0, v1, p0}, Lb1/c;-><init>(ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lb1/f;->q:Lb1/c;

    .line 71
    .line 72
    new-instance v0, Lb1/d;

    .line 73
    .line 74
    invoke-direct {v0, p0}, Lb1/d;-><init>(Lb1/f;)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lb1/f;->r:Lb1/d;

    .line 78
    .line 79
    iput-object p1, p0, Lb1/f;->a:Landroid/content/Context;

    .line 80
    .line 81
    return-void
.end method

.method public static b(Landroid/content/Context;)Lb1/f;
    .registers 3

    .line 1
    sget-object v0, Lb1/f;->x:Lb1/f;

    .line 2
    .line 3
    if-nez v0, :cond_1d

    .line 4
    .line 5
    const-class v0, Lb1/f;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Lb1/f;->x:Lb1/f;

    .line 9
    .line 10
    if-nez v1, :cond_19

    .line 11
    .line 12
    new-instance v1, Lb1/f;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v1, p0}, Lb1/f;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lb1/f;->x:Lb1/f;

    .line 22
    .line 23
    goto :goto_19

    .line 24
    :catchall_17
    move-exception p0

    .line 25
    goto :goto_1b

    .line 26
    :cond_19
    :goto_19
    monitor-exit v0

    .line 27
    goto :goto_1d

    .line 28
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_17

    .line 29
    throw p0

    .line 30
    :cond_1d
    :goto_1d
    sget-object p0, Lb1/f;->x:Lb1/f;

    .line 31
    .line 32
    return-object p0
.end method


# virtual methods
.method public final a()V
    .registers 5

    .line 1
    iget-object v0, p0, Lb1/f;->g:Landroid/os/IBinder;

    .line 2
    .line 3
    iget v1, p0, Lb1/f;->j:I

    .line 4
    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v2, p0, Lb1/f;->c:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    new-instance v3, La4/c;

    .line 11
    .line 12
    invoke-direct {v3, v0, v1}, La4/c;-><init>(Landroid/os/IBinder;I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final c()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lb1/f;->l:Z

    .line 2
    .line 3
    if-nez v0, :cond_8

    .line 4
    .line 5
    iget-boolean v0, p0, Lb1/f;->m:Z

    .line 6
    .line 7
    if-eqz v0, :cond_f

    .line 8
    .line 9
    :cond_8
    :try_start_8
    iget-object v0, p0, Lb1/f;->a:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v1, p0, Lb1/f;->r:Lb1/d;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_f} :catch_f

    .line 14
    .line 15
    .line 16
    :catch_f
    :cond_f
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lb1/f;->g:Landroid/os/IBinder;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lb1/f;->l:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lb1/f;->m:Z

    .line 23
    .line 24
    return-void
.end method

.method public final d()V
    .registers 3

    .line 1
    iget-object v0, p0, Lb1/f;->b:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lb1/f;->o:Lb1/b;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lb1/f;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_22

    .line 15
    .line 16
    iget-object v0, p0, Lb1/f;->g:Landroid/os/IBinder;

    .line 17
    .line 18
    if-nez v0, :cond_22

    .line 19
    .line 20
    iget-boolean v0, p0, Lb1/f;->l:Z

    .line 21
    .line 22
    if-nez v0, :cond_22

    .line 23
    .line 24
    iget-boolean v0, p0, Lb1/f;->m:Z

    .line 25
    .line 26
    if-nez v0, :cond_22

    .line 27
    .line 28
    iget-object v0, p0, Lb1/f;->b:Landroid/os/Handler;

    .line 29
    .line 30
    iget-object v1, p0, Lb1/f;->o:Lb1/b;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    :cond_22
    return-void
.end method
