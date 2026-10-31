.class public final Lc7/f;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lc7/g;


# direct methods
.method public synthetic constructor <init>(Lc7/g;I)V
    .registers 3

    .line 1
    iput p2, p0, Lc7/f;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lc7/f;->c:Lc7/g;

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
    .registers 11

    .line 1
    iget v0, p0, Lc7/f;->b:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    const v4, 0x7f0905fe

    .line 7
    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    packed-switch v0, :pswitch_data_152

    .line 11
    .line 12
    .line 13
    :try_start_c
    const-string v0, "g"

    .line 14
    .line 15
    const-string v1, "Closing camera"

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lc7/f;->c:Lc7/g;

    .line 21
    .line 22
    iget-object v0, v0, Lc7/g;->c:Lc7/i;

    .line 23
    .line 24
    iget-object v1, v0, Lc7/i;->c:Lc7/b;

    .line 25
    .line 26
    if-eqz v1, :cond_20

    .line 27
    .line 28
    invoke-virtual {v1}, Lc7/b;->c()V

    .line 29
    .line 30
    .line 31
    iput-object v5, v0, Lc7/i;->c:Lc7/b;

    .line 32
    .line 33
    :cond_20
    iget-object v1, v0, Lc7/i;->d:Ld6/a;

    .line 34
    .line 35
    if-eqz v1, :cond_26

    .line 36
    .line 37
    iput-object v5, v0, Lc7/i;->d:Ld6/a;

    .line 38
    .line 39
    :cond_26
    iget-object v1, v0, Lc7/i;->a:Landroid/hardware/Camera;

    .line 40
    .line 41
    if-eqz v1, :cond_37

    .line 42
    .line 43
    iget-boolean v4, v0, Lc7/i;->e:Z

    .line 44
    .line 45
    if-eqz v4, :cond_37

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 48
    .line 49
    .line 50
    iget-object v1, v0, Lc7/i;->l:Lc7/h;

    .line 51
    .line 52
    iput-object v5, v1, Lc7/h;->a:Lr5/c;

    .line 53
    .line 54
    iput-boolean v2, v0, Lc7/i;->e:Z

    .line 55
    .line 56
    :cond_37
    iget-object v0, p0, Lc7/f;->c:Lc7/g;

    .line 57
    .line 58
    iget-object v0, v0, Lc7/g;->c:Lc7/i;

    .line 59
    .line 60
    iget-object v1, v0, Lc7/i;->a:Landroid/hardware/Camera;

    .line 61
    .line 62
    if-eqz v1, :cond_4d

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 65
    .line 66
    .line 67
    iput-object v5, v0, Lc7/i;->a:Landroid/hardware/Camera;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_44} :catch_45

    .line 68
    .line 69
    goto :goto_4d

    .line 70
    :catch_45
    move-exception v0

    .line 71
    const-string v1, "g"

    .line 72
    .line 73
    const-string v2, "Failed to close camera"

    .line 74
    .line 75
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .line 77
    .line 78
    :cond_4d
    :goto_4d
    iget-object v0, p0, Lc7/f;->c:Lc7/g;

    .line 79
    .line 80
    iput-boolean v3, v0, Lc7/g;->g:Z

    .line 81
    .line 82
    iget-object v0, v0, Lc7/g;->d:Landroid/os/Handler;

    .line 83
    .line 84
    const v1, 0x7f0905fd

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lc7/f;->c:Lc7/g;

    .line 91
    .line 92
    iget-object v0, v0, Lc7/g;->a:Lb7/p;

    .line 93
    .line 94
    iget-object v1, v0, Lb7/p;->e:Ljava/lang/Object;

    .line 95
    .line 96
    monitor-enter v1

    .line 97
    :try_start_60
    iget v2, v0, Lb7/p;->b:I

    .line 98
    .line 99
    sub-int/2addr v2, v3

    .line 100
    iput v2, v0, Lb7/p;->b:I

    .line 101
    .line 102
    if-nez v2, :cond_7a

    .line 103
    .line 104
    iget-object v2, v0, Lb7/p;->e:Ljava/lang/Object;

    .line 105
    .line 106
    monitor-enter v2
    :try_end_6a
    .catchall {:try_start_60 .. :try_end_6a} :catchall_7c

    .line 107
    :try_start_6a
    iget-object v3, v0, Lb7/p;->d:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v3, Landroid/os/HandlerThread;

    .line 110
    .line 111
    invoke-virtual {v3}, Landroid/os/HandlerThread;->quit()Z

    .line 112
    .line 113
    .line 114
    iput-object v5, v0, Lb7/p;->d:Ljava/lang/Object;

    .line 115
    .line 116
    iput-object v5, v0, Lb7/p;->c:Ljava/lang/Object;

    .line 117
    .line 118
    monitor-exit v2

    .line 119
    goto :goto_7a

    .line 120
    :catchall_77
    move-exception v0

    .line 121
    monitor-exit v2
    :try_end_79
    .catchall {:try_start_6a .. :try_end_79} :catchall_77

    .line 122
    :try_start_79
    throw v0

    .line 123
    :cond_7a
    :goto_7a
    monitor-exit v1

    .line 124
    return-void

    .line 125
    :catchall_7c
    move-exception v0

    .line 126
    monitor-exit v1
    :try_end_7e
    .catchall {:try_start_79 .. :try_end_7e} :catchall_7c

    .line 127
    throw v0

    .line 128
    :pswitch_7f
    const-string v0, "g"

    .line 129
    .line 130
    iget-object v1, p0, Lc7/f;->c:Lc7/g;

    .line 131
    .line 132
    iget-object v2, v1, Lc7/g;->c:Lc7/i;

    .line 133
    .line 134
    :try_start_85
    const-string v3, "Starting preview"

    .line 135
    .line 136
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    iget-object v3, v1, Lc7/g;->b:Landroid/support/v4/media/h;

    .line 140
    .line 141
    iget-object v5, v2, Lc7/i;->a:Landroid/hardware/Camera;

    .line 142
    .line 143
    iget-object v6, v3, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v6, Landroid/view/SurfaceHolder;

    .line 146
    .line 147
    if-eqz v6, :cond_98

    .line 148
    .line 149
    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 150
    .line 151
    .line 152
    goto :goto_9f

    .line 153
    :cond_98
    iget-object v3, v3, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v3, Landroid/graphics/SurfaceTexture;

    .line 156
    .line 157
    invoke-virtual {v5, v3}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 158
    .line 159
    .line 160
    :goto_9f
    invoke-virtual {v2}, Lc7/i;->e()V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_a2} :catch_a3

    .line 161
    .line 162
    .line 163
    goto :goto_b4

    .line 164
    :catch_a3
    move-exception v2

    .line 165
    iget-object v1, v1, Lc7/g;->d:Landroid/os/Handler;

    .line 166
    .line 167
    if-eqz v1, :cond_af

    .line 168
    .line 169
    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 174
    .line 175
    .line 176
    :cond_af
    const-string v1, "Failed to start preview"

    .line 177
    .line 178
    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    .line 180
    .line 181
    :goto_b4
    return-void

    .line 182
    :pswitch_b5
    const-string v0, "g"

    .line 183
    .line 184
    iget-object v6, p0, Lc7/f;->c:Lc7/g;

    .line 185
    .line 186
    iget-object v7, v6, Lc7/g;->c:Lc7/i;

    .line 187
    .line 188
    :try_start_bb
    const-string v8, "Configuring camera"

    .line 189
    .line 190
    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    invoke-virtual {v7}, Lc7/i;->b()V

    .line 194
    .line 195
    .line 196
    iget-object v8, v6, Lc7/g;->d:Landroid/os/Handler;

    .line 197
    .line 198
    if-eqz v8, :cond_107

    .line 199
    .line 200
    iget-object v9, v7, Lc7/i;->j:Lb7/u;

    .line 201
    .line 202
    if-nez v9, :cond_cc

    .line 203
    .line 204
    goto :goto_e2

    .line 205
    :cond_cc
    iget v5, v7, Lc7/i;->k:I

    .line 206
    .line 207
    if-eq v5, v1, :cond_ef

    .line 208
    .line 209
    rem-int/lit16 v5, v5, 0xb4

    .line 210
    .line 211
    if-eqz v5, :cond_d5

    .line 212
    .line 213
    move v2, v3

    .line 214
    :cond_d5
    if-eqz v2, :cond_e1

    .line 215
    .line 216
    new-instance v5, Lb7/u;

    .line 217
    .line 218
    iget v1, v9, Lb7/u;->c:I

    .line 219
    .line 220
    iget v2, v9, Lb7/u;->b:I

    .line 221
    .line 222
    invoke-direct {v5, v1, v2}, Lb7/u;-><init>(II)V

    .line 223
    .line 224
    .line 225
    goto :goto_e2

    .line 226
    :cond_e1
    move-object v5, v9

    .line 227
    :goto_e2
    const v1, 0x7f090604

    .line 228
    .line 229
    .line 230
    invoke-virtual {v8, v1, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 235
    .line 236
    .line 237
    goto :goto_107

    .line 238
    :catch_ed
    move-exception v1

    .line 239
    goto :goto_f7

    .line 240
    :cond_ef
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 241
    .line 242
    const-string v2, "Rotation not calculated yet. Call configure() first."

    .line 243
    .line 244
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    throw v1
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_f7} :catch_ed

    .line 248
    :goto_f7
    iget-object v2, v6, Lc7/g;->d:Landroid/os/Handler;

    .line 249
    .line 250
    if-eqz v2, :cond_102

    .line 251
    .line 252
    invoke-virtual {v2, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 257
    .line 258
    .line 259
    :cond_102
    const-string v2, "Failed to configure camera"

    .line 260
    .line 261
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    .line 263
    .line 264
    :cond_107
    :goto_107
    return-void

    .line 265
    :pswitch_108
    iget-object v0, p0, Lc7/f;->c:Lc7/g;

    .line 266
    .line 267
    const-string v2, "g"

    .line 268
    .line 269
    :try_start_10c
    const-string v3, "Opening camera"

    .line 270
    .line 271
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .line 273
    .line 274
    iget-object v3, v0, Lc7/g;->c:Lc7/i;

    .line 275
    .line 276
    iget-object v6, v3, Lc7/i;->g:Lc7/j;

    .line 277
    .line 278
    iget v6, v6, Lc7/j;->a:I

    .line 279
    .line 280
    invoke-static {v6}, Lb1/u;->h(I)I

    .line 281
    .line 282
    .line 283
    move-result v6

    .line 284
    if-ne v6, v1, :cond_11e

    .line 285
    .line 286
    goto :goto_122

    .line 287
    :cond_11e
    invoke-static {v6}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    .line 288
    .line 289
    .line 290
    move-result-object v5

    .line 291
    :goto_122
    iput-object v5, v3, Lc7/i;->a:Landroid/hardware/Camera;

    .line 292
    .line 293
    if-eqz v5, :cond_139

    .line 294
    .line 295
    iget-object v1, v3, Lc7/i;->g:Lc7/j;

    .line 296
    .line 297
    iget v1, v1, Lc7/j;->a:I

    .line 298
    .line 299
    invoke-static {v1}, Lb1/u;->h(I)I

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    new-instance v5, Landroid/hardware/Camera$CameraInfo;

    .line 304
    .line 305
    invoke-direct {v5}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 306
    .line 307
    .line 308
    iput-object v5, v3, Lc7/i;->b:Landroid/hardware/Camera$CameraInfo;

    .line 309
    .line 310
    invoke-static {v1, v5}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 311
    .line 312
    .line 313
    goto :goto_150

    .line 314
    :cond_139
    const-string v1, "Failed to open camera"

    .line 315
    .line 316
    invoke-static {v1}, Lai/onnxruntime/b;->h(Ljava/lang/String;)V
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_13e} :catch_13f

    .line 317
    .line 318
    .line 319
    goto :goto_150

    .line 320
    :catch_13f
    move-exception v1

    .line 321
    iget-object v0, v0, Lc7/g;->d:Landroid/os/Handler;

    .line 322
    .line 323
    if-eqz v0, :cond_14b

    .line 324
    .line 325
    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 330
    .line 331
    .line 332
    :cond_14b
    const-string v0, "Failed to open camera"

    .line 333
    .line 334
    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    .line 336
    .line 337
    :goto_150
    return-void

    .line 338
    nop

    .line 339
    :pswitch_data_152
    .packed-switch 0x0
        :pswitch_108
        :pswitch_b5
        :pswitch_7f
    .end packed-switch
.end method
