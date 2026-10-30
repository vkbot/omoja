.class public final Lw0/b1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Lw0/l0;

.field public d:Z

.field public e:Z

.field public f:I

.field public final g:Lb1/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lw0/l0;Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lb1/c;

    .line 5
    .line 6
    const/4 v1, 0x7

    .line 7
    invoke-direct {v0, v1, p0}, Lb1/c;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lw0/b1;->g:Lb1/c;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lw0/b1;->b:Landroid/content/Context;

    .line 17
    .line 18
    iput-object p2, p0, Lw0/b1;->c:Lw0/l0;

    .line 19
    .line 20
    new-instance p2, Landroid/content/IntentFilter;

    .line 21
    .line 22
    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 23
    .line 24
    .line 25
    const/16 v1, 0x2d

    .line 26
    .line 27
    new-array v1, v1, [B

    .line 28
    .line 29
    fill-array-data v1, :array_0

    .line 30
    .line 31
    .line 32
    const/16 v2, 0x8

    .line 33
    .line 34
    new-array v3, v2, [B

    .line 35
    .line 36
    fill-array-data v3, :array_1

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/16 v1, 0x30

    .line 47
    .line 48
    new-array v1, v1, [B

    .line 49
    .line 50
    fill-array-data v1, :array_2

    .line 51
    .line 52
    .line 53
    new-array v3, v2, [B

    .line 54
    .line 55
    fill-array-data v3, :array_3

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/16 v1, 0x2e

    .line 66
    .line 67
    new-array v1, v1, [B

    .line 68
    .line 69
    fill-array-data v1, :array_4

    .line 70
    .line 71
    .line 72
    new-array v3, v2, [B

    .line 73
    .line 74
    fill-array-data v3, :array_5

    .line 75
    .line 76
    .line 77
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 85
    .line 86
    const/16 v3, 0x21

    .line 87
    .line 88
    if-lt v1, v3, :cond_0

    .line 89
    .line 90
    invoke-static {p1, v0, p2}, Lw0/d;->i(Landroid/content/Context;Lb1/c;Landroid/content/IntentFilter;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    .line 96
    .line 97
    :goto_0
    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lw0/b1;->d:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catch_0
    const/16 p1, 0xe

    .line 102
    .line 103
    new-array p1, p1, [B

    .line 104
    .line 105
    fill-array-data p1, :array_6

    .line 106
    .line 107
    .line 108
    new-array p2, v2, [B

    .line 109
    .line 110
    fill-array-data p2, :array_7

    .line 111
    .line 112
    .line 113
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    const/16 p2, 0x3b

    .line 118
    .line 119
    new-array p2, p2, [B

    .line 120
    .line 121
    fill-array-data p2, :array_8

    .line 122
    .line 123
    .line 124
    new-array v0, v2, [B

    .line 125
    .line 126
    fill-array-data v0, :array_9

    .line 127
    .line 128
    .line 129
    invoke-static {p2, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    :goto_1
    new-instance p1, Lf5/j;

    .line 137
    .line 138
    const/16 p2, 0x16

    .line 139
    .line 140
    invoke-direct {p1, p2, p0}, Lf5/j;-><init>(ILjava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    invoke-interface {p3, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :array_0
    .array-data 1
        0x6ct
        -0xdt
        -0x4dt
        0x41t
        -0x27t
        -0x75t
        -0x1bt
        -0x7t
        0x6ft
        -0xft
        -0x5et
        0x56t
        -0x3et
        -0x73t
        -0x12t
        -0x5dt
        0x65t
        -0x4dt
        -0x4dt
        0x56t
        -0x40t
        -0x75t
        -0x1et
        -0x4et
        0x23t
        -0x4t
        -0x4ct
        0x47t
        -0x21t
        -0x73t
        -0x11t
        -0x7t
        0x4ct
        -0x22t
        -0x65t
        0x6ct
        -0xbt
        -0x53t
        -0x31t
        -0x67t
        0x48t
        -0x22t
        -0x7dt
        0x76t
        -0xet
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
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    nop

    .line 175
    :array_1
    .array-data 1
        0xdt
        -0x63t
        -0x29t
        0x33t
        -0x4at
        -0x1et
        -0x7ft
        -0x29t
    .end array-data

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    :array_2
    .array-data 1
        -0x4ft
        -0x59t
        -0x53t
        0x67t
        -0x6et
        -0x5ft
        0x6at
        -0x16t
        -0x4et
        -0x5bt
        -0x44t
        0x70t
        -0x77t
        -0x59t
        0x61t
        -0x50t
        -0x48t
        -0x19t
        -0x53t
        0x70t
        -0x75t
        -0x5ft
        0x6dt
        -0x5ft
        -0x2t
        -0x58t
        -0x56t
        0x61t
        -0x6ct
        -0x59t
        0x60t
        -0x16t
        -0x6ft
        -0x76t
        -0x7bt
        0x4at
        -0x47t
        -0x7ft
        0x5dt
        -0x79t
        -0x61t
        -0x79t
        -0x79t
        0x50t
        -0x42t
        -0x64t
        0x4bt
        -0x80t
    .end array-data

    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
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
    :array_3
    .array-data 1
        -0x30t
        -0x37t
        -0x37t
        0x15t
        -0x3t
        -0x38t
        0xet
        -0x3ct
    .end array-data

    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    :array_4
    .array-data 1
        -0x19t
        -0x3dt
        -0x47t
        0x2at
        -0x74t
        0x69t
        0x2bt
        -0xft
        -0x1ct
        -0x3ft
        -0x58t
        0x3dt
        -0x69t
        0x6ft
        0x20t
        -0x55t
        -0x12t
        -0x7dt
        -0x44t
        0x3ct
        -0x7et
        0x70t
        0x3bt
        -0x46t
        -0xct
        -0x7dt
        -0x44t
        0x3bt
        -0x69t
        0x69t
        0x20t
        -0x4ft
        -0x58t
        -0x2t
        -0x77t
        0x19t
        -0x49t
        0x45t
        0x10t
        -0x64t
        -0x32t
        -0x14t
        -0x6dt
        0x1ft
        -0x5at
        0x44t
    .end array-data

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
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
    :array_5
    .array-data 1
        -0x7at
        -0x53t
        -0x23t
        0x58t
        -0x1dt
        0x0t
        0x4ft
        -0x21t
    .end array-data

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    :array_6
    .array-data 1
        -0x36t
        0x15t
        0x48t
        -0x30t
        0x6bt
        0x73t
        0x60t
        -0xat
        -0xet
        0x1ft
        0x63t
        -0x24t
        0x61t
        0x48t
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
    nop

    .line 267
    :array_7
    .array-data 1
        -0x64t
        0x7at
        0x21t
        -0x4dt
        0xet
        0x23t
        0x8t
        -0x67t
    .end array-data

    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    :array_8
    .array-data 1
        -0x6et
        -0xet
        -0x12t
        0x5at
        -0x1at
        0x21t
        -0x5dt
        0x2t
        -0x54t
        -0xct
        -0x1ct
        0x57t
        -0x9t
        0x68t
        -0x51t
        0x3t
        -0x1et
        -0xbt
        -0x1dt
        0x47t
        -0x1at
        0x73t
        -0x4at
        0xct
        -0x4at
        -0xdt
        -0x12t
        0x5at
        -0x5dt
        0x74t
        -0x52t
        0xct
        -0x4ct
        -0x5t
        -0x18t
        0x58t
        -0x1et
        0x63t
        -0x54t
        0x8t
        -0x7t
        -0x46t
        -0x13t
        0x5bt
        -0x1et
        0x65t
        -0x57t
        0x3t
        -0x5bt
        -0x46t
        -0x12t
        0x5at
        -0x5dt
        0x65t
        -0x5bt
        0x0t
        -0x5dt
        -0xct
        -0x1bt
    .end array-data

    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    :array_9
    .array-data 1
        -0x3et
        -0x66t
        -0x7ft
        0x34t
        -0x7dt
        0x1t
        -0x40t
        0x6dt
    .end array-data
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lw0/b1;->e:Z

    .line 4
    .line 5
    iget-boolean v0, p0, Lw0/b1;->d:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lw0/b1;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    :try_start_1
    iget-object v0, p0, Lw0/b1;->b:Landroid/content/Context;

    .line 13
    .line 14
    iget-object v1, p0, Lw0/b1;->g:Lb1/c;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :catch_0
    :cond_0
    :goto_0
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    throw v0
.end method
