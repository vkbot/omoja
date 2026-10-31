.class public final synthetic Lq0/o;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ly0/e;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lq0/p;


# direct methods
.method public synthetic constructor <init>(Lq0/p;I)V
    .locals 0

    .line 1
    iput p2, p0, Lq0/o;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lq0/o;->b:Lq0/p;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget v0, p0, Lq0/o;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/16 v3, 0x8

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lq0/o;->b:Lq0/p;

    .line 11
    .line 12
    iget-object v4, v0, Lq0/p;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    goto/16 :goto_3

    .line 21
    .line 22
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/bumptech/glide/d;->c(Ljava/lang/String;)Lm0/b3;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 v4, 0x3

    .line 27
    new-array v4, v4, [B

    .line 28
    .line 29
    fill-array-data v4, :array_0

    .line 30
    .line 31
    .line 32
    new-array v5, v3, [B

    .line 33
    .line 34
    fill-array-data v5, :array_1

    .line 35
    .line 36
    .line 37
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    iget-object v5, p1, Lm0/b3;->b:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-nez v4, :cond_1

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_1
    iget-boolean v4, p1, Lm0/b3;->a:Z

    .line 51
    .line 52
    iput-boolean v4, v0, Lq0/p;->g:Z

    .line 53
    .line 54
    iget-boolean p1, p1, Lm0/b3;->a:Z

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lq0/p;->d(Z)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lq0/p;->e()V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception p1

    .line 66
    goto :goto_2

    .line 67
    :catch_1
    move-exception p1

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    :goto_0
    iget-boolean p1, v0, Lq0/p;->f:Z

    .line 70
    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    iget-boolean p1, v0, Lq0/p;->g:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    move p1, v1

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    move p1, v2

    .line 80
    :goto_1
    iget-object v4, v0, Lq0/p;->b:Lcom/example/navistart/MockGPS/MockGpsService;

    .line 81
    .line 82
    iget-object v5, v0, Lq0/p;->a:Landroid/content/Context;

    .line 83
    .line 84
    const v6, 0x7f130259

    .line 85
    .line 86
    .line 87
    if-eqz p1, :cond_4

    .line 88
    .line 89
    :try_start_1
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {v0}, Lq0/p;->a()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    invoke-static {p1, v0, v1}, Lcom/example/navistart/MockGPS/MockGpsService;->j(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_4
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {v0}, Lq0/p;->a()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-static {p1, v1, v2}, Lcom/example/navistart/MockGPS/MockGpsService;->j(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 116
    .line 117
    .line 118
    iget-object p1, v0, Lq0/p;->b:Lcom/example/navistart/MockGPS/MockGpsService;

    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/example/navistart/MockGPS/MockGpsService;->h()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :goto_2
    sget-object v0, Lq0/p;->p:Ljava/lang/String;

    .line 125
    .line 126
    const/16 v1, 0x17

    .line 127
    .line 128
    new-array v1, v1, [B

    .line 129
    .line 130
    fill-array-data v1, :array_2

    .line 131
    .line 132
    .line 133
    new-array v2, v3, [B

    .line 134
    .line 135
    fill-array-data v2, :array_3

    .line 136
    .line 137
    .line 138
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    .line 144
    .line 145
    :goto_3
    return-void

    .line 146
    :pswitch_0
    iget-object v0, p0, Lq0/o;->b:Lq0/p;

    .line 147
    .line 148
    iget-object v4, v0, Lq0/p;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 149
    .line 150
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    if-nez v4, :cond_5

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_5
    :try_start_2
    invoke-static {p1}, Lq0/q;->b(Ljava/lang/String;)Lq0/q;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    if-nez v4, :cond_6

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 165
    .line 166
    .line 167
    move-result-wide v5

    .line 168
    iput-wide v5, v0, Lq0/p;->h:J

    .line 169
    .line 170
    iput-boolean v2, v0, Lq0/p;->i:Z

    .line 171
    .line 172
    iget-object v2, v0, Lq0/p;->b:Lcom/example/navistart/MockGPS/MockGpsService;

    .line 173
    .line 174
    iget-object v5, v0, Lq0/p;->a:Landroid/content/Context;

    .line 175
    .line 176
    const v6, 0x7f130257

    .line 177
    .line 178
    .line 179
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    invoke-virtual {v0}, Lq0/p;->a()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    invoke-static {v5, v6, v1}, Lcom/example/navistart/MockGPS/MockGpsService;->j(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 191
    .line 192
    .line 193
    iget-object v0, v0, Lq0/p;->b:Lcom/example/navistart/MockGPS/MockGpsService;

    .line 194
    .line 195
    invoke-virtual {v0, v4}, Lcom/example/navistart/MockGPS/MockGpsService;->i(Lq0/q;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 196
    .line 197
    .line 198
    goto :goto_4

    .line 199
    :catch_2
    move-exception v0

    .line 200
    sget-object v1, Lq0/p;->p:Ljava/lang/String;

    .line 201
    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .line 206
    .line 207
    const/16 v4, 0x1a

    .line 208
    .line 209
    new-array v4, v4, [B

    .line 210
    .line 211
    fill-array-data v4, :array_4

    .line 212
    .line 213
    .line 214
    new-array v3, v3, [B

    .line 215
    .line 216
    fill-array-data v3, :array_5

    .line 217
    .line 218
    .line 219
    invoke-static {v4, v3, v2, p1}, Lcom/google/protobuf/q;->l([B[BLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-static {v1, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    .line 225
    .line 226
    :goto_4
    return-void

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    :array_0
    .array-data 1
        0x5at
        -0x37t
        -0x15t
    .end array-data

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    :array_1
    .array-data 1
        0x3dt
        -0x47t
        -0x68t
        -0x80t
        0x17t
        -0x70t
        0x70t
        -0x5t
    .end array-data

    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    :array_2
    .array-data 1
        0x21t
        0x27t
        0x3ft
        -0x7et
        0x5dt
        -0xct
        0x2bt
        0x19t
        0x13t
        0x34t
        0x3et
        -0x2ft
        0x7ft
        -0x36t
        0x1bt
        0x5ct
        0x43t
        0x36t
        0x3at
        -0x3ft
        0x71t
        -0x3ft
        0xct
    .end array-data

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
    .line 262
    .line 263
    :array_3
    .array-data 1
        0x63t
        0x46t
        0x5bt
        -0x5et
        0x1at
        -0x5ct
        0x78t
        0x39t
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
        -0x3et
        -0xct
        0x30t
        0x44t
        -0x7bt
        0x1bt
        -0x65t
        0x62t
        -0xdt
        -0x1bt
        0x3bt
        0x16t
        -0x7bt
        0x49t
        -0x43t
        0x5ct
        -0x2dt
        -0x4bt
        0x24t
        0x5t
        -0x6et
        0x2t
        -0x61t
        0x78t
        -0x46t
        -0x4bt
    .end array-data

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
    .line 286
    .line 287
    .line 288
    nop

    .line 289
    :array_5
    .array-data 1
        -0x80t
        -0x6bt
        0x54t
        0x64t
        -0xft
        0x69t
        -0x6t
        0xct
    .end array-data
.end method
