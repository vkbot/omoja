.class public final Lcom/example/navistart/Transport/TransportService;
.super Landroid/app/Service;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final p:Ljava/lang/String;

.field public static final q:Ljava/lang/String;

.field public static final r:Ljava/lang/String;

.field public static final s:Ljava/lang/String;

.field public static final t:Ljava/lang/String;

.field public static final u:Ljava/lang/String;

.field public static final v:Ljava/lang/String;

.field public static final w:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final x:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static volatile y:Ljava/lang/String;

.field public static volatile z:Lcom/example/navistart/Transport/TransportService;


# instance fields
.field public final b:Ljava/util/concurrent/ConcurrentHashMap;

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;

.field public final d:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

.field public final e:Ljava/util/concurrent/atomic/AtomicLong;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public g:Ljava/util/concurrent/ExecutorService;

.field public h:Ljava/util/concurrent/ExecutorService;

.field public i:Ljava/util/concurrent/ExecutorService;

.field public j:Ljava/util/concurrent/ScheduledExecutorService;

.field public k:Ly0/b;

.field public volatile l:Le0/s3;

.field public volatile m:J

.field public volatile n:J

.field public final o:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_8e

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v2, v1, [B

    .line 11
    .line 12
    fill-array-data v2, :array_98

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/example/navistart/Transport/TransportService;->p:Ljava/lang/String;

    .line 20
    .line 21
    const/16 v0, 0x27

    .line 22
    .line 23
    new-array v2, v0, [B

    .line 24
    .line 25
    fill-array-data v2, :array_a0

    .line 26
    .line 27
    .line 28
    new-array v3, v1, [B

    .line 29
    .line 30
    fill-array-data v3, :array_b8

    .line 31
    .line 32
    .line 33
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    sput-object v2, Lcom/example/navistart/Transport/TransportService;->q:Ljava/lang/String;

    .line 38
    .line 39
    new-array v0, v0, [B

    .line 40
    .line 41
    fill-array-data v0, :array_c0

    .line 42
    .line 43
    .line 44
    new-array v2, v1, [B

    .line 45
    .line 46
    fill-array-data v2, :array_d8

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lcom/example/navistart/Transport/TransportService;->r:Ljava/lang/String;

    .line 54
    .line 55
    const/4 v0, 0x7

    .line 56
    new-array v2, v0, [B

    .line 57
    .line 58
    fill-array-data v2, :array_e0

    .line 59
    .line 60
    .line 61
    new-array v3, v1, [B

    .line 62
    .line 63
    fill-array-data v3, :array_e8

    .line 64
    .line 65
    .line 66
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    sput-object v2, Lcom/example/navistart/Transport/TransportService;->s:Ljava/lang/String;

    .line 71
    .line 72
    new-array v0, v0, [B

    .line 73
    .line 74
    fill-array-data v0, :array_f0

    .line 75
    .line 76
    .line 77
    new-array v2, v1, [B

    .line 78
    .line 79
    fill-array-data v2, :array_f8

    .line 80
    .line 81
    .line 82
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    sput-object v0, Lcom/example/navistart/Transport/TransportService;->t:Ljava/lang/String;

    .line 87
    .line 88
    new-array v0, v1, [B

    .line 89
    .line 90
    fill-array-data v0, :array_100

    .line 91
    .line 92
    .line 93
    new-array v2, v1, [B

    .line 94
    .line 95
    fill-array-data v2, :array_108

    .line 96
    .line 97
    .line 98
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    sput-object v0, Lcom/example/navistart/Transport/TransportService;->u:Ljava/lang/String;

    .line 103
    .line 104
    const/16 v0, 0xd

    .line 105
    .line 106
    new-array v0, v0, [B

    .line 107
    .line 108
    fill-array-data v0, :array_110

    .line 109
    .line 110
    .line 111
    new-array v1, v1, [B

    .line 112
    .line 113
    fill-array-data v1, :array_11c

    .line 114
    .line 115
    .line 116
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    sput-object v0, Lcom/example/navistart/Transport/TransportService;->v:Ljava/lang/String;

    .line 121
    .line 122
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 123
    .line 124
    const/4 v1, 0x0

    .line 125
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 126
    .line 127
    .line 128
    sput-object v0, Lcom/example/navistart/Transport/TransportService;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 129
    .line 130
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 131
    .line 132
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 133
    .line 134
    .line 135
    sput-object v0, Lcom/example/navistart/Transport/TransportService;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 136
    .line 137
    const-string v0, ""

    .line 138
    .line 139
    sput-object v0, Lcom/example/navistart/Transport/TransportService;->y:Ljava/lang/String;

    .line 140
    .line 141
    return-void

    .line 142
    nop

    .line 143
    :array_8e
    .array-data 1
        0x1dt
        0x36t
        0x1et
        -0x2dt
        0x43t
        0x66t
        -0x7t
        -0x34t
        0x27t
        0x3at
        0x18t
        -0xdt
    .end array-data

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    :array_98
    .array-data 1
        0x57t
        0x55t
        0x6at
        -0x79t
        0x31t
        0x7t
        -0x69t
        -0x41t
    .end array-data

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    :array_a0
    .array-data 1
        0x46t
        -0x65t
        -0x6t
        0x4bt
        0x2dt
        0x5bt
        0x4bt
        0x38t
        0x55t
        -0x68t
        -0xet
        0x4bt
        0x26t
        0x42t
        0x5ct
        0x3ct
        0x56t
        -0x80t
        -0xat
        0x17t
        0x3ct
        0xdt
        0x5et
        0x27t
        0x44t
        -0x66t
        -0x1ct
        0x15t
        0x27t
        0x51t
        0x5et
        0x7bt
        0x64t
        -0x49t
        -0x3at
        0x30t
        0x1t
        0x71t
        0x6ft
    .end array-data

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
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    :array_b8
    .array-data 1
        0x25t
        -0xct
        -0x69t
        0x65t
        0x48t
        0x23t
        0x2at
        0x55t
    .end array-data

    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    :array_c0
    .array-data 1
        -0x3dt
        0x4ft
        -0x6ct
        -0x3ct
        -0x63t
        -0x68t
        -0x5ct
        -0x71t
        -0x30t
        0x4ct
        -0x64t
        -0x3ct
        -0x6at
        -0x7ft
        -0x4dt
        -0x75t
        -0x2dt
        0x54t
        -0x68t
        -0x68t
        -0x74t
        -0x32t
        -0x4ft
        -0x70t
        -0x3ft
        0x4et
        -0x76t
        -0x66t
        -0x69t
        -0x6et
        -0x4ft
        -0x34t
        -0x10t
        0x75t
        -0x45t
        -0x5at
        -0x4ft
        -0x4dt
        -0x73t
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
        -0x60t
        0x20t
        -0x7t
        -0x16t
        -0x8t
        -0x20t
        -0x3bt
        -0x1et
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
        -0x78t
        -0x1ct
        0x65t
        0x1ct
        -0x5et
        -0x61t
        0x51t
    .end array-data

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    :array_e8
    .array-data 1
        -0x15t
        -0x74t
        0x4t
        0x72t
        -0x34t
        -0x6t
        0x3dt
        0x3bt
    .end array-data

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    :array_f0
    .array-data 1
        -0x43t
        0x5bt
        0x30t
        0x73t
        -0x2at
        -0xbt
        0x5t
    .end array-data

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    :array_f8
    .array-data 1
        -0x33t
        0x3at
        0x49t
        0x1ft
        -0x47t
        -0x6ct
        0x61t
        0x3ft
    .end array-data

    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    :array_100
    .array-data 1
        -0x73t
        -0x2t
        -0x41t
        0x7et
        0x7ft
        0x6ft
        0x34t
        -0xet
    .end array-data

    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    :array_108
    .array-data 1
        -0x17t
        -0x65t
        -0x2dt
        0x17t
        0x9t
        0xat
        0x46t
        -0x75t
    .end array-data

    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    :array_110
    .array-data 1
        0x5ct
        -0x25t
        0x50t
        0x22t
        0x58t
        0x2et
        -0x4dt
        -0x1t
        0x45t
        -0x38t
        0x4bt
        0xft
        0x58t
    .end array-data

    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    nop

    .line 285
    :array_11c
    .array-data 1
        0x36t
        -0x48t
        0x24t
        0x7dt
        0x2ct
        0x5ct
        -0x2et
        -0x6ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/example/navistart/Transport/TransportService;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/example/navistart/Transport/TransportService;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/example/navistart/Transport/TransportService;->d:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 23
    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/example/navistart/Transport/TransportService;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 34
    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/example/navistart/Transport/TransportService;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/example/navistart/Transport/TransportService;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 49
    .line 50
    return-void
.end method

.method public static b(Ljava/io/Closeable;)V
    .registers 1

    .line 1
    if-nez p0, :cond_3

    .line 2
    .line 3
    return-void

    .line 4
    :cond_3
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_6

    .line 5
    .line 6
    .line 7
    :catch_6
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-nez p0, :cond_15

    .line 4
    .line 5
    const/16 p0, 0xd

    .line 6
    .line 7
    new-array p0, p0, [B

    .line 8
    .line 9
    fill-array-data p0, :array_3e

    .line 10
    .line 11
    .line 12
    new-array v0, v0, [B

    .line 13
    .line 14
    fill-array-data v0, :array_4a

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_15
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-nez v1, :cond_26

    .line 35
    .line 36
    const-string v0, ""

    .line 37
    .line 38
    goto :goto_39

    .line 39
    :cond_26
    const/4 v2, 0x2

    .line 40
    new-array v2, v2, [B

    .line 41
    .line 42
    fill-array-data v2, :array_52

    .line 43
    .line 44
    .line 45
    new-array v0, v0, [B

    .line 46
    .line 47
    fill-array-data v0, :array_58

    .line 48
    .line 49
    .line 50
    invoke-static {v2, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :goto_39
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :array_3e
    .array-data 1
        0x30t
        -0xbt
        -0x5bt
        -0x60t
        0x23t
        0x11t
        0x56t
        0x5ct
        0x20t
        -0x17t
        -0x44t
        -0x5ft
        0x3et
    .end array-data

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    nop

    .line 75
    :array_4a
    .array-data 1
        0x45t
        -0x65t
        -0x32t
        -0x32t
        0x4ct
        0x66t
        0x38t
        0x7ct
    .end array-data

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    :array_52
    .array-data 1
        0x79t
        0x3ct
    .end array-data

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    nop

    .line 89
    :array_58
    .array-data 1
        0x43t
        0x1ct
        0x53t
        0x56t
        0x56t
        -0x55t
        0x38t
        0x0t
    .end array-data
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/app/Notification;
    .registers 7

    .line 1
    if-nez p1, :cond_a

    .line 2
    .line 3
    const p1, 0x7f13040a

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    goto :goto_15

    .line 11
    :cond_a
    const v0, 0x7f1303f6

    .line 12
    .line 13
    .line 14
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 23
    .line 24
    const/16 v1, 0x1a

    .line 25
    .line 26
    const v2, 0x7f130407

    .line 27
    .line 28
    .line 29
    const v3, 0x7f070138

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    if-lt v0, v1, :cond_47

    .line 34
    .line 35
    new-instance v0, Landroid/app/Notification$Builder;

    .line 36
    .line 37
    sget-object v0, Lcom/example/navistart/Transport/TransportService;->v:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {p0, v0}, Lw0/d;->b(Lcom/example/navistart/Transport/TransportService;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    return-object p1

    .line 72
    :cond_47
    new-instance v0, Landroid/app/Notification$Builder;

    .line 73
    .line 74
    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    return-object p1
.end method

.method public final c()Le0/s3;
    .registers 14

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-lt v0, v1, :cond_32

    .line 9
    .line 10
    const/16 v0, 0x24

    .line 11
    .line 12
    new-array v1, v0, [B

    .line 13
    .line 14
    fill-array-data v1, :array_218

    .line 15
    .line 16
    .line 17
    new-array v4, v2, [B

    .line 18
    .line 19
    fill-array-data v4, :array_22e

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_20

    .line 31
    .line 32
    goto :goto_32

    .line 33
    :cond_20
    new-array v0, v0, [B

    .line 34
    .line 35
    fill-array-data v0, :array_236

    .line 36
    .line 37
    .line 38
    new-array v1, v2, [B

    .line 39
    .line 40
    fill-array-data v1, :array_24c

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Lcom/example/navistart/Transport/TransportService;->i(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object v3

    .line 51
    :cond_32
    :goto_32
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-nez v0, :cond_4c

    .line 56
    .line 57
    const/16 v0, 0x1d

    .line 58
    .line 59
    new-array v0, v0, [B

    .line 60
    .line 61
    fill-array-data v0, :array_254

    .line 62
    .line 63
    .line 64
    new-array v1, v2, [B

    .line 65
    .line 66
    fill-array-data v1, :array_268

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p0, v0}, Lcom/example/navistart/Transport/TransportService;->i(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-object v3

    .line 77
    :cond_4c
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_66

    .line 82
    .line 83
    const/16 v0, 0x15

    .line 84
    .line 85
    new-array v0, v0, [B

    .line 86
    .line 87
    fill-array-data v0, :array_270

    .line 88
    .line 89
    .line 90
    new-array v1, v2, [B

    .line 91
    .line 92
    fill-array-data v1, :array_280

    .line 93
    .line 94
    .line 95
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {p0, v0}, Lcom/example/navistart/Transport/TransportService;->i(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-object v3

    .line 103
    :cond_66
    invoke-static {p0}, Ly0/m;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    sget-object v4, Ly0/m;->e:Ljava/lang/String;

    .line 108
    .line 109
    const-string v5, ""

    .line 110
    .line 111
    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-static {v1}, Ly0/m;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    if-eqz v1, :cond_204

    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-eqz v4, :cond_84

    .line 130
    .line 131
    goto/16 :goto_204

    .line 132
    .line 133
    :cond_84
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    :try_start_88
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    :cond_90
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    if-eqz v6, :cond_c3

    .line 150
    .line 151
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 156
    .line 157
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v7
    :try_end_a4
    .catch Ljava/lang/SecurityException; {:try_start_88 .. :try_end_a4} :catch_a7

    .line 165
    if-eqz v7, :cond_90

    .line 166
    .line 167
    goto :goto_c4

    .line 168
    :catch_a7
    move-exception v4

    .line 169
    const/16 v5, 0x1e

    .line 170
    .line 171
    new-array v5, v5, [B

    .line 172
    .line 173
    fill-array-data v5, :array_288

    .line 174
    .line 175
    .line 176
    new-array v6, v2, [B

    .line 177
    .line 178
    fill-array-data v6, :array_29c

    .line 179
    .line 180
    .line 181
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    invoke-static {v4}, Lcom/example/navistart/Transport/TransportService;->e(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    invoke-virtual {p0, v4}, Lcom/example/navistart/Transport/TransportService;->i(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    :cond_c3
    move-object v6, v3

    .line 197
    :goto_c4
    if-nez v6, :cond_de

    .line 198
    .line 199
    const/16 v0, 0x19

    .line 200
    .line 201
    new-array v0, v0, [B

    .line 202
    .line 203
    fill-array-data v0, :array_2a4

    .line 204
    .line 205
    .line 206
    new-array v2, v2, [B

    .line 207
    .line 208
    fill-array-data v2, :array_2b6

    .line 209
    .line 210
    .line 211
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {p0, v0}, Lcom/example/navistart/Transport/TransportService;->i(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    return-object v3

    .line 223
    :cond_de
    const/16 v4, 0xe

    .line 224
    .line 225
    const/4 v5, 0x1

    .line 226
    :try_start_e1
    new-array v4, v4, [B

    .line 227
    .line 228
    fill-array-data v4, :array_2be

    .line 229
    .line 230
    .line 231
    new-array v7, v2, [B

    .line 232
    .line 233
    fill-array-data v7, :array_2ca
    :try_end_eb
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e1 .. :try_end_eb} :catch_174
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_e1 .. :try_end_eb} :catch_17c
    .catch Ljava/lang/InterruptedException; {:try_start_e1 .. :try_end_eb} :catch_16e
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_eb} :catch_17a
    .catch Ljava/lang/SecurityException; {:try_start_e1 .. :try_end_eb} :catch_177

    .line 234
    .line 235
    .line 236
    :try_start_eb
    invoke-static {v4, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    invoke-virtual {p0, v4}, Lcom/example/navistart/Transport/TransportService;->i(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 248
    .line 249
    .line 250
    sget-object v0, Ly0/j;->a:Ljava/util/UUID;

    .line 251
    .line 252
    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    .line 253
    .line 254
    .line 255
    move-result-object v0
    :try_end_ff
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_eb .. :try_end_ff} :catch_174
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_eb .. :try_end_ff} :catch_171
    .catch Ljava/lang/InterruptedException; {:try_start_eb .. :try_end_ff} :catch_16e
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_ff} :catch_16c
    .catch Ljava/lang/SecurityException; {:try_start_eb .. :try_end_ff} :catch_169

    .line 256
    :try_start_ff
    iget-object v4, p0, Lcom/example/navistart/Transport/TransportService;->h:Ljava/util/concurrent/ExecutorService;

    .line 257
    .line 258
    new-instance v6, Ld7/b;

    .line 259
    .line 260
    const/4 v7, 0x2

    .line 261
    invoke-direct {v6, v7, v0}, Ld7/b;-><init>(ILjava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    invoke-interface {v4, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 265
    .line 266
    .line 267
    move-result-object v4
    :try_end_10b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_ff .. :try_end_10b} :catch_166
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_ff .. :try_end_10b} :catch_161
    .catch Ljava/lang/InterruptedException; {:try_start_ff .. :try_end_10b} :catch_164
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_10b} :catch_15f
    .catch Ljava/lang/SecurityException; {:try_start_ff .. :try_end_10b} :catch_15d

    .line 268
    :try_start_10b
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 269
    .line 270
    const-wide/16 v7, 0x1388

    .line 271
    .line 272
    invoke-interface {v4, v7, v8, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    const/16 v6, 0x14

    .line 276
    .line 277
    new-array v6, v6, [B

    .line 278
    .line 279
    fill-array-data v6, :array_2d2

    .line 280
    .line 281
    .line 282
    new-array v7, v2, [B

    .line 283
    .line 284
    fill-array-data v7, :array_2e0

    .line 285
    .line 286
    .line 287
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v6

    .line 291
    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v6

    .line 295
    invoke-virtual {p0, v6}, Lcom/example/navistart/Transport/TransportService;->i(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    new-instance v6, Le0/s3;

    .line 299
    .line 300
    const/16 v7, 0x9

    .line 301
    .line 302
    new-array v7, v7, [B

    .line 303
    .line 304
    fill-array-data v7, :array_2e8

    .line 305
    .line 306
    .line 307
    new-array v8, v2, [B

    .line 308
    .line 309
    fill-array-data v8, :array_2f2

    .line 310
    .line 311
    .line 312
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v7

    .line 316
    new-instance v8, Ljava/io/BufferedReader;

    .line 317
    .line 318
    new-instance v9, Ljava/io/InputStreamReader;

    .line 319
    .line 320
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    .line 321
    .line 322
    .line 323
    move-result-object v10

    .line 324
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 325
    .line 326
    invoke-direct {v9, v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 327
    .line 328
    .line 329
    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 330
    .line 331
    .line 332
    new-instance v9, Ljava/io/BufferedWriter;

    .line 333
    .line 334
    new-instance v10, Ljava/io/OutputStreamWriter;

    .line 335
    .line 336
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    .line 337
    .line 338
    .line 339
    move-result-object v12

    .line 340
    invoke-direct {v10, v12, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 341
    .line 342
    .line 343
    invoke-direct {v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 344
    .line 345
    .line 346
    invoke-direct {v6, v7, v0, v8, v9}, Le0/s3;-><init>(Ljava/lang/String;Ljava/io/Closeable;Ljava/io/BufferedReader;Ljava/io/BufferedWriter;)V
    :try_end_15c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_10b .. :try_end_15c} :catch_1e4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_10b .. :try_end_15c} :catch_161
    .catch Ljava/lang/InterruptedException; {:try_start_10b .. :try_end_15c} :catch_19e
    .catch Ljava/io/IOException; {:try_start_10b .. :try_end_15c} :catch_15f
    .catch Ljava/lang/SecurityException; {:try_start_10b .. :try_end_15c} :catch_15d

    .line 347
    .line 348
    .line 349
    return-object v6

    .line 350
    :catch_15d
    move-exception v1

    .line 351
    goto :goto_17f

    .line 352
    :catch_15f
    move-exception v1

    .line 353
    goto :goto_17f

    .line 354
    :catch_161
    move-exception v1

    .line 355
    goto/16 :goto_1c1

    .line 356
    .line 357
    :catch_164
    move-object v4, v3

    .line 358
    goto :goto_19e

    .line 359
    :catch_166
    move-object v4, v3

    .line 360
    goto/16 :goto_1e4

    .line 361
    .line 362
    :catch_169
    move-exception v1

    .line 363
    :goto_16a
    move-object v0, v3

    .line 364
    goto :goto_17f

    .line 365
    :catch_16c
    move-exception v1

    .line 366
    goto :goto_16a

    .line 367
    :catch_16e
    move-object v0, v3

    .line 368
    move-object v4, v0

    .line 369
    goto :goto_19e

    .line 370
    :catch_171
    move-exception v1

    .line 371
    :goto_172
    move-object v0, v3

    .line 372
    goto :goto_1c1

    .line 373
    :catch_174
    move-object v0, v3

    .line 374
    move-object v4, v0

    .line 375
    goto :goto_1e4

    .line 376
    :catch_177
    move-exception v0

    .line 377
    :goto_178
    move-object v1, v0

    .line 378
    goto :goto_16a

    .line 379
    :catch_17a
    move-exception v0

    .line 380
    goto :goto_178

    .line 381
    :catch_17c
    move-exception v0

    .line 382
    move-object v1, v0

    .line 383
    goto :goto_172

    .line 384
    :goto_17f
    const/16 v4, 0x11

    .line 385
    .line 386
    new-array v4, v4, [B

    .line 387
    .line 388
    fill-array-data v4, :array_2fa

    .line 389
    .line 390
    .line 391
    new-array v2, v2, [B

    .line 392
    .line 393
    fill-array-data v2, :array_308

    .line 394
    .line 395
    .line 396
    invoke-static {v4, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    invoke-static {v1}, Lcom/example/navistart/Transport/TransportService;->e(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    invoke-virtual {p0, v1}, Lcom/example/navistart/Transport/TransportService;->i(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    invoke-static {v0}, Lcom/example/navistart/Transport/TransportService;->b(Ljava/io/Closeable;)V

    .line 412
    .line 413
    .line 414
    return-object v3

    .line 415
    :catch_19e
    :goto_19e
    const/16 v1, 0x16

    .line 416
    .line 417
    new-array v1, v1, [B

    .line 418
    .line 419
    fill-array-data v1, :array_310

    .line 420
    .line 421
    .line 422
    new-array v2, v2, [B

    .line 423
    .line 424
    fill-array-data v2, :array_320

    .line 425
    .line 426
    .line 427
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    invoke-virtual {p0, v1}, Lcom/example/navistart/Transport/TransportService;->i(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 439
    .line 440
    .line 441
    if-eqz v4, :cond_1bd

    .line 442
    .line 443
    invoke-interface {v4, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 444
    .line 445
    .line 446
    :cond_1bd
    invoke-static {v0}, Lcom/example/navistart/Transport/TransportService;->b(Ljava/io/Closeable;)V

    .line 447
    .line 448
    .line 449
    return-object v3

    .line 450
    :goto_1c1
    const/16 v4, 0x13

    .line 451
    .line 452
    new-array v4, v4, [B

    .line 453
    .line 454
    fill-array-data v4, :array_328

    .line 455
    .line 456
    .line 457
    new-array v2, v2, [B

    .line 458
    .line 459
    fill-array-data v2, :array_336

    .line 460
    .line 461
    .line 462
    invoke-static {v4, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v2

    .line 466
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    invoke-static {v1}, Lcom/example/navistart/Transport/TransportService;->e(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v1

    .line 478
    invoke-virtual {p0, v1}, Lcom/example/navistart/Transport/TransportService;->i(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    invoke-static {v0}, Lcom/example/navistart/Transport/TransportService;->b(Ljava/io/Closeable;)V

    .line 482
    .line 483
    .line 484
    return-object v3

    .line 485
    :catch_1e4
    :goto_1e4
    const/16 v6, 0x20

    .line 486
    .line 487
    new-array v6, v6, [B

    .line 488
    .line 489
    fill-array-data v6, :array_33e

    .line 490
    .line 491
    .line 492
    new-array v2, v2, [B

    .line 493
    .line 494
    fill-array-data v2, :array_352

    .line 495
    .line 496
    .line 497
    invoke-static {v6, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v2

    .line 501
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    invoke-virtual {p0, v1}, Lcom/example/navistart/Transport/TransportService;->i(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    if-eqz v4, :cond_200

    .line 509
    .line 510
    invoke-interface {v4, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 511
    .line 512
    .line 513
    :cond_200
    invoke-static {v0}, Lcom/example/navistart/Transport/TransportService;->b(Ljava/io/Closeable;)V

    .line 514
    .line 515
    .line 516
    return-object v3

    .line 517
    :cond_204
    :goto_204
    const/16 v0, 0x19

    .line 518
    .line 519
    new-array v0, v0, [B

    .line 520
    .line 521
    fill-array-data v0, :array_35a

    .line 522
    .line 523
    .line 524
    new-array v1, v2, [B

    .line 525
    .line 526
    fill-array-data v1, :array_36c

    .line 527
    .line 528
    .line 529
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    invoke-virtual {p0, v0}, Lcom/example/navistart/Transport/TransportService;->i(Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    return-object v3

    .line 537
    :array_218
    .array-data 1
        0x4t
        -0x2bt
        -0x71t
        -0x27t
        -0x6bt
        -0x1ft
        -0x34t
        -0x72t
        0x15t
        -0x22t
        -0x67t
        -0x3at
        -0x6dt
        -0x5t
        -0x25t
        -0x37t
        0xat
        -0x2bt
        -0x3bt
        -0x17t
        -0x4at
        -0x23t
        -0x13t
        -0xct
        0x2at
        -0xct
        -0x41t
        -0x1dt
        -0x5bt
        -0x35t
        -0x19t
        -0x12t
        0x2bt
        -0x2t
        -0x58t
        -0x1t
    .end array-data

    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    :array_22e
    .array-data 1
        0x65t
        -0x45t
        -0x15t
        -0x55t
        -0x6t
        -0x78t
        -0x58t
        -0x60t
    .end array-data

    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    :array_236
    .array-data 1
        0x6ct
        -0x7bt
        0x43t
        -0x3at
        -0x19t
        0x40t
        0x6at
        -0x32t
        0x66t
        -0x6at
        0x55t
        -0x34t
        -0x3t
        0x41t
        0x60t
        -0x27t
        0x7at
        -0x17t
        0x66t
        -0x1at
        -0x3ft
        0x62t
        0x4ct
        -0x17t
        0x5dt
        -0x60t
        0x79t
        -0x13t
        -0x6dt
        0x62t
        0x4ct
        -0x17t
        0x5dt
        -0x60t
        0x78t
        -0x1ct
    .end array-data

    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    :array_24c
    .array-data 1
        0x2et
        -0x37t
        0x16t
        -0x7dt
        -0x4dt
        0xft
        0x25t
        -0x66t
    .end array-data

    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    :array_254
    .array-data 1
        -0x42t
        -0x50t
        -0x54t
        -0x8t
        -0x5t
        0x55t
        0x66t
        -0x7at
        -0x6ct
        -0x4t
        -0x48t
        -0x7t
        -0x12t
        0x4at
        0x7dt
        -0x69t
        -0x72t
        -0x4t
        -0x54t
        -0xdt
        -0x12t
        0x4ct
        0x68t
        -0x65t
        -0x70t
        -0x43t
        -0x45t
        -0xft
        -0x16t
    .end array-data

    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    nop

    .line 617
    :array_268
    .array-data 1
        -0x4t
        -0x24t
        -0x27t
        -0x63t
        -0x71t
        0x3at
        0x9t
        -0xet
    .end array-data

    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    :array_270
    .array-data 1
        0x7t
        -0x53t
        -0x67t
        0x3at
        -0x63t
        0x24t
        0x18t
        -0x2at
        0x2dt
        -0x1ft
        -0x7bt
        0x2ct
        -0x37t
        0x2ft
        0x1et
        -0x2ft
        0x24t
        -0x5dt
        -0x80t
        0x3at
        -0x73t
    .end array-data

    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    nop

    .line 641
    :array_280
    .array-data 1
        0x45t
        -0x3ft
        -0x14t
        0x5ft
        -0x17t
        0x4bt
        0x77t
        -0x5et
    .end array-data

    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    :array_288
    .array-data 1
        -0x44t
        0x35t
        0x31t
        0xat
        -0x7et
        -0x8t
        0x2t
        -0x1ct
        -0x64t
        0x37t
        0x3at
        0x17t
        -0x62t
        -0x54t
        0x52t
        -0x1ct
        -0x6at
        0x26t
        0x3at
        0x0t
        -0x33t
        -0x18t
        0x47t
        -0xdt
        -0x6at
        0x37t
        0x3at
        0x17t
        -0x29t
        -0x54t
    .end array-data

    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    nop

    .line 669
    :array_29c
    .array-data 1
        -0x1t
        0x54t
        0x5ft
        0x64t
        -0x13t
        -0x74t
        0x22t
        -0x7bt
    .end array-data

    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    :array_2a4
    .array-data 1
        -0xbt
        -0x1et
        0x73t
        -0xet
        0x4ft
        -0x4ft
        0x16t
        0x62t
        -0x40t
        -0xbt
        0x73t
        -0x1dt
        0x4ft
        -0xbt
        0x58t
        0x69t
        -0x2ft
        -0x5dt
        0x7ct
        -0x11t
        0x5ft
        -0x45t
        0x52t
        0x3ct
        -0x7bt
    .end array-data

    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    nop

    .line 695
    :array_2b6
    .array-data 1
        -0x5bt
        -0x7dt
        0x1at
        -0x80t
        0x2at
        -0x2bt
        0x36t
        0x6t
    .end array-data

    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    :array_2be
    .array-data 1
        -0x8t
        -0x47t
        0xbt
        -0x6ft
        -0x2et
        0x55t
        0x5ct
        -0x40t
        -0x2bt
        -0x4ft
        0x45t
        -0x75t
        -0x28t
        0x16t
    .end array-data

    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    nop

    .line 715
    :array_2ca
    .array-data 1
        -0x45t
        -0x2at
        0x65t
        -0x1t
        -0x49t
        0x36t
        0x28t
        -0x57t
    .end array-data

    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    :array_2d2
    .array-data 1
        0x13t
        0x53t
        0x33t
        0x75t
        -0x23t
        0x20t
        0x76t
        -0x1ft
        0x2ft
        0x52t
        0x3et
        0x7bt
        -0x25t
        0x20t
        0x33t
        -0x1at
        0x60t
        0x48t
        0x3ft
        0x3et
    .end array-data

    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    :array_2e0
    .array-data 1
        0x40t
        0x3ct
        0x50t
        0x1et
        -0x48t
        0x54t
        0x56t
        -0x7et
    .end array-data

    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    :array_2e8
    .array-data 1
        -0x4t
        -0xat
        0x2ft
        -0x3t
        0x29t
        -0x2ft
        0x53t
        0x4et
        -0x2at
    .end array-data

    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    nop

    .line 755
    :array_2f2
    .array-data 1
        -0x42t
        -0x66t
        0x5at
        -0x68t
        0x5dt
        -0x42t
        0x3ct
        0x3at
    .end array-data

    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    :array_2fa
    .array-data 1
        -0x58t
        -0x3et
        -0x22t
        -0x3ct
        0x7ft
        -0x2ft
        -0x56t
        -0x9t
        -0x7et
        -0x72t
        -0x32t
        -0x2dt
        0x79t
        -0x2ft
        -0x49t
        -0x47t
        -0x36t
    .end array-data

    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    nop

    .line 777
    :array_308
    .array-data 1
        -0x16t
        -0x52t
        -0x55t
        -0x5ft
        0xbt
        -0x42t
        -0x3bt
        -0x7dt
    .end array-data

    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    :array_310
    .array-data 1
        -0x3ct
        0x11t
        0xet
        -0x6at
        -0x22t
        -0x40t
        0x31t
        0x5t
        -0x18t
        0x10t
        0x40t
        -0x6ft
        -0x2bt
        -0x29t
        0x20t
        0x1et
        -0xbt
        0xbt
        0x10t
        -0x74t
        -0x22t
        -0x39t
    .end array-data

    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    nop

    .line 801
    :array_320
    .array-data 1
        -0x79t
        0x7et
        0x60t
        -0x8t
        -0x45t
        -0x5dt
        0x45t
        0x6ct
    .end array-data

    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    :array_328
    .array-data 1
        -0x53t
        0x7t
        0x34t
        -0x2et
        -0x39t
        0x33t
        -0x42t
        -0x38t
        -0x7ft
        0x6t
        0x7at
        -0x26t
        -0x3dt
        0x39t
        -0x5at
        -0x3ct
        -0x76t
        0x52t
        0x7at
    .end array-data

    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    :array_336
    .array-data 1
        -0x12t
        0x68t
        0x5at
        -0x44t
        -0x5et
        0x50t
        -0x36t
        -0x5ft
    .end array-data

    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    :array_33e
    .array-data 1
        0x1ft
        0x3ct
        0x37t
        -0x43t
        -0x56t
        -0x7et
        0x17t
        -0x1ct
        0x33t
        0x3dt
        0x79t
        -0x59t
        -0x5at
        -0x74t
        0x6t
        -0x17t
        0x7ct
        0x3ct
        0x2ct
        -0x59t
        -0x11t
        -0x80t
        0x5t
        -0x7t
        0x39t
        0x21t
        0x79t
        -0x1at
        -0x11t
        -0x6et
        0x59t
        -0x53t
    .end array-data

    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    :array_352
    .array-data 1
        0x5ct
        0x53t
        0x59t
        -0x2dt
        -0x31t
        -0x1ft
        0x63t
        -0x73t
    .end array-data

    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    :array_35a
    .array-data 1
        -0x3at
        -0x73t
        0x1t
        0x15t
        -0x29t
        0x8t
        -0x58t
        0x7at
        -0x14t
        -0x3et
        0x45t
        0x0t
        -0x40t
        0x8t
        -0x47t
        0x7at
        -0x58t
        -0x6ft
        0x44t
        0x9t
        -0x2dt
        0x2t
        -0x52t
        0x7at
        -0x14t
    .end array-data

    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    nop

    .line 877
    :array_36c
    .array-data 1
        -0x78t
        -0x1et
        0x21t
        0x65t
        -0x4at
        0x61t
        -0x26t
        0x1ft
    .end array-data
.end method

.method public final d()Le0/s3;
    .registers 12

    .line 1
    invoke-static {p0}, Ly0/m;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ly0/m;->c:Ljava/lang/String;

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ly0/m;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget-object v2, Ly0/m;->a:Ljava/lang/String;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    sget-object v4, Ly0/m;->b:Ljava/lang/String;

    .line 29
    .line 30
    const/4 v5, 0x1

    .line 31
    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/16 v4, 0x8

    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    if-eqz v1, :cond_8e

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/4 v1, 0x4

    .line 45
    new-array v1, v1, [B

    .line 46
    .line 47
    fill-array-data v1, :array_106

    .line 48
    .line 49
    .line 50
    new-array v7, v4, [B

    .line 51
    .line 52
    fill-array-data v7, :array_10c

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 64
    .line 65
    if-nez v0, :cond_44

    .line 66
    .line 67
    :cond_42
    :goto_42
    move-object v0, v6

    .line 68
    goto :goto_8e

    .line 69
    :cond_44
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_42

    .line 74
    .line 75
    iget v1, v0, Landroid/net/DhcpInfo;->gateway:I

    .line 76
    .line 77
    if-nez v1, :cond_4f

    .line 78
    .line 79
    goto :goto_42

    .line 80
    :cond_4f
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 81
    .line 82
    const/16 v7, 0xb

    .line 83
    .line 84
    new-array v7, v7, [B

    .line 85
    .line 86
    fill-array-data v7, :array_114

    .line 87
    .line 88
    .line 89
    new-array v8, v4, [B

    .line 90
    .line 91
    fill-array-data v8, :array_11e

    .line 92
    .line 93
    .line 94
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    iget v8, v0, Landroid/net/DhcpInfo;->gateway:I

    .line 99
    .line 100
    and-int/lit16 v8, v8, 0xff

    .line 101
    .line 102
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    iget v9, v0, Landroid/net/DhcpInfo;->gateway:I

    .line 107
    .line 108
    shr-int/2addr v9, v4

    .line 109
    and-int/lit16 v9, v9, 0xff

    .line 110
    .line 111
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    iget v10, v0, Landroid/net/DhcpInfo;->gateway:I

    .line 116
    .line 117
    shr-int/lit8 v10, v10, 0x10

    .line 118
    .line 119
    and-int/lit16 v10, v10, 0xff

    .line 120
    .line 121
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v10

    .line 125
    iget v0, v0, Landroid/net/DhcpInfo;->gateway:I

    .line 126
    .line 127
    shr-int/lit8 v0, v0, 0x18

    .line 128
    .line 129
    and-int/lit16 v0, v0, 0xff

    .line 130
    .line 131
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    filled-new-array {v8, v9, v10, v0}, [Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-static {v1, v7, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    :cond_8e
    :goto_8e
    if-eqz v0, :cond_104

    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-eqz v1, :cond_9b

    .line 154
    .line 155
    goto :goto_104

    .line 156
    :cond_9b
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    sget-object v2, Ly0/m;->d:Ljava/lang/String;

    .line 165
    .line 166
    const/16 v3, 0x22c1

    .line 167
    .line 168
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-lez v1, :cond_b3

    .line 173
    .line 174
    const v2, 0xffff

    .line 175
    .line 176
    .line 177
    if-gt v1, v2, :cond_b3

    .line 178
    .line 179
    move v3, v1

    .line 180
    :cond_b3
    new-instance v1, Ljava/net/Socket;

    .line 181
    .line 182
    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    .line 183
    .line 184
    .line 185
    :try_start_b8
    invoke-virtual {v1, v5}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 186
    .line 187
    .line 188
    new-instance v2, Ljava/net/InetSocketAddress;

    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-direct {v2, v0, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 195
    .line 196
    .line 197
    const/16 v0, 0x4b0

    .line 198
    .line 199
    invoke-virtual {v1, v2, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 200
    .line 201
    .line 202
    const/16 v0, 0x1b58

    .line 203
    .line 204
    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 205
    .line 206
    .line 207
    new-instance v0, Le0/s3;

    .line 208
    .line 209
    const/4 v2, 0x5

    .line 210
    new-array v2, v2, [B

    .line 211
    .line 212
    fill-array-data v2, :array_126

    .line 213
    .line 214
    .line 215
    new-array v3, v4, [B

    .line 216
    .line 217
    fill-array-data v3, :array_12e

    .line 218
    .line 219
    .line 220
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    new-instance v3, Ljava/io/BufferedReader;

    .line 225
    .line 226
    new-instance v4, Ljava/io/InputStreamReader;

    .line 227
    .line 228
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 233
    .line 234
    invoke-direct {v4, v5, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 235
    .line 236
    .line 237
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 238
    .line 239
    .line 240
    new-instance v4, Ljava/io/BufferedWriter;

    .line 241
    .line 242
    new-instance v5, Ljava/io/OutputStreamWriter;

    .line 243
    .line 244
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 245
    .line 246
    .line 247
    move-result-object v8

    .line 248
    invoke-direct {v5, v8, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 249
    .line 250
    .line 251
    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 252
    .line 253
    .line 254
    invoke-direct {v0, v2, v1, v3, v4}, Le0/s3;-><init>(Ljava/lang/String;Ljava/io/Closeable;Ljava/io/BufferedReader;Ljava/io/BufferedWriter;)V
    :try_end_100
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_100} :catch_101

    .line 255
    .line 256
    .line 257
    return-object v0

    .line 258
    :catch_101
    invoke-static {v1}, Lcom/example/navistart/Transport/TransportService;->b(Ljava/io/Closeable;)V

    .line 259
    .line 260
    .line 261
    :cond_104
    :goto_104
    return-object v6

    .line 262
    nop

    .line 263
    :array_106
    .array-data 1
        -0x1ft
        -0x56t
        -0xdt
        -0x35t
    .end array-data

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    :array_10c
    .array-data 1
        -0x6at
        -0x3dt
        -0x6bt
        -0x5et
        0x71t
        -0x6et
        0x6bt
        -0x2dt
    .end array-data

    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    :array_114
    .array-data 1
        0x5ft
        0x5at
        0x54t
        0x47t
        0x17t
        0x31t
        -0x64t
        0x8t
        0x54t
        0x1bt
        0x1et
    .end array-data

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
    :array_11e
    .array-data 1
        0x7at
        0x3et
        0x7at
        0x62t
        0x73t
        0x1ft
        -0x47t
        0x6ct
    .end array-data

    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    :array_126
    .array-data 1
        -0x3ft
        0x65t
        -0x36t
        -0xbt
        -0x2t
    .end array-data

    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    nop

    .line 303
    :array_12e
    .array-data 1
        -0x6at
        0xct
        -0x19t
        -0x4dt
        -0x69t
        0x58t
        -0x78t
        0x1ct
    .end array-data
.end method

.method public final f()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/example/navistart/Transport/TransportService;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1a

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ly0/l;

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/example/navistart/Transport/TransportService;->k(Ly0/l;)V

    .line 24
    .line 25
    .line 26
    goto :goto_a

    .line 27
    :cond_1a
    iget-object v0, p0, Lcom/example/navistart/Transport/TransportService;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_34

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Ly0/l;

    .line 48
    .line 49
    invoke-virtual {p0, v1}, Lcom/example/navistart/Transport/TransportService;->k(Ly0/l;)V

    .line 50
    .line 51
    .line 52
    goto :goto_24

    .line 53
    :cond_34
    return-void
.end method

.method public final g(Le0/s3;Ly0/i;)V
    .registers 12

    .line 1
    iget-object v0, p2, Ly0/i;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p2, Ly0/i;->e:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p2, Ly0/i;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-wide v3, p2, Ly0/i;->c:J

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    const/4 v6, 0x3

    .line 14
    const/4 v7, 0x4

    .line 15
    const/16 v8, 0x8

    .line 16
    .line 17
    sparse-switch v5, :sswitch_data_e2

    .line 18
    .line 19
    .line 20
    goto/16 :goto_e0

    .line 21
    .line 22
    :sswitch_15
    new-array p1, v7, [B

    .line 23
    .line 24
    fill-array-data p1, :array_f4

    .line 25
    .line 26
    .line 27
    new-array p2, v8, [B

    .line 28
    .line 29
    fill-array-data p2, :array_fa

    .line 30
    .line 31
    .line 32
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :sswitch_27
    new-array p2, v7, [B

    .line 41
    .line 42
    fill-array-data p2, :array_102

    .line 43
    .line 44
    .line 45
    new-array v1, v8, [B

    .line 46
    .line 47
    fill-array-data v1, :array_108

    .line 48
    .line 49
    .line 50
    invoke-static {p2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-eqz p2, :cond_e0

    .line 59
    .line 60
    new-array p2, v7, [B

    .line 61
    .line 62
    fill-array-data p2, :array_110

    .line 63
    .line 64
    .line 65
    new-array v0, v8, [B

    .line 66
    .line 67
    fill-array-data v0, :array_116

    .line 68
    .line 69
    .line 70
    invoke-static {p2, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    new-array v0, v6, [B

    .line 75
    .line 76
    fill-array-data v0, :array_11e

    .line 77
    .line 78
    .line 79
    new-array v1, v8, [B

    .line 80
    .line 81
    fill-array-data v1, :array_124

    .line 82
    .line 83
    .line 84
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {p2, v0}, Ly0/j;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {p1, p2}, Le0/s3;->r(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :sswitch_5f
    new-array v5, v7, [B

    .line 97
    .line 98
    fill-array-data v5, :array_12c

    .line 99
    .line 100
    .line 101
    new-array v6, v8, [B

    .line 102
    .line 103
    fill-array-data v6, :array_132

    .line 104
    .line 105
    .line 106
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_e0

    .line 115
    .line 116
    new-array v0, v8, [B

    .line 117
    .line 118
    fill-array-data v0, :array_13a

    .line 119
    .line 120
    .line 121
    new-array v5, v8, [B

    .line 122
    .line 123
    fill-array-data v5, :array_142

    .line 124
    .line 125
    .line 126
    invoke-static {v0, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iget-object p2, p2, Ly0/i;->d:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    if-eqz p2, :cond_bf

    .line 137
    .line 138
    iget-object p2, p0, Lcom/example/navistart/Transport/TransportService;->d:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 139
    .line 140
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    if-eqz p2, :cond_98

    .line 149
    .line 150
    invoke-static {v3, v4, v2, v1}, Ly0/g;->b(JLjava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_98
    :try_start_98
    sget-object p2, Ly0/j;->f:Ljava/lang/String;

    .line 154
    .line 155
    invoke-static {p2}, Ly0/j;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    new-array v0, v8, [B

    .line 160
    .line 161
    fill-array-data v0, :array_14a

    .line 162
    .line 163
    .line 164
    new-array v1, v8, [B

    .line 165
    .line 166
    fill-array-data v1, :array_152

    .line 167
    .line 168
    .line 169
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {p2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p2
    :try_end_b4
    .catch Lorg/json/JSONException; {:try_start_98 .. :try_end_b4} :catch_b8

    .line 181
    invoke-virtual {p1, p2}, Le0/s3;->r(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :catch_b8
    move-exception p1

    .line 186
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 187
    .line 188
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 189
    .line 190
    .line 191
    throw p2

    .line 192
    :cond_bf
    invoke-static {v3, v4, v2, v1}, Ly0/g;->b(JLjava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :sswitch_c3
    new-array p1, v6, [B

    .line 197
    .line 198
    fill-array-data p1, :array_15a

    .line 199
    .line 200
    .line 201
    new-array p2, v8, [B

    .line 202
    .line 203
    fill-array-data p2, :array_160

    .line 204
    .line 205
    .line 206
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    if-eqz p1, :cond_e0

    .line 215
    .line 216
    iget-object p1, p0, Lcom/example/navistart/Transport/TransportService;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 217
    .line 218
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    :cond_e0
    :goto_e0
    return-void

    .line 226
    nop

    .line 227
    :sswitch_data_e2
    .sparse-switch
        0x17889 -> :sswitch_c3
        0x2eefaa -> :sswitch_5f
        0x348172 -> :sswitch_27
        0x3497f8 -> :sswitch_15
    .end sparse-switch

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
    :array_f4
    .array-data 1
        -0x4et
        -0x3dt
        -0x1dt
        -0x60t
    .end array-data

    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    :array_fa
    .array-data 1
        -0x3et
        -0x54t
        -0x73t
        -0x39t
        -0x1ct
        -0x32t
        0x8t
        -0x56t
    .end array-data

    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    :array_102
    .array-data 1
        -0x1et
        -0x5at
        -0x26t
        -0x15t
    .end array-data

    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    :array_108
    .array-data 1
        -0x6et
        -0x31t
        -0x4ct
        -0x74t
        -0x24t
        0x31t
        0x57t
        -0x5ct
    .end array-data

    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    :array_110
    .array-data 1
        0x42t
        0x78t
        0x6ct
        0x65t
    .end array-data

    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    :array_116
    .array-data 1
        0x32t
        0x17t
        0x2t
        0x2t
        0x4at
        0x46t
        0x20t
        0x2at
    .end array-data

    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    :array_11e
    .array-data 1
        0x6bt
        -0x1et
        -0x14t
    .end array-data

    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    :array_124
    .array-data 1
        0x8t
        -0x7dt
        -0x62t
        0x45t
        -0x51t
        0x1et
        -0x4dt
        0x3ct
    .end array-data

    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    :array_12c
    .array-data 1
        -0x7ct
        -0x3bt
        0x11t
        -0x7t
    .end array-data

    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    :array_132
    .array-data 1
        -0x20t
        -0x5ct
        0x65t
        -0x68t
        0x5at
        0x72t
        0x3ft
        -0x6dt
    .end array-data

    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    :array_13a
    .array-data 1
        0x4dt
        -0x1ft
        -0x47t
        -0xat
        -0x7ct
        0x54t
        -0x1ct
        -0x8t
    .end array-data

    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    :array_142
    .array-data 1
        0x3ft
        -0x7ct
        -0x2bt
        -0x61t
        -0x1bt
        0x36t
        -0x78t
        -0x63t
    .end array-data

    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    :array_14a
    .array-data 1
        -0xet
        -0x1ct
        -0x5t
        0x6et
        0xbt
        0x47t
        0x7bt
        0x0t
    .end array-data

    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    :array_152
    .array-data 1
        -0x7ft
        -0x7ft
        -0x76t
        0x1bt
        0x6et
        0x29t
        0x18t
        0x65t
    .end array-data

    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    :array_15a
    .array-data 1
        0x52t
        -0x18t
        0x4et
    .end array-data

    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    :array_160
    .array-data 1
        0x33t
        -0x75t
        0x25t
        0x62t
        0x7ft
        -0x44t
        0x37t
        0x4ft
    .end array-data
.end method

.method public final h()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/example/navistart/Transport/TransportService;->l:Le0/s3;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/example/navistart/Transport/TransportService;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_c7

    .line 10
    .line 11
    if-nez v0, :cond_e

    .line 12
    .line 13
    goto/16 :goto_c7

    .line 14
    .line 15
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    iget-wide v3, p0, Lcom/example/navistart/Transport/TransportService;->m:J

    .line 20
    .line 21
    sub-long v3, v1, v3

    .line 22
    .line 23
    const-wide/16 v5, 0x1b58

    .line 24
    .line 25
    cmp-long v3, v3, v5

    .line 26
    .line 27
    const/16 v4, 0x9

    .line 28
    .line 29
    const/16 v5, 0x8

    .line 30
    .line 31
    if-lez v3, :cond_64

    .line 32
    .line 33
    sget-object v1, Lcom/example/navistart/Transport/TransportService;->p:Ljava/lang/String;

    .line 34
    .line 35
    const/16 v2, 0x26

    .line 36
    .line 37
    new-array v2, v2, [B

    .line 38
    .line 39
    fill-array-data v2, :array_c8

    .line 40
    .line 41
    .line 42
    new-array v3, v5, [B

    .line 43
    .line 44
    fill-array-data v3, :array_e0

    .line 45
    .line 46
    .line 47
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    new-array v1, v4, [B

    .line 55
    .line 56
    fill-array-data v1, :array_e8

    .line 57
    .line 58
    .line 59
    new-array v2, v5, [B

    .line 60
    .line 61
    fill-array-data v2, :array_f2

    .line 62
    .line 63
    .line 64
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget-object v2, v0, Le0/s3;->c:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v2, Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_60

    .line 77
    .line 78
    const/16 v1, 0x1e

    .line 79
    .line 80
    new-array v1, v1, [B

    .line 81
    .line 82
    fill-array-data v1, :array_fa

    .line 83
    .line 84
    .line 85
    new-array v2, v5, [B

    .line 86
    .line 87
    fill-array-data v2, :array_10e

    .line 88
    .line 89
    .line 90
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {p0, v1}, Lcom/example/navistart/Transport/TransportService;->i(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_60
    invoke-virtual {v0}, Le0/s3;->e()V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_64
    sget-object v3, Lcom/example/navistart/Transport/TransportService;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-nez v3, :cond_6d

    .line 108
    .line 109
    goto :goto_c7

    .line 110
    :cond_6d
    new-array v3, v4, [B

    .line 111
    .line 112
    fill-array-data v3, :array_116

    .line 113
    .line 114
    .line 115
    new-array v4, v5, [B

    .line 116
    .line 117
    fill-array-data v4, :array_120

    .line 118
    .line 119
    .line 120
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    iget-object v4, v0, Le0/s3;->c:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v4, Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_9e

    .line 133
    .line 134
    iget-wide v3, p0, Lcom/example/navistart/Transport/TransportService;->n:J

    .line 135
    .line 136
    sub-long v3, v1, v3

    .line 137
    .line 138
    const-wide/16 v6, 0x1388

    .line 139
    .line 140
    cmp-long v3, v3, v6

    .line 141
    .line 142
    if-ltz v3, :cond_9e

    .line 143
    .line 144
    iput-wide v1, p0, Lcom/example/navistart/Transport/TransportService;->n:J

    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/example/navistart/Transport/TransportService;->d()Le0/s3;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    if-eqz v1, :cond_9e

    .line 151
    .line 152
    invoke-virtual {v1}, Le0/s3;->e()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Le0/s3;->e()V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_9e
    const/4 v1, 0x4

    .line 160
    :try_start_9f
    new-array v1, v1, [B

    .line 161
    .line 162
    fill-array-data v1, :array_128

    .line 163
    .line 164
    .line 165
    new-array v2, v5, [B

    .line 166
    .line 167
    fill-array-data v2, :array_12e

    .line 168
    .line 169
    .line 170
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    const/4 v2, 0x3

    .line 175
    new-array v2, v2, [B

    .line 176
    .line 177
    fill-array-data v2, :array_136

    .line 178
    .line 179
    .line 180
    new-array v3, v5, [B

    .line 181
    .line 182
    fill-array-data v3, :array_13c

    .line 183
    .line 184
    .line 185
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-static {v1, v2}, Ly0/j;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {v0, v1}, Le0/s3;->r(Ljava/lang/String;)V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_c3} :catch_c4

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :catch_c4
    invoke-virtual {v0}, Le0/s3;->e()V

    .line 198
    .line 199
    .line 200
    :cond_c7
    :goto_c7
    return-void

    .line 201
    :array_c8
    .array-data 1
        0x3et
        -0x6et
        0xdt
        -0x65t
        0x7t
        -0x3t
        0x42t
        0x6t
        0x1et
        -0x40t
        0x1ct
        -0x70t
        0x11t
        -0x1t
        0xdt
        0x0t
        0x3t
        -0x73t
        0x9t
        -0x6ft
        0x54t
        -0x1et
        0x58t
        0x0t
        0x51t
        -0x40t
        0x1et
        -0x70t
        0x17t
        -0x1et
        0x43t
        0x1at
        0xft
        -0x7dt
        0x18t
        -0x64t
        0x1at
        -0x16t
    .end array-data

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
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    nop

    .line 225
    :array_e0
    .array-data 1
        0x6at
        -0x20t
        0x6ct
        -0xbt
        0x74t
        -0x73t
        0x2dt
        0x74t
    .end array-data

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    :array_e8
    .array-data 1
        -0x2ct
        0x7t
        0x2et
        -0x1bt
        0x60t
        0x43t
        0x0t
        0x50t
        -0x2t
    .end array-data

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    nop

    .line 243
    :array_f2
    .array-data 1
        -0x6at
        0x6bt
        0x5bt
        -0x80t
        0x14t
        0x2ct
        0x6ft
        0x24t
    .end array-data

    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    :array_fa
    .array-data 1
        -0x50t
        0x1et
        -0x6et
        -0x76t
        0x2bt
        0x2et
        0x31t
        0x56t
        -0x70t
        0x2t
        -0x29t
        -0x28t
        0x28t
        0x2ft
        0x2et
        0x54t
        -0x22t
        0x1t
        -0x26t
        -0x69t
        0x20t
        0x38t
        0x61t
        0x5ft
        -0x6ft
        0x3t
        -0x6et
        -0x31t
        0x6et
        0x2et
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
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    nop

    .line 271
    :array_10e
    .array-data 1
        -0x2t
        0x71t
        -0x4et
        -0x8t
        0x4et
        0x5dt
        0x41t
        0x39t
    .end array-data

    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    :array_116
    .array-data 1
        0x1ct
        0x58t
        -0x4et
        -0x15t
        -0x17t
        0x6bt
        -0x26t
        -0x42t
        0x36t
    .end array-data

    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    nop

    .line 289
    :array_120
    .array-data 1
        0x5et
        0x34t
        -0x39t
        -0x72t
        -0x63t
        0x4t
        -0x4bt
        -0x36t
    .end array-data

    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    :array_128
    .array-data 1
        0x1bt
        0x17t
        0x55t
        -0xet
    .end array-data

    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    :array_12e
    .array-data 1
        0x6bt
        0x7et
        0x3bt
        -0x6bt
        -0x46t
        -0x5t
        0x78t
        -0x22t
    .end array-data

    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    :array_136
    .array-data 1
        -0x4dt
        -0x72t
        0x7bt
    .end array-data

    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    :array_13c
    .array-data 1
        -0x30t
        -0x11t
        0x9t
        0x69t
        0x42t
        0x54t
        0x4et
        0x7dt
    .end array-data
.end method

.method public final i(Ljava/lang/String;)V
    .registers 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/example/navistart/Transport/TransportService;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    check-cast v3, Ljava/lang/Long;

    .line 12
    .line 13
    if-eqz v3, :cond_1b

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    sub-long v3, v0, v3

    .line 20
    .line 21
    const-wide/16 v5, 0x7530

    .line 22
    .line 23
    cmp-long v3, v3, v5

    .line 24
    .line 25
    if-gez v3, :cond_1b

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1b
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    const/16 v0, 0x18

    .line 36
    .line 37
    new-array v0, v0, [B

    .line 38
    .line 39
    fill-array-data v0, :array_44

    .line 40
    .line 41
    .line 42
    const/16 v1, 0x8

    .line 43
    .line 44
    new-array v1, v1, [B

    .line 45
    .line 46
    fill-array-data v1, :array_54

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    sget-object v0, Lcom/example/navistart/Transport/TransportService;->p:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    sget-object v0, Lcom/example/navistart/cores/ColorText;->GREEN:Lcom/example/navistart/cores/ColorText;

    .line 63
    .line 64
    invoke-static {p1, v0}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    nop

    :array_44
    .array-data 1
        0x75t
        0x35t
        -0x3bt
        0x21t
        0x7bt
        0x28t
        0x3ct
        -0x76t
        0x4ft
        0x39t
        -0x3dt
        0x1t
        0x29t
        0xbt
        0x3et
        -0x74t
        0x5at
        0x22t
        -0x22t
        0x1at
        0x7dt
        0x21t
        0x68t
        -0x27t
    .end array-data

    :array_54
    .array-data 1
        0x3ft
        0x56t
        -0x4ft
        0x75t
        0x9t
        0x49t
        0x52t
        -0x7t
    .end array-data
.end method

.method public final j(Le0/s3;)V
    .registers 12

    .line 1
    iput-object p1, p0, Lcom/example/navistart/Transport/TransportService;->l:Le0/s3;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iput-wide v0, p0, Lcom/example/navistart/Transport/TransportService;->m:J

    .line 8
    .line 9
    invoke-static {}, Ly0/c;->b()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x3

    .line 14
    const/16 v2, 0x9

    .line 15
    .line 16
    const/16 v3, 0x8

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    :try_start_12
    new-array v1, v1, [B

    .line 20
    .line 21
    fill-array-data v1, :array_2c4

    .line 22
    .line 23
    .line 24
    new-array v5, v3, [B

    .line 25
    .line 26
    fill-array-data v5, :array_2ca

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1, v0}, Ly0/j;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p1, v1}, Le0/s3;->r(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    move-object v5, v4

    .line 44
    :goto_2b
    iget-object v6, p0, Lcom/example/navistart/Transport/TransportService;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    .line 46
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_22d

    .line 51
    .line 52
    iget-object v6, p1, Le0/s3;->e:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v6, Ljava/io/BufferedReader;

    .line 55
    .line 56
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    if-eqz v6, :cond_22d

    .line 61
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide v7

    .line 66
    iput-wide v7, p0, Lcom/example/navistart/Transport/TransportService;->m:J
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_43} :catch_cc
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_43} :catch_c9
    .catchall {:try_start_12 .. :try_end_43} :catchall_c6

    .line 67
    .line 68
    :try_start_43
    invoke-static {v6}, Ly0/j;->g(Ljava/lang/String;)Ly0/i;

    .line 69
    .line 70
    .line 71
    move-result-object v6
    :try_end_47
    .catch Lorg/json/JSONException; {:try_start_43 .. :try_end_47} :catch_215
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_47} :catch_cc
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_47} :catch_c9
    .catchall {:try_start_43 .. :try_end_47} :catchall_c6

    .line 72
    :try_start_47
    new-array v7, v2, [B

    .line 73
    .line 74
    fill-array-data v7, :array_2d2

    .line 75
    .line 76
    .line 77
    new-array v8, v3, [B

    .line 78
    .line 79
    fill-array-data v8, :array_2dc

    .line 80
    .line 81
    .line 82
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    iget-object v8, v6, Ly0/i;->a:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    if-eqz v7, :cond_ef

    .line 93
    .line 94
    iget-object v5, v6, Ly0/i;->f:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result v6
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_63} :catch_cc
    .catch Ljava/lang/RuntimeException; {:try_start_47 .. :try_end_63} :catch_c9
    .catchall {:try_start_47 .. :try_end_63} :catchall_c6

    .line 100
    if-eqz v6, :cond_72

    .line 101
    .line 102
    iget-object v0, p0, Lcom/example/navistart/Transport/TransportService;->l:Le0/s3;

    .line 103
    .line 104
    if-ne v0, p1, :cond_6e

    .line 105
    .line 106
    iput-object v4, p0, Lcom/example/navistart/Transport/TransportService;->l:Le0/s3;

    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/example/navistart/Transport/TransportService;->m()V

    .line 109
    .line 110
    .line 111
    :cond_6e
    invoke-virtual {p1}, Le0/s3;->e()V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_72
    :try_start_72
    sget-object v6, Lcom/example/navistart/Transport/TransportService;->p:Ljava/lang/String;

    .line 116
    .line 117
    new-instance v7, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const/16 v8, 0x21

    .line 123
    .line 124
    new-array v8, v8, [B

    .line 125
    .line 126
    fill-array-data v8, :array_2e4

    .line 127
    .line 128
    .line 129
    new-array v9, v3, [B

    .line 130
    .line 131
    fill-array-data v9, :array_2fa

    .line 132
    .line 133
    .line 134
    invoke-static {v8, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget-object v8, p1, Le0/s3;->c:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v8, Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    new-array v6, v2, [B

    .line 156
    .line 157
    fill-array-data v6, :array_302

    .line 158
    .line 159
    .line 160
    new-array v7, v3, [B

    .line 161
    .line 162
    fill-array-data v7, :array_30c

    .line 163
    .line 164
    .line 165
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    iget-object v7, p1, Le0/s3;->c:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast v7, Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    if-eqz v6, :cond_cf

    .line 178
    .line 179
    const/16 v6, 0x29

    .line 180
    .line 181
    new-array v6, v6, [B

    .line 182
    .line 183
    fill-array-data v6, :array_314

    .line 184
    .line 185
    .line 186
    new-array v7, v3, [B

    .line 187
    .line 188
    fill-array-data v7, :array_32e

    .line 189
    .line 190
    .line 191
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    invoke-virtual {p0, v6}, Lcom/example/navistart/Transport/TransportService;->i(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    goto :goto_cf

    .line 199
    :catchall_c6
    move-exception v0

    .line 200
    goto/16 :goto_2b7

    .line 201
    .line 202
    :catch_c9
    move-exception v0

    .line 203
    goto/16 :goto_23b

    .line 204
    .line 205
    :catch_cc
    move-exception v0

    .line 206
    goto/16 :goto_23b

    .line 207
    .line 208
    :cond_cf
    :goto_cf
    invoke-static {p0}, Ly0/m;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    const/4 v7, 0x3

    .line 213
    new-array v7, v7, [B

    .line 214
    .line 215
    fill-array-data v7, :array_336

    .line 216
    .line 217
    .line 218
    new-array v8, v3, [B

    .line 219
    .line 220
    fill-array-data v8, :array_33c

    .line 221
    .line 222
    .line 223
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v7

    .line 227
    invoke-static {v6, v0, v5, v7}, Ly0/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    invoke-static {v6}, Ly0/j;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    invoke-virtual {p1, v6}, Le0/s3;->r(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    goto/16 :goto_2b

    .line 239
    .line 240
    :cond_ef
    const/4 v7, 0x7

    .line 241
    new-array v7, v7, [B

    .line 242
    .line 243
    fill-array-data v7, :array_344

    .line 244
    .line 245
    .line 246
    new-array v8, v3, [B

    .line 247
    .line 248
    fill-array-data v8, :array_34c

    .line 249
    .line 250
    .line 251
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v7

    .line 255
    iget-object v8, v6, Ly0/i;->a:Ljava/lang/String;

    .line 256
    .line 257
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v7

    .line 261
    const/16 v8, 0x1b

    .line 262
    .line 263
    if-eqz v7, :cond_181

    .line 264
    .line 265
    if-eqz v5, :cond_181

    .line 266
    .line 267
    invoke-static {p0}, Ly0/m;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    const/4 v7, 0x5

    .line 272
    new-array v7, v7, [B

    .line 273
    .line 274
    fill-array-data v7, :array_354

    .line 275
    .line 276
    .line 277
    new-array v9, v3, [B

    .line 278
    .line 279
    fill-array-data v9, :array_35c

    .line 280
    .line 281
    .line 282
    invoke-static {v7, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v7

    .line 286
    invoke-static {v1, v0, v5, v7}, Ly0/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    iget-object v6, v6, Ly0/i;->g:Ljava/lang/String;

    .line 291
    .line 292
    invoke-static {v1, v6}, Ly0/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    if-nez v1, :cond_174

    .line 297
    .line 298
    sget-object v0, Lcom/example/navistart/Transport/TransportService;->p:Ljava/lang/String;

    .line 299
    .line 300
    const/16 v1, 0x2c

    .line 301
    .line 302
    new-array v1, v1, [B

    .line 303
    .line 304
    fill-array-data v1, :array_364

    .line 305
    .line 306
    .line 307
    new-array v5, v3, [B

    .line 308
    .line 309
    fill-array-data v5, :array_37e

    .line 310
    .line 311
    .line 312
    invoke-static {v1, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .line 318
    .line 319
    new-array v0, v2, [B

    .line 320
    .line 321
    fill-array-data v0, :array_386

    .line 322
    .line 323
    .line 324
    new-array v1, v3, [B

    .line 325
    .line 326
    fill-array-data v1, :array_390

    .line 327
    .line 328
    .line 329
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    iget-object v1, p1, Le0/s3;->c:Ljava/lang/Object;

    .line 334
    .line 335
    check-cast v1, Ljava/lang/String;

    .line 336
    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v0

    .line 341
    if-eqz v0, :cond_167

    .line 342
    .line 343
    new-array v0, v8, [B

    .line 344
    .line 345
    fill-array-data v0, :array_398

    .line 346
    .line 347
    .line 348
    new-array v1, v3, [B

    .line 349
    .line 350
    fill-array-data v1, :array_3aa

    .line 351
    .line 352
    .line 353
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    invoke-virtual {p0, v0}, Lcom/example/navistart/Transport/TransportService;->i(Ljava/lang/String;)V
    :try_end_167
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_167} :catch_cc
    .catch Ljava/lang/RuntimeException; {:try_start_72 .. :try_end_167} :catch_c9
    .catchall {:try_start_72 .. :try_end_167} :catchall_c6

    .line 358
    .line 359
    .line 360
    :cond_167
    iget-object v0, p0, Lcom/example/navistart/Transport/TransportService;->l:Le0/s3;

    .line 361
    .line 362
    if-ne v0, p1, :cond_170

    .line 363
    .line 364
    iput-object v4, p0, Lcom/example/navistart/Transport/TransportService;->l:Le0/s3;

    .line 365
    .line 366
    invoke-virtual {p0}, Lcom/example/navistart/Transport/TransportService;->m()V

    .line 367
    .line 368
    .line 369
    :cond_170
    invoke-virtual {p1}, Le0/s3;->e()V

    .line 370
    .line 371
    .line 372
    return-void

    .line 373
    :cond_174
    :try_start_174
    iget-object v1, p1, Le0/s3;->c:Ljava/lang/Object;

    .line 374
    .line 375
    check-cast v1, Ljava/lang/String;

    .line 376
    .line 377
    invoke-virtual {p0, v1}, Lcom/example/navistart/Transport/TransportService;->l(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {p0}, Lcom/example/navistart/Transport/TransportService;->f()V

    .line 381
    .line 382
    .line 383
    const/4 v1, 0x1

    .line 384
    goto/16 :goto_2b

    .line 385
    .line 386
    :cond_181
    const/16 v7, 0xb

    .line 387
    .line 388
    new-array v7, v7, [B

    .line 389
    .line 390
    fill-array-data v7, :array_3b2

    .line 391
    .line 392
    .line 393
    new-array v9, v3, [B

    .line 394
    .line 395
    fill-array-data v9, :array_3bc

    .line 396
    .line 397
    .line 398
    invoke-static {v7, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v7

    .line 402
    iget-object v9, v6, Ly0/i;->a:Ljava/lang/String;

    .line 403
    .line 404
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    move-result v7

    .line 408
    if-eqz v7, :cond_1e7

    .line 409
    .line 410
    sget-object v0, Lcom/example/navistart/Transport/TransportService;->p:Ljava/lang/String;

    .line 411
    .line 412
    const/16 v1, 0x36

    .line 413
    .line 414
    new-array v1, v1, [B

    .line 415
    .line 416
    fill-array-data v1, :array_3c4

    .line 417
    .line 418
    .line 419
    new-array v5, v3, [B

    .line 420
    .line 421
    fill-array-data v5, :array_3e4

    .line 422
    .line 423
    .line 424
    invoke-static {v1, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    .line 430
    .line 431
    new-array v0, v2, [B

    .line 432
    .line 433
    fill-array-data v0, :array_3ec

    .line 434
    .line 435
    .line 436
    new-array v1, v3, [B

    .line 437
    .line 438
    fill-array-data v1, :array_3f6

    .line 439
    .line 440
    .line 441
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    iget-object v1, p1, Le0/s3;->c:Ljava/lang/Object;

    .line 446
    .line 447
    check-cast v1, Ljava/lang/String;

    .line 448
    .line 449
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    move-result v0

    .line 453
    if-eqz v0, :cond_1d7

    .line 454
    .line 455
    new-array v0, v8, [B

    .line 456
    .line 457
    fill-array-data v0, :array_3fe

    .line 458
    .line 459
    .line 460
    new-array v1, v3, [B

    .line 461
    .line 462
    fill-array-data v1, :array_410

    .line 463
    .line 464
    .line 465
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    invoke-virtual {p0, v0}, Lcom/example/navistart/Transport/TransportService;->i(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    :cond_1d7
    invoke-static {}, Ly0/n;->a()V
    :try_end_1da
    .catch Ljava/io/IOException; {:try_start_174 .. :try_end_1da} :catch_cc
    .catch Ljava/lang/RuntimeException; {:try_start_174 .. :try_end_1da} :catch_c9
    .catchall {:try_start_174 .. :try_end_1da} :catchall_c6

    .line 473
    .line 474
    .line 475
    iget-object v0, p0, Lcom/example/navistart/Transport/TransportService;->l:Le0/s3;

    .line 476
    .line 477
    if-ne v0, p1, :cond_1e3

    .line 478
    .line 479
    iput-object v4, p0, Lcom/example/navistart/Transport/TransportService;->l:Le0/s3;

    .line 480
    .line 481
    invoke-virtual {p0}, Lcom/example/navistart/Transport/TransportService;->m()V

    .line 482
    .line 483
    .line 484
    :cond_1e3
    invoke-virtual {p1}, Le0/s3;->e()V

    .line 485
    .line 486
    .line 487
    return-void

    .line 488
    :cond_1e7
    const/16 v7, 0xf

    .line 489
    .line 490
    :try_start_1e9
    new-array v7, v7, [B

    .line 491
    .line 492
    fill-array-data v7, :array_418

    .line 493
    .line 494
    .line 495
    new-array v8, v3, [B

    .line 496
    .line 497
    fill-array-data v8, :array_424

    .line 498
    .line 499
    .line 500
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v7

    .line 504
    iget-object v8, v6, Ly0/i;->a:Ljava/lang/String;

    .line 505
    .line 506
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 507
    .line 508
    .line 509
    move-result v7

    .line 510
    if-eqz v7, :cond_20c

    .line 511
    .line 512
    invoke-static {p0}, Ly0/m;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v6

    .line 516
    invoke-static {v6}, Ly0/j;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v6

    .line 520
    invoke-virtual {p1, v6}, Le0/s3;->r(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    goto/16 :goto_2b

    .line 524
    .line 525
    :cond_20c
    if-nez v1, :cond_210

    .line 526
    .line 527
    goto/16 :goto_2b

    .line 528
    .line 529
    :cond_210
    invoke-virtual {p0, p1, v6}, Lcom/example/navistart/Transport/TransportService;->g(Le0/s3;Ly0/i;)V

    .line 530
    .line 531
    .line 532
    goto/16 :goto_2b

    .line 533
    .line 534
    :catch_215
    move-exception v6

    .line 535
    sget-object v7, Lcom/example/navistart/Transport/TransportService;->p:Ljava/lang/String;

    .line 536
    .line 537
    const/16 v8, 0x22

    .line 538
    .line 539
    new-array v8, v8, [B

    .line 540
    .line 541
    fill-array-data v8, :array_42c

    .line 542
    .line 543
    .line 544
    new-array v9, v3, [B

    .line 545
    .line 546
    fill-array-data v9, :array_442

    .line 547
    .line 548
    .line 549
    invoke-static {v8, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v8

    .line 553
    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22b
    .catch Ljava/io/IOException; {:try_start_1e9 .. :try_end_22b} :catch_cc
    .catch Ljava/lang/RuntimeException; {:try_start_1e9 .. :try_end_22b} :catch_c9
    .catchall {:try_start_1e9 .. :try_end_22b} :catchall_c6

    .line 554
    .line 555
    .line 556
    goto/16 :goto_2b

    .line 557
    .line 558
    :cond_22d
    iget-object v0, p0, Lcom/example/navistart/Transport/TransportService;->l:Le0/s3;

    .line 559
    .line 560
    if-ne v0, p1, :cond_236

    .line 561
    .line 562
    :goto_231
    iput-object v4, p0, Lcom/example/navistart/Transport/TransportService;->l:Le0/s3;

    .line 563
    .line 564
    invoke-virtual {p0}, Lcom/example/navistart/Transport/TransportService;->m()V

    .line 565
    .line 566
    .line 567
    :cond_236
    invoke-virtual {p1}, Le0/s3;->e()V

    .line 568
    .line 569
    .line 570
    goto/16 :goto_2b6

    .line 571
    .line 572
    :goto_23b
    :try_start_23b
    iget-object v1, p0, Lcom/example/navistart/Transport/TransportService;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 573
    .line 574
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 575
    .line 576
    .line 577
    move-result v1

    .line 578
    if-eqz v1, :cond_2b0

    .line 579
    .line 580
    sget-object v1, Lcom/example/navistart/Transport/TransportService;->p:Ljava/lang/String;

    .line 581
    .line 582
    new-instance v5, Ljava/lang/StringBuilder;

    .line 583
    .line 584
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 585
    .line 586
    .line 587
    iget-object v6, p1, Le0/s3;->c:Ljava/lang/Object;

    .line 588
    .line 589
    check-cast v6, Ljava/lang/String;

    .line 590
    .line 591
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    const/16 v6, 0x19

    .line 595
    .line 596
    new-array v6, v6, [B

    .line 597
    .line 598
    fill-array-data v6, :array_44a

    .line 599
    .line 600
    .line 601
    new-array v7, v3, [B

    .line 602
    .line 603
    fill-array-data v7, :array_45c

    .line 604
    .line 605
    .line 606
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v6

    .line 610
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v6

    .line 617
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v5

    .line 624
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    .line 626
    .line 627
    new-array v1, v2, [B

    .line 628
    .line 629
    fill-array-data v1, :array_464

    .line 630
    .line 631
    .line 632
    new-array v2, v3, [B

    .line 633
    .line 634
    fill-array-data v2, :array_46e

    .line 635
    .line 636
    .line 637
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v1

    .line 641
    iget-object v2, p1, Le0/s3;->c:Ljava/lang/Object;

    .line 642
    .line 643
    check-cast v2, Ljava/lang/String;

    .line 644
    .line 645
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 646
    .line 647
    .line 648
    move-result v1

    .line 649
    if-eqz v1, :cond_2b0

    .line 650
    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    .line 652
    .line 653
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 654
    .line 655
    .line 656
    const/16 v2, 0x11

    .line 657
    .line 658
    new-array v2, v2, [B

    .line 659
    .line 660
    fill-array-data v2, :array_476

    .line 661
    .line 662
    .line 663
    new-array v3, v3, [B

    .line 664
    .line 665
    fill-array-data v3, :array_484

    .line 666
    .line 667
    .line 668
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v2

    .line 672
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    .line 674
    .line 675
    invoke-static {v0}, Lcom/example/navistart/Transport/TransportService;->e(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v0

    .line 679
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    .line 681
    .line 682
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    invoke-virtual {p0, v0}, Lcom/example/navistart/Transport/TransportService;->i(Ljava/lang/String;)V
    :try_end_2b0
    .catchall {:try_start_23b .. :try_end_2b0} :catchall_c6

    .line 687
    .line 688
    .line 689
    :cond_2b0
    iget-object v0, p0, Lcom/example/navistart/Transport/TransportService;->l:Le0/s3;

    .line 690
    .line 691
    if-ne v0, p1, :cond_236

    .line 692
    .line 693
    goto/16 :goto_231

    .line 694
    .line 695
    :goto_2b6
    return-void

    .line 696
    :goto_2b7
    iget-object v1, p0, Lcom/example/navistart/Transport/TransportService;->l:Le0/s3;

    .line 697
    .line 698
    if-ne v1, p1, :cond_2c0

    .line 699
    .line 700
    iput-object v4, p0, Lcom/example/navistart/Transport/TransportService;->l:Le0/s3;

    .line 701
    .line 702
    invoke-virtual {p0}, Lcom/example/navistart/Transport/TransportService;->m()V

    .line 703
    .line 704
    .line 705
    :cond_2c0
    invoke-virtual {p1}, Le0/s3;->e()V

    .line 706
    .line 707
    .line 708
    throw v0

    .line 709
    :array_2c4
    .array-data 1
        0x7bt
        -0x2t
        -0x63t
    .end array-data

    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    :array_2ca
    .array-data 1
        0x18t
        -0x61t
        -0x11t
        0x1at
        0x5at
        0xbt
        -0x70t
        -0x7ct
    .end array-data

    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    :array_2d2
    .array-data 1
        -0x66t
        0x4ft
        0x5at
        0x50t
        -0x29t
        -0xft
        -0x53t
        0x2ct
        -0x64t
    .end array-data

    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    nop

    .line 733
    :array_2dc
    .array-data 1
        -0x7t
        0x27t
        0x3bt
        0x3ct
        -0x45t
        -0x6ct
        -0x3dt
        0x4bt
    .end array-data

    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    :array_2e4
    .array-data 1
        0x3ct
        0x1t
        0x0t
        -0x59t
        -0x3at
        -0x67t
        0x60t
        0x51t
        0x11t
        0x40t
        0xdt
        -0x55t
        -0x2ct
        -0x63t
        0x6dt
        0x5ft
        0x1at
        0x7t
        0xbt
        -0x1dt
        -0x39t
        -0x6ct
        0x62t
        0x5ft
        0x1dt
        0x16t
        0xbt
        -0x59t
        -0x6bt
        -0x79t
        0x68t
        0x5bt
        0x54t
    .end array-data

    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    nop

    .line 763
    :array_2fa
    .array-data 1
        0x74t
        0x60t
        0x6et
        -0x3dt
        -0x4bt
        -0xft
        0x1t
        0x3at
    .end array-data

    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    :array_302
    .array-data 1
        0x6bt
        0xbt
        0x7bt
        0x72t
        -0x21t
        0x1bt
        -0x18t
        -0x11t
        0x41t
    .end array-data

    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    nop

    .line 781
    :array_30c
    .array-data 1
        0x29t
        0x67t
        0xet
        0x17t
        -0x55t
        0x74t
        -0x79t
        -0x65t
    .end array-data

    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    :array_314
    .array-data 1
        0xct
        0x2et
        -0x22t
        0x43t
        0x72t
        0x1bt
        -0x1at
        -0x7ft
        0x3dt
        0x2at
        -0x23t
        0x48t
        0x79t
        0x5ct
        -0x20t
        -0x37t
        0x2et
        0x23t
        -0x2et
        0x48t
        0x7et
        0x4dt
        -0x20t
        -0x73t
        0x67t
        0x66t
        -0x39t
        0x48t
        0x65t
        0x52t
        -0x1dt
        -0x70t
        0x35t
        0x28t
        -0x2at
        0xdt
        0x63t
        0x54t
        -0x12t
        -0x74t
        0x32t
    .end array-data

    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    nop

    .line 815
    :array_32e
    .array-data 1
        0x5ct
        0x46t
        -0x4ft
        0x2dt
        0x17t
        0x3bt
        -0x7bt
        -0x17t
    .end array-data

    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    :array_336
    .array-data 1
        -0x4dt
        0x27t
        0x3dt
    .end array-data

    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    :array_33c
    .array-data 1
        -0x30t
        0x46t
        0x4ft
        -0x3at
        0x58t
        0x2bt
        -0x27t
        0x5at
    .end array-data

    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    :array_344
    .array-data 1
        0x66t
        0x0t
        0x5dt
        -0x26t
        0x2t
        0x58t
        0x1bt
    .end array-data

    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    :array_34c
    .array-data 1
        0x7t
        0x75t
        0x29t
        -0x4et
        0x5dt
        0x37t
        0x70t
        0x5bt
    .end array-data

    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    :array_354
    .array-data 1
        0x6ct
        -0x5ct
        -0xft
        -0x4ft
        0x66t
    .end array-data

    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    nop

    .line 861
    :array_35c
    .array-data 1
        0x1ct
        -0x34t
        -0x62t
        -0x21t
        0x3t
        0x74t
        -0x65t
        -0x80t
    .end array-data

    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    :array_364
    .array-data 1
        -0x4ct
        0x4dt
        -0x6ft
        -0x51t
        0x13t
        -0x2t
        -0x74t
        -0x29t
        -0x67t
        0xct
        -0x65t
        -0x52t
        0xet
        -0x1t
        -0x78t
        -0x28t
        -0x3at
        0xct
        -0x71t
        -0x5dt
        0xft
        -0x8t
        -0x78t
        -0x64t
        -0x74t
        0x5et
        -0x70t
        -0x5ct
        0x6t
        -0x4at
        -0x77t
        -0x2dt
        -0x67t
        0x5ft
        -0x21t
        -0x5bt
        0xft
        -0x1et
        -0x33t
        -0x2ft
        -0x63t
        0x58t
        -0x64t
        -0x5dt
    .end array-data

    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    :array_37e
    .array-data 1
        -0x4t
        0x2ct
        -0x1t
        -0x35t
        0x60t
        -0x6at
        -0x13t
        -0x44t
    .end array-data

    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    :array_386
    .array-data 1
        -0x2dt
        -0x64t
        -0x15t
        0x19t
        -0x39t
        -0x42t
        -0xbt
        -0x28t
        -0x7t
    .end array-data

    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    nop

    .line 913
    :array_390
    .array-data 1
        -0x6ft
        -0x10t
        -0x62t
        0x7ct
        -0x4dt
        -0x2ft
        -0x66t
        -0x54t
    .end array-data

    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    :array_398
    .array-data 1
        0xft
        -0x10t
        -0x26t
        -0x25t
        0x2t
        0x3ft
        -0x18t
        -0x37t
        0x2bt
        -0x10t
        -0x30t
        -0x25t
        0x13t
        0x76t
        -0x16t
        -0x23t
        0x2bt
        -0xft
        -0x26t
        -0x25t
        0x47t
        0x79t
        -0x18t
        -0x2bt
        0x33t
        -0x3t
        -0x2ft
    .end array-data

    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    :array_3aa
    .array-data 1
        0x5ft
        -0x68t
        -0x4bt
        -0x4bt
        0x67t
        0x1ft
        -0x77t
        -0x44t
    .end array-data

    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    :array_3b2
    .array-data 1
        -0x40t
        -0x18t
        -0x10t
        0x53t
        -0x38t
        -0x69t
        -0x7t
        0x5at
        -0x38t
        -0x8t
        -0x20t
    .end array-data

    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    :array_3bc
    .array-data 1
        -0x5ft
        -0x63t
        -0x7ct
        0x3bt
        -0x69t
        -0xdt
        -0x64t
        0x34t
    .end array-data

    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    :array_3c4
    .array-data 1
        0x4ft
        0x1et
        -0x30t
        0x69t
        0x38t
        0x1ct
        -0x20t
        -0x7bt
        0x62t
        0x5ft
        -0x26t
        0x68t
        0x25t
        0x1dt
        -0x1ct
        -0x76t
        0x27t
        0x1dt
        -0x39t
        0x2dt
        0x3bt
        0x1ct
        -0x12t
        -0x80t
        0x62t
        0x45t
        -0x62t
        0x7et
        0x23t
        0x15t
        -0xdt
        -0x75t
        0x63t
        0x5ft
        -0x36t
        0x62t
        0x20t
        0x11t
        -0x11t
        -0x32t
        0x63t
        0x10t
        -0x25t
        0x7et
        0x6bt
        0x1at
        -0x12t
        -0x66t
        0x27t
        0x12t
        -0x21t
        0x79t
        0x28t
        0x1ct
    .end array-data

    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    nop

    .line 997
    :array_3e4
    .array-data 1
        0x7t
        0x7ft
        -0x42t
        0xdt
        0x4bt
        0x74t
        -0x7ft
        -0x12t
    .end array-data

    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    :array_3ec
    .array-data 1
        -0x5ft
        0x2ft
        0x2bt
        0x44t
        -0x68t
        0x21t
        -0x7dt
        0xdt
        -0x75t
    .end array-data

    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    nop

    .line 1015
    :array_3f6
    .array-data 1
        -0x1dt
        0x43t
        0x5et
        0x21t
        -0x14t
        0x4et
        -0x14t
        0x79t
    .end array-data

    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    :array_3fe
    .array-data 1
        0x4at
        0x4ft
        0x4et
        -0x65t
        0x5at
        0x29t
        -0x5ct
        0x44t
        0x70t
        0x42t
        0x42t
        -0x7ft
        0x5at
        0x6dt
        -0xat
        0x52t
        0x72t
        0x46t
        0x53t
        -0x70t
        0x5bt
        0x29t
        -0x5et
        0x4et
        0x71t
        0x42t
        0x4ft
    .end array-data

    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    :array_410
    .array-data 1
        0x1at
        0x27t
        0x21t
        -0xbt
        0x3ft
        0x9t
        -0x2at
        0x21t
    .end array-data

    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    :array_418
    .array-data 1
        0x3at
        0x69t
        0x79t
        0x52t
        0x6et
        0x54t
        0x7ft
        -0x2ft
        0x38t
        0x6dt
        0x61t
        0x55t
        0x62t
        0x49t
        0x6ct
    .end array-data

    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    :array_424
    .array-data 1
        0x4at
        0x8t
        0x10t
        0x20t
        0x7t
        0x3at
        0x18t
        -0x72t
    .end array-data

    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    :array_42c
    .array-data 1
        0xet
        0x60t
        0x79t
        -0xat
        0x21t
        -0x17t
        0x17t
        -0xct
        0x67t
        0x6at
        0x76t
        -0xbt
        0x35t
        -0x11t
        0xbt
        -0x2t
        0x22t
        0x63t
        0x37t
        -0x13t
        0x21t
        -0x1ft
        0x17t
        -0x20t
        0x37t
        0x68t
        0x65t
        -0x13t
        0x73t
        -0x1at
        0xbt
        -0xet
        0x2at
        0x62t
    .end array-data

    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    nop

    .line 1091
    :array_442
    .array-data 1
        0x47t
        0x7t
        0x17t
        -0x67t
        0x53t
        -0x80t
        0x79t
        -0x6dt
    .end array-data

    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    :array_44a
    .array-data 1
        -0x26t
        0x4bt
        -0xat
        -0x7ft
        0x43t
        0x7t
        -0x73t
        -0x4t
        -0x78t
        0x4bt
        -0x5ct
        -0x7ct
        0x44t
        0x7t
        -0x62t
        -0x4t
        -0x6ct
        0x51t
        -0x1ft
        -0x7dt
        0x59t
        0x11t
        -0x67t
        -0x57t
        -0x26t
    .end array-data

    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    nop

    .line 1117
    :array_45c
    .array-data 1
        -0x6t
        0x3ft
        -0x7ct
        -0x20t
        0x2dt
        0x74t
        -0x3t
        -0x6dt
    .end array-data

    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    :array_464
    .array-data 1
        0x4dt
        -0x69t
        0x27t
        0x27t
        -0x12t
        0x2at
        -0x31t
        0x1t
        0x67t
    .end array-data

    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    nop

    .line 1135
    :array_46e
    .array-data 1
        0xft
        -0x5t
        0x52t
        0x42t
        -0x66t
        0x45t
        -0x60t
        0x75t
    .end array-data

    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    :array_476
    .array-data 1
        0x3bt
        0x50t
        -0x7ct
        -0x31t
        -0x7at
        -0x19t
        -0x5ct
        -0x27t
        0x17t
        0x51t
        -0x36t
        -0x33t
        -0x74t
        -0x9t
        -0x5ct
        -0x76t
        0x58t
    .end array-data

    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    nop

    .line 1157
    :array_484
    .array-data 1
        0x78t
        0x3ft
        -0x16t
        -0x5ft
        -0x1dt
        -0x7ct
        -0x30t
        -0x50t
    .end array-data
.end method

.method public final k(Ly0/l;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/example/navistart/Transport/TransportService;->l:Le0/s3;

    .line 2
    .line 3
    if-eqz v0, :cond_40

    .line 4
    .line 5
    sget-object v1, Lcom/example/navistart/Transport/TransportService;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_d

    .line 12
    .line 13
    goto :goto_40

    .line 14
    :cond_d
    :try_start_d
    iget-object v1, p1, Ly0/l;->a:Ljava/lang/String;

    .line 15
    .line 16
    iget-wide v2, p1, Ly0/l;->d:J

    .line 17
    .line 18
    iget-object v4, p1, Ly0/l;->c:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v5, p1, Ly0/l;->b:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v2, v3, v1, v4, v5}, Ly0/j;->d(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Le0/s3;->r(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x6

    .line 30
    new-array v1, v1, [B

    .line 31
    .line 32
    fill-array-data v1, :array_42

    .line 33
    .line 34
    .line 35
    const/16 v2, 0x8

    .line 36
    .line 37
    new-array v2, v2, [B

    .line 38
    .line 39
    fill-array-data v2, :array_4a

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget-object v2, p1, Ly0/l;->c:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_40

    .line 53
    .line 54
    iget-object v1, p0, Lcom/example/navistart/Transport/TransportService;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    .line 56
    iget-object v2, p1, Ly0/l;->a:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_3c} :catch_3d

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :catch_3d
    invoke-virtual {v0}, Le0/s3;->e()V

    .line 63
    .line 64
    .line 65
    :cond_40
    :goto_40
    return-void

    .line 66
    nop

    .line 67
    :array_42
    .array-data 1
        -0x2t
        -0x45t
        -0x49t
        -0x37t
        -0x38t
        -0x74t
    .end array-data

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    nop

    .line 75
    :array_4a
    .array-data 1
        -0x6et
        -0x26t
        -0x3dt
        -0x54t
        -0x45t
        -0x8t
        -0x16t
        0x22t
    .end array-data
.end method

.method public final l(Ljava/lang/String;)V
    .registers 7

    .line 1
    sget-object v0, Lcom/example/navistart/Transport/TransportService;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    sput-object p1, Lcom/example/navistart/Transport/TransportService;->y:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v0, Lcom/example/navistart/Transport/TransportService;->p:Ljava/lang/String;

    .line 10
    .line 11
    const/16 v2, 0xe

    .line 12
    .line 13
    new-array v2, v2, [B

    .line 14
    .line 15
    fill-array-data v2, :array_6c

    .line 16
    .line 17
    .line 18
    const/16 v3, 0x8

    .line 19
    .line 20
    new-array v4, v3, [B

    .line 21
    .line 22
    fill-array-data v4, :array_78

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    const/16 v0, 0x9

    .line 37
    .line 38
    new-array v0, v0, [B

    .line 39
    .line 40
    fill-array-data v0, :array_80

    .line 41
    .line 42
    .line 43
    new-array v2, v3, [B

    .line 44
    .line 45
    fill-array-data v2, :array_8a

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_4c

    .line 57
    .line 58
    const/16 v0, 0x1b

    .line 59
    .line 60
    new-array v0, v0, [B

    .line 61
    .line 62
    fill-array-data v0, :array_92

    .line 63
    .line 64
    .line 65
    new-array v2, v3, [B

    .line 66
    .line 67
    fill-array-data v2, :array_a4

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p0, v0}, Lcom/example/navistart/Transport/TransportService;->i(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_4c
    const/16 v0, 0x773

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Lcom/example/navistart/Transport/TransportService;->a(Ljava/lang/String;)Landroid/app/Notification;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p0, v0, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 84
    .line 85
    .line 86
    sget-object p1, Ly0/g;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    :catch_5b
    :goto_5b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_6b

    .line 97
    .line 98
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Le0/d2;

    .line 103
    .line 104
    :try_start_67
    invoke-virtual {v0, v1}, Le0/d2;->a(Z)V
    :try_end_6a
    .catch Ljava/lang/RuntimeException; {:try_start_67 .. :try_end_6a} :catch_5b

    .line 105
    .line 106
    .line 107
    goto :goto_5b

    .line 108
    :cond_6b
    return-void

    .line 109
    :array_6c
    .array-data 1
        -0x33t
        0x1t
        0x43t
        0x1ct
        -0x3dt
        0x2dt
        -0x4t
        -0x7et
        -0x16t
        0x4et
        0x5bt
        0x1bt
        -0x39t
        0x6et
    .end array-data

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
    nop

    .line 121
    :array_78
    .array-data 1
        -0x72t
        0x6et
        0x2dt
        0x72t
        -0x5at
        0x4et
        -0x78t
        -0x19t
    .end array-data

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    :array_80
    .array-data 1
        0x32t
        0x40t
        0x6ct
        -0x27t
        0x17t
        0xct
        0x20t
        0x6ct
        0x18t
    .end array-data

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    nop

    .line 139
    :array_8a
    .array-data 1
        0x70t
        0x2ct
        0x19t
        -0x44t
        0x63t
        0x63t
        0x4ft
        0x18t
    .end array-data

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    :array_92
    .array-data 1
        0x66t
        -0x55t
        0x3at
        -0x29t
        -0xat
        -0x66t
        0x79t
        -0x65t
        0x41t
        -0x1ct
        0x35t
        -0x29t
        -0x9t
        -0x27t
        0x6ct
        -0x75t
        0x51t
        -0x54t
        0x31t
        -0x29t
        -0x19t
        -0x70t
        0x6et
        -0x61t
        0x51t
        -0x5ft
        0x30t
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
    :array_a4
    .array-data 1
        0x25t
        -0x3ct
        0x54t
        -0x47t
        -0x6dt
        -0x7t
        0xdt
        -0x2t
    .end array-data
.end method

.method public final m()V
    .registers 7

    .line 1
    sget-object v0, Lcom/example/navistart/Transport/TransportService;->y:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Lcom/example/navistart/Transport/TransportService;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_4b

    .line 11
    .line 12
    sget-object v1, Lcom/example/navistart/Transport/TransportService;->p:Ljava/lang/String;

    .line 13
    .line 14
    const/16 v3, 0x16

    .line 15
    .line 16
    new-array v3, v3, [B

    .line 17
    .line 18
    fill-array-data v3, :array_78

    .line 19
    .line 20
    .line 21
    const/16 v4, 0x8

    .line 22
    .line 23
    new-array v5, v4, [B

    .line 24
    .line 25
    fill-array-data v5, :array_88

    .line 26
    .line 27
    .line 28
    invoke-static {v3, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    const/16 v1, 0x9

    .line 36
    .line 37
    new-array v1, v1, [B

    .line 38
    .line 39
    fill-array-data v1, :array_90

    .line 40
    .line 41
    .line 42
    new-array v3, v4, [B

    .line 43
    .line 44
    fill-array-data v3, :array_9a

    .line 45
    .line 46
    .line 47
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_4b

    .line 56
    .line 57
    const/16 v0, 0x11

    .line 58
    .line 59
    new-array v0, v0, [B

    .line 60
    .line 61
    fill-array-data v0, :array_a2

    .line 62
    .line 63
    .line 64
    new-array v1, v4, [B

    .line 65
    .line 66
    fill-array-data v1, :array_b0

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p0, v0}, Lcom/example/navistart/Transport/TransportService;->i(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_4b
    const-string v0, ""

    .line 77
    .line 78
    sput-object v0, Lcom/example/navistart/Transport/TransportService;->y:Ljava/lang/String;

    .line 79
    .line 80
    sget-object v0, Ly0/g;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    :catch_55
    :goto_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_65

    .line 91
    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Le0/d2;

    .line 97
    .line 98
    :try_start_61
    invoke-virtual {v1, v2}, Le0/d2;->a(Z)V
    :try_end_64
    .catch Ljava/lang/RuntimeException; {:try_start_61 .. :try_end_64} :catch_55

    .line 99
    .line 100
    .line 101
    goto :goto_55

    .line 102
    :cond_65
    sget-object v0, Lcom/example/navistart/Transport/TransportService;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_77

    .line 109
    .line 110
    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, v0}, Lcom/example/navistart/Transport/TransportService;->a(Ljava/lang/String;)Landroid/app/Notification;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const/16 v1, 0x773

    .line 116
    .line 117
    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 118
    .line 119
    .line 120
    :cond_77
    return-void

    .line 121
    :array_78
    .array-data 1
        -0x5at
        0x25t
        0x78t
        0x32t
        0xct
        -0x28t
        0x72t
        -0x6bt
        -0x7at
        0x77t
        0x7dt
        0x35t
        0xct
        -0x35t
        0x72t
        -0x77t
        -0x64t
        0x32t
        0x7at
        0x28t
        0x1at
        -0x34t
    .end array-data

    .line 122
    .line 123
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
        -0xet
        0x57t
        0x19t
        0x5ct
        0x7ft
        -0x58t
        0x1dt
        -0x19t
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
        -0x68t
        0x11t
        0x74t
        0x69t
        -0x64t
        0x4bt
        -0x51t
        -0x53t
        -0x4et
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
    nop

    .line 155
    :array_9a
    .array-data 1
        -0x26t
        0x7dt
        0x1t
        0xct
        -0x18t
        0x24t
        -0x40t
        -0x27t
    .end array-data

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    :array_a2
    .array-data 1
        0x4ct
        -0x4t
        0x4ft
        0xat
        -0x5at
        -0x6dt
        -0x1ct
        -0x6at
        0x60t
        -0x3t
        0x1t
        0x7t
        -0x51t
        -0x61t
        -0x1dt
        -0x66t
        0x6bt
    .end array-data

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
    .line 175
    .line 176
    nop

    .line 177
    :array_b0
    .array-data 1
        0xft
        -0x6dt
        0x21t
        0x64t
        -0x3dt
        -0x10t
        -0x70t
        -0x1t
    .end array-data
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public final onCreate()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    sput-object p0, Lcom/example/navistart/Transport/TransportService;->z:Lcom/example/navistart/Transport/TransportService;

    .line 5
    .line 6
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/example/navistart/Transport/TransportService;->g:Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/example/navistart/Transport/TransportService;->h:Ljava/util/concurrent/ExecutorService;

    .line 17
    .line 18
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/example/navistart/Transport/TransportService;->i:Ljava/util/concurrent/ExecutorService;

    .line 23
    .line 24
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/example/navistart/Transport/TransportService;->j:Ljava/util/concurrent/ScheduledExecutorService;

    .line 29
    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    .line 32
    const/16 v1, 0x1a

    .line 33
    .line 34
    if-ge v0, v1, :cond_24

    .line 35
    .line 36
    goto :goto_41

    .line 37
    :cond_24
    const-class v0, Landroid/app/NotificationManager;

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroid/app/NotificationManager;

    .line 44
    .line 45
    if-eqz v0, :cond_41

    .line 46
    .line 47
    invoke-static {}, Lw0/d;->g()V

    .line 48
    .line 49
    .line 50
    sget-object v1, Lcom/example/navistart/Transport/TransportService;->v:Ljava/lang/String;

    .line 51
    .line 52
    const v2, 0x7f1303f5

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v1, v2}, Lw0/d;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v0, v1}, Lw0/d;->h(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 64
    .line 65
    .line 66
    :cond_41
    :goto_41
    new-instance v0, Ly0/b;

    .line 67
    .line 68
    invoke-direct {v0, p0}, Ly0/b;-><init>(Lcom/example/navistart/Transport/TransportService;)V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/example/navistart/Transport/TransportService;->k:Ly0/b;

    .line 72
    .line 73
    return-void
.end method

.method public final onDestroy()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/example/navistart/Transport/TransportService;->k:Ly0/b;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    invoke-virtual {v0}, Ly0/b;->close()V

    .line 6
    .line 7
    .line 8
    :cond_7
    iget-object v0, p0, Lcom/example/navistart/Transport/TransportService;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lcom/example/navistart/Transport/TransportService;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/example/navistart/Transport/TransportService;->p:Ljava/lang/String;

    .line 20
    .line 21
    const/16 v1, 0x1b

    .line 22
    .line 23
    new-array v1, v1, [B

    .line 24
    .line 25
    fill-array-data v1, :array_54

    .line 26
    .line 27
    .line 28
    const/16 v2, 0x8

    .line 29
    .line 30
    new-array v2, v2, [B

    .line 31
    .line 32
    fill-array-data v2, :array_66

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/example/navistart/Transport/TransportService;->m()V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/example/navistart/Transport/TransportService;->l:Le0/s3;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    iput-object v1, p0, Lcom/example/navistart/Transport/TransportService;->l:Le0/s3;

    .line 49
    .line 50
    if-eqz v0, :cond_36

    .line 51
    .line 52
    invoke-virtual {v0}, Le0/s3;->e()V

    .line 53
    .line 54
    .line 55
    :cond_36
    iget-object v0, p0, Lcom/example/navistart/Transport/TransportService;->g:Ljava/util/concurrent/ExecutorService;

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/example/navistart/Transport/TransportService;->h:Ljava/util/concurrent/ExecutorService;

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/example/navistart/Transport/TransportService;->i:Ljava/util/concurrent/ExecutorService;

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/example/navistart/Transport/TransportService;->j:Ljava/util/concurrent/ScheduledExecutorService;

    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    sget-object v0, Lcom/example/navistart/Transport/TransportService;->z:Lcom/example/navistart/Transport/TransportService;

    .line 76
    .line 77
    if-ne v0, p0, :cond_50

    .line 78
    .line 79
    sput-object v1, Lcom/example/navistart/Transport/TransportService;->z:Lcom/example/navistart/Transport/TransportService;

    .line 80
    .line 81
    :cond_50
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :array_54
    .array-data 1
        -0x18t
        0x14t
        -0x51t
        -0x70t
        -0xdt
        0x7dt
        -0x7bt
        -0x73t
        -0x38t
        0x46t
        -0x5et
        -0x69t
        -0x1at
        0x68t
        -0x77t
        -0x7at
        -0x21t
        0xat
        -0x55t
        -0x22t
        -0xdt
        0x79t
        -0x7bt
        -0x71t
        -0x34t
        0x3t
        -0x56t
    .end array-data

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    :array_66
    .array-data 1
        -0x44t
        0x66t
        -0x32t
        -0x2t
        -0x80t
        0xdt
        -0x16t
        -0x1t
    .end array-data
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .registers 15

    .line 1
    const/4 p2, 0x0

    .line 2
    if-nez p1, :cond_5

    .line 3
    .line 4
    move-object p3, p2

    .line 5
    goto :goto_9

    .line 6
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    :goto_9
    const/16 v0, 0x773

    .line 11
    .line 12
    invoke-virtual {p0, p2}, Lcom/example/navistart/Transport/TransportService;->a(Ljava/lang/String;)Landroid/app/Notification;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p0, v0, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lcom/example/navistart/Transport/TransportService;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    const/16 v2, 0x8

    .line 28
    .line 29
    sget-object v3, Lcom/example/navistart/Transport/TransportService;->p:Ljava/lang/String;

    .line 30
    .line 31
    if-nez p2, :cond_21

    .line 32
    .line 33
    goto :goto_53

    .line 34
    :cond_21
    sget-object p2, Lcom/example/navistart/Transport/TransportService;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 37
    .line 38
    .line 39
    const/16 p2, 0x1b

    .line 40
    .line 41
    new-array p2, p2, [B

    .line 42
    .line 43
    fill-array-data p2, :array_106

    .line 44
    .line 45
    .line 46
    new-array v4, v2, [B

    .line 47
    .line 48
    fill-array-data v4, :array_118

    .line 49
    .line 50
    .line 51
    invoke-static {p2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    iget-object v4, p0, Lcom/example/navistart/Transport/TransportService;->j:Ljava/util/concurrent/ScheduledExecutorService;

    .line 59
    .line 60
    new-instance v5, Ly0/k;

    .line 61
    .line 62
    invoke-direct {v5, p0, v0}, Ly0/k;-><init>(Lcom/example/navistart/Transport/TransportService;I)V

    .line 63
    .line 64
    .line 65
    const-wide/16 v8, 0x7d0

    .line 66
    .line 67
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 68
    .line 69
    const-wide/16 v6, 0x7d0

    .line 70
    .line 71
    invoke-interface/range {v4 .. v10}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 72
    .line 73
    .line 74
    iget-object p2, p0, Lcom/example/navistart/Transport/TransportService;->g:Ljava/util/concurrent/ExecutorService;

    .line 75
    .line 76
    new-instance v0, Ly0/k;

    .line 77
    .line 78
    invoke-direct {v0, p0, v1}, Ly0/k;-><init>(Lcom/example/navistart/Transport/TransportService;I)V

    .line 79
    .line 80
    .line 81
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 82
    .line 83
    .line 84
    :goto_53
    sget-object p2, Lcom/example/navistart/Transport/TransportService;->r:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    if-eqz p2, :cond_104

    .line 91
    .line 92
    sget-object p2, Lcom/example/navistart/Transport/TransportService;->s:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    sget-object p2, Lcom/example/navistart/Transport/TransportService;->t:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    sget-object p3, Lcom/example/navistart/Transport/TransportService;->u:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    if-eqz v7, :cond_104

    .line 111
    .line 112
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p3

    .line 116
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result p3

    .line 120
    if-eqz p3, :cond_7b

    .line 121
    .line 122
    goto/16 :goto_104

    .line 123
    .line 124
    :cond_7b
    new-instance v4, Ly0/l;

    .line 125
    .line 126
    if-nez p2, :cond_81

    .line 127
    .line 128
    const-string p2, ""

    .line 129
    .line 130
    :cond_81
    move-object v8, p2

    .line 131
    new-array p2, v2, [B

    .line 132
    .line 133
    fill-array-data p2, :array_120

    .line 134
    .line 135
    .line 136
    new-array p3, v2, [B

    .line 137
    .line 138
    fill-array-data p3, :array_128

    .line 139
    .line 140
    .line 141
    invoke-static {p2, p3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_a6

    .line 150
    .line 151
    new-array p1, v2, [B

    .line 152
    .line 153
    fill-array-data p1, :array_130

    .line 154
    .line 155
    .line 156
    new-array p2, v2, [B

    .line 157
    .line 158
    fill-array-data p2, :array_138

    .line 159
    .line 160
    .line 161
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    :goto_a4
    move-object v9, p1

    .line 166
    goto :goto_b6

    .line 167
    :cond_a6
    const/4 p1, 0x6

    .line 168
    new-array p1, p1, [B

    .line 169
    .line 170
    fill-array-data p1, :array_140

    .line 171
    .line 172
    .line 173
    new-array p2, v2, [B

    .line 174
    .line 175
    fill-array-data p2, :array_148

    .line 176
    .line 177
    .line 178
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    goto :goto_a4

    .line 183
    :goto_b6
    iget-object p1, p0, Lcom/example/navistart/Transport/TransportService;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 184
    .line 185
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 186
    .line 187
    .line 188
    move-result-wide v5

    .line 189
    invoke-direct/range {v4 .. v9}, Ly0/l;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    new-array p1, v2, [B

    .line 193
    .line 194
    fill-array-data p1, :array_150

    .line 195
    .line 196
    .line 197
    new-array p2, v2, [B

    .line 198
    .line 199
    fill-array-data p2, :array_158

    .line 200
    .line 201
    .line 202
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    if-eqz p1, :cond_dd

    .line 211
    .line 212
    iget-object p1, p0, Lcom/example/navistart/Transport/TransportService;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 213
    .line 214
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    invoke-virtual {p1, p2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    goto :goto_e2

    .line 222
    :cond_dd
    iget-object p1, p0, Lcom/example/navistart/Transport/TransportService;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 223
    .line 224
    invoke-virtual {p1, v7, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    :goto_e2
    :try_start_e2
    iget-object p1, p0, Lcom/example/navistart/Transport/TransportService;->i:Ljava/util/concurrent/ExecutorService;

    .line 228
    .line 229
    new-instance p2, Ls1/x0;

    .line 230
    .line 231
    const/16 p3, 0x10

    .line 232
    .line 233
    invoke-direct {p2, p3, p0, v4}, Ls1/x0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_ee
    .catch Ljava/lang/RuntimeException; {:try_start_e2 .. :try_end_ee} :catch_ef

    .line 237
    .line 238
    .line 239
    goto :goto_104

    .line 240
    :catch_ef
    move-exception v0

    .line 241
    move-object p1, v0

    .line 242
    const/16 p2, 0x21

    .line 243
    .line 244
    new-array p2, p2, [B

    .line 245
    .line 246
    fill-array-data p2, :array_160

    .line 247
    .line 248
    .line 249
    new-array p3, v2, [B

    .line 250
    .line 251
    fill-array-data p3, :array_176

    .line 252
    .line 253
    .line 254
    invoke-static {p2, p3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    invoke-static {v3, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    .line 260
    .line 261
    :cond_104
    :goto_104
    return v1

    .line 262
    nop

    .line 263
    :array_106
    .array-data 1
        -0x78t
        -0x52t
        0x70t
        0x5dt
        -0x23t
        0xbt
        0x1at
        0x29t
        -0x58t
        -0x4t
        0x7dt
        0x5at
        -0x38t
        0x1et
        0x16t
        0x22t
        -0x41t
        -0x50t
        0x74t
        0x13t
        -0x23t
        0xft
        0x14t
        0x29t
        -0x58t
        -0x47t
        0x75t
    .end array-data

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
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    :array_118
    .array-data 1
        -0x24t
        -0x24t
        0x11t
        0x33t
        -0x52t
        0x7bt
        0x75t
        0x5bt
    .end array-data

    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    :array_120
    .array-data 1
        0x77t
        0x7at
        0x54t
        0x2dt
        0x7t
        -0x68t
        -0x2bt
        -0x20t
    .end array-data

    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    :array_128
    .array-data 1
        0x5t
        0x1ft
        0x38t
        0x44t
        0x66t
        -0x6t
        -0x47t
        -0x7bt
    .end array-data

    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    :array_130
    .array-data 1
        -0x42t
        -0x46t
        0x1bt
        -0x2ft
        -0xbt
        -0x61t
        -0x7ct
        0x74t
    .end array-data

    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    :array_138
    .array-data 1
        -0x34t
        -0x21t
        0x77t
        -0x48t
        -0x6ct
        -0x3t
        -0x18t
        0x11t
    .end array-data

    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    :array_140
    .array-data 1
        -0x73t
        0x73t
        -0x30t
        0x6et
        -0x30t
        0x1t
    .end array-data

    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    nop

    .line 329
    :array_148
    .array-data 1
        -0x1ft
        0x12t
        -0x5ct
        0xbt
        -0x5dt
        0x75t
        -0x68t
        0x60t
    .end array-data

    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    :array_150
    .array-data 1
        -0x72t
        0x31t
        0x7ft
        0x9t
        -0x3dt
        0x52t
        0x34t
        0x5et
    .end array-data

    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    :array_158
    .array-data 1
        -0x4t
        0x54t
        0x13t
        0x60t
        -0x5et
        0x30t
        0x58t
        0x3bt
    .end array-data

    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    :array_160
    .array-data 1
        0x4bt
        0x6bt
        -0xft
        0x23t
        0x3et
        -0x30t
        -0x3ct
        0x28t
        0x71t
        0x25t
        -0x1ft
        0x34t
        0x37t
        -0x40t
        -0x7ft
        0x7ct
        0x6at
        0x77t
        -0xft
        0x2ft
        0x21t
        -0x3bt
        -0x75t
        0x2et
        0x6at
        0x25t
        -0x3t
        0x24t
        0x21t
        -0x3at
        -0x7bt
        0x3bt
        0x7bt
    .end array-data

    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    nop

    .line 375
    :array_176
    .array-data 1
        0x1et
        0x5t
        -0x70t
        0x41t
        0x52t
        -0x4bt
        -0x1ct
        0x5ct
    .end array-data
.end method
