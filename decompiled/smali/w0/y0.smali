.class public final Lw0/y0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:D


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x8

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/16 v1, 0x6a

    .line 9
    .line 10
    new-array v1, v1, [B

    .line 11
    .line 12
    fill-array-data v1, :array_0

    .line 13
    .line 14
    .line 15
    new-array v2, v0, [B

    .line 16
    .line 17
    fill-array-data v2, :array_1

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    const/16 v1, 0xf

    .line 33
    .line 34
    new-array v1, v1, [B

    .line 35
    .line 36
    fill-array-data v1, :array_2

    .line 37
    .line 38
    .line 39
    new-array v2, v0, [B

    .line 40
    .line 41
    fill-array-data v2, :array_3

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    if-eqz p3, :cond_0

    .line 55
    .line 56
    const/16 v1, 0x32

    .line 57
    .line 58
    new-array v1, v1, [B

    .line 59
    .line 60
    fill-array-data v1, :array_4

    .line 61
    .line 62
    .line 63
    new-array v2, v0, [B

    .line 64
    .line 65
    fill-array-data v2, :array_5

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p3, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_0

    .line 77
    .line 78
    invoke-static {p4, p5}, Ljava/lang/Double;->isNaN(D)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_0

    .line 83
    .line 84
    invoke-static {p4, p5}, Ljava/lang/Double;->isInfinite(D)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_0

    .line 89
    .line 90
    iput-object p1, p0, Lw0/y0;->a:Ljava/lang/String;

    .line 91
    .line 92
    iput-object p2, p0, Lw0/y0;->b:Ljava/lang/String;

    .line 93
    .line 94
    iput-object p3, p0, Lw0/y0;->c:Ljava/lang/String;

    .line 95
    .line 96
    iput-wide p4, p0, Lw0/y0;->d:D

    .line 97
    .line 98
    return-void

    .line 99
    :cond_0
    const/16 p1, 0x1f

    .line 100
    .line 101
    new-array p1, p1, [B

    .line 102
    .line 103
    fill-array-data p1, :array_6

    .line 104
    .line 105
    .line 106
    new-array p2, v0, [B

    .line 107
    .line 108
    fill-array-data p2, :array_7

    .line 109
    .line 110
    .line 111
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const/4 p1, 0x0

    .line 119
    throw p1

    .line 120
    nop

    .line 121
    :array_0
    .array-data 1
        0x24t
        -0x63t
        0x1et
        -0xct
        0x38t
        -0x1ft
        -0x19t
        -0x26t
        0x3ct
        -0x65t
        0x2t
        -0x14t
        0x23t
        -0x1ct
        -0x12t
        -0x30t
        0x38t
        -0x78t
        0x17t
        -0x4t
        0x38t
        -0x20t
        -0x2t
        -0x24t
        0x3ct
        -0x74t
        0xct
        -0x1ct
        0x32t
        -0x5t
        -0x15t
        -0x25t
        0x21t
        -0x6bt
        0x4t
        -0x1bt
        0x25t
        -0xdt
        -0x19t
        -0x2at
        0x36t
        -0x6bt
        0x4t
        -0x14t
        0x21t
        -0xdt
        -0xbt
        -0x36t
        0x2ft
        -0x6et
        0x11t
        -0x2t
        0x2bt
        -0x20t
        -0xct
        -0x2et
        0x26t
        -0x67t
        0x15t
        -0x14t
        0x3at
        -0x1dt
        -0x11t
        -0x25t
        0x2ft
        -0x80t
        0x2t
        -0xft
        0x34t
        -0x3t
        -0x19t
        -0x33t
        0x36t
        -0x80t
        0x4t
        -0x7t
        0x39t
        -0xft
        -0x18t
        -0x3et
        0x32t
        -0x63t
        0x2t
        -0x56t
        0xct
        -0x9t
        -0x4at
        -0x3ct
        0xct
        -0x57t
        0x5bt
        -0x14t
        0x24t
        -0x1ft
        -0xet
        -0x36t
        0x30t
        -0x64t
        0x4at
        -0x35t
        0x36t
        -0x45t
        -0x1ft
        -0x1ft
        0xet
        -0x21t
    .end array-data

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
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
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
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
    nop

    .line 179
    :array_1
    .array-data 1
        0x53t
        -0xct
        0x70t
        -0x70t
        0x57t
        -0x6at
        -0x65t
        -0x42t
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
        0x4bt
        0x34t
        -0x5ft
        0x50t
        0x25t
        -0x6et
        0x2ct
        -0x19t
        0x51t
        0x2at
        -0x51t
        0x4at
        0x36t
        -0x7et
        0x32t
    .end array-data

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
    :array_3
    .array-data 1
        0x2dt
        0x58t
        -0x23t
        0x36t
        0x57t
        -0x12t
        0x5et
        -0x75t
    .end array-data

    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    :array_4
    .array-data 1
        -0x16t
        0x68t
        0x35t
        0x7ft
        -0xet
        -0x62t
        0x6at
        -0x2bt
        -0xat
        0x7at
        0x2ft
        0x7ft
        -0x18t
        -0x80t
        0x6at
        -0x22t
        -0x1t
        0x6bt
        0x3dt
        0x77t
        -0x18t
        -0x77t
        0x71t
        -0x23t
        -0x4t
        0x71t
        0x2et
        0x73t
        -0x1et
        -0x80t
        0x6at
        -0x2et
        -0xbt
        0x62t
        0x32t
        0x66t
        -0x5t
        -0x80t
        0x73t
        -0x37t
        -0x13t
        0x71t
        0x31t
        0x71t
        -0x1et
        -0x68t
        0x7ft
        -0x22t
        -0x14t
        0x7et
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
    nop

    .line 237
    :array_5
    .array-data 1
        -0x67t
        0xdt
        0x41t
        0x3t
        -0x79t
        -0x12t
        0x16t
        -0x4ft
    .end array-data

    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    :array_6
    .array-data 1
        -0x77t
        -0x1et
        -0x68t
        0x4at
        0x8t
        -0x32t
        0x44t
        0x73t
        -0x4at
        -0x1dt
        -0x79t
        0x48t
        0x1t
        -0x79t
        0x49t
        0x3dt
        -0x4ct
        -0x17t
        -0x80t
        0x5ft
        0x44t
        -0x3dt
        0x45t
        0x20t
        -0x5dt
        -0x2t
        -0x79t
        0x5bt
        0x10t
        -0x38t
        0x52t
    .end array-data

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
    :array_7
    .array-data 1
        -0x40t
        -0x74t
        -0x12t
        0x2bt
        0x64t
        -0x59t
        0x20t
        0x53t
    .end array-data
.end method


# virtual methods
.method public final a(Lw0/y0;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lw0/y0;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p1, Lw0/y0;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lw0/y0;->b:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p1, Lw0/y0;->b:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lw0/y0;->c:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v1, p1, Lw0/y0;->c:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-wide v0, p0, Lw0/y0;->d:D

    .line 32
    .line 33
    iget-wide v2, p1, Lw0/y0;->d:D

    .line 34
    .line 35
    sub-double/2addr v0, v2

    .line 36
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    cmpg-double p1, v0, v2

    .line 46
    .line 47
    if-gez p1, :cond_0

    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    return p1

    .line 51
    :cond_0
    const/4 p1, 0x0

    .line 52
    return p1
.end method
