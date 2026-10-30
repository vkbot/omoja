.class public final Lj7/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:Lj7/a;

.field public final e:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0xf

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
    const/16 v0, 0x11

    .line 19
    .line 20
    new-array v0, v0, [B

    .line 21
    .line 22
    fill-array-data v0, :array_2

    .line 23
    .line 24
    .line 25
    new-array v1, v1, [B

    .line 26
    .line 27
    fill-array-data v1, :array_3

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :array_0
    .array-data 1
        -0x3dt
        -0x3dt
        -0x26t
        -0x5bt
        0x53t
        -0x1bt
        -0x52t
        0x1ft
        -0x3et
        -0x34t
        -0x7et
        -0x5dt
        0x44t
        -0x1ft
        -0x4ct
    .end array-data

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
    .line 46
    .line 47
    :array_1
    .array-data 1
        -0x53t
        -0x5et
        -0x54t
        -0x34t
        0x34t
        -0x7ct
        -0x26t
        0x76t
    .end array-data

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    :array_2
    .array-data 1
        -0x49t
        0x7at
        0x24t
        -0x68t
        0x6et
        0x2ft
        0x7at
        0x0t
        -0x4at
        0x75t
        0x7ct
        -0x7dt
        0x6ct
        0x3dt
        0x7bt
        0x5t
        -0x53t
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
    .line 66
    .line 67
    .line 68
    nop

    .line 69
    :array_3
    .array-data 1
        -0x27t
        0x1bt
        0x52t
        -0xft
        0x9t
        0x4et
        0xet
        0x69t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;JLj7/a;Ljava/util/List;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v0, :cond_6

    .line 20
    .line 21
    if-eqz p5, :cond_5

    .line 22
    .line 23
    invoke-interface {p5}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/16 v3, 0x10

    .line 28
    .line 29
    if-gt v0, v3, :cond_5

    .line 30
    .line 31
    invoke-interface {p5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_5

    .line 36
    .line 37
    if-nez p4, :cond_1

    .line 38
    .line 39
    if-eqz p6, :cond_0

    .line 40
    .line 41
    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_0

    .line 50
    .line 51
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/16 v3, 0x400

    .line 56
    .line 57
    if-gt v0, v3, :cond_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const/16 p1, 0x3c

    .line 61
    .line 62
    new-array p1, p1, [B

    .line 63
    .line 64
    fill-array-data p1, :array_0

    .line 65
    .line 66
    .line 67
    new-array p2, v1, [B

    .line 68
    .line 69
    fill-array-data p2, :array_1

    .line 70
    .line 71
    .line 72
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v2

    .line 80
    :cond_1
    :goto_0
    if-nez p4, :cond_3

    .line 81
    .line 82
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    const/16 p1, 0x16

    .line 90
    .line 91
    new-array p1, p1, [B

    .line 92
    .line 93
    fill-array-data p1, :array_2

    .line 94
    .line 95
    .line 96
    new-array p2, v1, [B

    .line 97
    .line 98
    fill-array-data p2, :array_3

    .line 99
    .line 100
    .line 101
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v2

    .line 109
    :cond_3
    :goto_1
    iput-object p1, p0, Lj7/b;->a:Ljava/lang/String;

    .line 110
    .line 111
    iput-wide p2, p0, Lj7/b;->c:J

    .line 112
    .line 113
    iput-object p4, p0, Lj7/b;->d:Lj7/a;

    .line 114
    .line 115
    new-instance p1, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-direct {p1, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 118
    .line 119
    .line 120
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iput-object p1, p0, Lj7/b;->e:Ljava/util/List;

    .line 125
    .line 126
    if-nez p4, :cond_4

    .line 127
    .line 128
    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    :cond_4
    iput-object v2, p0, Lj7/b;->b:Ljava/lang/String;

    .line 133
    .line 134
    return-void

    .line 135
    :cond_5
    const/16 p1, 0x24

    .line 136
    .line 137
    new-array p1, p1, [B

    .line 138
    .line 139
    fill-array-data p1, :array_4

    .line 140
    .line 141
    .line 142
    new-array p2, v1, [B

    .line 143
    .line 144
    fill-array-data p2, :array_5

    .line 145
    .line 146
    .line 147
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw v2

    .line 155
    :cond_6
    const/16 p1, 0x9

    .line 156
    .line 157
    new-array p1, p1, [B

    .line 158
    .line 159
    fill-array-data p1, :array_6

    .line 160
    .line 161
    .line 162
    new-array p2, v1, [B

    .line 163
    .line 164
    fill-array-data p2, :array_7

    .line 165
    .line 166
    .line 167
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw v2

    .line 175
    :array_0
    .array-data 1
        0x1et
        0x13t
        -0x5ct
        0x77t
        -0x26t
        -0x5ct
        0x6t
        -0x4dt
        0x1et
        0x32t
        -0x5bt
        0x4dt
        0x2bt
        -0xbt
        0x6ft
        -0x1ft
        0x75t
        0x5ct
        -0x33t
        -0x2ct
        -0x26t
        -0x5ct
        0x7t
        -0x76t
        0x1et
        0x34t
        -0x5ct
        0x7ct
        -0x25t
        -0x61t
        0x7t
        -0x71t
        0x1et
        0x30t
        0x55t
        0x24t
        -0x41t
        -0xbt
        0x6ct
        -0x1ft
        0x76t
        0x5ct
        -0x38t
        0x24t
        -0x4at
        -0xct
        0x5ct
        -0x1ft
        0x77t
        -0x54t
        -0x5bt
        0x44t
        -0x25t
        -0x6ft
        0x6t
        -0x4ft
        0x1et
        0x39t
        -0x5ct
        0x75t
    .end array-data

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
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
    :array_1
    .array-data 1
        -0x32t
        -0x74t
        0x75t
        -0xct
        0xbt
        0x25t
        -0x29t
        0x31t
    .end array-data

    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    :array_2
    .array-data 1
        0x35t
        -0x7at
        -0x7at
        0x16t
        -0x2ct
        -0x54t
        0x25t
        0x76t
        -0x6dt
        0x58t
        -0x39t
        0x52t
        0x61t
        0x6et
        -0x7ft
        -0x56t
        0x2dt
        -0x72t
        -0x6dt
        0x5ft
        0x6bt
        0x73t
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
    nop

    .line 233
    :array_3
    .array-data 1
        0x43t
        -0x11t
        -0x19t
        0x36t
        0x4t
        0x1dt
        -0xbt
        -0x3dt
    .end array-data

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    :array_4
    .array-data 1
        -0xet
        -0x18t
        0x71t
        0x10t
        -0x36t
        -0x80t
        -0x19t
        -0x3et
        -0xet
        -0xdt
        0x71t
        0x15t
        -0x36t
        -0x7ct
        0x16t
        -0x66t
        -0x62t
        -0x67t
        0x1ct
        0x7bt
        -0x5ct
        -0x18t
        -0x7bt
        -0x66t
        -0x64t
        0x69t
        0x70t
        0x29t
        -0x36t
        -0x7at
        -0x19t
        -0x33t
        -0xet
        -0x4t
        0x71t
        0x11t
    .end array-data

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
    :array_5
    .array-data 1
        0x22t
        0x49t
        -0x5ft
        -0x55t
        0x1at
        0x38t
        0x36t
        0x4at
    .end array-data

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    :array_6
    .array-data 1
        -0x16t
        0x6bt
        -0x68t
        -0x2at
        -0x6et
        0x1ft
        -0x69t
        -0x3t
        -0x4t
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
    nop

    .line 281
    :array_7
    .array-data 1
        -0x68t
        0xet
        -0x17t
        -0x5dt
        -0x9t
        0x6ct
        -0x1dt
        -0x4ct
    .end array-data
.end method

.method public static a(Ljava/lang/String;)Lj7/b;
    .locals 11

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-eqz p0, :cond_5

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0x2000

    .line 10
    .line 11
    if-gt v1, v2, :cond_5

    .line 12
    .line 13
    new-instance v1, Lorg/json/JSONObject;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x6

    .line 19
    new-array v2, p0, [B

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
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x1

    .line 38
    if-ne v2, v3, :cond_4

    .line 39
    .line 40
    const/16 v2, 0x9

    .line 41
    .line 42
    new-array v3, v2, [B

    .line 43
    .line 44
    fill-array-data v3, :array_2

    .line 45
    .line 46
    .line 47
    new-array v4, v0, [B

    .line 48
    .line 49
    fill-array-data v4, :array_3

    .line 50
    .line 51
    .line 52
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    new-array v2, v2, [B

    .line 61
    .line 62
    fill-array-data v2, :array_4

    .line 63
    .line 64
    .line 65
    new-array v3, v0, [B

    .line 66
    .line 67
    fill-array-data v3, :array_5

    .line 68
    .line 69
    .line 70
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 75
    .line 76
    .line 77
    move-result-wide v6

    .line 78
    new-array v2, p0, [B

    .line 79
    .line 80
    fill-array-data v2, :array_6

    .line 81
    .line 82
    .line 83
    new-array v3, v0, [B

    .line 84
    .line 85
    fill-array-data v3, :array_7

    .line 86
    .line 87
    .line 88
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    new-array v3, p0, [B

    .line 97
    .line 98
    fill-array-data v3, :array_8

    .line 99
    .line 100
    .line 101
    new-array v4, v0, [B

    .line 102
    .line 103
    fill-array-data v4, :array_9

    .line 104
    .line 105
    .line 106
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    const/4 v4, 0x7

    .line 115
    if-eqz v3, :cond_0

    .line 116
    .line 117
    move v3, v4

    .line 118
    new-instance v4, Lj7/b;

    .line 119
    .line 120
    sget-object v9, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 121
    .line 122
    new-array p0, v3, [B

    .line 123
    .line 124
    fill-array-data p0, :array_a

    .line 125
    .line 126
    .line 127
    new-array v0, v0, [B

    .line 128
    .line 129
    fill-array-data v0, :array_b

    .line 130
    .line 131
    .line 132
    invoke-static {p0, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v10

    .line 140
    const/4 v8, 0x0

    .line 141
    invoke-direct/range {v4 .. v10}, Lj7/b;-><init>(Ljava/lang/String;JLj7/a;Ljava/util/List;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return-object v4

    .line 145
    :cond_0
    move v3, v4

    .line 146
    const/4 v4, 0x5

    .line 147
    new-array v4, v4, [B

    .line 148
    .line 149
    fill-array-data v4, :array_c

    .line 150
    .line 151
    .line 152
    new-array v8, v0, [B

    .line 153
    .line 154
    fill-array-data v8, :array_d

    .line 155
    .line 156
    .line 157
    invoke-static {v4, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-eqz v2, :cond_3

    .line 166
    .line 167
    new-array v2, v3, [B

    .line 168
    .line 169
    fill-array-data v2, :array_e

    .line 170
    .line 171
    .line 172
    new-array v3, v0, [B

    .line 173
    .line 174
    fill-array-data v3, :array_f

    .line 175
    .line 176
    .line 177
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    new-array p0, p0, [B

    .line 182
    .line 183
    fill-array-data p0, :array_10

    .line 184
    .line 185
    .line 186
    new-array v3, v0, [B

    .line 187
    .line 188
    fill-array-data v3, :array_11

    .line 189
    .line 190
    .line 191
    invoke-static {p0, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result p0

    .line 203
    if-eqz p0, :cond_3

    .line 204
    .line 205
    const/16 p0, 0xf

    .line 206
    .line 207
    new-array p0, p0, [B

    .line 208
    .line 209
    fill-array-data p0, :array_12

    .line 210
    .line 211
    .line 212
    new-array v2, v0, [B

    .line 213
    .line 214
    fill-array-data v2, :array_13

    .line 215
    .line 216
    .line 217
    invoke-static {p0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 222
    .line 223
    .line 224
    move-result p0

    .line 225
    if-eqz p0, :cond_3

    .line 226
    .line 227
    const/4 p0, 0x3

    .line 228
    new-array p0, p0, [B

    .line 229
    .line 230
    fill-array-data p0, :array_14

    .line 231
    .line 232
    .line 233
    new-array v2, v0, [B

    .line 234
    .line 235
    fill-array-data v2, :array_15

    .line 236
    .line 237
    .line 238
    invoke-static {p0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    new-instance v9, Ljava/util/ArrayList;

    .line 247
    .line 248
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .line 250
    .line 251
    if-eqz p0, :cond_2

    .line 252
    .line 253
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    const/16 v3, 0x10

    .line 258
    .line 259
    if-gt v2, v3, :cond_1

    .line 260
    .line 261
    const/4 v2, 0x0

    .line 262
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    if-ge v2, v3, :cond_2

    .line 267
    .line 268
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    invoke-static {v3}, Lj7/a;->a(Lorg/json/JSONObject;)Lj7/a;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    add-int/lit8 v2, v2, 0x1

    .line 280
    .line 281
    goto :goto_0

    .line 282
    :cond_1
    const/16 p0, 0x24

    .line 283
    .line 284
    new-array p0, p0, [B

    .line 285
    .line 286
    fill-array-data p0, :array_16

    .line 287
    .line 288
    .line 289
    new-array v0, v0, [B

    .line 290
    .line 291
    fill-array-data v0, :array_17

    .line 292
    .line 293
    .line 294
    invoke-static {p0, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p0

    .line 298
    invoke-static {p0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    :goto_1
    const/4 p0, 0x0

    .line 302
    return-object p0

    .line 303
    :cond_2
    new-instance v4, Lj7/b;

    .line 304
    .line 305
    const/16 p0, 0xb

    .line 306
    .line 307
    new-array p0, p0, [B

    .line 308
    .line 309
    fill-array-data p0, :array_18

    .line 310
    .line 311
    .line 312
    new-array v0, v0, [B

    .line 313
    .line 314
    fill-array-data v0, :array_19

    .line 315
    .line 316
    .line 317
    invoke-static {p0, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p0

    .line 321
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 322
    .line 323
    .line 324
    move-result-object p0

    .line 325
    invoke-static {p0}, Lj7/a;->a(Lorg/json/JSONObject;)Lj7/a;

    .line 326
    .line 327
    .line 328
    move-result-object v8

    .line 329
    const/4 v10, 0x0

    .line 330
    invoke-direct/range {v4 .. v10}, Lj7/b;-><init>(Ljava/lang/String;JLj7/a;Ljava/util/List;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    return-object v4

    .line 334
    :cond_3
    const/16 p0, 0x42

    .line 335
    .line 336
    new-array p0, p0, [B

    .line 337
    .line 338
    fill-array-data p0, :array_1a

    .line 339
    .line 340
    .line 341
    new-array v0, v0, [B

    .line 342
    .line 343
    fill-array-data v0, :array_1b

    .line 344
    .line 345
    .line 346
    invoke-static {p0, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p0

    .line 350
    invoke-static {p0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    goto :goto_1

    .line 354
    :cond_4
    const/16 p0, 0x41

    .line 355
    .line 356
    new-array p0, p0, [B

    .line 357
    .line 358
    fill-array-data p0, :array_1c

    .line 359
    .line 360
    .line 361
    new-array v0, v0, [B

    .line 362
    .line 363
    fill-array-data v0, :array_1d

    .line 364
    .line 365
    .line 366
    invoke-static {p0, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object p0

    .line 370
    invoke-static {p0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    goto :goto_1

    .line 374
    :cond_5
    const/16 p0, 0x1b

    .line 375
    .line 376
    new-array p0, p0, [B

    .line 377
    .line 378
    fill-array-data p0, :array_1e

    .line 379
    .line 380
    .line 381
    new-array v0, v0, [B

    .line 382
    .line 383
    fill-array-data v0, :array_1f

    .line 384
    .line 385
    .line 386
    invoke-static {p0, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object p0

    .line 390
    invoke-static {p0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    goto :goto_1

    .line 394
    nop

    .line 395
    :array_0
    .array-data 1
        -0x7dt
        -0x45t
        0xdt
        0x74t
        -0x7dt
        -0x22t
    .end array-data

    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    nop

    .line 403
    :array_1
    .array-data 1
        -0x10t
        -0x28t
        0x65t
        0x11t
        -0x12t
        -0x41t
        0x1ct
        -0x55t
    .end array-data

    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    :array_2
    .array-data 1
        -0x1bt
        -0x30t
        0x15t
        0x78t
        0x30t
        -0x20t
        0x5dt
        -0x55t
        -0xdt
    .end array-data

    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    nop

    .line 421
    :array_3
    .array-data 1
        -0x69t
        -0x4bt
        0x64t
        0xdt
        0x55t
        -0x6dt
        0x29t
        -0x1et
    .end array-data

    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    :array_4
    .array-data 1
        0x1bt
        0x59t
        -0x37t
        0x47t
        0x6dt
        0x1at
        0x4ct
        -0x1dt
        0xat
    .end array-data

    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    nop

    .line 439
    :array_5
    .array-data 1
        0x7et
        0x21t
        -0x47t
        0x2et
        0x1ft
        0x7ft
        0x3ft
        -0x5et
    .end array-data

    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    :array_6
    .array-data 1
        0x76t
        0x7dt
        -0x3at
        -0x59t
        0x13t
        -0x1et
    .end array-data

    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    nop

    .line 455
    :array_7
    .array-data 1
        0x17t
        0x1et
        -0x4et
        -0x32t
        0x7ct
        -0x74t
        0x6et
        -0x10t
    .end array-data

    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    :array_8
    .array-data 1
        -0x52t
        -0x31t
        0x31t
        -0xbt
        0xdt
        0x74t
    .end array-data

    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    nop

    .line 471
    :array_9
    .array-data 1
        -0x23t
        -0x56t
        0x50t
        -0x79t
        0x6et
        0x1ct
        -0x10t
        -0x13t
    .end array-data

    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    :array_a
    .array-data 1
        -0x1bt
        -0x8t
        0x70t
        -0x20t
        0x77t
        0x51t
        -0x1ct
    .end array-data

    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    :array_b
    .array-data 1
        -0x7ct
        -0x64t
        0x14t
        -0x6et
        0x12t
        0x22t
        -0x69t
        -0x68t
    .end array-data

    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    :array_c
    .array-data 1
        -0x3dt
        0x5ct
        0x4et
        -0x6t
        -0x8t
    .end array-data

    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    nop

    .line 503
    :array_d
    .array-data 1
        -0x4ft
        0x33t
        0x3bt
        -0x72t
        -0x63t
        -0x6et
        -0xdt
        0x2at
    .end array-data

    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    :array_e
    .array-data 1
        -0x71t
        -0x39t
        0x18t
        0x26t
        -0x15t
        -0x42t
        0x5ft
    .end array-data

    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    :array_f
    .array-data 1
        -0x14t
        -0x4et
        0x6at
        0x54t
        -0x72t
        -0x30t
        0x2bt
        0x6t
    .end array-data

    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    :array_10
    .array-data 1
        0x7t
        0x10t
        -0x3at
        -0x3at
        -0xct
        0x26t
    .end array-data

    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    nop

    .line 535
    :array_11
    .array-data 1
        0x68t
        0x62t
        -0x51t
        -0x5ft
        -0x63t
        0x48t
        0x7ft
        -0x62t
    .end array-data

    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    :array_12
    .array-data 1
        0x55t
        0x73t
        0x40t
        0x7bt
        0x11t
        -0x16t
        -0x16t
        0x42t
        0x4ft
        0x60t
        0x40t
        0x7dt
        0xct
        -0x35t
        -0x1bt
    .end array-data

    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    :array_13
    .array-data 1
        0x26t
        0x7t
        0x21t
        0x9t
        0x65t
        -0x5ct
        -0x75t
        0x34t
    .end array-data

    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    :array_14
    .array-data 1
        0x7bt
        -0x65t
        -0x51t
    .end array-data

    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    :array_15
    .array-data 1
        0xdt
        -0xet
        -0x32t
        -0x6at
        0x26t
        0x19t
        -0x65t
        0x8t
    .end array-data

    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    :array_16
    .array-data 1
        0x24t
        0x9t
        0x1bt
        -0x49t
        0x47t
        -0x5dt
        -0x77t
        -0x16t
        0x24t
        0x12t
        0x1bt
        -0x4et
        0x47t
        -0x59t
        0x78t
        -0x4et
        0x48t
        0x78t
        0x76t
        -0x24t
        0x29t
        -0x35t
        -0x15t
        -0x4et
        0x4at
        -0x78t
        0x1at
        -0x72t
        0x47t
        -0x5bt
        -0x77t
        -0x1bt
        0x24t
        0x1dt
        0x1bt
        -0x4at
    .end array-data

    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    :array_17
    .array-data 1
        -0xct
        -0x58t
        -0x35t
        0xct
        -0x69t
        0x1bt
        0x58t
        0x62t
    .end array-data

    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    :array_18
    .array-data 1
        -0x57t
        -0x75t
        -0x29t
        0x2bt
        -0xft
        -0x1bt
        0x35t
        0xat
        -0x5ct
        -0x7ft
        -0x36t
    .end array-data

    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    :array_19
    .array-data 1
        -0x33t
        -0x12t
        -0x5ct
        0x5ft
        -0x68t
        -0x75t
        0x54t
        0x7et
    .end array-data

    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    :array_1a
    .array-data 1
        0x2bt
        0x2dt
        -0x77t
        0x7ct
        -0x38t
        -0x5et
        0x28t
        0x14t
        0x2bt
        0x4t
        -0x77t
        0x7dt
        -0x38t
        -0x58t
        0x29t
        0x2at
        0x2bt
        0x6t
        -0x77t
        0x71t
        -0x38t
        -0x51t
        0x28t
        0x1at
        0x2bt
        0x5t
        -0x77t
        0x75t
        -0x38t
        -0x53t
        0x29t
        0x25t
        -0x25t
        0x60t
        -0x1dt
        0x19t
        -0x5at
        -0x33t
        0x44t
        0x7at
        0x4bt
        0x60t
        -0x1ct
        0x19t
        -0x54t
        -0x33t
        0x48t
        -0x76t
        0x2bt
        0xdt
        -0x77t
        0x79t
        -0x38t
        -0x51t
        0x28t
        0x12t
        0x2bt
        0x3t
        -0x77t
        0x79t
        -0x37t
        -0x65t
        0x28t
        0x12t
        0x2bt
        0x8t
    .end array-data

    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    nop

    .line 663
    :array_1b
    .array-data 1
        -0x5t
        -0x50t
        0x59t
        -0x37t
        0x18t
        0x1dt
        -0x8t
        -0x56t
    .end array-data

    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    :array_1c
    .array-data 1
        0x6at
        -0x36t
        0x20t
        -0x4at
        0x2et
        0x63t
        0x6bt
        -0x7bt
        0x6at
        -0x20t
        0x21t
        -0x74t
        -0x21t
        0x33t
        0x7t
        -0x2ct
        0xat
        -0x78t
        0x42t
        -0x2dt
        0x47t
        0x33t
        0x9t
        -0x2ct
        0xat
        -0x77t
        0x76t
        -0x2dt
        0x47t
        0x33t
        0x2t
        0x24t
        0x6at
        -0x1bt
        0x20t
        -0x4at
        -0x21t
        0x33t
        0x5t
        -0x2ct
        0x4t
        -0x78t
        0x44t
        -0x2dt
        0x4bt
        0x33t
        0xft
        -0x2bt
        0x3at
        -0x78t
        0x46t
        -0x2dt
        0x47t
        0x33t
        0x8t
        -0x2ct
        0xat
        -0x78t
        0x45t
        -0x2et
        0x7dt
        0x32t
        0x3bt
        -0x2bt
        0x35t
    .end array-data

    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    nop

    .line 709
    :array_1d
    .array-data 1
        -0x46t
        0x58t
        -0x10t
        0x3t
        -0x1t
        -0x1dt
        -0x46t
        0x4t
    .end array-data

    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    :array_1e
    .array-data 1
        -0x12t
        0x1at
        -0x43t
        -0x25t
        0xft
        -0x2at
        0x69t
        0x3dt
        -0x12t
        0xft
        -0x44t
        -0x15t
        -0x1t
        -0x4ft
        0xet
        0x51t
        -0x72t
        0x6at
        -0x2et
        -0x46t
        0x5ft
        -0x4ft
        0x7t
        0x50t
        -0x41t
        0x6at
        -0x23t
    .end array-data

    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    :array_1f
    .array-data 1
        0x3et
        -0x46t
        0x6dt
        0x6bt
        -0x21t
        0x61t
        -0x47t
        -0x7ft
    .end array-data
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x6

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
    const/4 v4, 0x1

    .line 24
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/16 v2, 0x9

    .line 29
    .line 30
    new-array v2, v2, [B

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
    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    new-array v0, v1, [B

    .line 49
    .line 50
    fill-array-data v0, :array_4

    .line 51
    .line 52
    .line 53
    new-array v1, v3, [B

    .line 54
    .line 55
    fill-array-data v1, :array_5

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :array_0
    .array-data 1
        -0x4dt
        -0x46t
        0x9t
        0x23t
        0x7at
        0x3ft
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    nop

    .line 79
    :array_1
    .array-data 1
        -0x40t
        -0x27t
        0x61t
        0x46t
        0x17t
        0x5et
        -0x34t
        0x5et
    .end array-data

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    :array_2
    .array-data 1
        0x71t
        0x38t
        0x18t
        -0x53t
        0x35t
        -0x36t
        -0x3t
        0x46t
        0x67t
    .end array-data

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    nop

    .line 97
    :array_3
    .array-data 1
        0x3t
        0x5dt
        0x69t
        -0x28t
        0x50t
        -0x47t
        -0x77t
        0xft
    .end array-data

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    :array_4
    .array-data 1
        -0x80t
        0x25t
        -0x62t
        -0x2dt
        -0x7t
        0x7at
    .end array-data

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    nop

    .line 113
    :array_5
    .array-data 1
        -0xdt
        0x51t
        -0x1t
        -0x59t
        -0x74t
        0x9t
        0x2bt
        -0x2et
    .end array-data
.end method
