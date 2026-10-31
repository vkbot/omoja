.class public final Lq0/n;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/Double;

.field public c:Ljava/lang/Double;

.field public d:Ljava/lang/Double;

.field public e:Ljava/lang/Float;

.field public f:Ljava/lang/Float;

.field public g:Ljava/lang/Float;

.field public h:I

.field public i:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq0/n;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static b([Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 1
    if-ltz p1, :cond_a

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    if-ge p1, v0, :cond_a

    .line 5
    .line 6
    aget-object p0, p0, p1

    .line 7
    .line 8
    if-eqz p0, :cond_a

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_a
    const-string p0, ""

    .line 12
    .line 13
    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;
    .registers 8

    .line 1
    if-eqz p0, :cond_55

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_55

    .line 8
    .line 9
    if-eqz p1, :cond_55

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_11

    .line 16
    .line 17
    goto :goto_55

    .line 18
    :cond_11
    :try_start_11
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 23
    .line 24
    div-double v4, v0, v2

    .line 25
    .line 26
    double-to-int p0, v4

    .line 27
    int-to-double v4, p0

    .line 28
    mul-double/2addr v2, v4

    .line 29
    sub-double/2addr v0, v2

    .line 30
    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    .line 31
    .line 32
    div-double/2addr v0, v2

    .line 33
    add-double/2addr v0, v4

    .line 34
    const/4 p0, 0x1

    .line 35
    new-array v2, p0, [B

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    const/16 v4, 0x44

    .line 39
    .line 40
    aput-byte v4, v2, v3

    .line 41
    .line 42
    const/16 v4, 0x8

    .line 43
    .line 44
    new-array v5, v4, [B

    .line 45
    .line 46
    fill-array-data v5, :array_58

    .line 47
    .line 48
    .line 49
    invoke-static {v2, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_4f

    .line 58
    .line 59
    new-array p0, p0, [B

    .line 60
    .line 61
    const/16 v2, 0x37

    .line 62
    .line 63
    aput-byte v2, p0, v3

    .line 64
    .line 65
    new-array v2, v4, [B

    .line 66
    .line 67
    fill-array-data v2, :array_60

    .line 68
    .line 69
    .line 70
    invoke-static {p0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    if-eqz p0, :cond_50

    .line 79
    .line 80
    :cond_4f
    neg-double v0, v0

    .line 81
    :cond_50
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 82
    .line 83
    .line 84
    move-result-object p0
    :try_end_54
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_54} :catch_55

    .line 85
    return-object p0

    .line 86
    :catch_55
    :cond_55
    :goto_55
    const/4 p0, 0x0

    .line 87
    return-object p0

    .line 88
    nop

    .line 89
    :array_58
    .array-data 1
        0x17t
        -0x7bt
        -0x44t
        0x74t
        0x23t
        -0x7bt
        0x1dt
        -0x37t
    .end array-data

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    :array_60
    .array-data 1
        0x60t
        0x7dt
        -0x54t
        -0x5ft
        0x3bt
        -0x4t
        -0x7et
        -0x6et
    .end array-data
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/Float;
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_13

    .line 3
    .line 4
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    goto :goto_13

    .line 11
    :cond_a
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 16
    .line 17
    .line 18
    move-result-object p0
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_12} :catch_13

    .line 19
    return-object p0

    .line 20
    :catch_13
    :cond_13
    :goto_13
    return-object v0
.end method


# virtual methods
.method public final a()Lq0/q;
    .registers 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lq0/n;->b:Ljava/lang/Double;

    .line 4
    .line 5
    if-eqz v1, :cond_3d

    .line 6
    .line 7
    iget-object v2, v0, Lq0/n;->c:Ljava/lang/Double;

    .line 8
    .line 9
    if-nez v2, :cond_b

    .line 10
    .line 11
    goto :goto_3d

    .line 12
    :cond_b
    :try_start_b
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    iget-object v1, v0, Lq0/n;->c:Ljava/lang/Double;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 19
    .line 20
    .line 21
    move-result-wide v5

    .line 22
    iget-wide v1, v0, Lq0/n;->i:J

    .line 23
    .line 24
    const-wide/16 v7, 0x0

    .line 25
    .line 26
    cmp-long v7, v1, v7

    .line 27
    .line 28
    if-lez v7, :cond_1f

    .line 29
    .line 30
    :goto_1d
    move-wide v7, v1

    .line 31
    goto :goto_24

    .line 32
    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    goto :goto_1d

    .line 37
    :goto_24
    iget-object v9, v0, Lq0/n;->d:Ljava/lang/Double;

    .line 38
    .line 39
    iget-object v10, v0, Lq0/n;->e:Ljava/lang/Float;

    .line 40
    .line 41
    iget-object v11, v0, Lq0/n;->f:Ljava/lang/Float;

    .line 42
    .line 43
    iget-object v12, v0, Lq0/n;->g:Ljava/lang/Float;

    .line 44
    .line 45
    iget v13, v0, Lq0/n;->h:I

    .line 46
    .line 47
    iget-object v1, v0, Lq0/n;->a:Ljava/lang/String;

    .line 48
    .line 49
    const/16 v16, 0x0

    .line 50
    .line 51
    const/16 v17, 0x0

    .line 52
    .line 53
    move v14, v13

    .line 54
    move v15, v13

    .line 55
    move-object/from16 v18, v1

    .line 56
    .line 57
    invoke-static/range {v3 .. v18}, Lq0/q;->a(DDJLjava/lang/Double;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;IIILjava/lang/Float;Ljava/lang/Float;Ljava/lang/String;)Lq0/q;

    .line 58
    .line 59
    .line 60
    move-result-object v1
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_3c} :catch_3d

    .line 61
    return-object v1

    .line 62
    :catch_3d
    :cond_3d
    :goto_3d
    const/4 v1, 0x0

    .line 63
    return-object v1
.end method

.method public final c(Ljava/lang/String;)Lq0/q;
    .registers 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    new-array v3, v2, [B

    .line 9
    .line 10
    const/16 v4, 0x34

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    aput-byte v4, v3, v5

    .line 14
    .line 15
    const/16 v4, 0x8

    .line 16
    .line 17
    new-array v6, v4, [B

    .line 18
    .line 19
    fill-array-data v6, :array_278

    .line 20
    .line 21
    .line 22
    invoke-static {v3, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_30

    .line 31
    .line 32
    const/16 v3, 0x2a

    .line 33
    .line 34
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    if-gez v7, :cond_28

    .line 39
    .line 40
    goto :goto_50

    .line 41
    :cond_28
    add-int/lit8 v8, v7, 0x2

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    if-lt v8, v9, :cond_34

    .line 48
    .line 49
    :catch_30
    :cond_30
    :goto_30
    const/16 p1, 0x0

    .line 50
    .line 51
    goto/16 :goto_277

    .line 52
    .line 53
    :cond_34
    add-int/lit8 v8, v7, 0x1

    .line 54
    .line 55
    add-int/lit8 v9, v7, 0x3

    .line 56
    .line 57
    :try_start_38
    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    const/16 v9, 0x10

    .line 62
    .line 63
    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 64
    .line 65
    .line 66
    move-result v8
    :try_end_42
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_42} :catch_30

    .line 67
    move v9, v2

    .line 68
    move v10, v5

    .line 69
    :goto_44
    if-ge v9, v7, :cond_4e

    .line 70
    .line 71
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 72
    .line 73
    .line 74
    move-result v11

    .line 75
    xor-int/2addr v10, v11

    .line 76
    add-int/lit8 v9, v9, 0x1

    .line 77
    .line 78
    goto :goto_44

    .line 79
    :cond_4e
    if-ne v10, v8, :cond_30

    .line 80
    .line 81
    :goto_50
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-ltz v3, :cond_5b

    .line 86
    .line 87
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    goto :goto_5f

    .line 92
    :cond_5b
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    :goto_5f
    new-array v3, v2, [B

    .line 97
    .line 98
    const/16 v7, 0x70

    .line 99
    .line 100
    aput-byte v7, v3, v5

    .line 101
    .line 102
    new-array v7, v4, [B

    .line 103
    .line 104
    fill-array-data v7, :array_280

    .line 105
    .line 106
    .line 107
    invoke-static {v3, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    const/4 v7, -0x1

    .line 112
    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    array-length v3, v1

    .line 117
    if-eqz v3, :cond_30

    .line 118
    .line 119
    aget-object v3, v1, v5

    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    const/4 v7, 0x3

    .line 126
    if-ge v3, v7, :cond_80

    .line 127
    .line 128
    goto :goto_30

    .line 129
    :cond_80
    aget-object v3, v1, v5

    .line 130
    .line 131
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 132
    .line 133
    .line 134
    move-result v8

    .line 135
    sub-int/2addr v8, v7

    .line 136
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 141
    .line 142
    invoke-virtual {v3, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    new-array v9, v7, [B

    .line 147
    .line 148
    fill-array-data v9, :array_288

    .line 149
    .line 150
    .line 151
    new-array v10, v4, [B

    .line 152
    .line 153
    fill-array-data v10, :array_28e

    .line 154
    .line 155
    .line 156
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v9

    .line 160
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    const/16 v10, 0x9

    .line 165
    .line 166
    const/4 v11, 0x7

    .line 167
    const/4 v12, 0x5

    .line 168
    const/4 v13, 0x4

    .line 169
    const/4 v14, 0x6

    .line 170
    const/4 v15, 0x2

    .line 171
    if-eqz v9, :cond_139

    .line 172
    .line 173
    invoke-static {v1, v14}, Lq0/n;->b([Ljava/lang/String;I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 178
    .line 179
    .line 180
    move-result v8

    .line 181
    if-nez v8, :cond_30

    .line 182
    .line 183
    new-array v2, v2, [B

    .line 184
    .line 185
    const/4 v8, -0x3

    .line 186
    aput-byte v8, v2, v5

    .line 187
    .line 188
    new-array v5, v4, [B

    .line 189
    .line 190
    fill-array-data v5, :array_296

    .line 191
    .line 192
    .line 193
    invoke-static {v2, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-eqz v2, :cond_cc

    .line 202
    .line 203
    goto/16 :goto_30

    .line 204
    .line 205
    :cond_cc
    invoke-static {v1, v15}, Lq0/n;->b([Ljava/lang/String;I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-static {v1, v7}, Lq0/n;->b([Ljava/lang/String;I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-static {v1, v13}, Lq0/n;->b([Ljava/lang/String;I)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    invoke-static {v1, v12}, Lq0/n;->b([Ljava/lang/String;I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    invoke-static {v2, v3}, Lq0/n;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-static {v5, v7}, Lq0/n;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    if-eqz v2, :cond_e8

    .line 230
    .line 231
    iput-object v2, v0, Lq0/n;->b:Ljava/lang/Double;

    .line 232
    .line 233
    :cond_e8
    if-eqz v3, :cond_ec

    .line 234
    .line 235
    iput-object v3, v0, Lq0/n;->c:Ljava/lang/Double;

    .line 236
    .line 237
    :cond_ec
    invoke-static {v1, v11}, Lq0/n;->b([Ljava/lang/String;I)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    iget v3, v0, Lq0/n;->h:I

    .line 242
    .line 243
    :try_start_f2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    if-eqz v5, :cond_f9

    .line 248
    .line 249
    goto :goto_fd

    .line 250
    :cond_f9
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    move-result v3
    :try_end_fd
    .catch Ljava/lang/NumberFormatException; {:try_start_f2 .. :try_end_fd} :catch_fd

    .line 254
    :catch_fd
    :goto_fd
    iput v3, v0, Lq0/n;->h:I

    .line 255
    .line 256
    invoke-static {v1, v4}, Lq0/n;->b([Ljava/lang/String;I)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    invoke-static {v2}, Lq0/n;->e(Ljava/lang/String;)Ljava/lang/Float;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    if-eqz v2, :cond_116

    .line 265
    .line 266
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    const/high16 v3, 0x41200000    # 10.0f

    .line 271
    .line 272
    mul-float/2addr v2, v3

    .line 273
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    iput-object v2, v0, Lq0/n;->e:Ljava/lang/Float;

    .line 278
    .line 279
    :cond_116
    invoke-static {v1, v10}, Lq0/n;->b([Ljava/lang/String;I)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    :try_start_11a
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    if-eqz v2, :cond_122

    .line 288
    .line 289
    :catch_120
    const/4 v6, 0x0

    .line 290
    goto :goto_12a

    .line 291
    :cond_122
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 292
    .line 293
    .line 294
    move-result-wide v1

    .line 295
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 296
    .line 297
    .line 298
    move-result-object v6
    :try_end_12a
    .catch Ljava/lang/NumberFormatException; {:try_start_11a .. :try_end_12a} :catch_120

    .line 299
    :goto_12a
    if-eqz v6, :cond_12e

    .line 300
    .line 301
    iput-object v6, v0, Lq0/n;->d:Ljava/lang/Double;

    .line 302
    .line 303
    :cond_12e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 304
    .line 305
    .line 306
    move-result-wide v1

    .line 307
    iput-wide v1, v0, Lq0/n;->i:J

    .line 308
    .line 309
    invoke-virtual {v0}, Lq0/n;->a()Lq0/q;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    return-object v1

    .line 314
    :cond_139
    new-array v9, v7, [B

    .line 315
    .line 316
    fill-array-data v9, :array_29e

    .line 317
    .line 318
    .line 319
    const/16 p1, 0x0

    .line 320
    .line 321
    new-array v6, v4, [B

    .line 322
    .line 323
    fill-array-data v6, :array_2a4

    .line 324
    .line 325
    .line 326
    invoke-static {v9, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v6

    .line 330
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v3

    .line 334
    if-eqz v3, :cond_277

    .line 335
    .line 336
    new-array v3, v2, [B

    .line 337
    .line 338
    const/16 v6, 0x24

    .line 339
    .line 340
    aput-byte v6, v3, v5

    .line 341
    .line 342
    new-array v6, v4, [B

    .line 343
    .line 344
    fill-array-data v6, :array_2ac

    .line 345
    .line 346
    .line 347
    invoke-static {v3, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v3

    .line 351
    invoke-static {v1, v15}, Lq0/n;->b([Ljava/lang/String;I)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v6

    .line 355
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 356
    .line 357
    .line 358
    move-result v3

    .line 359
    if-nez v3, :cond_16a

    .line 360
    .line 361
    goto/16 :goto_277

    .line 362
    .line 363
    :cond_16a
    invoke-static {v1, v7}, Lq0/n;->b([Ljava/lang/String;I)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    invoke-static {v1, v13}, Lq0/n;->b([Ljava/lang/String;I)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v6

    .line 371
    invoke-static {v1, v12}, Lq0/n;->b([Ljava/lang/String;I)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v9

    .line 375
    invoke-static {v1, v14}, Lq0/n;->b([Ljava/lang/String;I)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v12

    .line 379
    invoke-static {v3, v6}, Lq0/n;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    invoke-static {v9, v12}, Lq0/n;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;

    .line 384
    .line 385
    .line 386
    move-result-object v6

    .line 387
    if-eqz v3, :cond_186

    .line 388
    .line 389
    iput-object v3, v0, Lq0/n;->b:Ljava/lang/Double;

    .line 390
    .line 391
    :cond_186
    if-eqz v6, :cond_18a

    .line 392
    .line 393
    iput-object v6, v0, Lq0/n;->c:Ljava/lang/Double;

    .line 394
    .line 395
    :cond_18a
    invoke-static {v1, v11}, Lq0/n;->b([Ljava/lang/String;I)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    invoke-static {v3}, Lq0/n;->e(Ljava/lang/String;)Ljava/lang/Float;

    .line 400
    .line 401
    .line 402
    move-result-object v3

    .line 403
    if-eqz v3, :cond_1a2

    .line 404
    .line 405
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 406
    .line 407
    .line 408
    move-result v3

    .line 409
    const v6, 0x3f03b29a

    .line 410
    .line 411
    .line 412
    mul-float/2addr v3, v6

    .line 413
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    iput-object v3, v0, Lq0/n;->g:Ljava/lang/Float;

    .line 418
    .line 419
    :cond_1a2
    invoke-static {v1, v4}, Lq0/n;->b([Ljava/lang/String;I)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    invoke-static {v3}, Lq0/n;->e(Ljava/lang/String;)Ljava/lang/Float;

    .line 424
    .line 425
    .line 426
    move-result-object v3

    .line 427
    if-eqz v3, :cond_1ae

    .line 428
    .line 429
    iput-object v3, v0, Lq0/n;->f:Ljava/lang/Float;

    .line 430
    .line 431
    :cond_1ae
    invoke-static {v1, v2}, Lq0/n;->b([Ljava/lang/String;I)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v3

    .line 435
    invoke-static {v1, v10}, Lq0/n;->b([Ljava/lang/String;I)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 440
    .line 441
    .line 442
    move-result v6

    .line 443
    if-lt v6, v14, :cond_26c

    .line 444
    .line 445
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 446
    .line 447
    .line 448
    move-result v6

    .line 449
    if-eq v6, v14, :cond_1c4

    .line 450
    .line 451
    goto/16 :goto_26c

    .line 452
    .line 453
    :cond_1c4
    :try_start_1c4
    invoke-virtual {v3, v5, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v6

    .line 457
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 458
    .line 459
    .line 460
    move-result v6

    .line 461
    invoke-virtual {v3, v15, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v9

    .line 465
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 466
    .line 467
    .line 468
    move-result v9

    .line 469
    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v10

    .line 473
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 474
    .line 475
    .line 476
    move-result v10

    .line 477
    const/16 v11, 0x2e

    .line 478
    .line 479
    invoke-virtual {v3, v11}, Ljava/lang/String;->indexOf(I)I

    .line 480
    .line 481
    .line 482
    move-result v11

    .line 483
    if-ltz v11, :cond_20a

    .line 484
    .line 485
    add-int/2addr v11, v2

    .line 486
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 487
    .line 488
    .line 489
    move-result v12

    .line 490
    if-ge v11, v12, :cond_20a

    .line 491
    .line 492
    invoke-virtual {v3, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v3

    .line 496
    new-array v11, v7, [B

    .line 497
    .line 498
    fill-array-data v11, :array_2b4

    .line 499
    .line 500
    .line 501
    new-array v12, v4, [B

    .line 502
    .line 503
    fill-array-data v12, :array_2ba

    .line 504
    .line 505
    .line 506
    invoke-static {v11, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v11

    .line 510
    invoke-virtual {v3, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v3

    .line 514
    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v3

    .line 518
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 519
    .line 520
    .line 521
    move-result v3

    .line 522
    goto :goto_20b

    .line 523
    :cond_20a
    move v3, v5

    .line 524
    :goto_20b
    invoke-virtual {v1, v5, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v5

    .line 528
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 529
    .line 530
    .line 531
    move-result v5

    .line 532
    invoke-virtual {v1, v15, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v11

    .line 536
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 537
    .line 538
    .line 539
    move-result v11

    .line 540
    sub-int/2addr v11, v2

    .line 541
    invoke-virtual {v1, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v1

    .line 545
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 546
    .line 547
    .line 548
    move-result v1

    .line 549
    const/16 v12, 0x50

    .line 550
    .line 551
    if-lt v1, v12, :cond_22b

    .line 552
    .line 553
    add-int/lit16 v1, v1, 0x76c

    .line 554
    .line 555
    goto :goto_22d

    .line 556
    :cond_22b
    add-int/lit16 v1, v1, 0x7d0

    .line 557
    .line 558
    :goto_22d
    new-instance v12, Ljava/util/GregorianCalendar;

    .line 559
    .line 560
    new-array v7, v7, [B

    .line 561
    .line 562
    fill-array-data v7, :array_2c2

    .line 563
    .line 564
    .line 565
    new-array v4, v4, [B

    .line 566
    .line 567
    fill-array-data v4, :array_2c8

    .line 568
    .line 569
    .line 570
    invoke-static {v7, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v4

    .line 574
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 575
    .line 576
    .line 577
    move-result-object v4

    .line 578
    invoke-direct {v12, v4, v8}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v12, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v12, v15, v11}, Ljava/util/Calendar;->set(II)V

    .line 585
    .line 586
    .line 587
    const/4 v1, 0x5

    .line 588
    invoke-virtual {v12, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 589
    .line 590
    .line 591
    const/16 v1, 0xb

    .line 592
    .line 593
    invoke-virtual {v12, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 594
    .line 595
    .line 596
    const/16 v1, 0xc

    .line 597
    .line 598
    invoke-virtual {v12, v1, v9}, Ljava/util/Calendar;->set(II)V

    .line 599
    .line 600
    .line 601
    const/16 v1, 0xd

    .line 602
    .line 603
    invoke-virtual {v12, v1, v10}, Ljava/util/Calendar;->set(II)V

    .line 604
    .line 605
    .line 606
    const/16 v1, 0xe

    .line 607
    .line 608
    invoke-virtual {v12, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 612
    .line 613
    .line 614
    move-result-wide v1
    :try_end_266
    .catch Ljava/lang/NumberFormatException; {:try_start_1c4 .. :try_end_266} :catch_267

    .line 615
    goto :goto_270

    .line 616
    :catch_267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 617
    .line 618
    .line 619
    move-result-wide v1

    .line 620
    goto :goto_270

    .line 621
    :cond_26c
    :goto_26c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 622
    .line 623
    .line 624
    move-result-wide v1

    .line 625
    :goto_270
    iput-wide v1, v0, Lq0/n;->i:J

    .line 626
    .line 627
    invoke-virtual {v0}, Lq0/n;->a()Lq0/q;

    .line 628
    .line 629
    .line 630
    move-result-object v1

    .line 631
    return-object v1

    .line 632
    :cond_277
    :goto_277
    return-object p1

    .line 633
    :array_278
    .array-data 1
        0x10t
        -0x32t
        -0x2dt
        0x5et
        -0x7bt
        -0x1t
        -0x10t
        -0x7ft
    .end array-data

    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    :array_280
    .array-data 1
        0x5ct
        -0x2bt
        -0x19t
        -0x31t
        0x5at
        -0x1ct
        -0x4t
        0x2ft
    .end array-data

    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    :array_288
    .array-data 1
        0x16t
        -0xct
        0x2ct
    .end array-data

    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    :array_28e
    .array-data 1
        0x51t
        -0x4dt
        0x6dt
        -0x24t
        -0x7ft
        0x7ft
        0x1ct
        -0x40t
    .end array-data

    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    :array_296
    .array-data 1
        -0x33t
        -0x27t
        -0x3dt
        0x18t
        -0x9t
        -0x38t
        0x0t
        -0x57t
    .end array-data

    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    :array_29e
    .array-data 1
        0x5bt
        0x6dt
        -0x50t
    .end array-data

    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    :array_2a4
    .array-data 1
        0x9t
        0x20t
        -0xdt
        -0x51t
        -0x38t
        -0x39t
        -0x3ft
        0x2dt
    .end array-data

    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    :array_2ac
    .array-data 1
        0x65t
        0xet
        -0x3ft
        -0x1ct
        -0x3ct
        -0x6et
        -0x78t
        0x2et
    .end array-data

    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    :array_2b4
    .array-data 1
        0x3dt
        -0x24t
        0x58t
    .end array-data

    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    :array_2ba
    .array-data 1
        0xdt
        -0x14t
        0x68t
        0x3at
        0x68t
        -0x4dt
        0x7at
        0x13t
    .end array-data

    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    :array_2c2
    .array-data 1
        -0x1ft
        -0x17t
        0x76t
    .end array-data

    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    :array_2c8
    .array-data 1
        -0x4ct
        -0x43t
        0x35t
        -0x2at
        -0x15t
        -0x3et
        0x54t
        0x21t
    .end array-data
.end method
