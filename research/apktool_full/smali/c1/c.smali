.class public abstract Lc1/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x14

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
    sput-object v0, Lc1/c;->a:Ljava/lang/String;

    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 1
        -0x2bt
        0x4ft
        -0x80t
        0x1ft
        -0x69t
        0x19t
        0x78t
        -0x22t
        -0x21t
        0x14t
        -0x29t
        0x7t
        -0x68t
        0x13t
        0x79t
        -0x3dt
        -0x37t
        0x5bt
        -0x28t
        0xft
    .end array-data

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    :array_1
    .array-data 1
        -0x59t
        0x3at
        -0x52t
        0x66t
        -0xat
        0x77t
        0x1ct
        -0x45t
    .end array-data
.end method

.method public static a(Landroid/net/Uri$Builder;Ljava/lang/String;Lc1/b;)V
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    new-array v3, v2, [B

    .line 10
    .line 11
    fill-array-data v3, :array_1

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-wide v3, p2, Lc1/b;->a:D

    .line 23
    .line 24
    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {p0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 29
    .line 30
    .line 31
    new-array v0, v0, [B

    .line 32
    .line 33
    fill-array-data v0, :array_2

    .line 34
    .line 35
    .line 36
    new-array v1, v2, [B

    .line 37
    .line 38
    fill-array-data v1, :array_3

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-wide v0, p2, Lc1/b;->b:D

    .line 50
    .line 51
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :array_0
    .array-data 1
        -0x80t
        -0x2dt
        -0x59t
        0x51t
    .end array-data

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    :array_1
    .array-data 1
        -0x14t
        -0x4et
        -0x2dt
        0xet
        -0x13t
        -0x70t
        0x50t
        0x49t
    .end array-data

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    :array_2
    .array-data 1
        -0x54t
        0x30t
        0x3ct
        0x71t
    .end array-data

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    :array_3
    .array-data 1
        -0x40t
        0x5ft
        0x52t
        0x2et
        -0x54t
        0x25t
        -0x10t
        -0x63t
    .end array-data
.end method

.method public static b(Landroid/content/Context;Landroid/content/Intent;)Lc1/a;
    .locals 2

    .line 1
    const/4 v0, 0x7

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
    new-array v1, v1, [B

    .line 10
    .line 11
    fill-array-data v1, :array_1

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    instance-of v0, p0, Landroid/app/Activity;

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const/high16 v0, 0x10000000

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 31
    .line 32
    .line 33
    sget-object p0, Lc1/a;->b:Lc1/a;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    return-object p0

    .line 36
    :catch_0
    sget-object p0, Lc1/a;->d:Lc1/a;

    .line 37
    .line 38
    return-object p0

    .line 39
    :catch_1
    sget-object p0, Lc1/a;->c:Lc1/a;

    .line 40
    .line 41
    return-object p0

    .line 42
    nop

    .line 43
    :array_0
    .array-data 1
        -0x53t
        -0xct
        -0x62t
        0x25t
        0x5bt
        0x4at
        0x49t
    .end array-data

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    :array_1
    .array-data 1
        -0x32t
        -0x65t
        -0x10t
        0x51t
        0x3et
        0x32t
        0x3dt
        -0x57t
    .end array-data
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Lc1/a;
    .locals 5

    .line 1
    const/4 v0, 0x7

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
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    new-instance v0, Landroid/net/Uri$Builder;

    .line 32
    .line 33
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 34
    .line 35
    .line 36
    const/16 v2, 0xa

    .line 37
    .line 38
    new-array v3, v2, [B

    .line 39
    .line 40
    fill-array-data v3, :array_2

    .line 41
    .line 42
    .line 43
    new-array v4, v1, [B

    .line 44
    .line 45
    fill-array-data v4, :array_3

    .line 46
    .line 47
    .line 48
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    new-array v2, v2, [B

    .line 57
    .line 58
    fill-array-data v2, :array_4

    .line 59
    .line 60
    .line 61
    new-array v3, v1, [B

    .line 62
    .line 63
    fill-array-data v3, :array_5

    .line 64
    .line 65
    .line 66
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const/4 v2, 0x4

    .line 75
    new-array v2, v2, [B

    .line 76
    .line 77
    fill-array-data v2, :array_6

    .line 78
    .line 79
    .line 80
    new-array v3, v1, [B

    .line 81
    .line 82
    fill-array-data v3, :array_7

    .line 83
    .line 84
    .line 85
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v0, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    new-instance v0, Landroid/content/Intent;

    .line 94
    .line 95
    const/16 v2, 0x1a

    .line 96
    .line 97
    new-array v2, v2, [B

    .line 98
    .line 99
    fill-array-data v2, :array_8

    .line 100
    .line 101
    .line 102
    new-array v1, v1, [B

    .line 103
    .line 104
    fill-array-data v1, :array_9

    .line 105
    .line 106
    .line 107
    invoke-static {v2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 116
    .line 117
    .line 118
    sget-object p1, Lc1/c;->a:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {p0, p1}, Lc1/c;->b(Landroid/content/Context;Landroid/content/Intent;)Lc1/a;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    return-object p0

    .line 129
    :cond_0
    const/16 p0, 0x32

    .line 130
    .line 131
    new-array p0, p0, [B

    .line 132
    .line 133
    fill-array-data p0, :array_a

    .line 134
    .line 135
    .line 136
    new-array p1, v1, [B

    .line 137
    .line 138
    fill-array-data p1, :array_b

    .line 139
    .line 140
    .line 141
    invoke-static {p0, p1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-static {p0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const/4 p0, 0x0

    .line 149
    return-object p0

    .line 150
    nop

    .line 151
    :array_0
    .array-data 1
        -0x63t
        -0x2ct
        0x2et
        -0x1ct
        0x26t
        -0x2et
        -0x5et
    .end array-data

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    :array_1
    .array-data 1
        -0x4t
        -0x50t
        0x4at
        -0x6at
        0x43t
        -0x5ft
        -0x2ft
        -0x7dt
    .end array-data

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    :array_2
    .array-data 1
        0x66t
        0x6t
        -0x16t
        -0x78t
        -0x4ft
        -0x7ft
        -0x3bt
        0x4t
        0x69t
        0xet
    .end array-data

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
        0x1ft
        0x67t
        -0x7ct
        -0x14t
        -0x2ct
        -0x7t
        -0x55t
        0x65t
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
        -0x27t
        -0x1ct
        0x72t
        -0x53t
        0x35t
        0x55t
        -0x43t
        0x57t
        -0x29t
        -0x13t
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
    nop

    .line 195
    :array_5
    .array-data 1
        -0x4ct
        -0x7bt
        0x2t
        -0xet
        0x46t
        0x30t
        -0x24t
        0x25t
    .end array-data

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    :array_6
    .array-data 1
        -0x69t
        0x74t
        -0x18t
        -0x73t
    .end array-data

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    :array_7
    .array-data 1
        -0x1dt
        0x11t
        -0x70t
        -0x7t
        -0x42t
        0x22t
        0x54t
        0x73t
    .end array-data

    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    :array_8
    .array-data 1
        0x45t
        0x0t
        0x60t
        -0x3ct
        -0x1ft
        -0x7dt
        -0x5at
        -0xat
        0x4dt
        0x0t
        0x70t
        -0x2dt
        -0x20t
        -0x62t
        -0x14t
        -0x47t
        0x47t
        0x1at
        0x6dt
        -0x27t
        -0x20t
        -0x3ct
        -0x6ct
        -0x6ft
        0x61t
        0x39t
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
    nop

    .line 235
    :array_9
    .array-data 1
        0x24t
        0x6et
        0x4t
        -0x4at
        -0x72t
        -0x16t
        -0x3et
        -0x28t
    .end array-data

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    :array_a
    .array-data 1
        -0x4ct
        -0x22t
        0x5ft
        -0x27t
        -0x4ft
        0x73t
        0x73t
        0x39t
        -0x4bt
        -0x31t
        -0x51t
        -0x43t
        -0x23t
        0x23t
        0x16t
        -0x54t
        -0x4ct
        -0x6t
        0x5ft
        -0x2dt
        -0x50t
        0x48t
        0x73t
        0x3at
        -0x4ct
        -0x5t
        0x5ft
        -0x30t
        0x40t
        0x23t
        0x12t
        0x5dt
        -0x11t
        -0x61t
        0xdt
        -0x44t
        -0x14t
        -0x2dt
        0x73t
        0x33t
        -0x4bt
        -0x33t
        0x5et
        -0x14t
        -0x4ft
        0x71t
        0x72t
        0x7t
        -0x4ct
        -0xet
    .end array-data

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
    nop

    .line 273
    :array_b
    .array-data 1
        0x64t
        0x4et
        -0x71t
        0x6dt
        0x60t
        -0xdt
        -0x5dt
        -0x74t
    .end array-data
.end method
