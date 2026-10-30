.class public final Lb1/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lb1/f;


# direct methods
.method public synthetic constructor <init>(Lb1/f;I)V
    .locals 0

    .line 1
    iput p2, p0, Lb1/b;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lb1/b;->c:Lb1/f;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lb1/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb1/b;->c:Lb1/f;

    .line 7
    .line 8
    iget-object v0, v0, Lb1/f;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_3

    .line 15
    .line 16
    iget-object v0, p0, Lb1/b;->c:Lb1/f;

    .line 17
    .line 18
    iget-object v0, v0, Lb1/f;->g:Landroid/os/IBinder;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object v0, p0, Lb1/b;->c:Lb1/f;

    .line 24
    .line 25
    iget-object v1, v0, Lb1/f;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x1

    .line 29
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v1, v0, Lb1/f;->g:Landroid/os/IBinder;

    .line 37
    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    iget-object v0, v0, Lb1/f;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iget-object v2, v0, Lb1/f;->c:Ljava/util/concurrent/ExecutorService;

    .line 47
    .line 48
    new-instance v3, La1/a;

    .line 49
    .line 50
    const/4 v4, 0x6

    .line 51
    invoke-direct {v3, v4, v0, v1}, La1/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    iget-object v0, p0, Lb1/b;->c:Lb1/f;

    .line 58
    .line 59
    iget-object v0, v0, Lb1/f;->b:Landroid/os/Handler;

    .line 60
    .line 61
    const-wide/16 v1, 0xc8

    .line 62
    .line 63
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 64
    .line 65
    .line 66
    :cond_3
    :goto_1
    return-void

    .line 67
    :pswitch_0
    iget-object v0, p0, Lb1/b;->c:Lb1/f;

    .line 68
    .line 69
    iget-object v0, v0, Lb1/f;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_5

    .line 76
    .line 77
    iget-object v0, p0, Lb1/b;->c:Lb1/f;

    .line 78
    .line 79
    iget-object v0, v0, Lb1/f;->g:Landroid/os/IBinder;

    .line 80
    .line 81
    if-nez v0, :cond_5

    .line 82
    .line 83
    iget-object v0, p0, Lb1/b;->c:Lb1/f;

    .line 84
    .line 85
    iget-boolean v1, v0, Lb1/f;->m:Z

    .line 86
    .line 87
    if-nez v1, :cond_5

    .line 88
    .line 89
    iget-boolean v1, v0, Lb1/f;->l:Z

    .line 90
    .line 91
    if-eqz v1, :cond_4

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_4
    const/16 v1, 0x8

    .line 95
    .line 96
    :try_start_0
    iget-object v0, v0, Lb1/f;->a:Landroid/content/Context;

    .line 97
    .line 98
    new-instance v2, Landroid/content/Intent;

    .line 99
    .line 100
    const/16 v3, 0x21

    .line 101
    .line 102
    new-array v3, v3, [B

    .line 103
    .line 104
    fill-array-data v3, :array_0

    .line 105
    .line 106
    .line 107
    new-array v4, v1, [B

    .line 108
    .line 109
    fill-array-data v4, :array_1

    .line 110
    .line 111
    .line 112
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const/16 v3, 0x14

    .line 120
    .line 121
    new-array v3, v3, [B

    .line 122
    .line 123
    fill-array-data v3, :array_2

    .line 124
    .line 125
    .line 126
    new-array v4, v1, [B

    .line 127
    .line 128
    fill-array-data v4, :array_3

    .line 129
    .line 130
    .line 131
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    const/4 v3, 0x5

    .line 140
    new-array v3, v3, [B

    .line 141
    .line 142
    fill-array-data v3, :array_4

    .line 143
    .line 144
    .line 145
    new-array v4, v1, [B

    .line 146
    .line 147
    fill-array-data v4, :array_5

    .line 148
    .line 149
    .line 150
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    iget-object v4, p0, Lb1/b;->c:Lb1/f;

    .line 155
    .line 156
    iget-object v4, v4, Lb1/f;->f:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :catch_0
    move-exception v0

    .line 167
    const/16 v2, 0x12

    .line 168
    .line 169
    new-array v2, v2, [B

    .line 170
    .line 171
    fill-array-data v2, :array_6

    .line 172
    .line 173
    .line 174
    new-array v3, v1, [B

    .line 175
    .line 176
    fill-array-data v3, :array_7

    .line 177
    .line 178
    .line 179
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    const/16 v3, 0x18

    .line 184
    .line 185
    new-array v3, v3, [B

    .line 186
    .line 187
    fill-array-data v3, :array_8

    .line 188
    .line 189
    .line 190
    new-array v1, v1, [B

    .line 191
    .line 192
    fill-array-data v1, :array_9

    .line 193
    .line 194
    .line 195
    invoke-static {v3, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    .line 201
    .line 202
    :goto_2
    iget-object v0, p0, Lb1/b;->c:Lb1/f;

    .line 203
    .line 204
    iget-object v0, v0, Lb1/f;->b:Landroid/os/Handler;

    .line 205
    .line 206
    const-wide/16 v1, 0x3e8

    .line 207
    .line 208
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 209
    .line 210
    .line 211
    :cond_5
    :goto_3
    return-void

    .line 212
    nop

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    :array_0
    .array-data 1
        -0xbt
        -0x66t
        0xbt
        0x20t
        0x34t
        -0x31t
        -0x3t
        0xet
        -0x1t
        -0x3ft
        0x5ct
        0x38t
        0x3bt
        -0x3bt
        -0x4t
        0x13t
        -0x16t
        -0x72t
        0x55t
        0x2at
        0x7bt
        -0x14t
        -0x30t
        0x25t
        -0x32t
        -0x5et
        0x64t
        0x9t
        0xat
        -0xft
        -0x30t
        0x25t
        -0x40t
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
    nop

    .line 241
    :array_1
    .array-data 1
        -0x79t
        -0x11t
        0x25t
        0x59t
        0x55t
        -0x5ft
        -0x67t
        0x6bt
    .end array-data

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    :array_2
    .array-data 1
        -0x72t
        -0xft
        0x4ft
        -0x40t
        0x27t
        -0x1t
        0x4t
        0xbt
        -0x7ct
        -0x56t
        0x18t
        -0x28t
        0x28t
        -0xbt
        0x5t
        0x16t
        -0x6et
        -0x1bt
        0x17t
        -0x30t
    .end array-data

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
    .line 262
    .line 263
    :array_3
    .array-data 1
        -0x4t
        -0x7ct
        0x61t
        -0x47t
        0x46t
        -0x6ft
        0x60t
        0x6et
    .end array-data

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    :array_4
    .array-data 1
        0x5t
        -0x4ft
        -0x7dt
        -0x1at
        -0x78t
    .end array-data

    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    nop

    .line 279
    :array_5
    .array-data 1
        0x6bt
        -0x22t
        -0x13t
        -0x7bt
        -0x13t
        -0x46t
        -0x37t
        0x5dt
    .end array-data

    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    :array_6
    .array-data 1
        0x2ft
        0x5dt
        0x54t
        -0x4ct
        0x57t
        -0x75t
        0x1ft
        0x48t
        0x10t
        0x55t
        0x57t
        -0x48t
        0x49t
        -0x7bt
        0x1at
        0x7ct
        0x1t
        0x51t
    .end array-data

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
    nop

    .line 301
    :array_7
    .array-data 1
        0x62t
        0x34t
        0x3at
        -0x23t
        0x1at
        -0x16t
        0x6ft
        0xet
    .end array-data

    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    :array_8
    .array-data 1
        0x59t
        0x46t
        0x48t
        0x41t
        -0x24t
        -0x70t
        -0x5ft
        -0x55t
        0x63t
        0x8t
        0x59t
        0x4at
        -0x22t
        -0x6et
        -0x5ft
        -0x6ft
        0x6dt
        0x5et
        0x40t
        0x44t
        -0x2ft
        -0x7ft
        -0x12t
        -0x53t
    .end array-data

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
    :array_9
    .array-data 1
        0xct
        0x28t
        0x29t
        0x23t
        -0x50t
        -0xbt
        -0x7ft
        -0x21t
    .end array-data
.end method
