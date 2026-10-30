.class public final Lcom/example/navistart/home/WebLauncherActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lb1/s;


# static fields
.field public static final l:Ljava/lang/String;

.field public static final m:Ljava/lang/String;


# instance fields
.field public b:Landroid/widget/FrameLayout;

.field public c:Landroid/widget/FrameLayout;

.field public d:Ls1/k;

.field public e:Landroid/webkit/WebView;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ls1/q0;

.field public j:Z

.field public k:Landroidx/core/graphics/Insets;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x16

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v2, v1, [B

    .line 11
    .line 12
    fill-array-data v2, :array_1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/example/navistart/home/WebLauncherActivity;->l:Ljava/lang/String;

    .line 20
    .line 21
    const/16 v0, 0x11

    .line 22
    .line 23
    new-array v0, v0, [B

    .line 24
    .line 25
    fill-array-data v0, :array_2

    .line 26
    .line 27
    .line 28
    new-array v1, v1, [B

    .line 29
    .line 30
    fill-array-data v1, :array_3

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/example/navistart/home/WebLauncherActivity;->m:Ljava/lang/String;

    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :array_0
    .array-data 1
        -0x53t
        0x7ft
        -0x4ft
        -0x5t
        0x27t
        0x70t
        -0x2bt
        -0x55t
        -0x54t
        0x6ct
        -0x44t
        -0x10t
        0xat
        0x43t
        -0x39t
        -0x45t
        -0x4at
        0x7bt
        -0x43t
        -0x5t
        0x1ft
        0x6ft
    .end array-data

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
    .line 55
    .line 56
    nop

    .line 57
    :array_1
    .array-data 1
        -0x3et
        0xft
        -0x2ct
        -0x6bt
        0x78t
        0x1ct
        -0x4ct
        -0x22t
    .end array-data

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    :array_2
    .array-data 1
        0x33t
        -0x72t
        -0x78t
        0x1at
        0x52t
        0x7et
        0x2et
        -0x2ct
        0x2ft
        -0x80t
        -0x72t
        0x1t
        0x5ft
        0x9t
        0x41t
        -0x4et
        0x55t
    .end array-data

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    nop

    .line 79
    :array_3
    .array-data 1
        0x60t
        -0x35t
        -0x35t
        0x4ft
        0x0t
        0x3bt
        0x71t
        -0x80t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/example/navistart/home/WebLauncherActivity;->k:Landroidx/core/graphics/Insets;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    new-array v1, v1, [B

    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    new-array v3, v2, [B

    .line 15
    .line 16
    fill-array-data v3, :array_1

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x7

    .line 27
    new-array p1, p1, [B

    .line 28
    .line 29
    fill-array-data p1, :array_2

    .line 30
    .line 31
    .line 32
    new-array v1, v2, [B

    .line 33
    .line 34
    fill-array-data v1, :array_3

    .line 35
    .line 36
    .line 37
    invoke-static {p1, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p0, p1, v0}, Lcom/example/navistart/home/WebLauncherActivity;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    :catch_0
    return-void

    .line 49
    :array_0
    .array-data 1
        0x6dt
        -0x5et
        -0x3bt
        -0x2at
        0x4bt
    .end array-data

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    nop

    .line 57
    :array_1
    .array-data 1
        0x1bt
        -0x3dt
        -0x57t
        -0x5dt
        0x2et
        0x4t
        0x11t
        0x2dt
    .end array-data

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    :array_2
    .array-data 1
        0x10t
        -0x5ft
        -0x59t
        -0x54t
        0x6ft
        0x40t
        0x5at
    .end array-data

    .line 66
    .line 67
    .line 68
    :array_3
    .array-data 1
        0x5ct
        -0x32t
        -0x40t
        -0x18t
        0xet
        0x34t
        0x3bt
        -0x33t
    .end array-data
.end method

.method public final B(Ls0/a;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/example/navistart/home/WebLauncherActivity;->i:Ls1/q0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-object p1, v0, Ls1/q0;->y:Ls0/a;

    .line 6
    .line 7
    sget-object v1, Ls1/m0;->d:Ls1/m0;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ls1/q0;->I(Ls1/m0;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/16 v0, 0x8

    .line 13
    .line 14
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 15
    .line 16
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 17
    .line 18
    .line 19
    new-array v2, v0, [B

    .line 20
    .line 21
    fill-array-data v2, :array_0

    .line 22
    .line 23
    .line 24
    new-array v3, v0, [B

    .line 25
    .line 26
    fill-array-data v3, :array_1

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget-object v3, p1, Ls0/a;->a:Ln0/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    const-string v4, ""

    .line 36
    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    move-object v3, v4

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    :goto_0
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    new-array v2, v0, [B

    .line 49
    .line 50
    fill-array-data v2, :array_2

    .line 51
    .line 52
    .line 53
    new-array v3, v0, [B

    .line 54
    .line 55
    fill-array-data v3, :array_3

    .line 56
    .line 57
    .line 58
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    iget-object v3, p1, Ls0/a;->b:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    .line 66
    .line 67
    const/16 v2, 0xa

    .line 68
    .line 69
    new-array v2, v2, [B

    .line 70
    .line 71
    fill-array-data v2, :array_4

    .line 72
    .line 73
    .line 74
    new-array v3, v0, [B

    .line 75
    .line 76
    fill-array-data v3, :array_5

    .line 77
    .line 78
    .line 79
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iget-object v3, p1, Ls0/a;->c:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    .line 87
    .line 88
    const/16 v2, 0x9

    .line 89
    .line 90
    new-array v2, v2, [B

    .line 91
    .line 92
    fill-array-data v2, :array_6

    .line 93
    .line 94
    .line 95
    new-array v3, v0, [B

    .line 96
    .line 97
    fill-array-data v3, :array_7

    .line 98
    .line 99
    .line 100
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    iget-object v3, p1, Ls0/a;->d:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    .line 108
    .line 109
    const/16 v2, 0x10

    .line 110
    .line 111
    new-array v2, v2, [B

    .line 112
    .line 113
    fill-array-data v2, :array_8

    .line 114
    .line 115
    .line 116
    new-array v3, v0, [B

    .line 117
    .line 118
    fill-array-data v3, :array_9

    .line 119
    .line 120
    .line 121
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    iget-object v3, p1, Ls0/a;->e:Landroid/graphics/Bitmap;

    .line 126
    .line 127
    sget-object v5, Lb1/r;->s:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 128
    .line 129
    if-eqz v3, :cond_2

    .line 130
    .line 131
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    .line 132
    .line 133
    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 134
    .line 135
    .line 136
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 137
    .line 138
    const/16 v6, 0x1e

    .line 139
    .line 140
    invoke-virtual {v3, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    const/4 v4, 0x0

    .line 148
    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    :cond_2
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    .line 154
    .line 155
    const/4 v2, 0x5

    .line 156
    new-array v2, v2, [B

    .line 157
    .line 158
    fill-array-data v2, :array_a

    .line 159
    .line 160
    .line 161
    new-array v3, v0, [B

    .line 162
    .line 163
    fill-array-data v3, :array_b

    .line 164
    .line 165
    .line 166
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    iget-object v3, p1, Ls0/a;->f:Ljava/lang/Long;

    .line 171
    .line 172
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    .line 174
    .line 175
    const/4 v2, 0x5

    .line 176
    new-array v2, v2, [B

    .line 177
    .line 178
    fill-array-data v2, :array_c

    .line 179
    .line 180
    .line 181
    new-array v3, v0, [B

    .line 182
    .line 183
    fill-array-data v3, :array_d

    .line 184
    .line 185
    .line 186
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    iget-object p1, p1, Ls0/a;->g:Ljava/lang/Long;

    .line 191
    .line 192
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    .line 194
    .line 195
    const/16 p1, 0x9

    .line 196
    .line 197
    new-array p1, p1, [B

    .line 198
    .line 199
    fill-array-data p1, :array_e

    .line 200
    .line 201
    .line 202
    new-array v2, v0, [B

    .line 203
    .line 204
    fill-array-data v2, :array_f

    .line 205
    .line 206
    .line 207
    invoke-static {p1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {p0, p1, v1}, Lcom/example/navistart/home/WebLauncherActivity;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 216
    .line 217
    .line 218
    return-void

    .line 219
    :catch_0
    move-exception p1

    .line 220
    const/16 v1, 0x13

    .line 221
    .line 222
    new-array v1, v1, [B

    .line 223
    .line 224
    fill-array-data v1, :array_10

    .line 225
    .line 226
    .line 227
    new-array v2, v0, [B

    .line 228
    .line 229
    fill-array-data v2, :array_11

    .line 230
    .line 231
    .line 232
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    const/16 v2, 0x1c

    .line 237
    .line 238
    new-array v2, v2, [B

    .line 239
    .line 240
    fill-array-data v2, :array_12

    .line 241
    .line 242
    .line 243
    new-array v0, v0, [B

    .line 244
    .line 245
    fill-array-data v0, :array_13

    .line 246
    .line 247
    .line 248
    invoke-static {v2, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    .line 254
    .line 255
    return-void

    .line 256
    nop

    .line 257
    :array_0
    .array-data 1
        -0x50t
        0x1t
        -0x69t
        0x4et
        -0x6et
        0x3bt
        0x4bt
        0x20t
    .end array-data

    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    :array_1
    .array-data 1
        -0x20t
        0x6dt
        -0xat
        0x37t
        -0x3ft
        0x4ft
        0x2at
        0x54t
    .end array-data

    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    :array_2
    .array-data 1
        -0xft
        -0x2bt
        0x6ct
        0x51t
        0x52t
        -0x1et
        0x4t
        -0x47t
    .end array-data

    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    :array_3
    .array-data 1
        -0x5et
        -0x46t
        0x2t
        0x36t
        0x1ct
        -0x7dt
        0x69t
        -0x24t
    .end array-data

    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    :array_4
    .array-data 1
        -0x4bt
        0x2ct
        -0x61t
        -0x6dt
        -0x3t
        -0x51t
        0x2et
        -0x75t
        -0x6bt
        0x37t
    .end array-data

    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    nop

    .line 299
    :array_5
    .array-data 1
        -0x1at
        0x43t
        -0xft
        -0xct
        -0x44t
        -0x23t
        0x5at
        -0x1et
    .end array-data

    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    :array_6
    .array-data 1
        0x5dt
        -0x5ft
        -0x6bt
        -0x9t
        0x50t
        -0x13t
        0x45t
        0x28t
        0x63t
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
    nop

    .line 317
    :array_7
    .array-data 1
        0xet
        -0x32t
        -0x5t
        -0x70t
        0x11t
        -0x7ft
        0x27t
        0x5dt
    .end array-data

    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    :array_8
    .array-data 1
        -0x16t
        0x2bt
        -0x79t
        0x5et
        -0x77t
        -0x16t
        0x5at
        0x16t
        -0x2ct
        0x14t
        -0x80t
        0x5at
        -0x44t
        -0xdt
        0x4at
        0x6t
    .end array-data

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
    .line 337
    :array_9
    .array-data 1
        -0x47t
        0x44t
        -0x17t
        0x39t
        -0x38t
        -0x7at
        0x38t
        0x63t
    .end array-data

    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    :array_a
    .array-data 1
        0x75t
        0x2dt
        0x1at
        0x2et
        -0x49t
    .end array-data

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
        0x21t
        0x5ft
        0x6at
        0x41t
        -0x3ct
        0x3et
        -0x11t
        0x7et
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
        -0x5bt
        -0x9t
        0x52t
        -0x60t
        0x50t
    .end array-data

    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    nop

    .line 369
    :array_d
    .array-data 1
        -0xft
        -0x7bt
        0x36t
        -0x2bt
        0x22t
        0xdt
        0x3dt
        -0xet
    .end array-data

    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    :array_e
    .array-data 1
        -0x3dt
        -0x2ct
        -0x76t
        0x24t
        0x32t
        -0x56t
        -0x7ft
        -0x4ct
        -0x3ft
    .end array-data

    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    nop

    .line 387
    :array_f
    .array-data 1
        -0x52t
        -0x5ft
        -0x7t
        0x4dt
        0x51t
        -0x1dt
        -0x11t
        -0x2et
    .end array-data

    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    :array_10
    .array-data 1
        0x19t
        0x66t
        -0x3bt
        0x1at
        -0x30t
        0x31t
        -0x56t
        0x68t
        0x26t
        0x66t
        -0x2bt
        0x17t
        -0x2et
        0x30t
        -0x53t
        0x7dt
        0x27t
        0x77t
        -0x22t
    .end array-data

    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    :array_11
    .array-data 1
        0x4et
        0x3t
        -0x59t
        0x56t
        -0x4ft
        0x44t
        -0x3ct
        0xbt
    .end array-data

    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    :array_12
    .array-data 1
        0x62t
        0x2ct
        0x4t
        -0x37t
        0x49t
        0x7ft
        0x58t
        -0x7et
        0x58t
        0x62t
        0x15t
        -0x22t
        0x47t
        0x76t
        0x11t
        -0x7bt
        0x5ft
        0x62t
        0x8t
        -0x22t
        0x56t
        0x73t
        0x1bt
        -0x2at
        0x53t
        0x23t
        0x11t
        -0x36t
    .end array-data

    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    :array_13
    .array-data 1
        0x37t
        0x42t
        0x65t
        -0x55t
        0x25t
        0x1at
        0x78t
        -0xat
    .end array-data
.end method

.method public final C(I)V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    new-array v2, v1, [B

    .line 10
    .line 11
    fill-array-data v2, :array_1

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const/16 v3, 0x9

    .line 24
    .line 25
    new-array v3, v3, [B

    .line 26
    .line 27
    fill-array-data v3, :array_2

    .line 28
    .line 29
    .line 30
    new-array v4, v1, [B

    .line 31
    .line 32
    fill-array-data v4, :array_3

    .line 33
    .line 34
    .line 35
    invoke-static {v3, v4, v2, p1}, Lcom/google/protobuf/q;->t([B[BLjava/lang/StringBuilder;I)V

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    new-array p1, p1, [B

    .line 40
    .line 41
    const/16 v3, 0x2b

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    aput-byte v3, p1, v4

    .line 45
    .line 46
    new-array v1, v1, [B

    .line 47
    .line 48
    fill-array-data v1, :array_4

    .line 49
    .line 50
    .line 51
    invoke-static {p1, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p0, v0, p1}, Lcom/example/navistart/home/WebLauncherActivity;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    nop

    .line 67
    :array_0
    .array-data 1
        0x32t
        0x4ft
        0x62t
    .end array-data

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    :array_1
    .array-data 1
        0x40t
        0x3ft
        0xft
        0x29t
        0x41t
        -0x21t
        0x1et
        0x51t
    .end array-data

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    :array_2
    .array-data 1
        0x66t
        -0x60t
        0x64t
        -0x22t
        -0x53t
        0xft
        0x2at
        -0x17t
        0x27t
    .end array-data

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    nop

    .line 91
    :array_3
    .array-data 1
        0x1dt
        -0x7et
        0x12t
        -0x41t
        -0x3ft
        0x7at
        0x4ft
        -0x35t
    .end array-data

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    :array_4
    .array-data 1
        0x56t
        0x7bt
        0x44t
        0x43t
        0x57t
        -0x36t
        0x51t
        -0x71t
    .end array-data
.end method

.method public final D(Landroidx/core/graphics/Insets;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/example/navistart/home/WebLauncherActivity;->e:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/example/navistart/home/WebLauncherActivity;->u(Landroidx/core/graphics/Insets;)V

    .line 4
    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const/16 v3, 0x23

    .line 25
    .line 26
    new-array v3, v3, [B

    .line 27
    .line 28
    fill-array-data v3, :array_0

    .line 29
    .line 30
    .line 31
    const/16 v4, 0x8

    .line 32
    .line 33
    new-array v5, v4, [B

    .line 34
    .line 35
    fill-array-data v5, :array_1

    .line 36
    .line 37
    .line 38
    invoke-static {v3, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget v3, p1, Landroidx/core/graphics/Insets;->left:I

    .line 46
    .line 47
    int-to-float v3, v3

    .line 48
    div-float/2addr v3, v1

    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const/4 v3, 0x1

    .line 53
    new-array v5, v3, [B

    .line 54
    .line 55
    const/16 v6, -0x3c

    .line 56
    .line 57
    const/4 v7, 0x0

    .line 58
    aput-byte v6, v5, v7

    .line 59
    .line 60
    new-array v6, v4, [B

    .line 61
    .line 62
    fill-array-data v6, :array_2

    .line 63
    .line 64
    .line 65
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget v5, p1, Landroidx/core/graphics/Insets;->top:I

    .line 73
    .line 74
    int-to-float v5, v5

    .line 75
    div-float/2addr v5, v1

    .line 76
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    new-array v5, v3, [B

    .line 80
    .line 81
    const/16 v6, 0x5b

    .line 82
    .line 83
    aput-byte v6, v5, v7

    .line 84
    .line 85
    new-array v6, v4, [B

    .line 86
    .line 87
    fill-array-data v6, :array_3

    .line 88
    .line 89
    .line 90
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget v5, p1, Landroidx/core/graphics/Insets;->right:I

    .line 98
    .line 99
    int-to-float v5, v5

    .line 100
    div-float/2addr v5, v1

    .line 101
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    new-array v3, v3, [B

    .line 105
    .line 106
    const/16 v5, -0x38

    .line 107
    .line 108
    aput-byte v5, v3, v7

    .line 109
    .line 110
    new-array v5, v4, [B

    .line 111
    .line 112
    fill-array-data v5, :array_4

    .line 113
    .line 114
    .line 115
    invoke-static {v3, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    .line 123
    .line 124
    int-to-float p1, p1

    .line 125
    div-float/2addr p1, v1

    .line 126
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const/4 p1, 0x2

    .line 130
    new-array p1, p1, [B

    .line 131
    .line 132
    fill-array-data p1, :array_5

    .line 133
    .line 134
    .line 135
    new-array v1, v4, [B

    .line 136
    .line 137
    fill-array-data v1, :array_6

    .line 138
    .line 139
    .line 140
    invoke-static {p1, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    const/4 v1, 0x0

    .line 152
    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    nop

    .line 157
    :array_0
    .array-data 1
        -0x7bt
        0x21t
        0x64t
        0x6at
        -0x65t
        0x71t
        0x14t
        -0x5ct
        -0x6ft
        0x3ct
        0x43t
        0x60t
        -0x79t
        0x63t
        0x4et
        -0x63t
        -0x2ct
        0x6et
        0x7dt
        0x67t
        -0x66t
        0x62t
        0x55t
        -0x67t
        -0x24t
        0x2t
        0x69t
        0x7at
        -0x43t
        0x68t
        0x49t
        -0x75t
        -0x7at
        0x3bt
        0x22t
    .end array-data

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
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :array_1
    .array-data 1
        -0xet
        0x48t
        0xat
        0xet
        -0xct
        0x6t
        0x3at
        -0x12t
    .end array-data

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_2
    .array-data 1
        -0x18t
        -0x12t
        0x29t
        0x2at
        -0x72t
        0x4dt
        -0x47t
        0x50t
    .end array-data

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    :array_3
    .array-data 1
        0x77t
        0x33t
        -0x37t
        0x16t
        -0x47t
        -0x4et
        0x65t
        -0x64t
    .end array-data

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    :array_4
    .array-data 1
        -0x1ct
        0x56t
        0x38t
        0x2bt
        0x4ct
        0x59t
        0x63t
        -0x1t
    .end array-data

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    :array_5
    .array-data 1
        0x18t
        -0x43t
    .end array-data

    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    nop

    .line 217
    :array_6
    .array-data 1
        0x31t
        -0x7at
        -0x5ct
        0x7at
        -0x75t
        -0x9t
        0x65t
        -0x4t
    .end array-data
.end method

.method public final E(I)V
    .locals 5

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    new-array v2, v1, [B

    .line 10
    .line 11
    fill-array-data v2, :array_1

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const/16 v3, 0x9

    .line 24
    .line 25
    new-array v3, v3, [B

    .line 26
    .line 27
    fill-array-data v3, :array_2

    .line 28
    .line 29
    .line 30
    new-array v4, v1, [B

    .line 31
    .line 32
    fill-array-data v4, :array_3

    .line 33
    .line 34
    .line 35
    invoke-static {v3, v4, v2, p1}, Lcom/google/protobuf/q;->t([B[BLjava/lang/StringBuilder;I)V

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    new-array p1, p1, [B

    .line 40
    .line 41
    const/16 v3, -0x41

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    aput-byte v3, p1, v4

    .line 45
    .line 46
    new-array v1, v1, [B

    .line 47
    .line 48
    fill-array-data v1, :array_4

    .line 49
    .line 50
    .line 51
    invoke-static {p1, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p0, v0, p1}, Lcom/example/navistart/home/WebLauncherActivity;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    nop

    .line 67
    :array_0
    .array-data 1
        -0xdt
        -0x37t
        0x4t
        -0x32t
        0x4dt
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
    :array_1
    .array-data 1
        -0x80t
        -0x47t
        0x61t
        -0x55t
        0x29t
        -0xat
        -0x72t
        0x6et
    .end array-data

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    :array_2
    .array-data 1
        -0x3et
        -0x31t
        -0x48t
        0x2et
        0x55t
        0x41t
        -0x3t
        -0x7et
        -0x7dt
    .end array-data

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    nop

    .line 93
    :array_3
    .array-data 1
        -0x47t
        -0x13t
        -0x32t
        0x4ft
        0x39t
        0x34t
        -0x68t
        -0x60t
    .end array-data

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    :array_4
    .array-data 1
        -0x3et
        -0x10t
        0x3dt
        0x63t
        -0x1t
        0x64t
        -0x20t
        -0x26t
    .end array-data
.end method

.method public final F(ILjava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/example/navistart/home/WebLauncherActivity;->i:Ls1/q0;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x5

    .line 14
    new-array v2, v2, [B

    .line 15
    .line 16
    fill-array-data v2, :array_0

    .line 17
    .line 18
    .line 19
    new-array v3, v1, [B

    .line 20
    .line 21
    fill-array-data v3, :array_1

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v2, p2

    .line 30
    :goto_0
    iput-object v2, v0, Ls1/q0;->w:Ljava/lang/String;

    .line 31
    .line 32
    iput p1, v0, Ls1/q0;->x:I

    .line 33
    .line 34
    sget-object v2, Ls1/m0;->c:Ls1/m0;

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ls1/q0;->I(Ls1/m0;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 40
    .line 41
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 42
    .line 43
    .line 44
    const/4 v2, 0x4

    .line 45
    new-array v3, v2, [B

    .line 46
    .line 47
    fill-array-data v3, :array_2

    .line 48
    .line 49
    .line 50
    new-array v4, v1, [B

    .line 51
    .line 52
    fill-array-data v4, :array_3

    .line 53
    .line 54
    .line 55
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    new-array p2, v2, [B

    .line 63
    .line 64
    fill-array-data p2, :array_4

    .line 65
    .line 66
    .line 67
    new-array v2, v1, [B

    .line 68
    .line 69
    fill-array-data v2, :array_5

    .line 70
    .line 71
    .line 72
    invoke-static {p2, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 77
    .line 78
    .line 79
    const/4 p1, 0x7

    .line 80
    new-array p1, p1, [B

    .line 81
    .line 82
    fill-array-data p1, :array_6

    .line 83
    .line 84
    .line 85
    new-array p2, v1, [B

    .line 86
    .line 87
    fill-array-data p2, :array_7

    .line 88
    .line 89
    .line 90
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/example/navistart/home/WebLauncherActivity;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    .line 101
    :catch_0
    return-void

    .line 102
    nop

    .line 103
    :array_0
    .array-data 1
        0x63t
        0x29t
        0x6dt
        -0x11t
        0x1dt
    .end array-data

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    nop

    .line 111
    :array_1
    .array-data 1
        -0x7ft
        -0x57t
        -0x7t
        0x2dt
        -0x53t
        0x7ft
        -0x15t
        0x20t
    .end array-data

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    :array_2
    .array-data 1
        -0x34t
        -0x68t
        0x66t
        0x6t
    .end array-data

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    :array_3
    .array-data 1
        -0x48t
        -0x3t
        0xbt
        0x76t
        -0x3bt
        -0x1dt
        0x5ct
        -0x13t
    .end array-data

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    :array_4
    .array-data 1
        -0x8t
        -0x50t
        0x3dt
        0x47t
    .end array-data

    :array_5
    .array-data 1
        -0x6ft
        -0x2dt
        0x52t
        0x29t
        0xft
        -0x19t
        -0x45t
        -0x51t
    .end array-data

    :array_6
    .array-data 1
        -0x6et
        -0xbt
        0x2bt
        -0x2t
        -0x10t
        0x44t
        -0x2dt
    .end array-data

    :array_7
    .array-data 1
        -0x1bt
        -0x70t
        0x4at
        -0x76t
        -0x68t
        0x21t
        -0x5ft
        -0xet
    .end array-data
.end method

.method public final G(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 15
    .line 16
    const-class v1, Lcom/example/navistart/W;

    .line 17
    .line 18
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    .line 20
    .line 21
    const/16 v1, 0x11

    .line 22
    .line 23
    new-array v1, v1, [B

    .line 24
    .line 25
    fill-array-data v1, :array_0

    .line 26
    .line 27
    .line 28
    const/16 v2, 0x8

    .line 29
    .line 30
    new-array v3, v2, [B

    .line 31
    .line 32
    fill-array-data v3, :array_1

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const/16 v3, 0xe

    .line 40
    .line 41
    new-array v4, v3, [B

    .line 42
    .line 43
    fill-array-data v4, :array_2

    .line 44
    .line 45
    .line 46
    new-array v5, v2, [B

    .line 47
    .line 48
    fill-array-data v5, :array_3

    .line 49
    .line 50
    .line 51
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    new-array v1, v3, [B

    .line 59
    .line 60
    fill-array-data v1, :array_4

    .line 61
    .line 62
    .line 63
    new-array v3, v2, [B

    .line 64
    .line 65
    fill-array-data v3, :array_5

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    const/16 p1, 0xd

    .line 80
    .line 81
    new-array p1, p1, [B

    .line 82
    .line 83
    fill-array-data p1, :array_6

    .line 84
    .line 85
    .line 86
    new-array v1, v2, [B

    .line 87
    .line 88
    fill-array-data v1, :array_7

    .line 89
    .line 90
    .line 91
    invoke-static {p1, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    const/high16 p1, 0x8000000

    .line 99
    .line 100
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 104
    .line 105
    .line 106
    :cond_1
    :goto_0
    return-void

    .line 107
    :array_0
    .array-data 1
        0x11t
        0x67t
        0x14t
        0x56t
        -0xft
        -0x5at
        -0x18t
        0x55t
        0x28t
        0x47t
        0x20t
        0x7ft
        -0x3dt
        -0x69t
        -0x21t
        0x71t
        0x32t
    .end array-data

    .line 108
    .line 109
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
    :array_1
    .array-data 1
        0x77t
        0x15t
        0x75t
        0x31t
        -0x64t
        -0x3dt
        -0x7at
        0x21t
    .end array-data

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    :array_2
    .array-data 1
        0x6ct
        0x49t
        0x75t
        -0x67t
        0x35t
        0xft
        -0x71t
        -0x1ct
        0x71t
        0x5bt
        0x64t
        -0x6dt
        0x3ft
        0xft
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
    .line 139
    .line 140
    nop

    .line 141
    :array_3
    .array-data 1
        0x3et
        0x1ct
        0x3bt
        -0x3at
        0x71t
        0x46t
        -0x32t
        -0x58t
    .end array-data

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    :array_4
    .array-data 1
        -0x56t
        -0x3t
        -0x8t
        0x2ct
        0x72t
        0x54t
        0x57t
        -0x37t
        -0x6dt
        -0x14t
        -0xbt
        0x2at
        0x6ct
        0x42t
    .end array-data

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
    nop

    .line 161
    :array_5
    .array-data 1
        -0x34t
        -0x71t
        -0x67t
        0x4bt
        0x1ft
        0x31t
        0x39t
        -0x43t
    .end array-data

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    :array_6
    .array-data 1
        -0x4bt
        0xet
        -0x1ct
        -0x4ft
        -0x21t
        -0x2bt
        -0x5et
        0x74t
        -0x74t
        0x1dt
        -0x9t
        -0x4ft
        -0x3ft
    .end array-data

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
    nop

    .line 181
    :array_7
    .array-data 1
        -0x2dt
        0x7ct
        -0x7bt
        -0x2at
        -0x4et
        -0x50t
        -0x34t
        0x0t
    .end array-data
.end method

.method public final H(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/example/navistart/home/WebLauncherActivity;->v()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ls1/s;->a()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Ls1/s;->c:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/16 v0, 0x14

    .line 17
    .line 18
    new-array v0, v0, [B

    .line 19
    .line 20
    fill-array-data v0, :array_0

    .line 21
    .line 22
    .line 23
    const/16 v1, 0x8

    .line 24
    .line 25
    new-array v1, v1, [B

    .line 26
    .line 27
    fill-array-data v1, :array_1

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/example/navistart/home/WebLauncherActivity;->h:Ljava/lang/String;

    .line 36
    .line 37
    :goto_0
    iput-object v0, p0, Lcom/example/navistart/home/WebLauncherActivity;->g:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/example/navistart/home/WebLauncherActivity;->i:Ls1/q0;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Ls1/q0;->D()V

    .line 44
    .line 45
    .line 46
    :cond_1
    new-instance v0, Ls1/q0;

    .line 47
    .line 48
    new-instance v1, Ln/p;

    .line 49
    .line 50
    const/16 v2, 0x9

    .line 51
    .line 52
    invoke-direct {v1, v2, p0}, Ln/p;-><init>(ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, p0, v1}, Ls1/q0;-><init>(Lcom/example/navistart/home/WebLauncherActivity;Ln/p;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/example/navistart/home/WebLauncherActivity;->c:Landroid/widget/FrameLayout;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/example/navistart/home/WebLauncherActivity;->c:Landroid/widget/FrameLayout;

    .line 64
    .line 65
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 66
    .line 67
    const/4 v3, -0x1

    .line 68
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/example/navistart/home/WebLauncherActivity;->i:Ls1/q0;

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/example/navistart/home/WebLauncherActivity;->J()Landroidx/core/graphics/Insets;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p0, v0}, Lcom/example/navistart/home/WebLauncherActivity;->u(Landroidx/core/graphics/Insets;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/example/navistart/home/WebLauncherActivity;->x()V

    .line 84
    .line 85
    .line 86
    if-eqz p1, :cond_2

    .line 87
    .line 88
    invoke-static {p0, p1}, Ly5/k;->x(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    return-void

    .line 92
    nop

    .line 93
    :array_0
    .array-data 1
        0x4t
        -0x48t
        -0x5bt
        -0x1bt
        -0x3ct
        -0x20t
        0x4ct
        -0x15t
        0x17t
        -0x48t
        -0x5ft
        -0x25t
        -0x23t
        -0x13t
        0x4dt
        -0x26t
        0x3t
        -0x4bt
        -0x5at
        -0xat
    .end array-data

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
    .line 104
    .line 105
    .line 106
    .line 107
    :array_1
    .array-data 1
        0x60t
        -0x23t
        -0x3dt
        -0x7ct
        -0x4ft
        -0x74t
        0x38t
        -0x4ct
    .end array-data
.end method

.method public final I()V
    .locals 8

    .line 1
    invoke-static {}, Ls1/s;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ls1/s;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    iput-object v3, p0, Lcom/example/navistart/home/WebLauncherActivity;->h:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/example/navistart/home/WebLauncherActivity;->g:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/example/navistart/home/WebLauncherActivity;->i:Ls1/q0;

    .line 25
    .line 26
    if-nez v0, :cond_8

    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0, v3}, Lcom/example/navistart/home/WebLauncherActivity;->H(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    :catch_0
    :cond_2
    move-object v1, v3

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    :try_start_0
    invoke-static {p0, v0}, Ls1/s;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    const/16 v2, 0x8

    .line 61
    .line 62
    if-nez v1, :cond_4

    .line 63
    .line 64
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const/16 v1, 0x21

    .line 69
    .line 70
    new-array v1, v1, [B

    .line 71
    .line 72
    fill-array-data v1, :array_0

    .line 73
    .line 74
    .line 75
    new-array v4, v2, [B

    .line 76
    .line 77
    fill-array-data v4, :array_1

    .line 78
    .line 79
    .line 80
    invoke-static {v1, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const/16 v4, 0x14

    .line 85
    .line 86
    new-array v4, v4, [B

    .line 87
    .line 88
    fill-array-data v4, :array_2

    .line 89
    .line 90
    .line 91
    new-array v5, v2, [B

    .line 92
    .line 93
    fill-array-data v5, :array_3

    .line 94
    .line 95
    .line 96
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v0, v1, v4}, Lu0/a;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iput-object v3, p0, Lcom/example/navistart/home/WebLauncherActivity;->h:Ljava/lang/String;

    .line 104
    .line 105
    const/16 v0, 0x6d

    .line 106
    .line 107
    new-array v0, v0, [B

    .line 108
    .line 109
    fill-array-data v0, :array_4

    .line 110
    .line 111
    .line 112
    new-array v1, v2, [B

    .line 113
    .line 114
    fill-array-data v1, :array_5

    .line 115
    .line 116
    .line 117
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {p0, v0}, Lcom/example/navistart/home/WebLauncherActivity;->H(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_4
    iget-object v4, p0, Lcom/example/navistart/home/WebLauncherActivity;->h:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-eqz v4, :cond_5

    .line 132
    .line 133
    iget-object v4, p0, Lcom/example/navistart/home/WebLauncherActivity;->i:Ls1/q0;

    .line 134
    .line 135
    if-eqz v4, :cond_5

    .line 136
    .line 137
    goto/16 :goto_1

    .line 138
    .line 139
    :cond_5
    iget-object v4, p0, Lcom/example/navistart/home/WebLauncherActivity;->g:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-eqz v4, :cond_6

    .line 146
    .line 147
    iget-object v4, p0, Lcom/example/navistart/home/WebLauncherActivity;->f:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    if-eqz v4, :cond_6

    .line 154
    .line 155
    iget-object v4, p0, Lcom/example/navistart/home/WebLauncherActivity;->e:Landroid/webkit/WebView;

    .line 156
    .line 157
    if-eqz v4, :cond_6

    .line 158
    .line 159
    goto/16 :goto_1

    .line 160
    .line 161
    :cond_6
    invoke-virtual {p0}, Lcom/example/navistart/home/WebLauncherActivity;->v()V

    .line 162
    .line 163
    .line 164
    :try_start_1
    new-instance v4, Landroid/webkit/WebView;

    .line 165
    .line 166
    invoke-direct {v4, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 167
    .line 168
    .line 169
    iput-object v4, p0, Lcom/example/navistart/home/WebLauncherActivity;->e:Landroid/webkit/WebView;

    .line 170
    .line 171
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    const/4 v6, 0x1

    .line 176
    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 180
    .line 181
    .line 182
    const/4 v7, 0x0

    .line 183
    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v4, v7}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 211
    .line 212
    .line 213
    const/4 v5, 0x2

    .line 214
    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    .line 215
    .line 216
    .line 217
    new-instance v5, Ls1/z0;

    .line 218
    .line 219
    invoke-direct {v5, p0}, Ls1/z0;-><init>(Lcom/example/navistart/home/WebLauncherActivity;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 223
    .line 224
    .line 225
    new-instance v5, Lb1/l;

    .line 226
    .line 227
    sget-object v6, Lcom/example/navistart/home/WebLauncherActivity;->m:Ljava/lang/String;

    .line 228
    .line 229
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 230
    .line 231
    .line 232
    invoke-static {}, Lh0/b;->f()Lj0/c;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    invoke-direct {v5, v6, v7, p0}, Lb1/l;-><init>(Ljava/lang/String;Lj0/c;Lb1/s;)V

    .line 237
    .line 238
    .line 239
    const/16 v6, 0xa

    .line 240
    .line 241
    new-array v6, v6, [B

    .line 242
    .line 243
    fill-array-data v6, :array_6

    .line 244
    .line 245
    .line 246
    new-array v7, v2, [B

    .line 247
    .line 248
    fill-array-data v7, :array_7

    .line 249
    .line 250
    .line 251
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v6

    .line 255
    invoke-virtual {v4, v5, v6}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    iget-object v5, p0, Lcom/example/navistart/home/WebLauncherActivity;->c:Landroid/widget/FrameLayout;

    .line 259
    .line 260
    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 261
    .line 262
    .line 263
    iget-object v5, p0, Lcom/example/navistart/home/WebLauncherActivity;->c:Landroid/widget/FrameLayout;

    .line 264
    .line 265
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 266
    .line 267
    const/4 v7, -0x1

    .line 268
    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v5, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    .line 273
    .line 274
    iget-object v5, p0, Lcom/example/navistart/home/WebLauncherActivity;->i:Ls1/q0;

    .line 275
    .line 276
    if-eqz v5, :cond_7

    .line 277
    .line 278
    invoke-virtual {v5}, Ls1/q0;->D()V

    .line 279
    .line 280
    .line 281
    :cond_7
    iput-object v3, p0, Lcom/example/navistart/home/WebLauncherActivity;->i:Ls1/q0;

    .line 282
    .line 283
    iput-object v3, p0, Lcom/example/navistart/home/WebLauncherActivity;->h:Ljava/lang/String;

    .line 284
    .line 285
    iput-object v0, p0, Lcom/example/navistart/home/WebLauncherActivity;->g:Ljava/lang/String;

    .line 286
    .line 287
    iput-object v1, p0, Lcom/example/navistart/home/WebLauncherActivity;->f:Ljava/lang/String;

    .line 288
    .line 289
    invoke-virtual {v4, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p0}, Lcom/example/navistart/home/WebLauncherActivity;->J()Landroidx/core/graphics/Insets;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-virtual {p0, v1}, Lcom/example/navistart/home/WebLauncherActivity;->D(Landroidx/core/graphics/Insets;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    .line 298
    .line 299
    goto :goto_1

    .line 300
    :catchall_0
    iput-object v0, p0, Lcom/example/navistart/home/WebLauncherActivity;->h:Ljava/lang/String;

    .line 301
    .line 302
    const/16 v0, 0x73

    .line 303
    .line 304
    new-array v0, v0, [B

    .line 305
    .line 306
    fill-array-data v0, :array_8

    .line 307
    .line 308
    .line 309
    new-array v1, v2, [B

    .line 310
    .line 311
    fill-array-data v1, :array_9

    .line 312
    .line 313
    .line 314
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-virtual {p0, v0}, Lcom/example/navistart/home/WebLauncherActivity;->H(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    :cond_8
    :goto_1
    return-void

    .line 322
    nop

    .line 323
    :array_0
    .array-data 1
        -0x4at
        -0x78t
        0xft
        0x5at
        0x7dt
        -0x3et
        -0x68t
        0x74t
        -0x6ft
        -0x6ct
        0x3bt
        0x4bt
        0x53t
        -0xdt
        -0x61t
        0x75t
        -0x68t
        -0x67t
        0x3dt
        0x4dt
        0x40t
        -0x3ft
        -0x71t
        0x6ft
        -0x71t
        -0x68t
        0x36t
        0x58t
        0x6ct
        -0x33t
        -0x5ft
        0x7et
        -0x7et
    .end array-data

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
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    nop

    .line 345
    :array_1
    .array-data 1
        -0x5t
        -0xft
        0x58t
        0x3ft
        0x1ft
        -0x6et
        -0x16t
        0x1bt
    .end array-data

    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    :array_2
    .array-data 1
        0x7bt
        -0x43t
        -0x7t
        -0x2at
        0x4t
        -0x1et
        0x4ft
        -0x9t
        0x68t
        -0x43t
        -0x3t
        -0x18t
        0x1dt
        -0x11t
        0x4et
        -0x3at
        0x7ct
        -0x50t
        -0x6t
        -0x3bt
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
    :array_3
    .array-data 1
        0x1ft
        -0x28t
        -0x61t
        -0x49t
        0x71t
        -0x72t
        0x3bt
        -0x58t
    .end array-data

    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    :array_4
    .array-data 1
        -0x4ft
        0x51t
        -0x68t
        -0x59t
        0x33t
        0x68t
        0x64t
        -0x31t
        -0x50t
        0x7et
        0x68t
        -0x39t
        0x51t
        0x0t
        0x3ft
        -0x5ct
        -0x30t
        0x24t
        -0x38t
        -0x39t
        0x53t
        0x1t
        0x9t
        -0x5ct
        -0x24t
        0x25t
        -0xat
        -0x39t
        0x5at
        -0xft
        0x65t
        -0xat
        -0x4ft
        0x40t
        -0x68t
        -0x55t
        0x32t
        0x5at
        -0x6ct
        -0x5ct
        -0x24t
        0x25t
        -0x3t
        0x37t
        0x33t
        0x6ct
        0x64t
        -0x3ct
        -0x4ft
        0x4ct
        -0x68t
        -0x5dt
        0x33t
        0x64t
        0x64t
        -0x37t
        -0x50t
        0x7et
        0x66t
        0x37t
        0x33t
        0x43t
        0x64t
        -0x32t
        -0x4ft
        0x4et
        -0x67t
        -0x67t
        0x32t
        0x56t
        0x64t
        -0x3ft
        -0x4ft
        0x48t
        0x68t
        -0x3at
        0x62t
        0x0t
        0x36t
        -0x5ct
        -0x2ft
        0x25t
        -0xbt
        -0x39t
        0x57t
        0x1t
        0x4t
        -0x5bt
        -0x1ft
        0x24t
        -0x36t
        -0x39t
        0x5et
        0x0t
        0x3ft
        -0x5ct
        -0x28t
        -0x2bt
        -0x67t
        -0x66t
        0x33t
        0x6bt
        0x65t
        -0xct
        -0x4ft
        0x45t
        -0x68t
        -0x56t
        -0x33t
    .end array-data

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
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    nop

    .line 435
    :array_5
    .array-data 1
        0x61t
        -0xbt
        0x48t
        0x17t
        -0x1dt
        -0x2ft
        -0x4ct
        0x74t
    .end array-data

    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    :array_6
    .array-data 1
        -0x5at
        -0x7at
        -0x6t
        0x6ct
        -0x46t
        -0x7ft
        -0x40t
        0x54t
        -0x49t
        -0x7ft
    .end array-data

    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    nop

    .line 453
    :array_7
    .array-data 1
        -0x39t
        -0x18t
        -0x62t
        0x1et
        -0x2bt
        -0x18t
        -0x5ct
        0x15t
    .end array-data

    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    :array_8
    .array-data 1
        0x6at
        0x58t
        -0x13t
        0x41t
        -0x75t
        0x7bt
        -0x6at
        0x20t
        0x6at
        0x7at
        -0x14t
        0x77t
        -0x75t
        0x77t
        -0x69t
        0x10t
        0x6bt
        0x45t
        0x1ct
        0x1at
        -0x17t
        0x1at
        -0xet
        0x70t
        0xbt
        -0x19t
        -0x13t
        0x48t
        -0x75t
        0x7ft
        -0x69t
        0x1ct
        0x6at
        0x7at
        0x1ct
        0x1at
        -0x1at
        0x1at
        -0xet
        0x70t
        0xet
        0x1at
        -0x7et
        0x1bt
        -0x26t
        0x1bt
        -0x3bt
        0x71t
        0x39t
        0x1at
        -0x7dt
        0x1at
        -0x1at
        0x1at
        -0x9t
        -0x72t
        -0x66t
        0x1at
        -0x5et
        0x1bt
        -0x27t
        0x1at
        -0x3t
        0x71t
        0x3at
        0x1bt
        -0x49t
        0x1bt
        -0x27t
        -0x16t
        -0x69t
        0x1dt
        0x6at
        0x7at
        -0x14t
        0x7et
        -0x75t
        0x7ft
        -0x69t
        0x16t
        0x6at
        0x77t
        -0x13t
        0x41t
        -0x75t
        0x73t
        0x67t
        0x70t
        0x7t
        0x1at
        -0x74t
        0x1bt
        -0x27t
        0x1at
        -0x1t
        0x70t
        0x8t
        0x1at
        -0x7ft
        0x1bt
        -0x30t
        0x1at
        -0x2t
        -0x80t
        0x6bt
        0x47t
        -0x14t
        0x70t
        -0x76t
        0x4at
        -0x69t
        0x10t
        0x6at
        0x77t
        0x12t
    .end array-data

    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    :array_9
    .array-data 1
        -0x46t
        -0x36t
        0x3ct
        -0x36t
        0x5bt
        -0x36t
        0x47t
        -0x60t
    .end array-data
.end method

.method public final J()Landroidx/core/graphics/Insets;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/example/navistart/home/WebLauncherActivity;->d:Ls1/k;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_4

    .line 10
    .line 11
    iget-object v0, v0, Ls1/k;->b:Ls1/r;

    .line 12
    .line 13
    invoke-virtual {v0}, Ls1/r;->f()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_4

    .line 18
    .line 19
    iget-object v0, p0, Lcom/example/navistart/home/WebLauncherActivity;->d:Ls1/k;

    .line 20
    .line 21
    invoke-virtual {v0}, Ls1/k;->k()Ls1/o;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x0

    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    if-eq v0, v2, :cond_2

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    if-eq v0, v2, :cond_1

    .line 37
    .line 38
    const/4 v2, 0x3

    .line 39
    if-ne v0, v2, :cond_0

    .line 40
    .line 41
    iget-object v0, p0, Lcom/example/navistart/home/WebLauncherActivity;->k:Landroidx/core/graphics/Insets;

    .line 42
    .line 43
    iget v2, v0, Landroidx/core/graphics/Insets;->left:I

    .line 44
    .line 45
    iget v3, v0, Landroidx/core/graphics/Insets;->top:I

    .line 46
    .line 47
    iget v0, v0, Landroidx/core/graphics/Insets;->right:I

    .line 48
    .line 49
    invoke-static {v2, v3, v0, v1}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IncompatibleClassChangeError;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/example/navistart/home/WebLauncherActivity;->k:Landroidx/core/graphics/Insets;

    .line 61
    .line 62
    iget v2, v0, Landroidx/core/graphics/Insets;->left:I

    .line 63
    .line 64
    iget v3, v0, Landroidx/core/graphics/Insets;->right:I

    .line 65
    .line 66
    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    .line 67
    .line 68
    invoke-static {v2, v1, v3, v0}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/example/navistart/home/WebLauncherActivity;->k:Landroidx/core/graphics/Insets;

    .line 74
    .line 75
    iget v2, v0, Landroidx/core/graphics/Insets;->left:I

    .line 76
    .line 77
    iget v3, v0, Landroidx/core/graphics/Insets;->top:I

    .line 78
    .line 79
    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    .line 80
    .line 81
    invoke-static {v2, v3, v1, v0}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    return-object v0

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/example/navistart/home/WebLauncherActivity;->k:Landroidx/core/graphics/Insets;

    .line 87
    .line 88
    iget v2, v0, Landroidx/core/graphics/Insets;->top:I

    .line 89
    .line 90
    iget v3, v0, Landroidx/core/graphics/Insets;->right:I

    .line 91
    .line 92
    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    .line 93
    .line 94
    invoke-static {v1, v2, v3, v0}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    return-object v0

    .line 99
    :cond_4
    iget-object v0, p0, Lcom/example/navistart/home/WebLauncherActivity;->k:Landroidx/core/graphics/Insets;

    .line 100
    .line 101
    return-object v0
.end method

.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/example/navistart/home/WebLauncherActivity;->e:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Ls1/v0;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, p0, v2}, Ls1/v0;-><init>(Lcom/example/navistart/home/WebLauncherActivity;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final c()V
    .locals 0

    .line 1
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/example/navistart/home/WebLauncherActivity;->e:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    :cond_1
    const/4 p2, 0x2

    .line 23
    new-array p2, p2, [B

    .line 24
    .line 25
    fill-array-data p2, :array_0

    .line 26
    .line 27
    .line 28
    const/16 v1, 0x8

    .line 29
    .line 30
    new-array v1, v1, [B

    .line 31
    .line 32
    fill-array-data v1, :array_1

    .line 33
    .line 34
    .line 35
    invoke-static {p2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    :cond_2
    new-instance v1, Lb1/n;

    .line 40
    .line 41
    const/16 v2, 0xe

    .line 42
    .line 43
    invoke-direct {v1, p0, p1, p2, v2}, Lb1/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    nop

    .line 51
    :array_0
    .array-data 1
        0x78t
        0x69t
    .end array-data

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    nop

    .line 57
    :array_1
    .array-data 1
        0x3t
        0x14t
        -0x80t
        -0x6at
        0x26t
        0x2bt
        -0x67t
        0xat
    .end array-data
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x1cf4

    .line 5
    .line 6
    if-ne p1, v0, :cond_2

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    if-ne p2, p1, :cond_2

    .line 10
    .line 11
    if-nez p3, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/16 p1, 0xd

    .line 15
    .line 16
    new-array p1, p1, [B

    .line 17
    .line 18
    fill-array-data p1, :array_0

    .line 19
    .line 20
    .line 21
    const/16 p2, 0x8

    .line 22
    .line 23
    new-array v0, p2, [B

    .line 24
    .line 25
    fill-array-data v0, :array_1

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    new-instance p3, Ljava/lang/Thread;

    .line 40
    .line 41
    new-instance v0, Ls1/x0;

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    invoke-direct {v0, v1, p0, p1}, Ls1/x0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    const/16 p1, 0x15

    .line 48
    .line 49
    new-array p1, p1, [B

    .line 50
    .line 51
    fill-array-data p1, :array_2

    .line 52
    .line 53
    .line 54
    new-array p2, p2, [B

    .line 55
    .line 56
    fill-array-data p2, :array_3

    .line 57
    .line 58
    .line 59
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-direct {p3, v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    .line 67
    .line 68
    .line 69
    :cond_2
    :goto_0
    return-void

    .line 70
    nop

    .line 71
    :array_0
    .array-data 1
        -0x31t
        0x57t
        0x1ct
        0x5t
        0x23t
        0x77t
        -0x2ct
        -0x7et
        -0x1dt
        0x54t
        0x19t
        0xct
        0x25t
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    nop

    .line 83
    :array_1
    .array-data 1
        -0x44t
        0x32t
        0x70t
        0x60t
        0x40t
        0x3t
        -0x4ft
        -0x1at
    .end array-data

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    :array_2
    .array-data 1
        0x2t
        0x7at
        -0x33t
        -0xdt
        0x1ct
        0x72t
        -0x29t
        0x3at
        0x20t
        0x77t
        -0x37t
        -0x5t
        0x1at
        0x72t
        -0xet
        0x12t
        0x21t
        0x6bt
        -0x2at
        -0x18t
        0x1et
    .end array-data

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
    .line 104
    .line 105
    .line 106
    nop

    .line 107
    :array_3
    .array-data 1
        0x4ct
        0x1bt
        -0x47t
        -0x66t
        0x6at
        0x17t
        -0x80t
        0x5bt
    .end array-data
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x24

    .line 5
    .line 6
    const/16 v0, 0x8

    .line 7
    .line 8
    :try_start_0
    new-instance v1, Lcom/example/navistart/SystemMessageReceiver;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/example/navistart/SystemMessageReceiver;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance v3, Landroid/content/Intent;

    .line 18
    .line 19
    new-array v4, p1, [B

    .line 20
    .line 21
    fill-array-data v4, :array_0

    .line 22
    .line 23
    .line 24
    new-array v5, v0, [B

    .line 25
    .line 26
    fill-array-data v5, :array_1

    .line 27
    .line 28
    .line 29
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2, v3}, Lcom/example/navistart/SystemMessageReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    .line 41
    const/16 v2, 0x13

    .line 42
    .line 43
    new-array v2, v2, [B

    .line 44
    .line 45
    fill-array-data v2, :array_2

    .line 46
    .line 47
    .line 48
    new-array v3, v0, [B

    .line 49
    .line 50
    fill-array-data v3, :array_3

    .line 51
    .line 52
    .line 53
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    new-array p1, p1, [B

    .line 58
    .line 59
    fill-array-data p1, :array_4

    .line 60
    .line 61
    .line 62
    new-array v3, v0, [B

    .line 63
    .line 64
    fill-array-data v3, :array_5

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {v2, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .line 73
    .line 74
    :goto_0
    invoke-static {}, Lv1/d;->a()Lv1/d;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lv1/d;->d()Lv1/c;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iget-object v1, p1, Lv1/c;->a:Landroidx/lifecycle/MutableLiveData;

    .line 83
    .line 84
    new-instance v2, Ls1/w0;

    .line 85
    .line 86
    const/4 v3, 0x3

    .line 87
    invoke-direct {v2, p0, v3}, Ls1/w0;-><init>(Lcom/example/navistart/home/WebLauncherActivity;I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 91
    .line 92
    .line 93
    iget-object v1, p1, Lv1/c;->b:Landroidx/lifecycle/MutableLiveData;

    .line 94
    .line 95
    new-instance v2, Ls1/w0;

    .line 96
    .line 97
    const/4 v4, 0x4

    .line 98
    invoke-direct {v2, p0, v4}, Ls1/w0;-><init>(Lcom/example/navistart/home/WebLauncherActivity;I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 102
    .line 103
    .line 104
    iget-object v1, p1, Lv1/c;->c:Landroidx/lifecycle/MutableLiveData;

    .line 105
    .line 106
    new-instance v2, Ls1/w0;

    .line 107
    .line 108
    const/4 v4, 0x5

    .line 109
    invoke-direct {v2, p0, v4}, Ls1/w0;-><init>(Lcom/example/navistart/home/WebLauncherActivity;I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 113
    .line 114
    .line 115
    iget-object v1, p1, Lv1/c;->d:Landroidx/lifecycle/MutableLiveData;

    .line 116
    .line 117
    new-instance v2, Ls1/w0;

    .line 118
    .line 119
    const/4 v4, 0x6

    .line 120
    invoke-direct {v2, p0, v4}, Ls1/w0;-><init>(Lcom/example/navistart/home/WebLauncherActivity;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 124
    .line 125
    .line 126
    iget-object v1, p1, Lv1/c;->e:Landroidx/lifecycle/MutableLiveData;

    .line 127
    .line 128
    new-instance v2, Ls1/w0;

    .line 129
    .line 130
    const/4 v4, 0x0

    .line 131
    invoke-direct {v2, p0, v4}, Ls1/w0;-><init>(Lcom/example/navistart/home/WebLauncherActivity;I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 135
    .line 136
    .line 137
    iget-object v1, p1, Lv1/c;->f:Landroidx/lifecycle/MutableLiveData;

    .line 138
    .line 139
    new-instance v2, Ls1/w0;

    .line 140
    .line 141
    const/4 v5, 0x1

    .line 142
    invoke-direct {v2, p0, v5}, Ls1/w0;-><init>(Lcom/example/navistart/home/WebLauncherActivity;I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p1, Lv1/c;->g:Landroidx/lifecycle/MutableLiveData;

    .line 149
    .line 150
    new-instance v1, Ls1/w0;

    .line 151
    .line 152
    const/4 v2, 0x2

    .line 153
    invoke-direct {v1, p0, v2}, Ls1/w0;-><init>(Lcom/example/navistart/home/WebLauncherActivity;I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-static {p1, v4}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p1, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-virtual {p1, v4}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 178
    .line 179
    .line 180
    new-instance p1, Landroid/widget/FrameLayout;

    .line 181
    .line 182
    invoke-direct {p1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 183
    .line 184
    .line 185
    iput-object p1, p0, Lcom/example/navistart/home/WebLauncherActivity;->b:Landroid/widget/FrameLayout;

    .line 186
    .line 187
    const/16 v1, 0xc

    .line 188
    .line 189
    const/16 v2, 0x12

    .line 190
    .line 191
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 196
    .line 197
    .line 198
    iget-object p1, p0, Lcom/example/navistart/home/WebLauncherActivity;->b:Landroid/widget/FrameLayout;

    .line 199
    .line 200
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 201
    .line 202
    .line 203
    new-instance p1, Landroid/widget/FrameLayout;

    .line 204
    .line 205
    invoke-direct {p1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 206
    .line 207
    .line 208
    iput-object p1, p0, Lcom/example/navistart/home/WebLauncherActivity;->c:Landroid/widget/FrameLayout;

    .line 209
    .line 210
    iget-object v0, p0, Lcom/example/navistart/home/WebLauncherActivity;->b:Landroid/widget/FrameLayout;

    .line 211
    .line 212
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 213
    .line 214
    const/4 v2, -0x1

    .line 215
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    .line 220
    .line 221
    new-instance p1, Ls1/k;

    .line 222
    .line 223
    invoke-direct {p1, p0}, Ls1/k;-><init>(Lcom/example/navistart/home/WebLauncherActivity;)V

    .line 224
    .line 225
    .line 226
    iput-object p1, p0, Lcom/example/navistart/home/WebLauncherActivity;->d:Ls1/k;

    .line 227
    .line 228
    iget-object v0, p0, Lcom/example/navistart/home/WebLauncherActivity;->b:Landroid/widget/FrameLayout;

    .line 229
    .line 230
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 231
    .line 232
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    .line 237
    .line 238
    iget-object p1, p0, Lcom/example/navistart/home/WebLauncherActivity;->d:Ls1/k;

    .line 239
    .line 240
    new-instance v0, Ls1/v0;

    .line 241
    .line 242
    invoke-direct {v0, p0, v4}, Ls1/v0;-><init>(Lcom/example/navistart/home/WebLauncherActivity;I)V

    .line 243
    .line 244
    .line 245
    iput-object v0, p1, Ls1/k;->p:Ls1/v0;

    .line 246
    .line 247
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 251
    .line 252
    .line 253
    iget-object p1, p0, Lcom/example/navistart/home/WebLauncherActivity;->d:Ls1/k;

    .line 254
    .line 255
    new-instance v0, Ls1/v0;

    .line 256
    .line 257
    invoke-direct {v0, p0, v3}, Ls1/v0;-><init>(Lcom/example/navistart/home/WebLauncherActivity;I)V

    .line 258
    .line 259
    .line 260
    iput-object v0, p1, Ls1/k;->q:Ls1/v0;

    .line 261
    .line 262
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    new-instance v0, Ls1/y0;

    .line 267
    .line 268
    invoke-direct {v0, p0}, Ls1/y0;-><init>(Lcom/example/navistart/home/WebLauncherActivity;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1, p0, v0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 272
    .line 273
    .line 274
    iget-object p1, p0, Lcom/example/navistart/home/WebLauncherActivity;->b:Landroid/widget/FrameLayout;

    .line 275
    .line 276
    new-instance v0, Lq0/f;

    .line 277
    .line 278
    invoke-direct {v0, v3, p0}, Lq0/f;-><init>(ILjava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p0}, Lcom/example/navistart/home/WebLauncherActivity;->I()V

    .line 285
    .line 286
    .line 287
    iget-object p1, p0, Lcom/example/navistart/home/WebLauncherActivity;->b:Landroid/widget/FrameLayout;

    .line 288
    .line 289
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 290
    .line 291
    .line 292
    return-void

    .line 293
    :array_0
    .array-data 1
        -0x14t
        -0x11t
        -0x14t
        0x16t
        -0x7ct
        -0x4at
        -0x30t
        0x59t
        -0x1ct
        -0x11t
        -0x4t
        0x1t
        -0x7bt
        -0x55t
        -0x66t
        0x16t
        -0x12t
        -0xbt
        -0x1ft
        0xbt
        -0x7bt
        -0xft
        -0xat
        0x38t
        -0x3et
        -0x2bt
        -0x29t
        0x27t
        -0x5ct
        -0x6et
        -0x1ct
        0x3bt
        -0x38t
        -0x2bt
        -0x33t
        0x20t
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
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    :array_1
    .array-data 1
        -0x73t
        -0x7ft
        -0x78t
        0x64t
        -0x15t
        -0x21t
        -0x4ct
        0x77t
    .end array-data

    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    :array_2
    .array-data 1
        0x1et
        0x1dt
        -0x74t
        -0x6t
        0x29t
        -0x6ft
        -0x2bt
        -0x49t
        0x21t
        0x1dt
        -0x64t
        -0x9t
        0x2bt
        -0x70t
        -0x2et
        -0x5et
        0x20t
        0xct
        -0x69t
    .end array-data

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
    .line 337
    :array_3
    .array-data 1
        0x49t
        0x78t
        -0x12t
        -0x4at
        0x48t
        -0x1ct
        -0x45t
        -0x2ct
    .end array-data

    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    :array_4
    .array-data 1
        -0x39t
        0x6t
        0x60t
        0x2at
        -0x5ct
        0x11t
        -0x77t
        -0x18t
        -0x3t
        0x48t
        0x72t
        0x3ct
        -0x57t
        0x6t
        -0x23t
        -0x44t
        -0xdt
        0x18t
        0x71t
        0x24t
        -0x5ft
        0x17t
        -0x38t
        -0x18t
        -0x5t
        0x7t
        0x6ft
        0x68t
        -0x45t
        0x11t
        -0x25t
        -0x16t
        -0x5t
        0xbt
        0x64t
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
    :array_5
    .array-data 1
        -0x6et
        0x68t
        0x1t
        0x48t
        -0x38t
        0x74t
        -0x57t
        -0x64t
    .end array-data
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/example/navistart/home/WebLauncherActivity;->i:Ls1/q0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ls1/q0;->D()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/example/navistart/home/WebLauncherActivity;->v()V

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onResume()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/example/navistart/home/WebLauncherActivity;->I()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/example/navistart/home/WebLauncherActivity;->i:Ls1/q0;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Ls1/q0;->x(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/example/navistart/home/WebLauncherActivity;->t()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/example/navistart/home/WebLauncherActivity;->d:Ls1/k;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-boolean v1, v0, Ls1/k;->i:Z

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Ls1/k;->n()V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    sget-object v2, Lcom/example/navistart/home/WebLauncherActivity;->l:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/example/navistart/home/WebLauncherActivity;->d:Ls1/k;

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    new-instance v1, Ls1/f;

    .line 53
    .line 54
    const/4 v2, 0x2

    .line 55
    invoke-direct {v1, v0, v2}, Ls1/f;-><init>(Ls1/k;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    :cond_3
    :goto_0
    const/16 v0, 0x8

    .line 62
    .line 63
    :try_start_0
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    new-instance v2, Lorg/json/JSONObject;

    .line 71
    .line 72
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 73
    .line 74
    .line 75
    const/4 v3, 0x3

    .line 76
    new-array v3, v3, [B

    .line 77
    .line 78
    fill-array-data v3, :array_0

    .line 79
    .line 80
    .line 81
    new-array v4, v0, [B

    .line 82
    .line 83
    fill-array-data v4, :array_1

    .line 84
    .line 85
    .line 86
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    const/16 v4, 0xe

    .line 91
    .line 92
    new-array v4, v4, [B

    .line 93
    .line 94
    fill-array-data v4, :array_2

    .line 95
    .line 96
    .line 97
    new-array v5, v0, [B

    .line 98
    .line 99
    fill-array-data v5, :array_3

    .line 100
    .line 101
    .line 102
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-interface {v1, v2}, Lcom/example/navistart/cores/CarCmdProxy;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :catch_0
    move-exception v1

    .line 115
    const/16 v2, 0x13

    .line 116
    .line 117
    new-array v2, v2, [B

    .line 118
    .line 119
    fill-array-data v2, :array_4

    .line 120
    .line 121
    .line 122
    new-array v3, v0, [B

    .line 123
    .line 124
    fill-array-data v3, :array_5

    .line 125
    .line 126
    .line 127
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    const/16 v3, 0x1c

    .line 132
    .line 133
    new-array v3, v3, [B

    .line 134
    .line 135
    fill-array-data v3, :array_6

    .line 136
    .line 137
    .line 138
    new-array v0, v0, [B

    .line 139
    .line 140
    fill-array-data v0, :array_7

    .line 141
    .line 142
    .line 143
    invoke-static {v3, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :array_0
    .array-data 1
        0x12t
        0x1dt
        0x55t
    .end array-data

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    :array_1
    .array-data 1
        0x71t
        0x70t
        0x31t
        -0x6dt
        -0x56t
        0x2ct
        -0x73t
        -0x15t
    .end array-data

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :array_2
    .array-data 1
        0x10t
        -0x13t
        -0x3at
        0x6ct
        0x7bt
        -0x5at
        -0x1t
        0x62t
        0x23t
        -0x2t
        -0x2at
        0x63t
        0x7ct
        -0x49t
    .end array-data

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
    :array_3
    .array-data 1
        0x7ct
        -0x74t
        -0x4dt
        0x2t
        0x18t
        -0x32t
        -0x66t
        0x10t
    .end array-data

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    :array_4
    .array-data 1
        0x3ct
        0x3ct
        0x6dt
        -0x73t
        -0xct
        -0x30t
        -0x58t
        0x71t
        0x3t
        0x3ct
        0x7dt
        -0x80t
        -0xat
        -0x2ft
        -0x51t
        0x64t
        0x2t
        0x2dt
        0x76t
    .end array-data

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
    :array_5
    .array-data 1
        0x6bt
        0x59t
        0xft
        -0x3ft
        -0x6bt
        -0x5bt
        -0x3at
        0x12t
    .end array-data

    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    :array_6
    .array-data 1
        -0x72t
        0x5bt
        -0x2dt
        -0x7ft
        -0x1at
        -0x68t
        -0x6ft
        -0x58t
        -0x5et
        0x4et
        -0x2ct
        -0x77t
        -0x10t
        -0x34t
        -0x23t
        -0x59t
        -0x48t
        0x54t
        -0x22t
        -0x79t
        -0x14t
        -0x62t
        -0x6ft
        -0x4ct
        -0x58t
        0x5bt
        -0x27t
        -0x6at
    .end array-data

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
    .line 225
    :array_7
    .array-data 1
        -0x33t
        0x3at
        -0x43t
        -0x11t
        -0x77t
        -0x14t
        -0x4ft
        -0x3at
    .end array-data
.end method

.method public final onStop()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/example/navistart/home/WebLauncherActivity;->i:Ls1/q0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Ls1/q0;->x(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    sput-boolean v0, Lcom/example/navistart/AllWidgetServices;->h:Z

    .line 17
    .line 18
    sget-object v1, Lcom/example/navistart/AllWidgetServices;->g:Lcom/example/navistart/AllWidgetServices;

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    invoke-static {p0}, Lcom/example/navistart/AllWidgetServices;->c(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v2, v1, Lcom/example/navistart/AllWidgetServices;->b:Landroid/os/Handler;

    .line 27
    .line 28
    new-instance v3, Lc7/e;

    .line 29
    .line 30
    const/4 v4, 0x3

    .line 31
    invoke-direct {v3, v1, v0, v4}, Lc7/e;-><init>(Ljava/lang/Object;ZI)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p1, p2, p3}, Lcom/example/navistart/cores/InterC;->lo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final s()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/example/navistart/home/WebLauncherActivity;->c:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    iget-object v0, p0, Lcom/example/navistart/home/WebLauncherActivity;->d:Ls1/k;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_5

    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v1, :cond_3

    .line 17
    .line 18
    iget-object v0, v0, Ls1/k;->b:Ls1/r;

    .line 19
    .line 20
    invoke-virtual {v0}, Ls1/r;->f()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_3

    .line 25
    .line 26
    iget-object v0, p0, Lcom/example/navistart/home/WebLauncherActivity;->d:Ls1/k;

    .line 27
    .line 28
    invoke-virtual {v0}, Ls1/k;->k()Ls1/o;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    sget-object v3, Ls1/o;->d:Ls1/o;

    .line 33
    .line 34
    if-eq v1, v3, :cond_2

    .line 35
    .line 36
    sget-object v3, Ls1/o;->e:Ls1/o;

    .line 37
    .line 38
    if-ne v1, v3, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v0, v0, Ls1/k;->e:Landroid/widget/ScrollView;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    :goto_0
    iget-object v0, v0, Ls1/k;->d:Landroid/widget/HorizontalScrollView;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    move v0, v2

    .line 56
    :goto_1
    iget-object v1, p0, Lcom/example/navistart/home/WebLauncherActivity;->c:Landroid/widget/FrameLayout;

    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 63
    .line 64
    if-lez v0, :cond_8

    .line 65
    .line 66
    iget-object v3, p0, Lcom/example/navistart/home/WebLauncherActivity;->d:Ls1/k;

    .line 67
    .line 68
    invoke-virtual {v3}, Ls1/k;->k()Ls1/o;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_7

    .line 77
    .line 78
    const/4 v4, 0x1

    .line 79
    if-eq v3, v4, :cond_6

    .line 80
    .line 81
    const/4 v4, 0x2

    .line 82
    if-eq v3, v4, :cond_5

    .line 83
    .line 84
    const/4 v4, 0x3

    .line 85
    if-eq v3, v4, :cond_4

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_4
    iget-object v3, p0, Lcom/example/navistart/home/WebLauncherActivity;->k:Landroidx/core/graphics/Insets;

    .line 89
    .line 90
    iget v3, v3, Landroidx/core/graphics/Insets;->bottom:I

    .line 91
    .line 92
    add-int/2addr v0, v3

    .line 93
    move v4, v0

    .line 94
    move v0, v2

    .line 95
    move v3, v0

    .line 96
    goto :goto_4

    .line 97
    :cond_5
    iget-object v3, p0, Lcom/example/navistart/home/WebLauncherActivity;->k:Landroidx/core/graphics/Insets;

    .line 98
    .line 99
    iget v3, v3, Landroidx/core/graphics/Insets;->top:I

    .line 100
    .line 101
    add-int/2addr v0, v3

    .line 102
    move v3, v2

    .line 103
    :goto_2
    move v4, v3

    .line 104
    goto :goto_4

    .line 105
    :cond_6
    iget-object v3, p0, Lcom/example/navistart/home/WebLauncherActivity;->k:Landroidx/core/graphics/Insets;

    .line 106
    .line 107
    iget v3, v3, Landroidx/core/graphics/Insets;->right:I

    .line 108
    .line 109
    add-int/2addr v0, v3

    .line 110
    move v3, v0

    .line 111
    move v0, v2

    .line 112
    move v4, v0

    .line 113
    goto :goto_4

    .line 114
    :cond_7
    iget-object v3, p0, Lcom/example/navistart/home/WebLauncherActivity;->k:Landroidx/core/graphics/Insets;

    .line 115
    .line 116
    iget v3, v3, Landroidx/core/graphics/Insets;->left:I

    .line 117
    .line 118
    add-int/2addr v0, v3

    .line 119
    move v3, v2

    .line 120
    move v4, v3

    .line 121
    move v2, v0

    .line 122
    move v0, v4

    .line 123
    goto :goto_4

    .line 124
    :cond_8
    :goto_3
    move v0, v2

    .line 125
    move v3, v0

    .line 126
    goto :goto_2

    .line 127
    :goto_4
    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 128
    .line 129
    if-ne v5, v2, :cond_9

    .line 130
    .line 131
    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 132
    .line 133
    if-ne v5, v0, :cond_9

    .line 134
    .line 135
    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 136
    .line 137
    if-ne v5, v3, :cond_9

    .line 138
    .line 139
    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 140
    .line 141
    if-ne v5, v4, :cond_9

    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/example/navistart/home/WebLauncherActivity;->J()Landroidx/core/graphics/Insets;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {p0, v0}, Lcom/example/navistart/home/WebLauncherActivity;->D(Landroidx/core/graphics/Insets;)V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :cond_9
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/example/navistart/home/WebLauncherActivity;->c:Landroid/widget/FrameLayout;

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/example/navistart/home/WebLauncherActivity;->J()Landroidx/core/graphics/Insets;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {p0, v0}, Lcom/example/navistart/home/WebLauncherActivity;->D(Landroidx/core/graphics/Insets;)V

    .line 164
    .line 165
    .line 166
    :cond_a
    :goto_5
    return-void
.end method

.method public final t()V
    .locals 5

    .line 1
    new-instance v0, Ls1/r;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ls1/r;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Ls1/r;->a:Landroid/content/SharedPreferences;

    .line 7
    .line 8
    sget-object v1, Ls1/r;->i:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput-boolean v0, Lcom/example/navistart/AllWidgetServices;->h:Z

    .line 16
    .line 17
    sget-object v1, Lcom/example/navistart/AllWidgetServices;->g:Lcom/example/navistart/AllWidgetServices;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    invoke-static {p0}, Lcom/example/navistart/AllWidgetServices;->c(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v2, v1, Lcom/example/navistart/AllWidgetServices;->b:Landroid/os/Handler;

    .line 26
    .line 27
    new-instance v3, Lc7/e;

    .line 28
    .line 29
    const/4 v4, 0x3

    .line 30
    invoke-direct {v3, v1, v0, v4}, Lc7/e;-><init>(Ljava/lang/Object;ZI)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object v1, p0, Lcom/example/navistart/home/WebLauncherActivity;->d:Ls1/k;

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    iget-boolean v0, p0, Lcom/example/navistart/home/WebLauncherActivity;->j:Z

    .line 43
    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/16 v0, 0x8

    .line 49
    .line 50
    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/example/navistart/home/WebLauncherActivity;->s()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final u(Landroidx/core/graphics/Insets;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/example/navistart/home/WebLauncherActivity;->i:Ls1/q0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x18

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lcom/example/navistart/home/WebLauncherActivity;->w(I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget v3, p1, Landroidx/core/graphics/Insets;->left:I

    .line 12
    .line 13
    add-int/2addr v2, v3

    .line 14
    const/16 v3, 0x14

    .line 15
    .line 16
    invoke-virtual {p0, v3}, Lcom/example/navistart/home/WebLauncherActivity;->w(I)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    iget v4, p1, Landroidx/core/graphics/Insets;->top:I

    .line 21
    .line 22
    add-int/2addr v3, v4

    .line 23
    invoke-virtual {p0, v1}, Lcom/example/navistart/home/WebLauncherActivity;->w(I)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    iget v5, p1, Landroidx/core/graphics/Insets;->right:I

    .line 28
    .line 29
    add-int/2addr v4, v5

    .line 30
    invoke-virtual {p0, v1}, Lcom/example/navistart/home/WebLauncherActivity;->w(I)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    .line 35
    .line 36
    add-int/2addr v1, p1

    .line 37
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public final v()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/example/navistart/home/WebLauncherActivity;->e:Landroid/webkit/WebView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/example/navistart/home/WebLauncherActivity;->e:Landroid/webkit/WebView;

    .line 5
    .line 6
    iput-object v1, p0, Lcom/example/navistart/home/WebLauncherActivity;->f:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Lcom/example/navistart/home/WebLauncherActivity;->c:Landroid/widget/FrameLayout;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 21
    .line 22
    .line 23
    const/16 v1, 0xb

    .line 24
    .line 25
    new-array v1, v1, [B

    .line 26
    .line 27
    fill-array-data v1, :array_0

    .line 28
    .line 29
    .line 30
    const/16 v2, 0x8

    .line 31
    .line 32
    new-array v2, v2, [B

    .line 33
    .line 34
    fill-array-data v2, :array_1

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void

    .line 54
    nop

    .line 55
    :array_0
    .array-data 1
        0x70t
        0x68t
        -0x74t
        -0x7et
        0x22t
        -0x39t
        -0x72t
        0x6at
        0x70t
        0x64t
        -0x78t
    .end array-data

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    :array_1
    .array-data 1
        0x11t
        0xat
        -0x1dt
        -0x9t
        0x56t
        -0x3t
        -0x14t
        0x6t
    .end array-data
.end method

.method public final w(I)I
    .locals 1

    .line 1
    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 11
    .line 12
    mul-float/2addr p1, v0

    .line 13
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final x()V
    .locals 8

    .line 1
    invoke-static {}, Lv1/d;->a()Lv1/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lv1/d;->d()Lv1/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, v0, Lv1/c;->a:Landroidx/lifecycle/MutableLiveData;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/Integer;

    .line 16
    .line 17
    iget-object v2, v0, Lv1/c;->b:Landroidx/lifecycle/MutableLiveData;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/Integer;

    .line 24
    .line 25
    iget-object v3, v0, Lv1/c;->c:Landroidx/lifecycle/MutableLiveData;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lk7/b;

    .line 32
    .line 33
    iget-object v4, v0, Lv1/c;->d:Landroidx/lifecycle/MutableLiveData;

    .line 34
    .line 35
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lcom/example/navistart/cores/HUDMassageObj;

    .line 40
    .line 41
    iget-object v5, v0, Lv1/c;->e:Landroidx/lifecycle/MutableLiveData;

    .line 42
    .line 43
    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Ljava/lang/String;

    .line 48
    .line 49
    iget-object v6, v0, Lv1/c;->f:Landroidx/lifecycle/MutableLiveData;

    .line 50
    .line 51
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    check-cast v6, Ls0/a;

    .line 56
    .line 57
    iget-object v0, v0, Lv1/c;->g:Landroidx/lifecycle/MutableLiveData;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/location/Location;

    .line 64
    .line 65
    if-eqz v1, :cond_0

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-virtual {p0, v1}, Lcom/example/navistart/home/WebLauncherActivity;->E(I)V

    .line 72
    .line 73
    .line 74
    :cond_0
    if-eqz v2, :cond_1

    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-virtual {p0, v1}, Lcom/example/navistart/home/WebLauncherActivity;->C(I)V

    .line 81
    .line 82
    .line 83
    :cond_1
    if-eqz v3, :cond_2

    .line 84
    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    iget-object v2, v3, Lk7/b;->b:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const/4 v2, 0x2

    .line 96
    new-array v2, v2, [B

    .line 97
    .line 98
    fill-array-data v2, :array_0

    .line 99
    .line 100
    .line 101
    const/16 v7, 0x8

    .line 102
    .line 103
    new-array v7, v7, [B

    .line 104
    .line 105
    fill-array-data v7, :array_1

    .line 106
    .line 107
    .line 108
    invoke-static {v2, v7, v1}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    iget v2, v3, Lk7/b;->d:I

    .line 113
    .line 114
    invoke-virtual {p0, v2, v1}, Lcom/example/navistart/home/WebLauncherActivity;->F(ILjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_2
    if-eqz v4, :cond_3

    .line 118
    .line 119
    invoke-virtual {p0, v4}, Lcom/example/navistart/home/WebLauncherActivity;->y(Lcom/example/navistart/cores/HUDMassageObj;)V

    .line 120
    .line 121
    .line 122
    :cond_3
    if-eqz v5, :cond_4

    .line 123
    .line 124
    invoke-virtual {p0, v5}, Lcom/example/navistart/home/WebLauncherActivity;->A(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_4
    if-eqz v6, :cond_5

    .line 128
    .line 129
    invoke-virtual {p0, v6}, Lcom/example/navistart/home/WebLauncherActivity;->B(Ls0/a;)V

    .line 130
    .line 131
    .line 132
    :cond_5
    if-eqz v0, :cond_6

    .line 133
    .line 134
    invoke-virtual {p0, v0}, Lcom/example/navistart/home/WebLauncherActivity;->z(Landroid/location/Location;)V

    .line 135
    .line 136
    .line 137
    :cond_6
    return-void

    .line 138
    nop

    .line 139
    :array_0
    .array-data 1
        0x1dt
        -0x80t
    .end array-data

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    nop

    .line 145
    :array_1
    .array-data 1
        -0x21t
        0x30t
        -0x17t
        -0x10t
        0x76t
        0xct
        0x49t
        0x17t
    .end array-data
.end method

.method public final y(Lcom/example/navistart/cores/HUDMassageObj;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0xd

    .line 7
    .line 8
    new-array v1, v1, [B

    .line 9
    .line 10
    fill-array-data v1, :array_0

    .line 11
    .line 12
    .line 13
    const/16 v2, 0x8

    .line 14
    .line 15
    new-array v3, v2, [B

    .line 16
    .line 17
    fill-array-data v3, :array_1

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v3, p1, Lcom/example/navistart/cores/HUDMassageObj;->hudSenderType:Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;

    .line 25
    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    const-string v3, ""

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    :goto_0
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    new-array v1, v2, [B

    .line 39
    .line 40
    fill-array-data v1, :array_2

    .line 41
    .line 42
    .line 43
    new-array v3, v2, [B

    .line 44
    .line 45
    fill-array-data v3, :array_3

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-object v3, p1, Lcom/example/navistart/cores/HUDMassageObj;->AradarOn:Ljava/lang/Boolean;

    .line 53
    .line 54
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    const/4 v1, 0x6

    .line 58
    new-array v1, v1, [B

    .line 59
    .line 60
    fill-array-data v1, :array_4

    .line 61
    .line 62
    .line 63
    new-array v3, v2, [B

    .line 64
    .line 65
    fill-array-data v3, :array_5

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iget-object v3, p1, Lcom/example/navistart/cores/HUDMassageObj;->NaviOn:Ljava/lang/Boolean;

    .line 73
    .line 74
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    .line 76
    .line 77
    new-array v1, v2, [B

    .line 78
    .line 79
    fill-array-data v1, :array_6

    .line 80
    .line 81
    .line 82
    new-array v3, v2, [B

    .line 83
    .line 84
    fill-array-data v3, :array_7

    .line 85
    .line 86
    .line 87
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iget v3, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnType:I

    .line 92
    .line 93
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 94
    .line 95
    .line 96
    new-array v1, v2, [B

    .line 97
    .line 98
    fill-array-data v1, :array_8

    .line 99
    .line 100
    .line 101
    new-array v3, v2, [B

    .line 102
    .line 103
    fill-array-data v3, :array_9

    .line 104
    .line 105
    .line 106
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    iget v3, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnDis:I

    .line 111
    .line 112
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    .line 114
    .line 115
    const/16 v1, 0xa

    .line 116
    .line 117
    new-array v1, v1, [B

    .line 118
    .line 119
    fill-array-data v1, :array_a

    .line 120
    .line 121
    .line 122
    new-array v3, v2, [B

    .line 123
    .line 124
    fill-array-data v3, :array_b

    .line 125
    .line 126
    .line 127
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    iget v3, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mRemainDis:I

    .line 132
    .line 133
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 134
    .line 135
    .line 136
    new-array v1, v2, [B

    .line 137
    .line 138
    fill-array-data v1, :array_c

    .line 139
    .line 140
    .line 141
    new-array v3, v2, [B

    .line 142
    .line 143
    fill-array-data v3, :array_d

    .line 144
    .line 145
    .line 146
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    iget-object v3, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mNextRoad:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    .line 154
    .line 155
    const/16 v1, 0xa

    .line 156
    .line 157
    new-array v1, v1, [B

    .line 158
    .line 159
    fill-array-data v1, :array_e

    .line 160
    .line 161
    .line 162
    new-array v3, v2, [B

    .line 163
    .line 164
    fill-array-data v3, :array_f

    .line 165
    .line 166
    .line 167
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {p1}, Lcom/example/navistart/cores/HUDMassageObj;->getSpeedlimit()I

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 176
    .line 177
    .line 178
    const/4 p1, 0x3

    .line 179
    new-array p1, p1, [B

    .line 180
    .line 181
    fill-array-data p1, :array_10

    .line 182
    .line 183
    .line 184
    new-array v1, v2, [B

    .line 185
    .line 186
    fill-array-data v1, :array_11

    .line 187
    .line 188
    .line 189
    invoke-static {p1, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {p0, p1, v0}, Lcom/example/navistart/home/WebLauncherActivity;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .line 199
    .line 200
    :catch_0
    return-void

    .line 201
    :array_0
    .array-data 1
        -0x7dt
        -0x5ct
        -0x53t
        -0x22t
        0x10t
        -0x2ft
        0x2et
        -0x52t
        -0x67t
        -0x7bt
        -0x50t
        -0x3t
        0x10t
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
    nop

    .line 213
    :array_1
    .array-data 1
        -0x15t
        -0x2ft
        -0x37t
        -0x73t
        0x75t
        -0x41t
        0x4at
        -0x35t
    .end array-data

    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    :array_2
    .array-data 1
        -0x69t
        0x5ft
        0x79t
        -0x46t
        0x1ct
        0x52t
        -0x7et
        0x35t
    .end array-data

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    :array_3
    .array-data 1
        -0xat
        0x2dt
        0x18t
        -0x22t
        0x7dt
        0x20t
        -0x33t
        0x5bt
    .end array-data

    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    :array_4
    .array-data 1
        0x7bt
        -0x1bt
        -0xdt
        0x1et
        0x55t
        -0x46t
    .end array-data

    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    nop

    .line 245
    :array_5
    .array-data 1
        0x15t
        -0x7ct
        -0x7bt
        0x77t
        0x1at
        -0x2ct
        -0x9t
        0x0t
    .end array-data

    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    :array_6
    .array-data 1
        0x56t
        -0x61t
        -0x7ft
        0x79t
        0x8t
        0xbt
        -0x55t
        -0x1et
    .end array-data

    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    :array_7
    .array-data 1
        0x22t
        -0x16t
        -0xdt
        0x17t
        0x5ct
        0x72t
        -0x25t
        -0x79t
    .end array-data

    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    :array_8
    .array-data 1
        0x63t
        -0x21t
        0x7bt
        0x40t
        -0x15t
        -0x48t
        -0x80t
        -0x17t
    .end array-data

    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    :array_9
    .array-data 1
        0x17t
        -0x56t
        0x9t
        0x2et
        -0x51t
        -0x2ft
        -0xdt
        -0x63t
    .end array-data

    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    :array_a
    .array-data 1
        -0x13t
        -0x6dt
        0x64t
        -0x36t
        0x48t
        -0x59t
        -0x1ft
        0xbt
        -0x14t
        -0x7et
    .end array-data

    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    nop

    .line 295
    :array_b
    .array-data 1
        -0x61t
        -0xat
        0x9t
        -0x55t
        0x21t
        -0x37t
        -0x5bt
        0x62t
    .end array-data

    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    :array_c
    .array-data 1
        0x3at
        -0x4bt
        -0x71t
        -0x2t
        0x5et
        -0x25t
        -0x16t
        0x36t
    .end array-data

    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    :array_d
    .array-data 1
        0x54t
        -0x30t
        -0x9t
        -0x76t
        0xct
        -0x4ct
        -0x75t
        0x52t
    .end array-data

    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    :array_e
    .array-data 1
        0x20t
        0x34t
        0x2ct
        0x0t
        0x4t
        -0x2ct
        0x34t
        0x4ft
        0x3at
        0x30t
    .end array-data

    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    nop

    .line 329
    :array_f
    .array-data 1
        0x53t
        0x44t
        0x49t
        0x65t
        0x60t
        -0x68t
        0x5dt
        0x22t
    .end array-data

    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    :array_10
    .array-data 1
        -0x41t
        -0x23t
        -0x27t
    .end array-data

    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    :array_11
    .array-data 1
        -0x29t
        -0x58t
        -0x43t
        -0x23t
        0x27t
        -0x48t
        -0x7t
        -0x2dt
    .end array-data
.end method

.method public final z(Landroid/location/Location;)V
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    new-array v2, v1, [B

    .line 8
    .line 9
    fill-array-data v2, :array_0

    .line 10
    .line 11
    .line 12
    const/16 v3, 0x8

    .line 13
    .line 14
    new-array v4, v3, [B

    .line 15
    .line 16
    fill-array-data v4, :array_1

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    new-array v2, v1, [B

    .line 31
    .line 32
    fill-array-data v2, :array_2

    .line 33
    .line 34
    .line 35
    new-array v4, v3, [B

    .line 36
    .line 37
    fill-array-data v4, :array_3

    .line 38
    .line 39
    .line 40
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    .line 45
    .line 46
    .line 47
    move-result-wide v4

    .line 48
    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    const/4 v2, 0x5

    .line 52
    new-array v2, v2, [B

    .line 53
    .line 54
    fill-array-data v2, :array_4

    .line 55
    .line 56
    .line 57
    new-array v4, v3, [B

    .line 58
    .line 59
    fill-array-data v4, :array_5

    .line 60
    .line 61
    .line 62
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    float-to-double v4, v4

    .line 71
    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 72
    .line 73
    .line 74
    const/4 v2, 0x7

    .line 75
    new-array v2, v2, [B

    .line 76
    .line 77
    fill-array-data v2, :array_6

    .line 78
    .line 79
    .line 80
    new-array v4, v3, [B

    .line 81
    .line 82
    fill-array-data v4, :array_7

    .line 83
    .line 84
    .line 85
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    float-to-double v4, p1

    .line 94
    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 95
    .line 96
    .line 97
    new-array p1, v1, [B

    .line 98
    .line 99
    fill-array-data p1, :array_8

    .line 100
    .line 101
    .line 102
    new-array v1, v3, [B

    .line 103
    .line 104
    fill-array-data v1, :array_9

    .line 105
    .line 106
    .line 107
    invoke-static {p1, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {p0, p1, v0}, Lcom/example/navistart/home/WebLauncherActivity;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .line 117
    .line 118
    :catch_0
    return-void

    .line 119
    :array_0
    .array-data 1
        -0x70t
        -0x5at
        -0x45t
    .end array-data

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    :array_1
    .array-data 1
        -0x4t
        -0x39t
        -0x31t
        -0x17t
        -0x37t
        -0xbt
        -0x4et
        0x3dt
    .end array-data

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    :array_2
    .array-data 1
        -0x3ct
        0x58t
        0x49t
    .end array-data

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    :array_3
    .array-data 1
        -0x58t
        0x37t
        0x27t
        0x27t
        0x8t
        -0x79t
        0x21t
        0x6ft
    .end array-data

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    :array_4
    .array-data 1
        0x16t
        -0x47t
        -0x6at
        -0x66t
        -0x6at
    .end array-data

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    nop

    .line 155
    :array_5
    .array-data 1
        0x65t
        -0x37t
        -0xdt
        -0x1t
        -0xet
        -0x27t
        -0xct
        0x69t
    .end array-data

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    :array_6
    .array-data 1
        -0x76t
        -0x42t
        0x54t
        0x58t
        -0x7bt
        0x2at
        -0x4ct
    .end array-data

    :array_7
    .array-data 1
        -0x1et
        -0x25t
        0x35t
        0x3ct
        -0x14t
        0x44t
        -0x2dt
        0xft
    .end array-data

    :array_8
    .array-data 1
        -0x6t
        0xat
        -0x5et
    .end array-data

    :array_9
    .array-data 1
        -0x63t
        0x7at
        -0x2ft
        -0x53t
        0x70t
        0x5at
        -0x33t
        0x41t
    .end array-data
.end method
