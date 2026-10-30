.class public final synthetic Lw0/i;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lw0/o;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lw0/o;II)V
    .locals 0

    .line 1
    iput p3, p0, Lw0/i;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lw0/i;->c:Lw0/o;

    .line 4
    .line 5
    iput p2, p0, Lw0/i;->d:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lw0/i;->b:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lw0/i;->c:Lw0/o;

    .line 9
    .line 10
    iget v2, p0, Lw0/i;->d:I

    .line 11
    .line 12
    iget v3, v0, Lw0/o;->O:I

    .line 13
    .line 14
    if-eq v2, v3, :cond_0

    .line 15
    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :cond_0
    :try_start_0
    iget-object v3, v0, Lw0/o;->k:Landroid/media/AudioRecord;

    .line 19
    .line 20
    if-eqz v3, :cond_4

    .line 21
    .line 22
    invoke-virtual {v3}, Landroid/media/AudioRecord;->getRecordingState()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x3

    .line 27
    if-eq v3, v4, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iget-object v3, v0, Lw0/o;->k:Landroid/media/AudioRecord;

    .line 31
    .line 32
    iget-object v4, v0, Lw0/o;->u:[B

    .line 33
    .line 34
    array-length v5, v4

    .line 35
    const/4 v6, 0x0

    .line 36
    invoke-virtual {v3, v4, v6, v5, v6}, Landroid/media/AudioRecord;->read([BIII)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-gtz v3, :cond_2

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_2
    sget-object v4, Lw0/o;->T:Lw0/b;

    .line 44
    .line 45
    sget-object v5, Lw0/b;->d:Lw0/b;

    .line 46
    .line 47
    if-eq v4, v5, :cond_3

    .line 48
    .line 49
    sget-object v4, Lw0/b;->c:Lw0/b;

    .line 50
    .line 51
    invoke-virtual {v0, v4}, Lw0/o;->z(Lw0/b;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception v3

    .line 56
    goto :goto_2

    .line 57
    :cond_3
    :goto_0
    iget-object v4, v0, Lw0/o;->u:[B

    .line 58
    .line 59
    invoke-virtual {v0, v3, v4}, Lw0/o;->F(I[B)V

    .line 60
    .line 61
    .line 62
    new-instance v4, Lw0/k;

    .line 63
    .line 64
    iget-object v5, v0, Lw0/o;->u:[B

    .line 65
    .line 66
    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-direct {v4, v5, v3}, Lw0/k;-><init>([BI)V

    .line 71
    .line 72
    .line 73
    iget-object v3, v0, Lw0/o;->f:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 74
    .line 75
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-nez v3, :cond_5

    .line 80
    .line 81
    iget-object v3, v0, Lw0/o;->f:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    iget-object v3, v0, Lw0/o;->f:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 87
    .line 88
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    iget-object v3, v0, Lw0/o;->a:Ljava/lang/String;

    .line 92
    .line 93
    const/16 v4, 0x30

    .line 94
    .line 95
    new-array v4, v4, [B

    .line 96
    .line 97
    fill-array-data v4, :array_0

    .line 98
    .line 99
    .line 100
    new-array v5, v1, [B

    .line 101
    .line 102
    fill-array-data v5, :array_1

    .line 103
    .line 104
    .line 105
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_4
    :goto_1
    iget v3, v0, Lw0/o;->O:I

    .line 114
    .line 115
    if-ne v2, v3, :cond_5

    .line 116
    .line 117
    invoke-virtual {v0}, Lw0/o;->J()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :goto_2
    iget-object v4, v0, Lw0/o;->a:Ljava/lang/String;

    .line 122
    .line 123
    const/16 v5, 0x17

    .line 124
    .line 125
    new-array v5, v5, [B

    .line 126
    .line 127
    fill-array-data v5, :array_2

    .line 128
    .line 129
    .line 130
    new-array v1, v1, [B

    .line 131
    .line 132
    fill-array-data v1, :array_3

    .line 133
    .line 134
    .line 135
    invoke-static {v5, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-static {v4, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    .line 141
    .line 142
    iget v1, v0, Lw0/o;->O:I

    .line 143
    .line 144
    if-ne v2, v1, :cond_5

    .line 145
    .line 146
    invoke-virtual {v0}, Lw0/o;->J()V

    .line 147
    .line 148
    .line 149
    :cond_5
    :goto_3
    return-void

    .line 150
    :pswitch_0
    iget-object v0, p0, Lw0/i;->c:Lw0/o;

    .line 151
    .line 152
    iget v2, p0, Lw0/i;->d:I

    .line 153
    .line 154
    const/16 v3, -0x10

    .line 155
    .line 156
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 157
    .line 158
    .line 159
    :goto_4
    iget v3, v0, Lw0/o;->O:I

    .line 160
    .line 161
    if-ne v2, v3, :cond_7

    .line 162
    .line 163
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-nez v3, :cond_7

    .line 172
    .line 173
    :try_start_1
    iget-object v3, v0, Lw0/o;->f:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 174
    .line 175
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 176
    .line 177
    const-wide/16 v5, 0xfa

    .line 178
    .line 179
    invoke-virtual {v3, v5, v6, v4}, Ljava/util/concurrent/ArrayBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    check-cast v3, Lw0/k;

    .line 184
    .line 185
    if-nez v3, :cond_6

    .line 186
    .line 187
    invoke-virtual {v0}, Lw0/o;->x()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Lw0/o;->k()V

    .line 191
    .line 192
    .line 193
    goto :goto_4

    .line 194
    :catch_1
    move-exception v3

    .line 195
    goto :goto_5

    .line 196
    :cond_6
    iget-object v4, v3, Lw0/k;->a:[B

    .line 197
    .line 198
    iget v3, v3, Lw0/k;->b:I

    .line 199
    .line 200
    invoke-virtual {v0, v3, v4}, Lw0/o;->E(I[B)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-virtual {v0, v3}, Lw0/o;->H(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0}, Lw0/o;->x()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0}, Lw0/o;->k()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 211
    .line 212
    .line 213
    goto :goto_4

    .line 214
    :goto_5
    iget-object v4, v0, Lw0/o;->a:Ljava/lang/String;

    .line 215
    .line 216
    const/16 v5, 0x1d

    .line 217
    .line 218
    new-array v5, v5, [B

    .line 219
    .line 220
    fill-array-data v5, :array_4

    .line 221
    .line 222
    .line 223
    new-array v1, v1, [B

    .line 224
    .line 225
    fill-array-data v1, :array_5

    .line 226
    .line 227
    .line 228
    invoke-static {v5, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-static {v4, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    .line 234
    .line 235
    iget v1, v0, Lw0/o;->O:I

    .line 236
    .line 237
    if-ne v2, v1, :cond_7

    .line 238
    .line 239
    invoke-virtual {v0}, Lw0/o;->J()V

    .line 240
    .line 241
    .line 242
    goto :goto_6

    .line 243
    :catch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 248
    .line 249
    .line 250
    :cond_7
    :goto_6
    return-void

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    :array_0
    .array-data 1
        0x7bt
        -0x2ct
        -0x78t
        0x3et
        -0x6ct
        0x18t
        -0x16t
        -0x8t
        0x40t
        -0x22t
        -0x7bt
        0x71t
        -0x7et
        0x3t
        -0x1at
        -0x7t
        0x4ct
        -0x6ft
        -0x7ct
        0x27t
        -0x6at
        0x4t
        -0x1bt
        -0x20t
        0x46t
        -0x3at
        -0x30t
        0x71t
        -0x64t
        0x1at
        -0x19t
        -0x17t
        0x5at
        -0x3bt
        -0x35t
        0x30t
        -0x7at
        0x12t
        -0x16t
        -0x1dt
        0x9t
        -0x2bt
        -0x67t
        0x3et
        -0x7dt
        0x6t
        -0x1at
        -0x18t
    .end array-data

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
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    :array_1
    .array-data 1
        0x29t
        -0x4ft
        -0x15t
        0x51t
        -0xdt
        0x76t
        -0x7dt
        -0x74t
    .end array-data

    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    :array_2
    .array-data 1
        0x57t
        -0xft
        0x3bt
        -0x43t
        0x12t
        -0x64t
        0x7at
        -0x48t
        0x79t
        -0x19t
        0x3at
        -0x59t
        0xet
        -0x2bt
        0x64t
        -0x53t
        0x36t
        -0x1et
        0x3et
        -0x43t
        0x11t
        -0x27t
        0x6et
    .end array-data

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
    :array_3
    .array-data 1
        0x16t
        -0x7ct
        0x5ft
        -0x2ct
        0x7dt
        -0x44t
        0xat
        -0x36t
    .end array-data

    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    :array_4
    .array-data 1
        -0x10t
        0x56t
        0x4et
        -0x11t
        -0x40t
        0x14t
        -0x12t
        -0x4ft
        -0x35t
        0x5ct
        0x43t
        -0x60t
        -0x29t
        0x8t
        -0x18t
        -0x5at
        -0x39t
        0x40t
        0x5et
        -0x17t
        -0x37t
        0x1dt
        -0x59t
        -0x5dt
        -0x3dt
        0x5at
        0x41t
        -0x1bt
        -0x3dt
    .end array-data

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
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    nop

    .line 337
    :array_5
    .array-data 1
        -0x5et
        0x33t
        0x2dt
        -0x80t
        -0x59t
        0x7at
        -0x79t
        -0x3bt
    .end array-data
.end method
