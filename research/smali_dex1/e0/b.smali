.class public final synthetic Le0/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/example/navistart/APInAct;


# direct methods
.method public synthetic constructor <init>(Lcom/example/navistart/APInAct;I)V
    .registers 3

    .line 1
    iput p2, p0, Le0/b;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Le0/b;->c:Lcom/example/navistart/APInAct;

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
    .registers 12

    .line 1
    iget v0, p0, Le0/b;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Le0/b;->c:Lcom/example/navistart/APInAct;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_c0

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/example/navistart/APInAct;->f:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/io/File;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/16 v2, 0xd

    .line 21
    .line 22
    new-array v2, v2, [B

    .line 23
    .line 24
    fill-array-data v2, :array_c6

    .line 25
    .line 26
    .line 27
    const/16 v3, 0x8

    .line 28
    .line 29
    new-array v4, v3, [B

    .line 30
    .line 31
    fill-array-data v4, :array_d2

    .line 32
    .line 33
    .line 34
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_b2

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_b2

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_b2

    .line 58
    .line 59
    array-length v1, v0

    .line 60
    const/4 v2, 0x0

    .line 61
    :goto_3c
    if-ge v2, v1, :cond_b2

    .line 62
    .line 63
    aget-object v4, v0, v2

    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    const/16 v6, 0x11

    .line 70
    .line 71
    new-array v7, v6, [B

    .line 72
    .line 73
    fill-array-data v7, :array_da

    .line 74
    .line 75
    .line 76
    new-array v8, v3, [B

    .line 77
    .line 78
    fill-array-data v8, :array_e8

    .line 79
    .line 80
    .line 81
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    new-instance v8, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const/4 v9, 0x5

    .line 91
    new-array v9, v9, [B

    .line 92
    .line 93
    fill-array-data v9, :array_f0

    .line 94
    .line 95
    .line 96
    new-array v10, v3, [B

    .line 97
    .line 98
    fill-array-data v10, :array_f8

    .line 99
    .line 100
    .line 101
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    if-nez v5, :cond_af

    .line 123
    .line 124
    new-array v5, v6, [B

    .line 125
    .line 126
    fill-array-data v5, :array_100

    .line 127
    .line 128
    .line 129
    new-array v6, v3, [B

    .line 130
    .line 131
    fill-array-data v6, :array_10e

    .line 132
    .line 133
    .line 134
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    new-instance v6, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    const/16 v7, 0x2d

    .line 144
    .line 145
    new-array v7, v7, [B

    .line 146
    .line 147
    fill-array-data v7, :array_116

    .line 148
    .line 149
    .line 150
    new-array v8, v3, [B

    .line 151
    .line 152
    fill-array-data v8, :array_132

    .line 153
    .line 154
    .line 155
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    :cond_af
    add-int/lit8 v2, v2, 0x1

    .line 177
    .line 178
    goto :goto_3c

    .line 179
    :cond_b2
    return-void

    .line 180
    :pswitch_b3
    iget-object v0, v1, Lcom/example/navistart/APInAct;->e:Lb1/c;

    .line 181
    .line 182
    new-instance v2, Landroid/content/IntentFilter;

    .line 183
    .line 184
    sget-object v3, Lcom/example/navistart/APInAct;->g:Ljava/lang/String;

    .line 185
    .line 186
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    .line 191
    .line 192
    return-void

    .line 193
    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_b3
    .end packed-switch

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    :array_c6
    .array-data 1
        -0x54t
        0x59t
        0x35t
        -0x25t
        -0xat
        -0x7bt
        0x30t
        0x51t
        -0x66t
        0x56t
        0x26t
        -0x21t
        -0x18t
    .end array-data

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
    nop

    .line 211
    :array_d2
    .array-data 1
        -0x3bt
        0x37t
        0x56t
        -0x4ct
        -0x65t
        -0x14t
        0x5et
        0x36t
    .end array-data

    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    :array_da
    .array-data 1
        -0x62t
        -0x54t
        -0x18t
        0x41t
        0x33t
        0x72t
        -0xct
        -0x63t
        -0x4et
        -0x53t
        -0x1ct
        0x4et
        0x26t
        0x7at
        -0x16t
        -0x6bt
        -0x52t
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
    nop

    .line 233
    :array_e8
    .array-data 1
        -0x23t
        -0x40t
        -0x73t
        0x20t
        0x41t
        0x3bt
        -0x66t
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
    :array_f0
    .array-data 1
        -0xbt
        0x29t
        -0x12t
        -0x6dt
        -0x2ct
    .end array-data

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    nop

    .line 249
    :array_f8
    .array-data 1
        -0x4ft
        0x4ct
        -0x7et
        -0x57t
        -0xct
        0x44t
        0x2et
        -0x6dt
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
        -0x21t
        -0x34t
        -0x1et
        0x31t
        -0x15t
        0x5dt
        0x2bt
        0x6dt
        -0xdt
        -0x33t
        -0x12t
        0x3et
        -0x2t
        0x55t
        0x35t
        0x65t
        -0x11t
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
    nop

    .line 271
    :array_10e
    .array-data 1
        -0x64t
        -0x60t
        -0x79t
        0x50t
        -0x67t
        0x14t
        0x45t
        0xet
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
        -0x2bt
        -0x7ft
        0x1ct
        0x24t
        0x59t
        -0x51t
        -0x74t
        0x7t
        -0x4ft
        -0x34t
        0x7ct
        0x41t
        -0x3et
        -0x52t
        -0x4ft
        0x6t
        -0x7ct
        -0x33t
        0x40t
        -0x4ft
        -0x58t
        -0x3t
        -0x21t
        0x63t
        -0x2bt
        -0x54t
        0x1ct
        0x2at
        -0x57t
        -0x3at
        -0x22t
        0x55t
        -0x2ct
        -0x70t
        -0x14t
        0x40t
        -0x3t
        -0x52t
        -0x41t
        0x7t
        -0x44t
        -0x34t
        0x77t
        -0x55t
        0x59t
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
    nop

    .line 307
    :array_132
    .array-data 1
        0x5t
        0x1ct
        -0x34t
        -0x6ft
        0x79t
        0x7et
        0xft
        -0x29t
    .end array-data
.end method
