.class public Lcom/example/navistart/SystemMessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final synthetic e:I


# instance fields
.field public final a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public b:Landroid/content/Context;

.field public c:Ljava/lang/Boolean;

.field public final d:Lcom/bumptech/glide/m;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x15

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    fill-array-data v0, :array_0

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    new-array v1, v1, [B

    .line 14
    .line 15
    fill-array-data v1, :array_1

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, -0x1

    .line 23
    invoke-static {v1, v0}, Le0/w;->c(ILjava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/example/navistart/SystemMessageReceiver;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 28
    .line 29
    new-instance v0, Lcom/bumptech/glide/m;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/m;-><init>(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/example/navistart/SystemMessageReceiver;->d:Lcom/bumptech/glide/m;

    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :array_0
    .array-data 1
        0x67t
        0x2et
        0x2at
        0x7dt
        0x12t
        -0x25t
        0x13t
        -0x6t
        0x47t
        0x24t
        0x38t
        0x6et
        0x12t
        -0x1ct
        0x3bt
        -0x4t
        0x51t
        0x3et
        0x2ft
        0x6ct
        0x5t
    .end array-data

    .line 40
    .line 41
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
    nop

    .line 55
    :array_1
    .array-data 1
        0x34t
        0x57t
        0x59t
        0x9t
        0x77t
        -0x4at
        0x5et
        -0x61t
    .end array-data
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-class v2, Lcom/example/navistart/boot;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    new-array v1, v1, [B

    .line 14
    .line 15
    const/16 v2, -0x79

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    aput-byte v2, v1, v3

    .line 19
    .line 20
    const/16 v2, 0x8

    .line 21
    .line 22
    new-array v2, v2, [B

    .line 23
    .line 24
    fill-array-data v2, :array_0

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v2, -0x1

    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 36
    .line 37
    const/16 v2, 0x1a

    .line 38
    .line 39
    if-lt v1, v2, :cond_0

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0, v0}, Lc5/h;->r(Landroid/content/Context;Landroid/content/Intent;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :array_0
    .array-data 1
        -0x1dt
        -0x4et
        0x26t
        -0x14t
        -0x43t
        0x6at
        0x70t
        0x67t
    .end array-data
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/example/navistart/SystemMessageReceiver;->b:Landroid/content/Context;

    .line 2
    .line 3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    .line 5
    iput-object v0, p0, Lcom/example/navistart/SystemMessageReceiver;->c:Ljava/lang/Boolean;

    .line 6
    .line 7
    new-instance v0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Le0/d0;->d(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    const/16 v0, 0x1d

    .line 16
    .line 17
    new-array v0, v0, [B

    .line 18
    .line 19
    fill-array-data v0, :array_0

    .line 20
    .line 21
    .line 22
    const/16 v1, 0x8

    .line 23
    .line 24
    new-array v2, v1, [B

    .line 25
    .line 26
    fill-array-data v2, :array_1

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lh0/b;->v(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const/16 v2, 0x18

    .line 46
    .line 47
    new-array v2, v2, [B

    .line 48
    .line 49
    fill-array-data v2, :array_2

    .line 50
    .line 51
    .line 52
    new-array v3, v1, [B

    .line 53
    .line 54
    fill-array-data v3, :array_3

    .line 55
    .line 56
    .line 57
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0}, Lh0/b;->v(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const/16 v0, 0x15

    .line 79
    .line 80
    new-array v2, v0, [B

    .line 81
    .line 82
    fill-array-data v2, :array_4

    .line 83
    .line 84
    .line 85
    new-array v3, v1, [B

    .line 86
    .line 87
    fill-array-data v3, :array_5

    .line 88
    .line 89
    .line 90
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    const/4 v3, -0x1

    .line 95
    invoke-static {v3, v2}, Le0/w;->c(ILjava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    new-instance v3, Le0/j2;

    .line 100
    .line 101
    const/4 v4, 0x2

    .line 102
    invoke-direct {v3, v4, p0, p1}, Le0/j2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    const-wide/16 v4, 0x2710

    .line 106
    .line 107
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 108
    .line 109
    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 110
    .line 111
    .line 112
    const/4 v2, 0x3

    .line 113
    new-array v2, v2, [B

    .line 114
    .line 115
    fill-array-data v2, :array_6

    .line 116
    .line 117
    .line 118
    new-array v3, v1, [B

    .line 119
    .line 120
    fill-array-data v3, :array_7

    .line 121
    .line 122
    .line 123
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    const/16 v2, 0x24

    .line 135
    .line 136
    new-array v2, v2, [B

    .line 137
    .line 138
    fill-array-data v2, :array_8

    .line 139
    .line 140
    .line 141
    new-array v3, v1, [B

    .line 142
    .line 143
    fill-array-data v3, :array_9

    .line 144
    .line 145
    .line 146
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    if-eqz p2, :cond_2

    .line 155
    .line 156
    new-array p2, v0, [B

    .line 157
    .line 158
    fill-array-data p2, :array_a

    .line 159
    .line 160
    .line 161
    new-array v0, v1, [B

    .line 162
    .line 163
    fill-array-data v0, :array_b

    .line 164
    .line 165
    .line 166
    invoke-static {p2, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    const/16 v0, 0x2c

    .line 171
    .line 172
    new-array v0, v0, [B

    .line 173
    .line 174
    fill-array-data v0, :array_c

    .line 175
    .line 176
    .line 177
    new-array v1, v1, [B

    .line 178
    .line 179
    fill-array-data v1, :array_d

    .line 180
    .line 181
    .line 182
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    iget-object p2, p0, Lcom/example/navistart/SystemMessageReceiver;->b:Landroid/content/Context;

    .line 190
    .line 191
    invoke-static {p2}, Lcom/example/navistart/boot;->b(Landroid/content/Context;)Z

    .line 192
    .line 193
    .line 194
    move-result p2

    .line 195
    if-eqz p2, :cond_1

    .line 196
    .line 197
    iget-object p2, p0, Lcom/example/navistart/SystemMessageReceiver;->c:Ljava/lang/Boolean;

    .line 198
    .line 199
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 200
    .line 201
    .line 202
    move-result p2

    .line 203
    if-nez p2, :cond_0

    .line 204
    .line 205
    goto :goto_0

    .line 206
    :cond_0
    const/4 p1, 0x0

    .line 207
    throw p1

    .line 208
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/example/navistart/SystemMessageReceiver;->b:Landroid/content/Context;

    .line 209
    .line 210
    invoke-static {p2}, Lcom/example/navistart/SystemMessageReceiver;->a(Landroid/content/Context;)V

    .line 211
    .line 212
    .line 213
    :cond_2
    invoke-static {p1}, Le0/d0;->d(Landroid/content/Context;)V

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :array_0
    .array-data 1
        0x61t
        -0x2dt
        -0x63t
        -0x4at
        0x5et
        0x1ct
        0x34t
        -0x22t
        0x41t
        -0x27t
        -0x71t
        -0x5bt
        0x5et
        0x23t
        0x1ct
        -0x28t
        0x57t
        -0x3dt
        -0x68t
        -0x59t
        0x49t
        0x51t
        0x54t
        -0x65t
        0x61t
        -0x22t
        -0x71t
        -0x50t
        0x4ft
    .end array-data

    .line 218
    .line 219
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
    nop

    .line 237
    :array_1
    .array-data 1
        0x32t
        -0x56t
        -0x12t
        -0x3et
        0x3bt
        0x71t
        0x79t
        -0x45t
    .end array-data

    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    :array_2
    .array-data 1
        0x62t
        -0x51t
        0x66t
        0x1t
        0x65t
        0x15t
        0x64t
        0x6ft
        0x42t
        -0x5bt
        0x74t
        0x12t
        0x65t
        0x2at
        0x4ct
        0x69t
        0x54t
        -0x41t
        0x63t
        0x10t
        0x72t
        0x58t
        0x4t
        0x2at
    .end array-data

    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
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
    :array_3
    .array-data 1
        0x31t
        -0x2at
        0x15t
        0x75t
        0x0t
        0x78t
        0x29t
        0xat
    .end array-data

    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    :array_4
    .array-data 1
        0x2bt
        0x4at
        0x61t
        -0x3ct
        -0x54t
        0x56t
        -0x4bt
        -0x7ct
        0xbt
        0x40t
        0x73t
        -0x29t
        -0x54t
        0x69t
        -0x63t
        -0x7et
        0x1dt
        0x5at
        0x64t
        -0x2bt
        -0x45t
    .end array-data

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
    .line 282
    .line 283
    .line 284
    nop

    .line 285
    :array_5
    .array-data 1
        0x78t
        0x33t
        0x12t
        -0x50t
        -0x37t
        0x3bt
        -0x8t
        -0x1ft
    .end array-data

    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    :array_6
    .array-data 1
        0x5t
        -0x4ft
        0x29t
    .end array-data

    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    :array_7
    .array-data 1
        0x56t
        -0x4t
        0x7bt
        0x47t
        -0x2ft
        -0x3t
        0x52t
        0x4bt
    .end array-data

    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    :array_8
    .array-data 1
        0x43t
        -0x3ct
        0x42t
        -0x66t
        0x31t
        0x1ct
        -0x69t
        -0xet
        0x4bt
        -0x3ct
        0x52t
        -0x73t
        0x30t
        0x1t
        -0x23t
        -0x43t
        0x41t
        -0x22t
        0x4ft
        -0x79t
        0x30t
        0x5bt
        -0x4ft
        -0x6dt
        0x6dt
        -0x2t
        0x79t
        -0x55t
        0x11t
        0x38t
        -0x5dt
        -0x70t
        0x67t
        -0x2t
        0x63t
        -0x54t
    .end array-data

    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    :array_9
    .array-data 1
        0x22t
        -0x56t
        0x26t
        -0x18t
        0x5et
        0x75t
        -0xdt
        -0x24t
    .end array-data

    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    :array_a
    .array-data 1
        0x5et
        0x73t
        -0x5ct
        0x6t
        -0x4ft
        0x3ct
        -0x1dt
        0x47t
        0x7et
        0x79t
        -0x4at
        0x15t
        -0x4ft
        0x3t
        -0x35t
        0x41t
        0x68t
        0x63t
        -0x5ft
        0x17t
        -0x5at
    .end array-data

    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    nop

    .line 353
    :array_b
    .array-data 1
        0xdt
        0xat
        -0x29t
        0x72t
        -0x2ct
        0x51t
        -0x52t
        0x22t
    .end array-data

    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    :array_c
    .array-data 1
        0x79t
        0x72t
        0x29t
        0x1et
        -0x72t
        0x78t
        0x76t
        0x7et
        0x4at
        0x79t
        0x2et
        0x9t
        -0x78t
        0x67t
        0x77t
        0x70t
        0x42t
        0x79t
        0x3et
        0x1et
        -0x77t
        0x7at
        0x3dt
        0x3ft
        0x48t
        0x63t
        0x23t
        0x14t
        -0x77t
        0x20t
        0x51t
        0x11t
        0x64t
        0x43t
        0x15t
        0x38t
        -0x58t
        0x43t
        0x43t
        0x12t
        0x6et
        0x43t
        0xft
        0x3ft
    .end array-data

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
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    :array_d
    .array-data 1
        0x2bt
        0x17t
        0x4at
        0x7bt
        -0x19t
        0xet
        0x13t
        0x5et
    .end array-data
.end method
