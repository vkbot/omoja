.class public abstract Lm7/k;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Landroid/os/Handler;

.field public static c:Lm7/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x10

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
    new-array v1, v1, [B

    .line 11
    .line 12
    fill-array-data v1, :array_1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lm7/k;->a:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v0, Landroid/os/Handler;

    .line 22
    .line 23
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lm7/k;->b:Landroid/os/Handler;

    .line 31
    .line 32
    return-void

    .line 33
    :array_0
    .array-data 1
        0x75t
        0x57t
        0x1ct
        -0x6et
        -0x39t
        -0x47t
        -0x59t
        0x11t
        0x4et
        0x5bt
        0x32t
        -0x62t
        -0x1t
        -0x5at
        -0x5bt
        0x4t
    .end array-data

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    :array_1
    .array-data 1
        0x22t
        0x3et
        0x7at
        -0x5t
        -0x6dt
        -0x2at
        -0x40t
        0x76t
    .end array-data
.end method

.method public static a(Landroid/net/wifi/WifiManager;)Z
    .locals 5

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    const/16 v3, 0xf

    .line 9
    .line 10
    new-array v3, v3, [B

    .line 11
    .line 12
    fill-array-data v3, :array_0

    .line 13
    .line 14
    .line 15
    new-array v4, v0, [B

    .line 16
    .line 17
    fill-array-data v4, :array_1

    .line 18
    .line 19
    .line 20
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    instance-of v2, p0, Ljava/lang/Boolean;

    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    check-cast p0, Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    if-eqz p0, :cond_0

    .line 44
    .line 45
    const/4 p0, 0x1

    .line 46
    return p0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    return v1

    .line 50
    :goto_0
    const/16 v2, 0x1d

    .line 51
    .line 52
    new-array v2, v2, [B

    .line 53
    .line 54
    fill-array-data v2, :array_2

    .line 55
    .line 56
    .line 57
    new-array v0, v0, [B

    .line 58
    .line 59
    fill-array-data v0, :array_3

    .line 60
    .line 61
    .line 62
    invoke-static {v2, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    sget-object v0, Lm7/k;->a:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    return v1

    .line 84
    nop

    .line 85
    :array_0
    .array-data 1
        0x2ct
        0x27t
        0x28t
        -0x2dt
        0x7ft
        0x62t
        -0x23t
        -0x1et
        0x0t
        0x3at
        0x1et
        -0x28t
        0x75t
        0x6et
        -0x8t
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
    :array_1
    .array-data 1
        0x45t
        0x54t
        0x7ft
        -0x46t
        0x19t
        0xbt
        -0x64t
        -0x6et
    .end array-data

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    :array_2
    .array-data 1
        0x1dt
        -0x7dt
        -0x42t
        -0x4dt
        0x4at
        0x44t
        -0xct
        0x68t
        0x31t
        -0x62t
        -0x78t
        -0x48t
        0x40t
        0x48t
        -0x2ft
        0x38t
        0x1t
        -0x62t
        -0x78t
        -0x54t
        0x4dt
        0x44t
        -0x27t
        0x79t
        0x16t
        -0x64t
        -0x74t
        -0x20t
        0xct
    .end array-data

    .line 106
    .line 107
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
    .line 121
    .line 122
    .line 123
    .line 124
    nop

    .line 125
    :array_3
    .array-data 1
        0x74t
        -0x10t
        -0x17t
        -0x26t
        0x2ct
        0x2dt
        -0x4bt
        0x18t
    .end array-data
.end method

.method public static b(Landroid/net/wifi/WifiManager;)V
    .locals 6

    .line 1
    sget-object v0, Lm7/k;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p0, :cond_6

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_0
    const/16 v1, 0x8

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->startScan()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v2

    .line 20
    const/16 v3, 0x31

    .line 21
    .line 22
    new-array v3, v3, [B

    .line 23
    .line 24
    fill-array-data v3, :array_0

    .line 25
    .line 26
    .line 27
    new-array v4, v1, [B

    .line 28
    .line 29
    fill-array-data v4, :array_1

    .line 30
    .line 31
    .line 32
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const/4 v3, -0x1

    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eq v4, v3, :cond_1

    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    sget-object v5, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    .line 69
    .line 70
    if-ne v4, v5, :cond_1

    .line 71
    .line 72
    goto/16 :goto_4

    .line 73
    .line 74
    :cond_1
    if-eqz v2, :cond_2

    .line 75
    .line 76
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eq v4, v3, :cond_2

    .line 81
    .line 82
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    const/4 v3, 0x1

    .line 87
    invoke-virtual {p0, v2, v3}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :catch_1
    move-exception p0

    .line 92
    goto :goto_3

    .line 93
    :cond_2
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    if-nez v2, :cond_3

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_5

    .line 109
    .line 110
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 115
    .line 116
    if-eqz v4, :cond_4

    .line 117
    .line 118
    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 119
    .line 120
    if-eq v4, v3, :cond_4

    .line 121
    .line 122
    const/4 v5, 0x0

    .line 123
    invoke-virtual {p0, v4, v5}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->reassociate()Z

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 131
    .line 132
    .line 133
    const/16 p0, 0x34

    .line 134
    .line 135
    new-array p0, p0, [B

    .line 136
    .line 137
    fill-array-data p0, :array_2

    .line 138
    .line 139
    .line 140
    new-array v2, v1, [B

    .line 141
    .line 142
    fill-array-data v2, :array_3

    .line 143
    .line 144
    .line 145
    invoke-static {p0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    .line 151
    .line 152
    goto :goto_4

    .line 153
    :goto_3
    const/16 v2, 0x21

    .line 154
    .line 155
    new-array v2, v2, [B

    .line 156
    .line 157
    fill-array-data v2, :array_4

    .line 158
    .line 159
    .line 160
    new-array v1, v1, [B

    .line 161
    .line 162
    fill-array-data v1, :array_5

    .line 163
    .line 164
    .line 165
    invoke-static {v2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    :cond_6
    :goto_4
    return-void

    .line 185
    :array_0
    .array-data 1
        0x1ft
        0x72t
        -0x49t
        0x1et
        0x36t
        -0x47t
        0x5t
        -0x29t
        0x2t
        0x26t
        -0x50t
        0xdt
        0x2bt
        -0x7at
        0x3t
        -0x2et
        0x4ct
        0x71t
        -0x42t
        0x5t
        0x2et
        -0x71t
        0x46t
        -0x28t
        0x19t
        0x62t
        -0x4ft
        0x5t
        0x2ct
        -0x73t
        0x46t
        -0x1ft
        0x5t
        0x2bt
        -0x70t
        0x5t
        0x62t
        -0x77t
        0x9t
        -0x28t
        0x2t
        0x63t
        -0x4bt
        0x18t
        0x2bt
        -0x7bt
        0x8t
        -0x74t
        0x4ct
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
    nop

    .line 215
    :array_1
    .array-data 1
        0x6ct
        0x6t
        -0x2at
        0x6ct
        0x42t
        -0x16t
        0x66t
        -0x4at
    .end array-data

    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    :array_2
    .array-data 1
        -0x2at
        0x56t
        0x7ct
        0x28t
        -0x61t
        -0x6et
        0x6dt
        -0x7t
        -0x20t
        0x13t
        0x5at
        0x34t
        -0x29t
        -0x59t
        0x70t
        -0x44t
        -0xat
        0x56t
        0x6et
        0x32t
        -0x6ct
        -0x71t
        0x7ct
        -0x1t
        -0x10t
        0x13t
        0x6ct
        0x3bt
        -0x72t
        -0x7ct
        0x6bt
        -0x44t
        -0x1ft
        0x5dt
        0x6ct
        0x3ft
        -0x6at
        -0x78t
        0x77t
        -0x5t
        -0x5ct
        0x50t
        0x61t
        0x34t
        -0x61t
        -0x71t
        0x6dt
        -0x44t
        -0x17t
        0x5ct
        0x69t
        0x38t
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
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    :array_3
    .array-data 1
        -0x7ct
        0x33t
        0xdt
        0x5dt
        -0x6t
        -0x1ft
        0x19t
        -0x64t
    .end array-data

    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    :array_4
    .array-data 1
        0x5dt
        0xbt
        -0x10t
        0x6bt
        -0x53t
        -0x35t
        -0x7et
        -0x27t
        0x74t
        0x4at
        -0x9t
        0x72t
        -0x54t
        -0x38t
        -0x39t
        -0x73t
        0x4ct
        0x3t
        -0x4ct
        0x41t
        -0x5ft
        -0x71t
        -0x30t
        -0x38t
        0x78t
        0x5t
        -0x9t
        0x69t
        -0x53t
        -0x34t
        -0x2at
        -0x69t
        0x3bt
    .end array-data

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
    nop

    .line 283
    :array_5
    .array-data 1
        0x1bt
        0x6at
        -0x67t
        0x7t
        -0x38t
        -0x51t
        -0x5et
        -0x53t
    .end array-data
.end method

.method public static c(Landroid/content/Context;Z)V
    .locals 13

    .line 1
    const-class v1, Lm7/k;

    .line 2
    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    const/4 p0, 0x4

    .line 9
    new-array p0, p0, [B

    .line 10
    .line 11
    fill-array-data p0, :array_0

    .line 12
    .line 13
    .line 14
    const/16 v0, 0x8

    .line 15
    .line 16
    new-array v2, v0, [B

    .line 17
    .line 18
    fill-array-data v2, :array_1

    .line 19
    .line 20
    .line 21
    invoke-static {p0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {v3, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    move-object v4, p0

    .line 30
    check-cast v4, Landroid/net/wifi/WifiManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    if-nez v4, :cond_0

    .line 33
    .line 34
    monitor-exit v1

    .line 35
    return-void

    .line 36
    :cond_0
    :try_start_1
    invoke-static {}, Lm7/k;->d()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 40
    .line 41
    .line 42
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    if-ne p0, p1, :cond_1

    .line 44
    .line 45
    monitor-exit v1

    .line 46
    return-void

    .line 47
    :cond_1
    :try_start_2
    new-instance v2, Lm7/j;

    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    const/4 v5, 0x2

    .line 51
    invoke-static {p0, v5}, Ljava/lang/Math;->max(II)I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    const-wide/16 v7, 0x3e8

    .line 56
    .line 57
    const-wide/16 v9, 0x1f40

    .line 58
    .line 59
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 60
    .line 61
    .line 62
    move-result-wide v7

    .line 63
    const-wide/16 v9, 0x12c

    .line 64
    .line 65
    const-wide/16 v11, 0x5dc

    .line 66
    .line 67
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    .line 68
    .line 69
    .line 70
    move-result-wide v9

    .line 71
    move v5, p1

    .line 72
    invoke-direct/range {v2 .. v10}, Lm7/j;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;ZIJJ)V

    .line 73
    .line 74
    .line 75
    sput-object v2, Lm7/k;->c:Lm7/j;

    .line 76
    .line 77
    new-instance p0, Landroid/content/IntentFilter;

    .line 78
    .line 79
    const/16 p1, 0x23

    .line 80
    .line 81
    new-array p1, p1, [B

    .line 82
    .line 83
    fill-array-data p1, :array_2

    .line 84
    .line 85
    .line 86
    new-array v0, v0, [B

    .line 87
    .line 88
    fill-array-data v0, :array_3

    .line 89
    .line 90
    .line 91
    invoke-static {p1, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, v2, Lm7/j;->a:Landroid/content/Context;

    .line 99
    .line 100
    iget-object v0, v2, Lm7/j;->l:Lb1/c;

    .line 101
    .line 102
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    const/4 p0, 0x1

    .line 106
    iput-boolean p0, v2, Lm7/j;->j:Z

    .line 107
    .line 108
    invoke-virtual {v2}, Lm7/j;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    .line 110
    .line 111
    monitor-exit v1

    .line 112
    return-void

    .line 113
    :catchall_0
    move-exception v0

    .line 114
    move-object p0, v0

    .line 115
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    throw p0

    .line 117
    :array_0
    .array-data 1
        0x27t
        -0x37t
        0x1at
        -0x1at
    .end array-data

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    :array_1
    .array-data 1
        0x50t
        -0x60t
        0x7ct
        -0x71t
        -0x63t
        -0x26t
        0x4et
        0x56t
    .end array-data

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    :array_2
    .array-data 1
        -0x46t
        0x4t
        -0x2ct
        0x3ct
        -0x7at
        -0x61t
        -0x4et
        -0x4at
        -0x4bt
        0xft
        -0x3ct
        0x60t
        -0x62t
        -0x61t
        -0x50t
        -0xft
        -0xbt
        0x3dt
        -0x7t
        0x8t
        -0x60t
        -0x57t
        -0x7bt
        -0x34t
        -0x66t
        0x3et
        -0xbt
        0x11t
        -0x56t
        -0x42t
        -0x69t
        -0x2at
        -0x64t
        0x2ft
        -0xct
    .end array-data

    .line 132
    .line 133
    :array_3
    .array-data 1
        -0x25t
        0x6at
        -0x50t
        0x4et
        -0x17t
        -0xat
        -0x2at
        -0x68t
    .end array-data
.end method

.method public static d()V
    .locals 4

    .line 1
    sget-object v0, Lm7/k;->c:Lm7/j;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-object v1, Lm7/k;->b:Landroid/os/Handler;

    .line 6
    .line 7
    iget-object v2, v0, Lm7/j;->m:Lm7/i;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    iget-boolean v1, v0, Lm7/j;->j:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    :try_start_0
    iget-object v1, v0, Lm7/j;->a:Landroid/content/Context;

    .line 17
    .line 18
    iget-object v2, v0, Lm7/j;->l:Lb1/c;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    const/16 v1, 0x10

    .line 25
    .line 26
    new-array v1, v1, [B

    .line 27
    .line 28
    fill-array-data v1, :array_0

    .line 29
    .line 30
    .line 31
    const/16 v2, 0x8

    .line 32
    .line 33
    new-array v3, v2, [B

    .line 34
    .line 35
    fill-array-data v3, :array_1

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/16 v3, 0x26

    .line 43
    .line 44
    new-array v3, v3, [B

    .line 45
    .line 46
    fill-array-data v3, :array_2

    .line 47
    .line 48
    .line 49
    new-array v2, v2, [B

    .line 50
    .line 51
    fill-array-data v2, :array_3

    .line 52
    .line 53
    .line 54
    invoke-static {v3, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :goto_0
    const/4 v1, 0x0

    .line 62
    iput-boolean v1, v0, Lm7/j;->j:Z

    .line 63
    .line 64
    :cond_0
    const/4 v0, 0x0

    .line 65
    sput-object v0, Lm7/k;->c:Lm7/j;

    .line 66
    .line 67
    :cond_1
    return-void

    .line 68
    nop

    .line 69
    :array_0
    .array-data 1
        0x20t
        -0x60t
        -0x5t
        -0x4ct
        0x43t
        -0x49t
        0x30t
        -0x76t
        0x1bt
        -0x54t
        -0x2bt
        -0x48t
        0x7bt
        -0x58t
        0x32t
        -0x61t
    .end array-data

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
    :array_1
    .array-data 1
        0x77t
        -0x37t
        -0x63t
        -0x23t
        0x17t
        -0x28t
        0x57t
        -0x13t
    .end array-data

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    :array_2
    .array-data 1
        0x7t
        -0x64t
        -0x40t
        -0x16t
        0x70t
        -0x13t
        -0x7at
        0x74t
        0x15t
        -0x59t
        -0x3dt
        -0x20t
        0x46t
        -0x10t
        -0x6ft
        0x65t
        0x2t
        -0x2bt
        -0x39t
        -0x11t
        0x51t
        -0x4t
        -0x7at
        0x64t
        0x9t
        -0x2bt
        -0x2dt
        -0x13t
        0x51t
        -0x4t
        -0x80t
        0x69t
        0x3t
        -0x7ft
        -0x3dt
        -0xft
        0x46t
        -0x3t
    .end array-data

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
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    nop

    .line 113
    :array_3
    .array-data 1
        0x70t
        -0xbt
        -0x5at
        -0x7dt
        0x23t
        -0x67t
        -0x19t
        0x0t
    .end array-data
.end method
