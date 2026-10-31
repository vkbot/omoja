.class public final Lj4/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:Z

.field public d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 23
    iput p1, p0, Lj4/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lj4/b;->a:I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lj4/b;->c:Z

    .line 21
    iput v0, p0, Lj4/b;->b:I

    .line 22
    iput-object p1, p0, Lj4/b;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ln7/c;IZ)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lj4/b;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v0, "callOptions"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lj4/b;->d:Ljava/lang/Object;

    .line 13
    .line 14
    iput p2, p0, Lj4/b;->b:I

    .line 15
    .line 16
    iput-boolean p3, p0, Lj4/b;->c:Z

    .line 17
    .line 18
    return-void
.end method

.method public static b(II)I
    .locals 1

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    shr-int/lit8 v0, p0, 0x1

    .line 4
    .line 5
    add-int/2addr p0, v0

    .line 6
    add-int/lit8 p0, p0, 0x1

    .line 7
    .line 8
    if-ge p0, p1, :cond_0

    .line 9
    .line 10
    add-int/lit8 p1, p1, -0x1

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    shl-int/lit8 p0, p0, 0x1

    .line 17
    .line 18
    :cond_0
    if-gez p0, :cond_1

    .line 19
    .line 20
    const p0, 0x7fffffff

    .line 21
    .line 22
    .line 23
    :cond_1
    return p0

    .line 24
    :cond_2
    const-string p0, "cannot store more than MAX_VALUE elements"

    .line 25
    .line 26
    invoke-static {p0}, Lj1/i;->e(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public static c([B)Lj4/b;
    .locals 15

    .line 1
    new-instance v0, Lj4/b;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lj4/b;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Lj6/a;

    .line 8
    .line 9
    invoke-direct {v2, p0}, Lj6/a;-><init>([B)V

    .line 10
    .line 11
    .line 12
    :goto_0
    iget p0, v2, Lj6/a;->b:I

    .line 13
    .line 14
    iget-object v3, v2, Lj6/a;->a:[B

    .line 15
    .line 16
    array-length v3, v3

    .line 17
    if-ge p0, v3, :cond_e

    .line 18
    .line 19
    invoke-virtual {v2}, Lj6/a;->e()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    const-wide/16 v5, 0x0

    .line 24
    .line 25
    cmp-long p0, v3, v5

    .line 26
    .line 27
    if-lez p0, :cond_d

    .line 28
    .line 29
    const-wide/32 v7, 0x7fffffff

    .line 30
    .line 31
    .line 32
    cmp-long p0, v3, v7

    .line 33
    .line 34
    if-gtz p0, :cond_d

    .line 35
    .line 36
    long-to-int p0, v3

    .line 37
    ushr-int/lit8 v3, p0, 0x3

    .line 38
    .line 39
    const/4 v4, 0x7

    .line 40
    and-int/2addr p0, v4

    .line 41
    const/4 v9, 0x1

    .line 42
    if-ne v3, v9, :cond_0

    .line 43
    .line 44
    if-ne p0, v1, :cond_0

    .line 45
    .line 46
    new-instance p0, Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v2}, Lj6/a;->b()[B

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 53
    .line 54
    invoke-direct {p0, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 55
    .line 56
    .line 57
    iput-boolean v9, v0, Lj4/b;->c:Z

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    if-ne v3, v1, :cond_1

    .line 61
    .line 62
    if-nez p0, :cond_1

    .line 63
    .line 64
    invoke-virtual {v2}, Lj6/a;->e()J

    .line 65
    .line 66
    .line 67
    move-result-wide v3

    .line 68
    long-to-int p0, v3

    .line 69
    iput p0, v0, Lj4/b;->b:I

    .line 70
    .line 71
    iput-boolean v9, v0, Lj4/b;->c:Z

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    const/4 v10, 0x3

    .line 75
    if-ne v3, v10, :cond_c

    .line 76
    .line 77
    if-ne p0, v1, :cond_c

    .line 78
    .line 79
    invoke-virtual {v2}, Lj6/a;->b()[B

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    new-instance v3, Lq0/b;

    .line 84
    .line 85
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 86
    .line 87
    .line 88
    const/16 v11, 0xe

    .line 89
    .line 90
    new-array v11, v11, [B

    .line 91
    .line 92
    fill-array-data v11, :array_0

    .line 93
    .line 94
    .line 95
    const/16 v12, 0x8

    .line 96
    .line 97
    new-array v12, v12, [B

    .line 98
    .line 99
    fill-array-data v12, :array_1

    .line 100
    .line 101
    .line 102
    invoke-static {v11, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v11

    .line 106
    iput-object v11, v3, Lq0/b;->h:Ljava/lang/String;

    .line 107
    .line 108
    new-instance v11, Lj6/a;

    .line 109
    .line 110
    invoke-direct {v11, p0}, Lj6/a;-><init>([B)V

    .line 111
    .line 112
    .line 113
    :goto_1
    iget p0, v11, Lj6/a;->b:I

    .line 114
    .line 115
    iget-object v12, v11, Lj6/a;->a:[B

    .line 116
    .line 117
    array-length v12, v12

    .line 118
    if-ge p0, v12, :cond_b

    .line 119
    .line 120
    invoke-virtual {v11}, Lj6/a;->e()J

    .line 121
    .line 122
    .line 123
    move-result-wide v12

    .line 124
    cmp-long p0, v12, v5

    .line 125
    .line 126
    if-lez p0, :cond_a

    .line 127
    .line 128
    cmp-long p0, v12, v7

    .line 129
    .line 130
    if-gtz p0, :cond_a

    .line 131
    .line 132
    long-to-int p0, v12

    .line 133
    ushr-int/lit8 v12, p0, 0x3

    .line 134
    .line 135
    and-int/2addr p0, v4

    .line 136
    if-ne v12, v9, :cond_2

    .line 137
    .line 138
    if-nez p0, :cond_2

    .line 139
    .line 140
    invoke-virtual {v11}, Lj6/a;->e()J

    .line 141
    .line 142
    .line 143
    move-result-wide v12

    .line 144
    iput-wide v12, v3, Lq0/b;->a:J

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_2
    if-ne v12, v1, :cond_3

    .line 148
    .line 149
    if-ne p0, v9, :cond_3

    .line 150
    .line 151
    invoke-virtual {v11}, Lj6/a;->d()J

    .line 152
    .line 153
    .line 154
    move-result-wide v12

    .line 155
    invoke-static {v12, v13}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 156
    .line 157
    .line 158
    move-result-wide v12

    .line 159
    iput-wide v12, v3, Lq0/b;->b:D

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_3
    if-ne v12, v10, :cond_4

    .line 163
    .line 164
    if-ne p0, v9, :cond_4

    .line 165
    .line 166
    invoke-virtual {v11}, Lj6/a;->d()J

    .line 167
    .line 168
    .line 169
    move-result-wide v12

    .line 170
    invoke-static {v12, v13}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 171
    .line 172
    .line 173
    move-result-wide v12

    .line 174
    iput-wide v12, v3, Lq0/b;->c:D

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_4
    const/4 v13, 0x4

    .line 178
    if-ne v12, v13, :cond_5

    .line 179
    .line 180
    if-ne p0, v9, :cond_5

    .line 181
    .line 182
    invoke-virtual {v11}, Lj6/a;->d()J

    .line 183
    .line 184
    .line 185
    move-result-wide v12

    .line 186
    invoke-static {v12, v13}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 187
    .line 188
    .line 189
    move-result-wide v12

    .line 190
    iput-wide v12, v3, Lq0/b;->d:D

    .line 191
    .line 192
    iput-boolean v9, v3, Lq0/b;->i:Z

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_5
    const/4 v13, 0x5

    .line 196
    if-ne v12, v13, :cond_6

    .line 197
    .line 198
    if-ne p0, v13, :cond_6

    .line 199
    .line 200
    invoke-virtual {v11}, Lj6/a;->c()I

    .line 201
    .line 202
    .line 203
    move-result p0

    .line 204
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 205
    .line 206
    .line 207
    move-result p0

    .line 208
    iput p0, v3, Lq0/b;->e:F

    .line 209
    .line 210
    iput-boolean v9, v3, Lq0/b;->j:Z

    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_6
    const/4 v14, 0x6

    .line 214
    if-ne v12, v14, :cond_7

    .line 215
    .line 216
    if-ne p0, v13, :cond_7

    .line 217
    .line 218
    invoke-virtual {v11}, Lj6/a;->c()I

    .line 219
    .line 220
    .line 221
    move-result p0

    .line 222
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 223
    .line 224
    .line 225
    move-result p0

    .line 226
    iput p0, v3, Lq0/b;->f:F

    .line 227
    .line 228
    iput-boolean v9, v3, Lq0/b;->k:Z

    .line 229
    .line 230
    goto :goto_1

    .line 231
    :cond_7
    if-ne v12, v4, :cond_8

    .line 232
    .line 233
    if-ne p0, v13, :cond_8

    .line 234
    .line 235
    invoke-virtual {v11}, Lj6/a;->c()I

    .line 236
    .line 237
    .line 238
    move-result p0

    .line 239
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 240
    .line 241
    .line 242
    move-result p0

    .line 243
    iput p0, v3, Lq0/b;->g:F

    .line 244
    .line 245
    iput-boolean v9, v3, Lq0/b;->l:Z

    .line 246
    .line 247
    goto/16 :goto_1

    .line 248
    .line 249
    :cond_8
    const/16 v13, 0x9

    .line 250
    .line 251
    if-ne v12, v13, :cond_9

    .line 252
    .line 253
    if-ne p0, v1, :cond_9

    .line 254
    .line 255
    new-instance p0, Ljava/lang/String;

    .line 256
    .line 257
    invoke-virtual {v11}, Lj6/a;->b()[B

    .line 258
    .line 259
    .line 260
    move-result-object v12

    .line 261
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 262
    .line 263
    invoke-direct {p0, v12, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 264
    .line 265
    .line 266
    iput-object p0, v3, Lq0/b;->h:Ljava/lang/String;

    .line 267
    .line 268
    goto/16 :goto_1

    .line 269
    .line 270
    :cond_9
    invoke-virtual {v11, p0}, Lj6/a;->g(I)V

    .line 271
    .line 272
    .line 273
    goto/16 :goto_1

    .line 274
    .line 275
    :cond_a
    invoke-static {}, Lj6/a;->a()Ljava/io/IOException;

    .line 276
    .line 277
    .line 278
    move-result-object p0

    .line 279
    throw p0

    .line 280
    :cond_b
    iput-object v3, v0, Lj4/b;->d:Ljava/lang/Object;

    .line 281
    .line 282
    iput-boolean v9, v0, Lj4/b;->c:Z

    .line 283
    .line 284
    goto/16 :goto_0

    .line 285
    .line 286
    :cond_c
    invoke-virtual {v2, p0}, Lj6/a;->g(I)V

    .line 287
    .line 288
    .line 289
    goto/16 :goto_0

    .line 290
    .line 291
    :cond_d
    invoke-static {}, Lj6/a;->a()Ljava/io/IOException;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    throw p0

    .line 296
    :cond_e
    return-object v0

    .line 297
    :array_0
    .array-data 1
        -0x63t
        0x60t
        -0x79t
        0x3ct
        0x16t
        0x29t
        -0x11t
        0x49t
        -0x61t
        0x62t
        -0x55t
        0xat
        0xat
        0x3ft
    .end array-data

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
    nop

    .line 309
    :array_1
    .array-data 1
        -0x6t
        0x10t
        -0xct
        0x63t
        0x65t
        0x4ct
        -0x63t
        0x3ft
    .end array-data
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lj4/b;->b:I

    .line 5
    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iget-object v1, p0, Lj4/b;->d:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, [Ljava/lang/Object;

    .line 11
    .line 12
    array-length v2, v1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-ge v2, v0, :cond_0

    .line 15
    .line 16
    array-length v2, v1

    .line 17
    invoke-static {v2, v0}, Lj4/b;->b(II)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lj4/b;->d:Ljava/lang/Object;

    .line 26
    .line 27
    iput-boolean v3, p0, Lj4/b;->c:Z

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-boolean v0, p0, Lj4/b;->c:Z

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, [Ljava/lang/Object;

    .line 39
    .line 40
    iput-object v0, p0, Lj4/b;->d:Ljava/lang/Object;

    .line 41
    .line 42
    iput-boolean v3, p0, Lj4/b;->c:Z

    .line 43
    .line 44
    :cond_1
    :goto_0
    iget-object v0, p0, Lj4/b;->d:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, [Ljava/lang/Object;

    .line 47
    .line 48
    iget v1, p0, Lj4/b;->b:I

    .line 49
    .line 50
    add-int/lit8 v2, v1, 0x1

    .line 51
    .line 52
    iput v2, p0, Lj4/b;->b:I

    .line 53
    .line 54
    aput-object p1, v0, v1

    .line 55
    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lj4/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    invoke-static {p0}, Lcom/bumptech/glide/c;->t(Ljava/lang/Object;)Lcom/bumptech/glide/manager/s;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lj4/b;->d:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Ln7/c;

    .line 18
    .line 19
    const-string v2, "callOptions"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/manager/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lj4/b;->b:I

    .line 25
    .line 26
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "previousAttempts"

    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Lcom/bumptech/glide/manager/s;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v1, "isTransparentRetry"

    .line 36
    .line 37
    iget-boolean v2, p0, Lj4/b;->c:Z

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/manager/s;->d(Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/s;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
