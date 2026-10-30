.class public final synthetic Lb1/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lb1/f;

.field public final synthetic d:Lb1/r;


# direct methods
.method public synthetic constructor <init>(Lb1/f;Lb1/r;I)V
    .locals 0

    .line 1
    iput p3, p0, Lb1/a;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lb1/a;->c:Lb1/f;

    .line 4
    .line 5
    iput-object p2, p0, Lb1/a;->d:Lb1/r;

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
    .locals 10

    .line 1
    iget v0, p0, Lb1/a;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb1/a;->c:Lb1/f;

    .line 7
    .line 8
    iget-object v1, p0, Lb1/a;->d:Lb1/r;

    .line 9
    .line 10
    iget-object v2, v0, Lb1/f;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iget-object v3, v0, Lb1/f;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x1

    .line 23
    if-ne v3, v4, :cond_0

    .line 24
    .line 25
    iget-object v3, v0, Lb1/f;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 26
    .line 27
    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    goto/16 :goto_3

    .line 34
    .line 35
    :cond_0
    iget-object v3, v0, Lb1/f;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    iget-object v5, v0, Lb1/f;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 42
    .line 43
    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 44
    .line 45
    .line 46
    iget-object v5, v0, Lb1/f;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 47
    .line 48
    invoke-virtual {v5, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    const/16 v5, 0x8

    .line 52
    .line 53
    if-lez v3, :cond_1

    .line 54
    .line 55
    sget-object v6, Lb1/f;->s:Ljava/lang/String;

    .line 56
    .line 57
    new-instance v7, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const/16 v8, 0x22

    .line 63
    .line 64
    new-array v8, v8, [B

    .line 65
    .line 66
    fill-array-data v8, :array_0

    .line 67
    .line 68
    .line 69
    new-array v9, v5, [B

    .line 70
    .line 71
    fill-array-data v9, :array_1

    .line 72
    .line 73
    .line 74
    invoke-static {v8, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    :cond_1
    iget-object v3, v0, Lb1/f;->h:[B

    .line 92
    .line 93
    if-eqz v3, :cond_2

    .line 94
    .line 95
    :try_start_0
    iget-wide v6, v0, Lb1/f;->i:J

    .line 96
    .line 97
    invoke-virtual {v1, v3, v6, v7}, Lb1/r;->k([BJ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catch_0
    move-exception v1

    .line 102
    sget-object v3, Lb1/f;->s:Ljava/lang/String;

    .line 103
    .line 104
    const/16 v6, 0x27

    .line 105
    .line 106
    new-array v6, v6, [B

    .line 107
    .line 108
    fill-array-data v6, :array_2

    .line 109
    .line 110
    .line 111
    new-array v5, v5, [B

    .line 112
    .line 113
    fill-array-data v5, :array_3

    .line 114
    .line 115
    .line 116
    invoke-static {v6, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    .line 122
    .line 123
    :cond_2
    :goto_0
    if-eqz v2, :cond_5

    .line 124
    .line 125
    iget-object v1, v0, Lb1/f;->q:Lb1/c;

    .line 126
    .line 127
    iget-boolean v2, v0, Lb1/f;->n:Z

    .line 128
    .line 129
    if-eqz v2, :cond_3

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_3
    new-instance v2, Landroid/content/IntentFilter;

    .line 133
    .line 134
    sget-object v3, Lb1/f;->w:Ljava/lang/String;

    .line 135
    .line 136
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 140
    .line 141
    iget-object v5, v0, Lb1/f;->a:Landroid/content/Context;

    .line 142
    .line 143
    const/16 v6, 0x21

    .line 144
    .line 145
    if-lt v3, v6, :cond_4

    .line 146
    .line 147
    invoke-static {v5, v1, v2}, Landroidx/core/graphics/a;->u(Landroid/content/Context;Lb1/c;Landroid/content/IntentFilter;)V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_4
    invoke-virtual {v5, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    .line 153
    .line 154
    :goto_1
    iput-boolean v4, v0, Lb1/f;->n:Z

    .line 155
    .line 156
    :cond_5
    :goto_2
    invoke-virtual {v0}, Lb1/f;->d()V

    .line 157
    .line 158
    .line 159
    :goto_3
    return-void

    .line 160
    :pswitch_0
    iget-object v0, p0, Lb1/a;->c:Lb1/f;

    .line 161
    .line 162
    iget-object v1, p0, Lb1/a;->d:Lb1/r;

    .line 163
    .line 164
    iget-object v2, v0, Lb1/f;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 165
    .line 166
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    iget-object v1, v0, Lb1/f;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-eqz v1, :cond_7

    .line 176
    .line 177
    iget-object v1, v0, Lb1/f;->b:Landroid/os/Handler;

    .line 178
    .line 179
    iget-object v2, v0, Lb1/f;->o:Lb1/b;

    .line 180
    .line 181
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 182
    .line 183
    .line 184
    iget-object v1, v0, Lb1/f;->b:Landroid/os/Handler;

    .line 185
    .line 186
    iget-object v2, v0, Lb1/f;->p:Lb1/b;

    .line 187
    .line 188
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0}, Lb1/f;->c()V

    .line 192
    .line 193
    .line 194
    iget-boolean v1, v0, Lb1/f;->n:Z

    .line 195
    .line 196
    if-nez v1, :cond_6

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_6
    :try_start_1
    iget-object v1, v0, Lb1/f;->a:Landroid/content/Context;

    .line 200
    .line 201
    iget-object v2, v0, Lb1/f;->q:Lb1/c;

    .line 202
    .line 203
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 204
    .line 205
    .line 206
    :catch_1
    const/4 v1, 0x0

    .line 207
    iput-boolean v1, v0, Lb1/f;->n:Z

    .line 208
    .line 209
    :goto_4
    const/4 v1, 0x0

    .line 210
    iput-object v1, v0, Lb1/f;->h:[B

    .line 211
    .line 212
    const-wide/16 v1, 0x0

    .line 213
    .line 214
    iput-wide v1, v0, Lb1/f;->i:J

    .line 215
    .line 216
    :cond_7
    return-void

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    :array_0
    .array-data 1
        0x22t
        0x53t
        -0x40t
        -0x7ft
        -0x44t
        -0x47t
        0x3bt
        0x3bt
        0x50t
        0x45t
        -0x3ct
        -0x74t
        -0x4ft
        -0x41t
        0x7et
        0x32t
        0x19t
        0x58t
        -0x27t
        -0x40t
        -0x50t
        -0x45t
        0x2et
        0x7ft
        0x1ct
        0x5ft
        -0x3dt
        -0x67t
        -0x48t
        -0x4ct
        0x3bt
        0x2dt
        0x3t
        0xbt
    .end array-data

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
    nop

    .line 245
    :array_1
    .array-data 1
        0x70t
        0x36t
        -0x50t
        -0x13t
        -0x23t
        -0x26t
        0x5et
        0x5ft
    .end array-data

    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    :array_2
    .array-data 1
        0x1at
        0x77t
        -0x7ft
        0x8t
        -0x74t
        0x50t
        -0x5et
        0x58t
        0x77t
        0x72t
        -0x7at
        0x12t
        -0x2bt
        0x58t
        -0x53t
        0x4dt
        0x25t
        0x3et
        -0x63t
        0x4t
        -0x35t
        0x58t
        -0x60t
        0x5ct
        0x32t
        0x7at
        -0x31t
        0x2t
        -0x40t
        0x5et
        -0x55t
        0x4dt
        0x33t
        0x3et
        -0x77t
        0x13t
        -0x40t
        0x50t
        -0x5at
    .end array-data

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
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    :array_3
    .array-data 1
        0x57t
        0x1et
        -0x11t
        0x61t
        -0x5ft
        0x3dt
        -0x3dt
        0x28t
    .end array-data
.end method
