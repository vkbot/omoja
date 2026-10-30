.class public final Ls1/z0;
.super Landroid/webkit/WebViewClient;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic a:Lcom/example/navistart/home/WebLauncherActivity;


# direct methods
.method public constructor <init>(Lcom/example/navistart/home/WebLauncherActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls1/z0;->a:Lcom/example/navistart/home/WebLauncherActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Ls1/z0;->a:Lcom/example/navistart/home/WebLauncherActivity;

    .line 11
    .line 12
    iget-object p2, p1, Lcom/example/navistart/home/WebLauncherActivity;->g:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p2, p1, Lcom/example/navistart/home/WebLauncherActivity;->h:Ljava/lang/String;

    .line 15
    .line 16
    const/16 p2, 0x76

    .line 17
    .line 18
    new-array p2, p2, [B

    .line 19
    .line 20
    fill-array-data p2, :array_0

    .line 21
    .line 22
    .line 23
    const/16 p3, 0x8

    .line 24
    .line 25
    new-array p3, p3, [B

    .line 26
    .line 27
    fill-array-data p3, :array_1

    .line 28
    .line 29
    .line 30
    invoke-static {p2, p3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p1, p2}, Lcom/example/navistart/home/WebLauncherActivity;->H(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void

    .line 38
    nop

    .line 39
    :array_0
    .array-data 1
        -0x66t
        0x5ft
        -0x59t
        0x0t
        -0x6t
        0x55t
        -0x56t
        0x3et
        -0x2t
        0x12t
        -0x39t
        0x65t
        0x61t
        0x54t
        -0x69t
        0x3ft
        -0x35t
        0x13t
        -0x5t
        -0x6bt
        0xat
        0x3at
        -0x8t
        0x6ct
        -0x66t
        0x78t
        -0x5at
        0x35t
        0xbt
        0xft
        -0x8t
        0x6ct
        -0x65t
        0x4et
        0x57t
        0x65t
        0x68t
        0x54t
        -0x64t
        0x3et
        -0x5t
        -0x11t
        -0x5at
        0x37t
        0xat
        0x31t
        -0x7t
        0x52t
        -0x65t
        0x41t
        0x59t
        -0x6bt
        0xat
        0x19t
        -0x7t
        0x5et
        -0x65t
        0x40t
        -0x59t
        0xdt
        0xat
        0x36t
        -0x7t
        0x53t
        -0x65t
        0x49t
        -0x59t
        0xct
        -0x6t
        0x55t
        -0x5ct
        0x3et
        -0x10t
        0x13t
        -0x9t
        0x65t
        0x6at
        0x54t
        -0x6ct
        -0x32t
        -0x66t
        0x7dt
        -0x5at
        0x35t
        0xat
        0x3at
        -0x7t
        0x5at
        -0x66t
        0x7ct
        -0x59t
        0xet
        0xat
        0x32t
        -0x7t
        0x5et
        -0x66t
        0x77t
        -0x5at
        0x37t
        -0x6t
        0x55t
        -0x57t
        0x3et
        -0x6t
        0x12t
        -0x3at
        0x65t
        0x64t
        0x55t
        -0x55t
        0x3et
        -0x6t
        0x13t
        -0xbt
        0x64t
        0x56t
        -0x56t
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
    .line 55
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
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
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
    nop

    .line 103
    :array_1
    .array-data 1
        0x4at
        -0x3et
        0x77t
        -0x4bt
        -0x26t
        -0x7ct
        0x29t
        -0x12t
    .end array-data
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 p2, 0x1a

    .line 4
    .line 5
    if-lt p1, p2, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Ls1/z0;->a:Lcom/example/navistart/home/WebLauncherActivity;

    .line 8
    .line 9
    iget-object p2, p1, Lcom/example/navistart/home/WebLauncherActivity;->g:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p2, p1, Lcom/example/navistart/home/WebLauncherActivity;->h:Ljava/lang/String;

    .line 12
    .line 13
    const/16 p2, 0x6c

    .line 14
    .line 15
    new-array p2, p2, [B

    .line 16
    .line 17
    fill-array-data p2, :array_0

    .line 18
    .line 19
    .line 20
    const/16 v0, 0x8

    .line 21
    .line 22
    new-array v0, v0, [B

    .line 23
    .line 24
    fill-array-data v0, :array_1

    .line 25
    .line 26
    .line 27
    invoke-static {p2, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p1, p2}, Lcom/example/navistart/home/WebLauncherActivity;->H(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    return p1

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    return p1

    .line 38
    nop

    .line 39
    :array_0
    .array-data 1
        0x13t
        -0x24t
        0x38t
        -0x77t
        -0x5ct
        0x36t
        -0x17t
        -0x4ct
        0x77t
        -0x62t
        0x5at
        -0x14t
        -0x34t
        0x57t
        0x72t
        -0x4ct
        0x7dt
        -0x62t
        0x52t
        0x1ct
        -0x5ct
        0x39t
        0x15t
        -0x1bt
        0x12t
        -0x34t
        0x38t
        -0x74t
        -0x5ct
        0x3at
        0x14t
        -0x26t
        0x13t
        -0x4t
        0x38t
        -0x79t
        -0x5ct
        0x32t
        0x14t
        -0x27t
        -0x13t
        0x6et
        0x38t
        -0x5ft
        -0x5ct
        0x37t
        0x15t
        -0x1at
        0x13t
        -0xat
        0x38t
        -0x72t
        -0x5ct
        0x3at
        0x15t
        -0x11t
        0x13t
        -0x9t
        -0x38t
        -0x13t
        -0x7t
        0x57t
        0x7et
        -0x4bt
        0x43t
        -0x62t
        0x58t
        -0x14t
        -0x37t
        -0x59t
        0x14t
        -0x25t
        0x12t
        -0x32t
        0x38t
        -0x7et
        -0x5ct
        0x33t
        0x14t
        -0x26t
        0x13t
        -0xbt
        0x38t
        -0x76t
        -0x5ct
        0x37t
        0x14t
        -0x2ft
        0x12t
        -0x34t
        -0x38t
        -0x13t
        -0xct
        0x57t
        0x74t
        -0x4ct
        0x72t
        -0x62t
        0x56t
        -0x13t
        -0xat
        0x57t
        0x74t
        -0x4bt
        0x41t
        -0x61t
        0x64t
        0x12t
    .end array-data

    .line 40
    :array_1
    .array-data 1
        -0x3dt
        0x4et
        -0x18t
        0x3ct
        0x74t
        -0x79t
        -0x3ct
        0x64t
    .end array-data
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 11

    .line 1
    iget-object p1, p0, Ls1/z0;->a:Lcom/example/navistart/home/WebLauncherActivity;

    .line 2
    .line 3
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 v0, 0x4

    .line 8
    new-array v1, v0, [B

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
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v3, 0x0

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    return v3

    .line 36
    :cond_0
    sget-object v1, Lcom/example/navistart/home/WebLauncherActivity;->l:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    sget-object v5, Le0/m;->j:[B

    .line 48
    .line 49
    sget-object v6, Le0/p3;->a:[Ljava/lang/String;

    .line 50
    .line 51
    const-string v6, ""

    .line 52
    .line 53
    invoke-static {v5, v4, v6, v1}, Lcom/google/protobuf/q;->s([BLu0/a;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 54
    .line 55
    .line 56
    const/16 v4, 0x9

    .line 57
    .line 58
    new-array v4, v4, [B

    .line 59
    .line 60
    fill-array-data v4, :array_2

    .line 61
    .line 62
    .line 63
    invoke-static {v4, v1}, Lcom/google/protobuf/q;->r([BLjava/lang/StringBuilder;)V

    .line 64
    .line 65
    .line 66
    sget-object v4, Le0/x1;->q:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v1, v4}, Lcom/google/protobuf/q;->g(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    sget-object v5, Le0/m;->f:[B

    .line 77
    .line 78
    invoke-static {v5, v4, v6, v1}, Lcom/google/protobuf/q;->w([BLu0/a;Ljava/lang/String;Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    const/4 v4, 0x1

    .line 83
    if-eqz v1, :cond_2

    .line 84
    .line 85
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 86
    .line 87
    .line 88
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const-wide v6, 0x7fffffffffffffffL

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    invoke-static {v6, v7, v1}, Lcom/google/protobuf/q;->d(JLcom/example/navistart/cores/InterC;)J

    .line 102
    .line 103
    .line 104
    move-result-wide v6

    .line 105
    new-instance v1, Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    new-instance v10, Ljava/lang/String;

    .line 116
    .line 117
    invoke-direct {v10, v5}, Ljava/lang/String;-><init>([B)V

    .line 118
    .line 119
    .line 120
    sget-object v5, Le0/m;->g:[B

    .line 121
    .line 122
    invoke-static {v5, v9, v10}, Lcom/google/protobuf/q;->h([BLu0/a;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    new-array v9, v4, [B

    .line 127
    .line 128
    const/16 v10, -0x7a

    .line 129
    .line 130
    aput-byte v10, v9, v3

    .line 131
    .line 132
    new-array v10, v2, [B

    .line 133
    .line 134
    fill-array-data v10, :array_3

    .line 135
    .line 136
    .line 137
    invoke-static {v9, v10, v8, v5, v3}, Lcom/google/protobuf/q;->x([B[BLu0/a;Ljava/lang/String;I)[B

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([B)V

    .line 142
    .line 143
    .line 144
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 145
    .line 146
    .line 147
    move-result-wide v8

    .line 148
    cmp-long v1, v6, v8

    .line 149
    .line 150
    if-gez v1, :cond_1

    .line 151
    .line 152
    move v3, v4

    .line 153
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    goto :goto_0

    .line 158
    :cond_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 159
    .line 160
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-nez v1, :cond_3

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_3
    new-array v0, v0, [B

    .line 168
    .line 169
    fill-array-data v0, :array_4

    .line 170
    .line 171
    .line 172
    new-array v1, v2, [B

    .line 173
    .line 174
    fill-array-data v1, :array_5

    .line 175
    .line 176
    .line 177
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-nez v0, :cond_4

    .line 190
    .line 191
    const/4 v0, 0x5

    .line 192
    new-array v0, v0, [B

    .line 193
    .line 194
    fill-array-data v0, :array_6

    .line 195
    .line 196
    .line 197
    new-array v1, v2, [B

    .line 198
    .line 199
    fill-array-data v1, :array_7

    .line 200
    .line 201
    .line 202
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-eqz v0, :cond_5

    .line 215
    .line 216
    :cond_4
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 217
    .line 218
    const/16 v1, 0x1a

    .line 219
    .line 220
    new-array v1, v1, [B

    .line 221
    .line 222
    fill-array-data v1, :array_8

    .line 223
    .line 224
    .line 225
    new-array v2, v2, [B

    .line 226
    .line 227
    fill-array-data v2, :array_9

    .line 228
    .line 229
    .line 230
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .line 239
    .line 240
    :catch_0
    :cond_5
    :goto_1
    return v4

    .line 241
    :array_0
    .array-data 1
        -0x42t
        0x79t
        0x74t
        0x23t
    .end array-data

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    :array_1
    .array-data 1
        -0x28t
        0x10t
        0x18t
        0x46t
        -0x6et
        0x35t
        0x5et
        0x55t
    .end array-data

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    :array_2
    .array-data 1
        0x6ct
        0x69t
        0x63t
        0x74t
        0x5ft
        0x72t
        0x69t
        0x75t
        0x65t
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
    nop

    .line 265
    :array_3
    .array-data 1
        -0x4at
        -0x5bt
        0x76t
        -0x7et
        0x61t
        0x61t
        0x39t
        0x7t
    .end array-data

    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    :array_4
    .array-data 1
        0x5bt
        0x39t
        0x75t
        0x54t
    .end array-data

    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    :array_5
    .array-data 1
        0x33t
        0x4dt
        0x1t
        0x24t
        -0x6t
        -0x63t
        0x42t
        -0x2dt
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
        0x3bt
        0x58t
        0x55t
        0x1dt
        -0x15t
    .end array-data

    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    nop

    .line 295
    :array_7
    .array-data 1
        0x53t
        0x2ct
        0x21t
        0x6dt
        -0x68t
        0x6ft
        -0x25t
        0x7t
    .end array-data

    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    :array_8
    .array-data 1
        0x17t
        0x69t
        0x59t
        0x23t
        -0x45t
        -0x32t
        0x6at
        -0x64t
        0x1ft
        0x69t
        0x49t
        0x34t
        -0x46t
        -0x2dt
        0x20t
        -0x2dt
        0x15t
        0x73t
        0x54t
        0x3et
        -0x46t
        -0x77t
        0x58t
        -0x5t
        0x33t
        0x50t
    .end array-data

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
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    nop

    .line 321
    :array_9
    .array-data 1
        0x76t
        0x7t
        0x3dt
        0x51t
        -0x2ct
        -0x59t
        0xet
        -0x4et
    .end array-data
.end method
