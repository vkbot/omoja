.class public abstract Ls6/g;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final a:Ln/p;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ln/p;

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ln/p;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Ls6/g;->a:Ln/p;

    .line 9
    .line 10
    return-void
.end method

.method public static a(Ls6/e;)Ls6/c;
    .registers 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-nez v0, :cond_8

    .line 4
    .line 5
    const/16 v16, 0x0

    .line 6
    .line 7
    goto/16 :goto_8c

    .line 8
    .line 9
    :cond_8
    iget-boolean v2, v0, Ls6/e;->e:Z

    .line 10
    .line 11
    iget-object v3, v0, Ll/d;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v3, Ls6/c;

    .line 14
    .line 15
    iget-object v4, v3, Ls6/c;->e:Lz5/o;

    .line 16
    .line 17
    iget-object v5, v3, Ls6/c;->c:Lz5/o;

    .line 18
    .line 19
    iget-object v6, v3, Ls6/c;->d:Lz5/o;

    .line 20
    .line 21
    iget-object v7, v3, Ls6/c;->b:Lz5/o;

    .line 22
    .line 23
    iget-object v8, v0, Ll/d;->d:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v8, [Ls6/a;

    .line 26
    .line 27
    invoke-virtual {v0}, Ls6/e;->S()Ls6/a;

    .line 28
    .line 29
    .line 30
    move-result-object v9

    .line 31
    if-nez v9, :cond_25

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    const/16 v16, 0x0

    .line 35
    .line 36
    goto/16 :goto_8a

    .line 37
    .line 38
    :cond_25
    iget v9, v9, Ls6/a;->f:I

    .line 39
    .line 40
    if-eqz v2, :cond_2b

    .line 41
    .line 42
    move-object v13, v7

    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    move-object v13, v6

    .line 45
    :goto_2c
    if-eqz v2, :cond_30

    .line 46
    .line 47
    move-object v14, v5

    .line 48
    goto :goto_31

    .line 49
    :cond_30
    move-object v14, v4

    .line 50
    :goto_31
    iget v13, v13, Lz5/o;->b:F

    .line 51
    .line 52
    float-to-int v13, v13

    .line 53
    invoke-virtual {v0, v13}, Ll/d;->x(I)I

    .line 54
    .line 55
    .line 56
    move-result v13

    .line 57
    iget v14, v14, Lz5/o;->b:F

    .line 58
    .line 59
    float-to-int v14, v14

    .line 60
    invoke-virtual {v0, v14}, Ll/d;->x(I)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    const/4 v1, 0x1

    .line 65
    const/4 v14, -0x1

    .line 66
    const/4 v15, 0x0

    .line 67
    const/16 v16, 0x0

    .line 68
    .line 69
    :goto_44
    if-ge v13, v0, :cond_71

    .line 70
    .line 71
    aget-object v10, v8, v13

    .line 72
    .line 73
    if-eqz v10, :cond_55

    .line 74
    .line 75
    invoke-virtual {v10}, Ls6/a;->b()V

    .line 76
    .line 77
    .line 78
    iget v12, v10, Ls6/a;->f:I

    .line 79
    .line 80
    sub-int v11, v12, v14

    .line 81
    .line 82
    if-nez v11, :cond_58

    .line 83
    .line 84
    add-int/lit8 v15, v15, 0x1

    .line 85
    .line 86
    :cond_55
    move/from16 p0, v0

    .line 87
    .line 88
    goto :goto_6c

    .line 89
    :cond_58
    move/from16 p0, v0

    .line 90
    .line 91
    const/4 v0, 0x1

    .line 92
    if-ne v11, v0, :cond_65

    .line 93
    .line 94
    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    iget v14, v10, Ls6/a;->f:I

    .line 99
    .line 100
    :goto_63
    const/4 v15, 0x1

    .line 101
    goto :goto_6c

    .line 102
    :cond_65
    if-lt v12, v9, :cond_6a

    .line 103
    .line 104
    aput-object v16, v8, v13

    .line 105
    .line 106
    goto :goto_6c

    .line 107
    :cond_6a
    move v14, v12

    .line 108
    goto :goto_63

    .line 109
    :goto_6c
    add-int/lit8 v13, v13, 0x1

    .line 110
    .line 111
    move/from16 v0, p0

    .line 112
    .line 113
    goto :goto_44

    .line 114
    :cond_71
    new-array v0, v9, [I

    .line 115
    .line 116
    array-length v1, v8

    .line 117
    const/4 v10, 0x0

    .line 118
    :goto_75
    if-ge v10, v1, :cond_8a

    .line 119
    .line 120
    aget-object v11, v8, v10

    .line 121
    .line 122
    if-eqz v11, :cond_87

    .line 123
    .line 124
    iget v11, v11, Ls6/a;->f:I

    .line 125
    .line 126
    if-ge v11, v9, :cond_87

    .line 127
    .line 128
    aget v12, v0, v11

    .line 129
    .line 130
    const/16 v17, 0x1

    .line 131
    .line 132
    add-int/lit8 v12, v12, 0x1

    .line 133
    .line 134
    aput v12, v0, v11

    .line 135
    .line 136
    :cond_87
    add-int/lit8 v10, v10, 0x1

    .line 137
    .line 138
    goto :goto_75

    .line 139
    :cond_8a
    :goto_8a
    if-nez v0, :cond_8d

    .line 140
    .line 141
    :goto_8c
    return-object v16

    .line 142
    :cond_8d
    array-length v1, v0

    .line 143
    const/4 v9, 0x0

    .line 144
    const/4 v10, -0x1

    .line 145
    :goto_90
    if-ge v9, v1, :cond_9b

    .line 146
    .line 147
    aget v11, v0, v9

    .line 148
    .line 149
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    .line 150
    .line 151
    .line 152
    move-result v10

    .line 153
    add-int/lit8 v9, v9, 0x1

    .line 154
    .line 155
    goto :goto_90

    .line 156
    :cond_9b
    array-length v1, v0

    .line 157
    const/4 v9, 0x0

    .line 158
    const/4 v11, 0x0

    .line 159
    :goto_9e
    if-ge v9, v1, :cond_aa

    .line 160
    .line 161
    aget v12, v0, v9

    .line 162
    .line 163
    sub-int v13, v10, v12

    .line 164
    .line 165
    add-int/2addr v11, v13

    .line 166
    if-gtz v12, :cond_aa

    .line 167
    .line 168
    add-int/lit8 v9, v9, 0x1

    .line 169
    .line 170
    goto :goto_9e

    .line 171
    :cond_aa
    const/4 v1, 0x0

    .line 172
    :goto_ab
    if-lez v11, :cond_b6

    .line 173
    .line 174
    aget-object v9, v8, v1

    .line 175
    .line 176
    if-nez v9, :cond_b6

    .line 177
    .line 178
    add-int/lit8 v11, v11, -0x1

    .line 179
    .line 180
    add-int/lit8 v1, v1, 0x1

    .line 181
    .line 182
    goto :goto_ab

    .line 183
    :cond_b6
    array-length v1, v0

    .line 184
    const/16 v17, 0x1

    .line 185
    .line 186
    add-int/lit8 v1, v1, -0x1

    .line 187
    .line 188
    const/4 v9, 0x0

    .line 189
    :goto_bc
    if-ltz v1, :cond_c8

    .line 190
    .line 191
    aget v12, v0, v1

    .line 192
    .line 193
    sub-int v13, v10, v12

    .line 194
    .line 195
    add-int/2addr v9, v13

    .line 196
    if-gtz v12, :cond_c8

    .line 197
    .line 198
    add-int/lit8 v1, v1, -0x1

    .line 199
    .line 200
    goto :goto_bc

    .line 201
    :cond_c8
    array-length v0, v8

    .line 202
    const/16 v17, 0x1

    .line 203
    .line 204
    add-int/lit8 v0, v0, -0x1

    .line 205
    .line 206
    :goto_cd
    if-lez v9, :cond_d8

    .line 207
    .line 208
    aget-object v1, v8, v0

    .line 209
    .line 210
    if-nez v1, :cond_d8

    .line 211
    .line 212
    add-int/lit8 v9, v9, -0x1

    .line 213
    .line 214
    add-int/lit8 v0, v0, -0x1

    .line 215
    .line 216
    goto :goto_cd

    .line 217
    :cond_d8
    if-lez v11, :cond_f8

    .line 218
    .line 219
    if-eqz v2, :cond_de

    .line 220
    .line 221
    move-object v0, v7

    .line 222
    goto :goto_df

    .line 223
    :cond_de
    move-object v0, v6

    .line 224
    :goto_df
    iget v1, v0, Lz5/o;->b:F

    .line 225
    .line 226
    float-to-int v1, v1

    .line 227
    sub-int/2addr v1, v11

    .line 228
    if-gez v1, :cond_e7

    .line 229
    .line 230
    const/4 v12, 0x0

    .line 231
    goto :goto_e8

    .line 232
    :cond_e7
    move v12, v1

    .line 233
    :goto_e8
    new-instance v1, Lz5/o;

    .line 234
    .line 235
    iget v0, v0, Lz5/o;->a:F

    .line 236
    .line 237
    int-to-float v8, v12

    .line 238
    invoke-direct {v1, v0, v8}, Lz5/o;-><init>(FF)V

    .line 239
    .line 240
    .line 241
    if-eqz v2, :cond_f5

    .line 242
    .line 243
    move-object v12, v1

    .line 244
    move-object v14, v6

    .line 245
    goto :goto_fa

    .line 246
    :cond_f5
    move-object v14, v1

    .line 247
    :goto_f6
    move-object v12, v7

    .line 248
    goto :goto_fa

    .line 249
    :cond_f8
    move-object v14, v6

    .line 250
    goto :goto_f6

    .line 251
    :goto_fa
    if-lez v9, :cond_11f

    .line 252
    .line 253
    if-eqz v2, :cond_100

    .line 254
    .line 255
    move-object v0, v5

    .line 256
    goto :goto_101

    .line 257
    :cond_100
    move-object v0, v4

    .line 258
    :goto_101
    iget v1, v0, Lz5/o;->b:F

    .line 259
    .line 260
    float-to-int v1, v1

    .line 261
    add-int/2addr v1, v9

    .line 262
    iget-object v6, v3, Ls6/c;->a:Lf6/b;

    .line 263
    .line 264
    iget v6, v6, Lf6/b;->c:I

    .line 265
    .line 266
    if-lt v1, v6, :cond_10f

    .line 267
    .line 268
    const/16 v17, 0x1

    .line 269
    .line 270
    add-int/lit8 v1, v6, -0x1

    .line 271
    .line 272
    :cond_10f
    new-instance v6, Lz5/o;

    .line 273
    .line 274
    iget v0, v0, Lz5/o;->a:F

    .line 275
    .line 276
    int-to-float v1, v1

    .line 277
    invoke-direct {v6, v0, v1}, Lz5/o;-><init>(FF)V

    .line 278
    .line 279
    .line 280
    if-eqz v2, :cond_11c

    .line 281
    .line 282
    move-object v15, v4

    .line 283
    move-object v13, v6

    .line 284
    goto :goto_121

    .line 285
    :cond_11c
    move-object v13, v5

    .line 286
    move-object v15, v6

    .line 287
    goto :goto_121

    .line 288
    :cond_11f
    move-object v15, v4

    .line 289
    move-object v13, v5

    .line 290
    :goto_121
    new-instance v10, Ls6/c;

    .line 291
    .line 292
    iget-object v11, v3, Ls6/c;->a:Lf6/b;

    .line 293
    .line 294
    invoke-direct/range {v10 .. v15}, Ls6/c;-><init>(Lf6/b;Lz5/o;Lz5/o;Lz5/o;Lz5/o;)V

    .line 295
    .line 296
    .line 297
    return-object v10
.end method

.method public static b([I[II)Lf6/d;
    .registers 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    array-length v2, v0

    .line 6
    if-eqz v2, :cond_565

    .line 7
    .line 8
    add-int/lit8 v2, p2, 0x1

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    shl-int v2, v3, v2

    .line 12
    .line 13
    array-length v4, v1

    .line 14
    div-int/lit8 v5, v2, 0x2

    .line 15
    .line 16
    add-int/lit8 v5, v5, 0x3

    .line 17
    .line 18
    if-gt v4, v5, :cond_560

    .line 19
    .line 20
    if-ltz v2, :cond_560

    .line 21
    .line 22
    const/16 v4, 0x200

    .line 23
    .line 24
    if-gt v2, v4, :cond_560

    .line 25
    .line 26
    sget-object v4, Ls6/g;->a:Ln/p;

    .line 27
    .line 28
    iget-object v4, v4, Ln/p;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v4, Lt6/a;

    .line 31
    .line 32
    array-length v5, v0

    .line 33
    if-eqz v5, :cond_55b

    .line 34
    .line 35
    array-length v5, v0

    .line 36
    const/4 v7, 0x0

    .line 37
    if-le v5, v3, :cond_43

    .line 38
    .line 39
    aget v8, v0, v7

    .line 40
    .line 41
    if-nez v8, :cond_43

    .line 42
    .line 43
    move v8, v3

    .line 44
    :goto_2b
    if-ge v8, v5, :cond_34

    .line 45
    .line 46
    aget v9, v0, v8

    .line 47
    .line 48
    if-nez v9, :cond_34

    .line 49
    .line 50
    add-int/lit8 v8, v8, 0x1

    .line 51
    .line 52
    goto :goto_2b

    .line 53
    :cond_34
    if-ne v8, v5, :cond_3b

    .line 54
    .line 55
    filled-new-array {v7}, [I

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    goto :goto_44

    .line 60
    :cond_3b
    sub-int/2addr v5, v8

    .line 61
    new-array v9, v5, [I

    .line 62
    .line 63
    invoke-static {v0, v8, v9, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    .line 65
    .line 66
    move-object v5, v9

    .line 67
    goto :goto_44

    .line 68
    :cond_43
    move-object v5, v0

    .line 69
    :goto_44
    new-array v8, v2, [I

    .line 70
    .line 71
    move v9, v2

    .line 72
    move v10, v7

    .line 73
    :goto_48
    if-lez v9, :cond_84

    .line 74
    .line 75
    iget-object v11, v4, Lt6/a;->a:[I

    .line 76
    .line 77
    aget v11, v11, v9

    .line 78
    .line 79
    if-nez v11, :cond_55

    .line 80
    .line 81
    array-length v11, v5

    .line 82
    sub-int/2addr v11, v3

    .line 83
    aget v11, v5, v11

    .line 84
    .line 85
    goto :goto_7a

    .line 86
    :cond_55
    if-ne v11, v3, :cond_67

    .line 87
    .line 88
    array-length v11, v5

    .line 89
    move v12, v7

    .line 90
    move v13, v12

    .line 91
    :goto_5a
    if-ge v13, v11, :cond_65

    .line 92
    .line 93
    aget v14, v5, v13

    .line 94
    .line 95
    invoke-virtual {v4, v12, v14}, Lt6/a;->a(II)I

    .line 96
    .line 97
    .line 98
    move-result v12

    .line 99
    add-int/lit8 v13, v13, 0x1

    .line 100
    .line 101
    goto :goto_5a

    .line 102
    :cond_65
    move v11, v12

    .line 103
    goto :goto_7a

    .line 104
    :cond_67
    aget v12, v5, v7

    .line 105
    .line 106
    array-length v13, v5

    .line 107
    move v14, v3

    .line 108
    :goto_6b
    if-ge v14, v13, :cond_65

    .line 109
    .line 110
    invoke-virtual {v4, v11, v12}, Lt6/a;->c(II)I

    .line 111
    .line 112
    .line 113
    move-result v12

    .line 114
    aget v15, v5, v14

    .line 115
    .line 116
    invoke-virtual {v4, v12, v15}, Lt6/a;->a(II)I

    .line 117
    .line 118
    .line 119
    move-result v12

    .line 120
    add-int/lit8 v14, v14, 0x1

    .line 121
    .line 122
    goto :goto_6b

    .line 123
    :goto_7a
    sub-int v12, v2, v9

    .line 124
    .line 125
    aput v11, v8, v12

    .line 126
    .line 127
    if-eqz v11, :cond_81

    .line 128
    .line 129
    move v10, v3

    .line 130
    :cond_81
    add-int/lit8 v9, v9, -0x1

    .line 131
    .line 132
    goto :goto_48

    .line 133
    :cond_84
    if-nez v10, :cond_8a

    .line 134
    .line 135
    const/16 v16, 0x0

    .line 136
    .line 137
    goto/16 :goto_2af

    .line 138
    .line 139
    :cond_8a
    iget-object v5, v4, Lt6/a;->d:Ll/d;

    .line 140
    .line 141
    iget-object v9, v4, Lt6/a;->c:Ll/d;

    .line 142
    .line 143
    array-length v10, v1

    .line 144
    move v11, v7

    .line 145
    :goto_90
    const/16 v12, 0x3a1

    .line 146
    .line 147
    if-ge v11, v10, :cond_b0

    .line 148
    .line 149
    aget v13, v1, v11

    .line 150
    .line 151
    array-length v14, v0

    .line 152
    sub-int/2addr v14, v3

    .line 153
    sub-int/2addr v14, v13

    .line 154
    iget-object v13, v4, Lt6/a;->a:[I

    .line 155
    .line 156
    aget v13, v13, v14

    .line 157
    .line 158
    new-instance v14, Ll/d;

    .line 159
    .line 160
    rsub-int v13, v13, 0x3a1

    .line 161
    .line 162
    rem-int/2addr v13, v12

    .line 163
    filled-new-array {v13, v3}, [I

    .line 164
    .line 165
    .line 166
    move-result-object v12

    .line 167
    invoke-direct {v14, v4, v12}, Ll/d;-><init>(Lt6/a;[I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v5, v14}, Ll/d;->I(Ll/d;)Ll/d;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    add-int/lit8 v11, v11, 0x1

    .line 175
    .line 176
    goto :goto_90

    .line 177
    :cond_b0
    new-instance v1, Ll/d;

    .line 178
    .line 179
    invoke-direct {v1, v4, v8}, Ll/d;-><init>(Lt6/a;[I)V

    .line 180
    .line 181
    .line 182
    if-ltz v2, :cond_556

    .line 183
    .line 184
    add-int/lit8 v5, v2, 0x1

    .line 185
    .line 186
    new-array v5, v5, [I

    .line 187
    .line 188
    aput v3, v5, v7

    .line 189
    .line 190
    new-instance v8, Ll/d;

    .line 191
    .line 192
    invoke-direct {v8, v4, v5}, Ll/d;-><init>(Lt6/a;[I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v8}, Ll/d;->s()I

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    invoke-virtual {v1}, Ll/d;->s()I

    .line 200
    .line 201
    .line 202
    move-result v10

    .line 203
    if-ge v5, v10, :cond_cd

    .line 204
    .line 205
    goto :goto_d2

    .line 206
    :cond_cd
    move-object/from16 v25, v8

    .line 207
    .line 208
    move-object v8, v1

    .line 209
    move-object/from16 v1, v25

    .line 210
    .line 211
    :goto_d2
    iget-object v5, v4, Lt6/a;->d:Ll/d;

    .line 212
    .line 213
    move-object v10, v5

    .line 214
    move-object v5, v1

    .line 215
    move-object v1, v8

    .line 216
    move-object v8, v10

    .line 217
    move-object v10, v9

    .line 218
    :goto_d9
    invoke-virtual {v1}, Ll/d;->s()I

    .line 219
    .line 220
    .line 221
    move-result v11

    .line 222
    div-int/lit8 v13, v2, 0x2

    .line 223
    .line 224
    if-lt v11, v13, :cond_1b3

    .line 225
    .line 226
    invoke-virtual {v1}, Ll/d;->A()Z

    .line 227
    .line 228
    .line 229
    move-result v11

    .line 230
    if-nez v11, :cond_1ae

    .line 231
    .line 232
    invoke-virtual {v1}, Ll/d;->s()I

    .line 233
    .line 234
    .line 235
    move-result v11

    .line 236
    invoke-virtual {v1, v11}, Ll/d;->q(I)I

    .line 237
    .line 238
    .line 239
    move-result v11

    .line 240
    invoke-virtual {v4, v11}, Lt6/a;->b(I)I

    .line 241
    .line 242
    .line 243
    move-result v11

    .line 244
    move-object v13, v9

    .line 245
    :goto_f4
    invoke-virtual {v5}, Ll/d;->s()I

    .line 246
    .line 247
    .line 248
    move-result v14

    .line 249
    invoke-virtual {v1}, Ll/d;->s()I

    .line 250
    .line 251
    .line 252
    move-result v15

    .line 253
    if-lt v14, v15, :cond_174

    .line 254
    .line 255
    invoke-virtual {v5}, Ll/d;->A()Z

    .line 256
    .line 257
    .line 258
    move-result v14

    .line 259
    if-nez v14, :cond_174

    .line 260
    .line 261
    invoke-virtual {v5}, Ll/d;->s()I

    .line 262
    .line 263
    .line 264
    move-result v14

    .line 265
    invoke-virtual {v1}, Ll/d;->s()I

    .line 266
    .line 267
    .line 268
    move-result v15

    .line 269
    sub-int/2addr v14, v15

    .line 270
    invoke-virtual {v5}, Ll/d;->s()I

    .line 271
    .line 272
    .line 273
    move-result v15

    .line 274
    invoke-virtual {v5, v15}, Ll/d;->q(I)I

    .line 275
    .line 276
    .line 277
    move-result v15

    .line 278
    invoke-virtual {v4, v15, v11}, Lt6/a;->c(II)I

    .line 279
    .line 280
    .line 281
    move-result v15

    .line 282
    if-ltz v14, :cond_16e

    .line 283
    .line 284
    if-nez v15, :cond_123

    .line 285
    .line 286
    move/from16 v17, v3

    .line 287
    .line 288
    move-object v3, v9

    .line 289
    const/16 v16, 0x0

    .line 290
    .line 291
    goto :goto_132

    .line 292
    :cond_123
    const/16 v16, 0x0

    .line 293
    .line 294
    add-int/lit8 v6, v14, 0x1

    .line 295
    .line 296
    new-array v6, v6, [I

    .line 297
    .line 298
    aput v15, v6, v7

    .line 299
    .line 300
    move/from16 v17, v3

    .line 301
    .line 302
    new-instance v3, Ll/d;

    .line 303
    .line 304
    invoke-direct {v3, v4, v6}, Ll/d;-><init>(Lt6/a;[I)V

    .line 305
    .line 306
    .line 307
    :goto_132
    invoke-virtual {v13, v3}, Ll/d;->c(Ll/d;)Ll/d;

    .line 308
    .line 309
    .line 310
    move-result-object v13

    .line 311
    iget-object v3, v1, Ll/d;->d:Ljava/lang/Object;

    .line 312
    .line 313
    check-cast v3, [I

    .line 314
    .line 315
    iget-object v6, v1, Ll/d;->c:Ljava/lang/Object;

    .line 316
    .line 317
    check-cast v6, Lt6/a;

    .line 318
    .line 319
    if-ltz v14, :cond_16a

    .line 320
    .line 321
    if-nez v15, :cond_145

    .line 322
    .line 323
    iget-object v3, v6, Lt6/a;->c:Ll/d;

    .line 324
    .line 325
    goto :goto_160

    .line 326
    :cond_145
    array-length v7, v3

    .line 327
    add-int/2addr v14, v7

    .line 328
    new-array v14, v14, [I

    .line 329
    .line 330
    const/4 v12, 0x0

    .line 331
    :goto_14a
    if-ge v12, v7, :cond_15b

    .line 332
    .line 333
    move-object/from16 p1, v3

    .line 334
    .line 335
    aget v3, p1, v12

    .line 336
    .line 337
    invoke-virtual {v6, v3, v15}, Lt6/a;->c(II)I

    .line 338
    .line 339
    .line 340
    move-result v3

    .line 341
    aput v3, v14, v12

    .line 342
    .line 343
    add-int/lit8 v12, v12, 0x1

    .line 344
    .line 345
    move-object/from16 v3, p1

    .line 346
    .line 347
    goto :goto_14a

    .line 348
    :cond_15b
    new-instance v3, Ll/d;

    .line 349
    .line 350
    invoke-direct {v3, v6, v14}, Ll/d;-><init>(Lt6/a;[I)V

    .line 351
    .line 352
    .line 353
    :goto_160
    invoke-virtual {v5, v3}, Ll/d;->P(Ll/d;)Ll/d;

    .line 354
    .line 355
    .line 356
    move-result-object v5

    .line 357
    move/from16 v3, v17

    .line 358
    .line 359
    const/4 v7, 0x0

    .line 360
    const/16 v12, 0x3a1

    .line 361
    .line 362
    goto :goto_f4

    .line 363
    :cond_16a
    invoke-static {}, Ll9/i;->a()V

    .line 364
    .line 365
    .line 366
    return-object v16

    .line 367
    :cond_16e
    const/16 v16, 0x0

    .line 368
    .line 369
    invoke-static {}, Ll9/i;->a()V

    .line 370
    .line 371
    .line 372
    return-object v16

    .line 373
    :cond_174
    move/from16 v17, v3

    .line 374
    .line 375
    const/16 v16, 0x0

    .line 376
    .line 377
    invoke-virtual {v13, v8}, Ll/d;->I(Ll/d;)Ll/d;

    .line 378
    .line 379
    .line 380
    move-result-object v3

    .line 381
    invoke-virtual {v3, v10}, Ll/d;->P(Ll/d;)Ll/d;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    iget-object v6, v3, Ll/d;->d:Ljava/lang/Object;

    .line 386
    .line 387
    check-cast v6, [I

    .line 388
    .line 389
    array-length v7, v6

    .line 390
    new-array v10, v7, [I

    .line 391
    .line 392
    const/4 v11, 0x0

    .line 393
    :goto_188
    iget-object v12, v3, Ll/d;->c:Ljava/lang/Object;

    .line 394
    .line 395
    check-cast v12, Lt6/a;

    .line 396
    .line 397
    if-ge v11, v7, :cond_19d

    .line 398
    .line 399
    aget v13, v6, v11

    .line 400
    .line 401
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 402
    .line 403
    .line 404
    const/16 v12, 0x3a1

    .line 405
    .line 406
    rsub-int v13, v13, 0x3a1

    .line 407
    .line 408
    rem-int/2addr v13, v12

    .line 409
    aput v13, v10, v11

    .line 410
    .line 411
    add-int/lit8 v11, v11, 0x1

    .line 412
    .line 413
    goto :goto_188

    .line 414
    :cond_19d
    new-instance v3, Ll/d;

    .line 415
    .line 416
    invoke-direct {v3, v12, v10}, Ll/d;-><init>(Lt6/a;[I)V

    .line 417
    .line 418
    .line 419
    move-object v7, v5

    .line 420
    move-object v5, v1

    .line 421
    move-object v1, v7

    .line 422
    move-object v10, v8

    .line 423
    const/4 v7, 0x0

    .line 424
    const/16 v12, 0x3a1

    .line 425
    .line 426
    move-object v8, v3

    .line 427
    move/from16 v3, v17

    .line 428
    .line 429
    goto/16 :goto_d9

    .line 430
    .line 431
    :cond_1ae
    invoke-static {}, Lz5/c;->a()Lz5/c;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    throw v0

    .line 436
    :cond_1b3
    move/from16 v17, v3

    .line 437
    .line 438
    move v3, v7

    .line 439
    const/16 v16, 0x0

    .line 440
    .line 441
    invoke-virtual {v8, v3}, Ll/d;->q(I)I

    .line 442
    .line 443
    .line 444
    move-result v5

    .line 445
    if-eqz v5, :cond_551

    .line 446
    .line 447
    invoke-virtual {v4, v5}, Lt6/a;->b(I)I

    .line 448
    .line 449
    .line 450
    move-result v5

    .line 451
    invoke-virtual {v8, v5}, Ll/d;->H(I)Ll/d;

    .line 452
    .line 453
    .line 454
    move-result-object v6

    .line 455
    invoke-virtual {v1, v5}, Ll/d;->H(I)Ll/d;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    filled-new-array {v6, v1}, [Ll/d;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    aget-object v5, v1, v3

    .line 464
    .line 465
    aget-object v1, v1, v17

    .line 466
    .line 467
    invoke-virtual {v5}, Ll/d;->s()I

    .line 468
    .line 469
    .line 470
    move-result v3

    .line 471
    new-array v6, v3, [I

    .line 472
    .line 473
    move/from16 v7, v17

    .line 474
    .line 475
    const/4 v8, 0x0

    .line 476
    :goto_1db
    const/16 v12, 0x3a1

    .line 477
    .line 478
    if-ge v7, v12, :cond_1f2

    .line 479
    .line 480
    if-ge v8, v3, :cond_1f2

    .line 481
    .line 482
    invoke-virtual {v5, v7}, Ll/d;->n(I)I

    .line 483
    .line 484
    .line 485
    move-result v9

    .line 486
    if-nez v9, :cond_1ef

    .line 487
    .line 488
    invoke-virtual {v4, v7}, Lt6/a;->b(I)I

    .line 489
    .line 490
    .line 491
    move-result v9

    .line 492
    aput v9, v6, v8

    .line 493
    .line 494
    add-int/lit8 v8, v8, 0x1

    .line 495
    .line 496
    :cond_1ef
    add-int/lit8 v7, v7, 0x1

    .line 497
    .line 498
    goto :goto_1db

    .line 499
    :cond_1f2
    if-ne v8, v3, :cond_54c

    .line 500
    .line 501
    invoke-virtual {v5}, Ll/d;->s()I

    .line 502
    .line 503
    .line 504
    move-result v7

    .line 505
    new-array v8, v7, [I

    .line 506
    .line 507
    move/from16 v9, v17

    .line 508
    .line 509
    :goto_1fc
    if-gt v9, v7, :cond_20d

    .line 510
    .line 511
    sub-int v10, v7, v9

    .line 512
    .line 513
    invoke-virtual {v5, v9}, Ll/d;->q(I)I

    .line 514
    .line 515
    .line 516
    move-result v11

    .line 517
    invoke-virtual {v4, v9, v11}, Lt6/a;->c(II)I

    .line 518
    .line 519
    .line 520
    move-result v11

    .line 521
    aput v11, v8, v10

    .line 522
    .line 523
    add-int/lit8 v9, v9, 0x1

    .line 524
    .line 525
    goto :goto_1fc

    .line 526
    :cond_20d
    if-eqz v7, :cond_546

    .line 527
    .line 528
    move/from16 v5, v17

    .line 529
    .line 530
    if-le v7, v5, :cond_233

    .line 531
    .line 532
    const/16 v18, 0x0

    .line 533
    .line 534
    aget v5, v8, v18

    .line 535
    .line 536
    if-nez v5, :cond_233

    .line 537
    .line 538
    const/4 v5, 0x1

    .line 539
    :goto_21a
    if-ge v5, v7, :cond_223

    .line 540
    .line 541
    aget v9, v8, v5

    .line 542
    .line 543
    if-nez v9, :cond_223

    .line 544
    .line 545
    add-int/lit8 v5, v5, 0x1

    .line 546
    .line 547
    goto :goto_21a

    .line 548
    :cond_223
    if-ne v5, v7, :cond_22b

    .line 549
    .line 550
    const/4 v9, 0x0

    .line 551
    filled-new-array {v9}, [I

    .line 552
    .line 553
    .line 554
    move-result-object v8

    .line 555
    goto :goto_233

    .line 556
    :cond_22b
    const/4 v9, 0x0

    .line 557
    sub-int/2addr v7, v5

    .line 558
    new-array v10, v7, [I

    .line 559
    .line 560
    invoke-static {v8, v5, v10, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 561
    .line 562
    .line 563
    move-object v8, v10

    .line 564
    :cond_233
    :goto_233
    new-array v5, v3, [I

    .line 565
    .line 566
    const/4 v7, 0x0

    .line 567
    :goto_236
    if-ge v7, v3, :cond_285

    .line 568
    .line 569
    aget v9, v6, v7

    .line 570
    .line 571
    invoke-virtual {v4, v9}, Lt6/a;->b(I)I

    .line 572
    .line 573
    .line 574
    move-result v9

    .line 575
    invoke-virtual {v1, v9}, Ll/d;->n(I)I

    .line 576
    .line 577
    .line 578
    move-result v10

    .line 579
    const/16 v12, 0x3a1

    .line 580
    .line 581
    rsub-int v10, v10, 0x3a1

    .line 582
    .line 583
    rem-int/2addr v10, v12

    .line 584
    if-nez v9, :cond_24f

    .line 585
    .line 586
    array-length v9, v8

    .line 587
    const/4 v11, 0x1

    .line 588
    sub-int/2addr v9, v11

    .line 589
    aget v9, v8, v9

    .line 590
    .line 591
    goto :goto_278

    .line 592
    :cond_24f
    const/4 v11, 0x1

    .line 593
    if-ne v9, v11, :cond_262

    .line 594
    .line 595
    array-length v9, v8

    .line 596
    const/4 v11, 0x0

    .line 597
    const/4 v12, 0x0

    .line 598
    :goto_255
    if-ge v11, v9, :cond_260

    .line 599
    .line 600
    aget v13, v8, v11

    .line 601
    .line 602
    invoke-virtual {v4, v12, v13}, Lt6/a;->a(II)I

    .line 603
    .line 604
    .line 605
    move-result v12

    .line 606
    add-int/lit8 v11, v11, 0x1

    .line 607
    .line 608
    goto :goto_255

    .line 609
    :cond_260
    move v9, v12

    .line 610
    goto :goto_278

    .line 611
    :cond_262
    const/16 v18, 0x0

    .line 612
    .line 613
    aget v11, v8, v18

    .line 614
    .line 615
    array-length v12, v8

    .line 616
    const/4 v13, 0x1

    .line 617
    :goto_268
    if-ge v13, v12, :cond_277

    .line 618
    .line 619
    invoke-virtual {v4, v9, v11}, Lt6/a;->c(II)I

    .line 620
    .line 621
    .line 622
    move-result v11

    .line 623
    aget v14, v8, v13

    .line 624
    .line 625
    invoke-virtual {v4, v11, v14}, Lt6/a;->a(II)I

    .line 626
    .line 627
    .line 628
    move-result v11

    .line 629
    add-int/lit8 v13, v13, 0x1

    .line 630
    .line 631
    goto :goto_268

    .line 632
    :cond_277
    move v9, v11

    .line 633
    :goto_278
    invoke-virtual {v4, v9}, Lt6/a;->b(I)I

    .line 634
    .line 635
    .line 636
    move-result v9

    .line 637
    invoke-virtual {v4, v10, v9}, Lt6/a;->c(II)I

    .line 638
    .line 639
    .line 640
    move-result v9

    .line 641
    aput v9, v5, v7

    .line 642
    .line 643
    add-int/lit8 v7, v7, 0x1

    .line 644
    .line 645
    goto :goto_236

    .line 646
    :cond_285
    const/4 v1, 0x0

    .line 647
    :goto_286
    if-ge v1, v3, :cond_2af

    .line 648
    .line 649
    array-length v7, v0

    .line 650
    const/16 v17, 0x1

    .line 651
    .line 652
    add-int/lit8 v7, v7, -0x1

    .line 653
    .line 654
    aget v8, v6, v1

    .line 655
    .line 656
    if-eqz v8, :cond_2ab

    .line 657
    .line 658
    iget-object v9, v4, Lt6/a;->b:[I

    .line 659
    .line 660
    aget v8, v9, v8

    .line 661
    .line 662
    sub-int/2addr v7, v8

    .line 663
    if-ltz v7, :cond_2a6

    .line 664
    .line 665
    aget v8, v0, v7

    .line 666
    .line 667
    aget v9, v5, v1

    .line 668
    .line 669
    const/16 v12, 0x3a1

    .line 670
    .line 671
    add-int/2addr v8, v12

    .line 672
    sub-int/2addr v8, v9

    .line 673
    rem-int/2addr v8, v12

    .line 674
    aput v8, v0, v7

    .line 675
    .line 676
    add-int/lit8 v1, v1, 0x1

    .line 677
    .line 678
    goto :goto_286

    .line 679
    :cond_2a6
    invoke-static {}, Lz5/c;->a()Lz5/c;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    throw v0

    .line 684
    :cond_2ab
    invoke-static {}, Ll9/i;->a()V

    .line 685
    .line 686
    .line 687
    return-object v16

    .line 688
    :cond_2af
    :goto_2af
    array-length v1, v0

    .line 689
    const/4 v3, 0x4

    .line 690
    if-lt v1, v3, :cond_541

    .line 691
    .line 692
    const/16 v18, 0x0

    .line 693
    .line 694
    aget v1, v0, v18

    .line 695
    .line 696
    array-length v3, v0

    .line 697
    if-gt v1, v3, :cond_53c

    .line 698
    .line 699
    if-nez v1, :cond_2c9

    .line 700
    .line 701
    array-length v1, v0

    .line 702
    if-ge v2, v1, :cond_2c4

    .line 703
    .line 704
    array-length v1, v0

    .line 705
    sub-int/2addr v1, v2

    .line 706
    aput v1, v0, v18

    .line 707
    .line 708
    goto :goto_2c9

    .line 709
    :cond_2c4
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    throw v0

    .line 714
    :cond_2c9
    :goto_2c9
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v1

    .line 718
    sget-object v2, Ls6/d;->a:[C

    .line 719
    .line 720
    new-instance v2, Ljava/lang/StringBuilder;

    .line 721
    .line 722
    array-length v3, v0

    .line 723
    const/16 v17, 0x1

    .line 724
    .line 725
    shl-int/lit8 v3, v3, 0x1

    .line 726
    .line 727
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 728
    .line 729
    .line 730
    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 731
    .line 732
    aget v4, v0, v17

    .line 733
    .line 734
    new-instance v5, Lr6/c;

    .line 735
    .line 736
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 737
    .line 738
    .line 739
    const/4 v6, 0x2

    .line 740
    move v7, v6

    .line 741
    const/16 v18, 0x0

    .line 742
    .line 743
    :goto_2e6
    aget v8, v0, v18

    .line 744
    .line 745
    if-ge v7, v8, :cond_523

    .line 746
    .line 747
    const/16 v9, 0x391

    .line 748
    .line 749
    if-eq v4, v9, :cond_508

    .line 750
    .line 751
    const/16 v9, 0x384

    .line 752
    .line 753
    packed-switch v4, :pswitch_data_56a

    .line 754
    .line 755
    .line 756
    packed-switch v4, :pswitch_data_574

    .line 757
    .line 758
    .line 759
    add-int/lit8 v7, v7, -0x1

    .line 760
    .line 761
    invoke-static {v0, v7, v2}, Ls6/d;->c([IILjava/lang/StringBuilder;)I

    .line 762
    .line 763
    .line 764
    move-result v4

    .line 765
    :cond_2fc
    :goto_2fc
    const/16 p2, 0x0

    .line 766
    .line 767
    goto/16 :goto_512

    .line 768
    .line 769
    :pswitch_300
    add-int/lit8 v4, v7, 0x2

    .line 770
    .line 771
    if-gt v4, v8, :cond_3d7

    .line 772
    .line 773
    new-array v4, v6, [I

    .line 774
    .line 775
    const/4 v8, 0x0

    .line 776
    :goto_307
    if-ge v8, v6, :cond_312

    .line 777
    .line 778
    aget v9, v0, v7

    .line 779
    .line 780
    aput v9, v4, v8

    .line 781
    .line 782
    add-int/lit8 v8, v8, 0x1

    .line 783
    .line 784
    add-int/lit8 v7, v7, 0x1

    .line 785
    .line 786
    goto :goto_307

    .line 787
    :cond_312
    invoke-static {v4, v6}, Ls6/d;->a([II)Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v4

    .line 791
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 792
    .line 793
    .line 794
    new-instance v4, Ljava/lang/StringBuilder;

    .line 795
    .line 796
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 797
    .line 798
    .line 799
    invoke-static {v0, v7, v4}, Ls6/d;->c([IILjava/lang/StringBuilder;)I

    .line 800
    .line 801
    .line 802
    move-result v4

    .line 803
    aget v7, v0, v4

    .line 804
    .line 805
    const/4 v8, -0x1

    .line 806
    const/16 v9, 0x39b

    .line 807
    .line 808
    if-ne v7, v9, :cond_32e

    .line 809
    .line 810
    add-int/lit8 v7, v4, 0x1

    .line 811
    .line 812
    :goto_32b
    const/16 v18, 0x0

    .line 813
    .line 814
    goto :goto_330

    .line 815
    :cond_32e
    move v7, v8

    .line 816
    goto :goto_32b

    .line 817
    :goto_330
    aget v10, v0, v18

    .line 818
    .line 819
    if-ge v4, v10, :cond_3c6

    .line 820
    .line 821
    aget v10, v0, v4

    .line 822
    .line 823
    const/16 v11, 0x39a

    .line 824
    .line 825
    if-eq v10, v11, :cond_3bf

    .line 826
    .line 827
    if-ne v10, v9, :cond_3ba

    .line 828
    .line 829
    add-int/lit8 v10, v4, 0x1

    .line 830
    .line 831
    aget v10, v0, v10

    .line 832
    .line 833
    packed-switch v10, :pswitch_data_586

    .line 834
    .line 835
    .line 836
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 837
    .line 838
    .line 839
    move-result-object v0

    .line 840
    throw v0

    .line 841
    :pswitch_348
    new-instance v10, Ljava/lang/StringBuilder;

    .line 842
    .line 843
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 844
    .line 845
    .line 846
    add-int/lit8 v4, v4, 0x2

    .line 847
    .line 848
    invoke-static {v0, v4, v10}, Ls6/d;->b([IILjava/lang/StringBuilder;)I

    .line 849
    .line 850
    .line 851
    move-result v4

    .line 852
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 853
    .line 854
    .line 855
    move-result-object v10

    .line 856
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 857
    .line 858
    .line 859
    goto :goto_32b

    .line 860
    :pswitch_35b
    new-instance v10, Ljava/lang/StringBuilder;

    .line 861
    .line 862
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 863
    .line 864
    .line 865
    add-int/lit8 v4, v4, 0x2

    .line 866
    .line 867
    invoke-static {v0, v4, v10}, Ls6/d;->b([IILjava/lang/StringBuilder;)I

    .line 868
    .line 869
    .line 870
    move-result v4

    .line 871
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    move-result-object v10

    .line 875
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 876
    .line 877
    .line 878
    goto :goto_32b

    .line 879
    :pswitch_36e
    new-instance v10, Ljava/lang/StringBuilder;

    .line 880
    .line 881
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 882
    .line 883
    .line 884
    add-int/lit8 v4, v4, 0x2

    .line 885
    .line 886
    invoke-static {v0, v4, v10}, Ls6/d;->c([IILjava/lang/StringBuilder;)I

    .line 887
    .line 888
    .line 889
    move-result v4

    .line 890
    goto :goto_32b

    .line 891
    :pswitch_37a
    new-instance v10, Ljava/lang/StringBuilder;

    .line 892
    .line 893
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 894
    .line 895
    .line 896
    add-int/lit8 v4, v4, 0x2

    .line 897
    .line 898
    invoke-static {v0, v4, v10}, Ls6/d;->c([IILjava/lang/StringBuilder;)I

    .line 899
    .line 900
    .line 901
    move-result v4

    .line 902
    goto :goto_32b

    .line 903
    :pswitch_386
    new-instance v10, Ljava/lang/StringBuilder;

    .line 904
    .line 905
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 906
    .line 907
    .line 908
    add-int/lit8 v4, v4, 0x2

    .line 909
    .line 910
    invoke-static {v0, v4, v10}, Ls6/d;->b([IILjava/lang/StringBuilder;)I

    .line 911
    .line 912
    .line 913
    move-result v4

    .line 914
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 915
    .line 916
    .line 917
    move-result-object v10

    .line 918
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 919
    .line 920
    .line 921
    goto :goto_32b

    .line 922
    :pswitch_399
    new-instance v10, Ljava/lang/StringBuilder;

    .line 923
    .line 924
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 925
    .line 926
    .line 927
    add-int/lit8 v4, v4, 0x2

    .line 928
    .line 929
    invoke-static {v0, v4, v10}, Ls6/d;->b([IILjava/lang/StringBuilder;)I

    .line 930
    .line 931
    .line 932
    move-result v4

    .line 933
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 934
    .line 935
    .line 936
    move-result-object v10

    .line 937
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 938
    .line 939
    .line 940
    goto/16 :goto_32b

    .line 941
    .line 942
    :pswitch_3ad
    new-instance v10, Ljava/lang/StringBuilder;

    .line 943
    .line 944
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 945
    .line 946
    .line 947
    add-int/lit8 v4, v4, 0x2

    .line 948
    .line 949
    invoke-static {v0, v4, v10}, Ls6/d;->c([IILjava/lang/StringBuilder;)I

    .line 950
    .line 951
    .line 952
    move-result v4

    .line 953
    goto/16 :goto_32b

    .line 954
    .line 955
    :cond_3ba
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 956
    .line 957
    .line 958
    move-result-object v0

    .line 959
    throw v0

    .line 960
    :cond_3bf
    add-int/lit8 v4, v4, 0x1

    .line 961
    .line 962
    const/4 v11, 0x1

    .line 963
    iput-boolean v11, v5, Lr6/c;->a:Z

    .line 964
    .line 965
    goto/16 :goto_32b

    .line 966
    .line 967
    :cond_3c6
    const/4 v11, 0x1

    .line 968
    if-eq v7, v8, :cond_2fc

    .line 969
    .line 970
    sub-int v8, v4, v7

    .line 971
    .line 972
    iget-boolean v9, v5, Lr6/c;->a:Z

    .line 973
    .line 974
    if-eqz v9, :cond_3d1

    .line 975
    .line 976
    add-int/lit8 v8, v8, -0x1

    .line 977
    .line 978
    :cond_3d1
    add-int/2addr v8, v7

    .line 979
    invoke-static {v0, v7, v8}, Ljava/util/Arrays;->copyOfRange([III)[I

    .line 980
    .line 981
    .line 982
    goto/16 :goto_2fc

    .line 983
    .line 984
    :cond_3d7
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 985
    .line 986
    .line 987
    move-result-object v0

    .line 988
    throw v0

    .line 989
    :pswitch_3dc
    const/4 v11, 0x1

    .line 990
    add-int/lit8 v4, v7, 0x1

    .line 991
    .line 992
    aget v3, v0, v7

    .line 993
    .line 994
    sget-object v7, Lf6/c;->d:Ljava/util/HashMap;

    .line 995
    .line 996
    if-ltz v3, :cond_3fd

    .line 997
    .line 998
    if-ge v3, v9, :cond_3fd

    .line 999
    .line 1000
    sget-object v7, Lf6/c;->d:Ljava/util/HashMap;

    .line 1001
    .line 1002
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v3

    .line 1006
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v3

    .line 1010
    check-cast v3, Lf6/c;

    .line 1011
    .line 1012
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v3

    .line 1016
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v3

    .line 1020
    goto/16 :goto_2fc

    .line 1021
    .line 1022
    :cond_3fd
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v0

    .line 1026
    throw v0

    .line 1027
    :pswitch_402
    const/4 v11, 0x1

    .line 1028
    add-int/lit8 v4, v7, 0x2

    .line 1029
    .line 1030
    goto/16 :goto_2fc

    .line 1031
    .line 1032
    :pswitch_407
    const/4 v11, 0x1

    .line 1033
    add-int/lit8 v4, v7, 0x1

    .line 1034
    .line 1035
    goto/16 :goto_2fc

    .line 1036
    .line 1037
    :pswitch_40c
    const/4 v11, 0x1

    .line 1038
    goto :goto_41a

    .line 1039
    :pswitch_40e
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v0

    .line 1043
    throw v0

    .line 1044
    :pswitch_413
    const/4 v11, 0x1

    .line 1045
    invoke-static {v0, v7, v2}, Ls6/d;->b([IILjava/lang/StringBuilder;)I

    .line 1046
    .line 1047
    .line 1048
    move-result v4

    .line 1049
    goto/16 :goto_2fc

    .line 1050
    .line 1051
    :goto_41a
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    .line 1052
    .line 1053
    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1054
    .line 1055
    .line 1056
    const/16 v10, 0x385

    .line 1057
    .line 1058
    const/16 v12, 0x3a0

    .line 1059
    .line 1060
    const-wide/16 v13, 0x384

    .line 1061
    .line 1062
    const/4 v15, 0x6

    .line 1063
    const-wide/16 v19, 0x0

    .line 1064
    .line 1065
    if-eq v4, v10, :cond_481

    .line 1066
    .line 1067
    const/16 v10, 0x39c

    .line 1068
    .line 1069
    if-eq v4, v10, :cond_432

    .line 1070
    .line 1071
    :goto_42e
    const/16 p2, 0x0

    .line 1072
    .line 1073
    goto/16 :goto_4f3

    .line 1074
    .line 1075
    :cond_432
    move v10, v7

    .line 1076
    move-wide/from16 v21, v19

    .line 1077
    .line 1078
    const/4 v4, 0x0

    .line 1079
    const/4 v7, 0x0

    .line 1080
    :goto_437
    const/16 v18, 0x0

    .line 1081
    .line 1082
    aget v6, v0, v18

    .line 1083
    .line 1084
    if-ge v10, v6, :cond_47f

    .line 1085
    .line 1086
    if-nez v4, :cond_47f

    .line 1087
    .line 1088
    add-int/lit8 v6, v10, 0x1

    .line 1089
    .line 1090
    aget v11, v0, v10

    .line 1091
    .line 1092
    if-ge v11, v9, :cond_44e

    .line 1093
    .line 1094
    add-int/lit8 v7, v7, 0x1

    .line 1095
    .line 1096
    mul-long v21, v21, v13

    .line 1097
    .line 1098
    int-to-long v10, v11

    .line 1099
    add-long v21, v21, v10

    .line 1100
    .line 1101
    :goto_44c
    move v10, v6

    .line 1102
    goto :goto_458

    .line 1103
    :cond_44e
    if-eq v11, v12, :cond_457

    .line 1104
    .line 1105
    packed-switch v11, :pswitch_data_598

    .line 1106
    .line 1107
    .line 1108
    packed-switch v11, :pswitch_data_5a2

    .line 1109
    .line 1110
    .line 1111
    goto :goto_44c

    .line 1112
    :cond_457
    :pswitch_457
    const/4 v4, 0x1

    .line 1113
    :goto_458
    rem-int/lit8 v6, v7, 0x5

    .line 1114
    .line 1115
    if-nez v6, :cond_479

    .line 1116
    .line 1117
    if-lez v7, :cond_479

    .line 1118
    .line 1119
    const/4 v6, 0x0

    .line 1120
    :goto_45f
    if-ge v6, v15, :cond_473

    .line 1121
    .line 1122
    rsub-int/lit8 v7, v6, 0x5

    .line 1123
    .line 1124
    mul-int/lit8 v7, v7, 0x8

    .line 1125
    .line 1126
    move-wide/from16 v23, v13

    .line 1127
    .line 1128
    shr-long v13, v21, v7

    .line 1129
    .line 1130
    long-to-int v7, v13

    .line 1131
    int-to-byte v7, v7

    .line 1132
    invoke-virtual {v8, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1133
    .line 1134
    .line 1135
    add-int/lit8 v6, v6, 0x1

    .line 1136
    .line 1137
    move-wide/from16 v13, v23

    .line 1138
    .line 1139
    goto :goto_45f

    .line 1140
    :cond_473
    move-wide/from16 v23, v13

    .line 1141
    .line 1142
    move-wide/from16 v21, v19

    .line 1143
    .line 1144
    const/4 v7, 0x0

    .line 1145
    goto :goto_47b

    .line 1146
    :cond_479
    move-wide/from16 v23, v13

    .line 1147
    .line 1148
    :goto_47b
    move-wide/from16 v13, v23

    .line 1149
    .line 1150
    const/4 v11, 0x1

    .line 1151
    goto :goto_437

    .line 1152
    :cond_47f
    move v7, v10

    .line 1153
    goto :goto_42e

    .line 1154
    :cond_481
    move-wide/from16 v23, v13

    .line 1155
    .line 1156
    new-array v4, v15, [I

    .line 1157
    .line 1158
    add-int/lit8 v6, v7, 0x1

    .line 1159
    .line 1160
    aget v7, v0, v7

    .line 1161
    .line 1162
    move v11, v7

    .line 1163
    move-wide/from16 v13, v19

    .line 1164
    .line 1165
    const/16 p2, 0x0

    .line 1166
    .line 1167
    const/16 v18, 0x0

    .line 1168
    .line 1169
    move v7, v6

    .line 1170
    const/4 v6, 0x0

    .line 1171
    :goto_492
    aget v10, v0, p2

    .line 1172
    .line 1173
    if-ge v7, v10, :cond_4db

    .line 1174
    .line 1175
    if-nez v18, :cond_4db

    .line 1176
    .line 1177
    add-int/lit8 v10, v6, 0x1

    .line 1178
    .line 1179
    aput v11, v4, v6

    .line 1180
    .line 1181
    mul-long v13, v13, v23

    .line 1182
    .line 1183
    move/from16 v22, v10

    .line 1184
    .line 1185
    int-to-long v9, v11

    .line 1186
    add-long/2addr v13, v9

    .line 1187
    add-int/lit8 v6, v7, 0x1

    .line 1188
    .line 1189
    aget v11, v0, v7

    .line 1190
    .line 1191
    if-eq v11, v12, :cond_4d4

    .line 1192
    .line 1193
    packed-switch v11, :pswitch_data_5ac

    .line 1194
    .line 1195
    .line 1196
    packed-switch v11, :pswitch_data_5b6

    .line 1197
    .line 1198
    .line 1199
    rem-int/lit8 v10, v22, 0x5

    .line 1200
    .line 1201
    if-nez v10, :cond_4ce

    .line 1202
    .line 1203
    if-lez v22, :cond_4ce

    .line 1204
    .line 1205
    move/from16 v7, p2

    .line 1206
    .line 1207
    :goto_4b6
    if-ge v7, v15, :cond_4c6

    .line 1208
    .line 1209
    rsub-int/lit8 v9, v7, 0x5

    .line 1210
    .line 1211
    mul-int/lit8 v9, v9, 0x8

    .line 1212
    .line 1213
    shr-long v9, v13, v9

    .line 1214
    .line 1215
    long-to-int v9, v9

    .line 1216
    int-to-byte v9, v9

    .line 1217
    invoke-virtual {v8, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1218
    .line 1219
    .line 1220
    add-int/lit8 v7, v7, 0x1

    .line 1221
    .line 1222
    goto :goto_4b6

    .line 1223
    :cond_4c6
    move v7, v6

    .line 1224
    move-wide/from16 v13, v19

    .line 1225
    .line 1226
    const/16 v9, 0x384

    .line 1227
    .line 1228
    move/from16 v6, p2

    .line 1229
    .line 1230
    goto :goto_492

    .line 1231
    :cond_4ce
    move v7, v6

    .line 1232
    move/from16 v6, v22

    .line 1233
    .line 1234
    const/16 v9, 0x384

    .line 1235
    .line 1236
    goto :goto_492

    .line 1237
    :cond_4d4
    :pswitch_4d4
    move/from16 v6, v22

    .line 1238
    .line 1239
    const/16 v9, 0x384

    .line 1240
    .line 1241
    const/16 v18, 0x1

    .line 1242
    .line 1243
    goto :goto_492

    .line 1244
    :cond_4db
    if-ne v7, v10, :cond_4e6

    .line 1245
    .line 1246
    const/16 v9, 0x384

    .line 1247
    .line 1248
    if-ge v11, v9, :cond_4e6

    .line 1249
    .line 1250
    add-int/lit8 v9, v6, 0x1

    .line 1251
    .line 1252
    aput v11, v4, v6

    .line 1253
    .line 1254
    move v6, v9

    .line 1255
    :cond_4e6
    move/from16 v9, p2

    .line 1256
    .line 1257
    :goto_4e8
    if-ge v9, v6, :cond_4f3

    .line 1258
    .line 1259
    aget v10, v4, v9

    .line 1260
    .line 1261
    int-to-byte v10, v10

    .line 1262
    invoke-virtual {v8, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1263
    .line 1264
    .line 1265
    add-int/lit8 v9, v9, 0x1

    .line 1266
    .line 1267
    goto :goto_4e8

    .line 1268
    :cond_4f3
    :goto_4f3
    new-instance v4, Ljava/lang/String;

    .line 1269
    .line 1270
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 1271
    .line 1272
    .line 1273
    move-result-object v6

    .line 1274
    invoke-direct {v4, v6, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1275
    .line 1276
    .line 1277
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    .line 1279
    .line 1280
    move v4, v7

    .line 1281
    goto :goto_512

    .line 1282
    :pswitch_501
    const/16 p2, 0x0

    .line 1283
    .line 1284
    invoke-static {v0, v7, v2}, Ls6/d;->c([IILjava/lang/StringBuilder;)I

    .line 1285
    .line 1286
    .line 1287
    move-result v4

    .line 1288
    goto :goto_512

    .line 1289
    :cond_508
    const/16 p2, 0x0

    .line 1290
    .line 1291
    add-int/lit8 v4, v7, 0x1

    .line 1292
    .line 1293
    aget v6, v0, v7

    .line 1294
    .line 1295
    int-to-char v6, v6

    .line 1296
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1297
    .line 1298
    .line 1299
    :goto_512
    array-length v6, v0

    .line 1300
    if-ge v4, v6, :cond_51e

    .line 1301
    .line 1302
    add-int/lit8 v7, v4, 0x1

    .line 1303
    .line 1304
    aget v4, v0, v4

    .line 1305
    .line 1306
    move/from16 v18, p2

    .line 1307
    .line 1308
    const/4 v6, 0x2

    .line 1309
    goto/16 :goto_2e6

    .line 1310
    .line 1311
    :cond_51e
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 1312
    .line 1313
    .line 1314
    move-result-object v0

    .line 1315
    throw v0

    .line 1316
    :cond_523
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 1317
    .line 1318
    .line 1319
    move-result v0

    .line 1320
    if-eqz v0, :cond_537

    .line 1321
    .line 1322
    new-instance v0, Lf6/d;

    .line 1323
    .line 1324
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v2

    .line 1328
    move-object/from16 v3, v16

    .line 1329
    .line 1330
    invoke-direct {v0, v3, v2, v3, v1}, Lf6/d;-><init>([BLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1331
    .line 1332
    .line 1333
    iput-object v5, v0, Lf6/d;->g:Ljava/lang/Object;

    .line 1334
    .line 1335
    return-object v0

    .line 1336
    :cond_537
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v0

    .line 1340
    throw v0

    .line 1341
    :cond_53c
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 1342
    .line 1343
    .line 1344
    move-result-object v0

    .line 1345
    throw v0

    .line 1346
    :cond_541
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v0

    .line 1350
    throw v0

    .line 1351
    :cond_546
    move-object/from16 v3, v16

    .line 1352
    .line 1353
    invoke-static {}, Ll9/i;->a()V

    .line 1354
    .line 1355
    .line 1356
    return-object v3

    .line 1357
    :cond_54c
    invoke-static {}, Lz5/c;->a()Lz5/c;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v0

    .line 1361
    throw v0

    .line 1362
    :cond_551
    invoke-static {}, Lz5/c;->a()Lz5/c;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v0

    .line 1366
    throw v0

    .line 1367
    :cond_556
    const/4 v3, 0x0

    .line 1368
    invoke-static {}, Ll9/i;->a()V

    .line 1369
    .line 1370
    .line 1371
    return-object v3

    .line 1372
    :cond_55b
    const/4 v3, 0x0

    .line 1373
    invoke-static {}, Ll9/i;->a()V

    .line 1374
    .line 1375
    .line 1376
    return-object v3

    .line 1377
    :cond_560
    invoke-static {}, Lz5/c;->a()Lz5/c;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v0

    .line 1381
    throw v0

    .line 1382
    :cond_565
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 1383
    .line 1384
    .line 1385
    move-result-object v0

    .line 1386
    throw v0

    .line 1387
    :pswitch_data_56a
    .packed-switch 0x384
        :pswitch_501
        :pswitch_40c
        :pswitch_413
    .end packed-switch

    .line 1388
    .line 1389
    .line 1390
    .line 1391
    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    :pswitch_data_574
    .packed-switch 0x39a
        :pswitch_40e
        :pswitch_40e
        :pswitch_40c
        :pswitch_407
        :pswitch_402
        :pswitch_3dc
        :pswitch_300
    .end packed-switch

    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    .line 1413
    .line 1414
    .line 1415
    :pswitch_data_586
    .packed-switch 0x0
        :pswitch_3ad
        :pswitch_399
        :pswitch_386
        :pswitch_37a
        :pswitch_36e
        :pswitch_35b
        :pswitch_348
    .end packed-switch

    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    .line 1421
    .line 1422
    .line 1423
    .line 1424
    .line 1425
    .line 1426
    .line 1427
    .line 1428
    .line 1429
    .line 1430
    .line 1431
    .line 1432
    .line 1433
    :pswitch_data_598
    .packed-switch 0x384
        :pswitch_457
        :pswitch_457
        :pswitch_457
    .end packed-switch

    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    .line 1440
    .line 1441
    .line 1442
    .line 1443
    :pswitch_data_5a2
    .packed-switch 0x39a
        :pswitch_457
        :pswitch_457
        :pswitch_457
    .end packed-switch

    .line 1444
    .line 1445
    .line 1446
    .line 1447
    .line 1448
    .line 1449
    .line 1450
    .line 1451
    .line 1452
    .line 1453
    :pswitch_data_5ac
    .packed-switch 0x384
        :pswitch_4d4
        :pswitch_4d4
        :pswitch_4d4
    .end packed-switch

    .line 1454
    .line 1455
    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    .line 1462
    .line 1463
    :pswitch_data_5b6
    .packed-switch 0x39a
        :pswitch_4d4
        :pswitch_4d4
        :pswitch_4d4
    .end packed-switch
.end method

.method public static c(Lf6/b;IIZIIII)Ls6/a;
    .registers 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p5

    .line 8
    .line 9
    const/4 v4, -0x1

    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz p3, :cond_e

    .line 12
    .line 13
    move v6, v4

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    move v6, v5

    .line 16
    :goto_f
    const/4 v7, 0x0

    .line 17
    move/from16 v10, p3

    .line 18
    .line 19
    move/from16 v9, p4

    .line 20
    .line 21
    move v8, v7

    .line 22
    :goto_15
    const/4 v11, 0x2

    .line 23
    if-ge v8, v11, :cond_38

    .line 24
    .line 25
    :goto_18
    if-eqz v10, :cond_1d

    .line 26
    .line 27
    if-lt v9, v1, :cond_32

    .line 28
    .line 29
    goto :goto_1f

    .line 30
    :cond_1d
    if-ge v9, v2, :cond_32

    .line 31
    .line 32
    :goto_1f
    invoke-virtual {v0, v9, v3}, Lf6/b;->b(II)Z

    .line 33
    .line 34
    .line 35
    move-result v12

    .line 36
    if-ne v10, v12, :cond_32

    .line 37
    .line 38
    sub-int v12, p4, v9

    .line 39
    .line 40
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    .line 41
    .line 42
    .line 43
    move-result v12

    .line 44
    if-le v12, v11, :cond_30

    .line 45
    .line 46
    move/from16 v9, p4

    .line 47
    .line 48
    goto :goto_38

    .line 49
    :cond_30
    add-int/2addr v9, v6

    .line 50
    goto :goto_18

    .line 51
    :cond_32
    neg-int v6, v6

    .line 52
    xor-int/lit8 v10, v10, 0x1

    .line 53
    .line 54
    add-int/lit8 v8, v8, 0x1

    .line 55
    .line 56
    goto :goto_15

    .line 57
    :cond_38
    :goto_38
    const/16 v6, 0x8

    .line 58
    .line 59
    new-array v8, v6, [I

    .line 60
    .line 61
    if-eqz p3, :cond_40

    .line 62
    .line 63
    move v10, v5

    .line 64
    goto :goto_41

    .line 65
    :cond_40
    move v10, v4

    .line 66
    :goto_41
    move/from16 v14, p3

    .line 67
    .line 68
    move v13, v7

    .line 69
    move v12, v9

    .line 70
    :goto_45
    if-eqz p3, :cond_4a

    .line 71
    .line 72
    if-ge v12, v2, :cond_60

    .line 73
    .line 74
    goto :goto_4c

    .line 75
    :cond_4a
    if-lt v12, v1, :cond_60

    .line 76
    .line 77
    :goto_4c
    if-ge v13, v6, :cond_60

    .line 78
    .line 79
    invoke-virtual {v0, v12, v3}, Lf6/b;->b(II)Z

    .line 80
    .line 81
    .line 82
    move-result v15

    .line 83
    if-ne v15, v14, :cond_5b

    .line 84
    .line 85
    aget v15, v8, v13

    .line 86
    .line 87
    add-int/2addr v15, v5

    .line 88
    aput v15, v8, v13

    .line 89
    .line 90
    add-int/2addr v12, v10

    .line 91
    goto :goto_45

    .line 92
    :cond_5b
    add-int/lit8 v13, v13, 0x1

    .line 93
    .line 94
    xor-int/lit8 v14, v14, 0x1

    .line 95
    .line 96
    goto :goto_45

    .line 97
    :cond_60
    const/4 v0, 0x7

    .line 98
    if-eq v13, v6, :cond_6c

    .line 99
    .line 100
    if-eqz p3, :cond_66

    .line 101
    .line 102
    move v1, v2

    .line 103
    :cond_66
    if-ne v12, v1, :cond_6b

    .line 104
    .line 105
    if-ne v13, v0, :cond_6b

    .line 106
    .line 107
    goto :goto_6c

    .line 108
    :cond_6b
    const/4 v8, 0x0

    .line 109
    :cond_6c
    :goto_6c
    if-nez v8, :cond_72

    .line 110
    .line 111
    :cond_6e
    const/16 p4, 0x0

    .line 112
    .line 113
    goto/16 :goto_1ac

    .line 114
    .line 115
    :cond_72
    invoke-static {v8}, La/a;->x([I)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz p3, :cond_7b

    .line 120
    .line 121
    add-int v2, v9, v1

    .line 122
    .line 123
    goto :goto_98

    .line 124
    :cond_7b
    move v2, v7

    .line 125
    :goto_7c
    array-length v10, v8

    .line 126
    div-int/2addr v10, v11

    .line 127
    if-ge v2, v10, :cond_91

    .line 128
    .line 129
    aget v10, v8, v2

    .line 130
    .line 131
    array-length v12, v8

    .line 132
    sub-int/2addr v12, v5

    .line 133
    sub-int/2addr v12, v2

    .line 134
    aget v12, v8, v12

    .line 135
    .line 136
    aput v12, v8, v2

    .line 137
    .line 138
    array-length v12, v8

    .line 139
    sub-int/2addr v12, v5

    .line 140
    sub-int/2addr v12, v2

    .line 141
    aput v10, v8, v12

    .line 142
    .line 143
    add-int/lit8 v2, v2, 0x1

    .line 144
    .line 145
    goto :goto_7c

    .line 146
    :cond_91
    sub-int v2, v9, v1

    .line 147
    .line 148
    move/from16 v18, v9

    .line 149
    .line 150
    move v9, v2

    .line 151
    move/from16 v2, v18

    .line 152
    .line 153
    :goto_98
    add-int/lit8 v10, p6, -0x2

    .line 154
    .line 155
    if-gt v10, v1, :cond_6e

    .line 156
    .line 157
    add-int/lit8 v10, p7, 0x2

    .line 158
    .line 159
    if-gt v1, v10, :cond_6e

    .line 160
    .line 161
    sget-object v1, Ls6/f;->a:[[F

    .line 162
    .line 163
    invoke-static {v8}, La/a;->x([I)I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    int-to-float v1, v1

    .line 168
    new-array v10, v6, [I

    .line 169
    .line 170
    move v12, v7

    .line 171
    move v13, v12

    .line 172
    move v14, v13

    .line 173
    :goto_ac
    const/16 v15, 0x11

    .line 174
    .line 175
    if-ge v12, v15, :cond_d1

    .line 176
    .line 177
    const/high16 v15, 0x42080000    # 34.0f

    .line 178
    .line 179
    div-float v15, v1, v15

    .line 180
    .line 181
    int-to-float v0, v12

    .line 182
    mul-float/2addr v0, v1

    .line 183
    const/high16 v16, 0x41880000    # 17.0f

    .line 184
    .line 185
    div-float v0, v0, v16

    .line 186
    .line 187
    add-float/2addr v0, v15

    .line 188
    aget v15, v8, v14

    .line 189
    .line 190
    add-int/2addr v15, v13

    .line 191
    const/16 p4, 0x0

    .line 192
    .line 193
    int-to-float v3, v15

    .line 194
    cmpg-float v0, v3, v0

    .line 195
    .line 196
    if-gtz v0, :cond_c8

    .line 197
    .line 198
    add-int/lit8 v14, v14, 0x1

    .line 199
    .line 200
    move v13, v15

    .line 201
    :cond_c8
    aget v0, v10, v14

    .line 202
    .line 203
    add-int/2addr v0, v5

    .line 204
    aput v0, v10, v14

    .line 205
    .line 206
    add-int/lit8 v12, v12, 0x1

    .line 207
    .line 208
    const/4 v0, 0x7

    .line 209
    goto :goto_ac

    .line 210
    :cond_d1
    const/16 p4, 0x0

    .line 211
    .line 212
    const-wide/16 v0, 0x0

    .line 213
    .line 214
    move v3, v7

    .line 215
    :goto_d6
    if-ge v3, v6, :cond_ed

    .line 216
    .line 217
    move v12, v7

    .line 218
    :goto_d9
    aget v13, v10, v3

    .line 219
    .line 220
    if-ge v12, v13, :cond_ea

    .line 221
    .line 222
    shl-long/2addr v0, v5

    .line 223
    rem-int/lit8 v13, v3, 0x2

    .line 224
    .line 225
    if-nez v13, :cond_e4

    .line 226
    .line 227
    move v13, v5

    .line 228
    goto :goto_e5

    .line 229
    :cond_e4
    move v13, v7

    .line 230
    :goto_e5
    int-to-long v13, v13

    .line 231
    or-long/2addr v0, v13

    .line 232
    add-int/lit8 v12, v12, 0x1

    .line 233
    .line 234
    goto :goto_d9

    .line 235
    :cond_ea
    add-int/lit8 v3, v3, 0x1

    .line 236
    .line 237
    goto :goto_d6

    .line 238
    :cond_ed
    long-to-int v0, v0

    .line 239
    const v1, 0x3ffff

    .line 240
    .line 241
    .line 242
    and-int v3, v0, v1

    .line 243
    .line 244
    sget-object v10, Lr6/a;->b:[I

    .line 245
    .line 246
    invoke-static {v10, v3}, Ljava/util/Arrays;->binarySearch([II)I

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    sget-object v12, Lr6/a;->c:[I

    .line 251
    .line 252
    if-gez v3, :cond_ff

    .line 253
    .line 254
    move v3, v4

    .line 255
    goto :goto_104

    .line 256
    :cond_ff
    aget v3, v12, v3

    .line 257
    .line 258
    sub-int/2addr v3, v5

    .line 259
    rem-int/lit16 v3, v3, 0x3a1

    .line 260
    .line 261
    :goto_104
    if-ne v3, v4, :cond_107

    .line 262
    .line 263
    move v0, v4

    .line 264
    :cond_107
    if-eq v0, v4, :cond_10c

    .line 265
    .line 266
    :cond_109
    move/from16 p1, v1

    .line 267
    .line 268
    goto :goto_151

    .line 269
    :cond_10c
    invoke-static {v8}, La/a;->x([I)I

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    new-array v3, v6, [F

    .line 274
    .line 275
    if-le v0, v5, :cond_121

    .line 276
    .line 277
    move v13, v7

    .line 278
    :goto_115
    if-ge v13, v6, :cond_121

    .line 279
    .line 280
    aget v14, v8, v13

    .line 281
    .line 282
    int-to-float v14, v14

    .line 283
    int-to-float v15, v0

    .line 284
    div-float/2addr v14, v15

    .line 285
    aput v14, v3, v13

    .line 286
    .line 287
    add-int/lit8 v13, v13, 0x1

    .line 288
    .line 289
    goto :goto_115

    .line 290
    :cond_121
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 291
    .line 292
    .line 293
    move v8, v0

    .line 294
    move v0, v4

    .line 295
    move v13, v7

    .line 296
    :goto_127
    sget-object v14, Ls6/f;->a:[[F

    .line 297
    .line 298
    array-length v15, v14

    .line 299
    if-ge v13, v15, :cond_109

    .line 300
    .line 301
    aget-object v14, v14, v13

    .line 302
    .line 303
    const/4 v15, 0x0

    .line 304
    move/from16 p1, v1

    .line 305
    .line 306
    move v1, v7

    .line 307
    :goto_132
    if-ge v1, v6, :cond_145

    .line 308
    .line 309
    aget v16, v14, v1

    .line 310
    .line 311
    aget v17, v3, v1

    .line 312
    .line 313
    sub-float v16, v16, v17

    .line 314
    .line 315
    mul-float v16, v16, v16

    .line 316
    .line 317
    add-float v15, v16, v15

    .line 318
    .line 319
    cmpl-float v16, v15, v8

    .line 320
    .line 321
    if-gez v16, :cond_145

    .line 322
    .line 323
    add-int/lit8 v1, v1, 0x1

    .line 324
    .line 325
    goto :goto_132

    .line 326
    :cond_145
    cmpg-float v1, v15, v8

    .line 327
    .line 328
    if-gez v1, :cond_14c

    .line 329
    .line 330
    aget v0, v10, v13

    .line 331
    .line 332
    move v8, v15

    .line 333
    :cond_14c
    add-int/lit8 v13, v13, 0x1

    .line 334
    .line 335
    move/from16 v1, p1

    .line 336
    .line 337
    goto :goto_127

    .line 338
    :goto_151
    and-int v1, v0, p1

    .line 339
    .line 340
    invoke-static {v10, v1}, Ljava/util/Arrays;->binarySearch([II)I

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    if-gez v1, :cond_15b

    .line 345
    .line 346
    move v1, v4

    .line 347
    goto :goto_160

    .line 348
    :cond_15b
    aget v1, v12, v1

    .line 349
    .line 350
    sub-int/2addr v1, v5

    .line 351
    rem-int/lit16 v1, v1, 0x3a1

    .line 352
    .line 353
    :goto_160
    if-ne v1, v4, :cond_163

    .line 354
    .line 355
    goto :goto_1ac

    .line 356
    :cond_163
    new-instance v3, Ls6/a;

    .line 357
    .line 358
    new-array v4, v6, [I

    .line 359
    .line 360
    move v8, v7

    .line 361
    const/4 v6, 0x7

    .line 362
    :goto_169
    and-int/lit8 v10, v0, 0x1

    .line 363
    .line 364
    if-eq v10, v8, :cond_19a

    .line 365
    .line 366
    add-int/lit8 v6, v6, -0x1

    .line 367
    .line 368
    if-ltz v6, :cond_176

    .line 369
    .line 370
    move-object v8, v3

    .line 371
    move v3, v1

    .line 372
    move-object v1, v8

    .line 373
    move v8, v10

    .line 374
    goto :goto_19f

    .line 375
    :cond_176
    aget v0, v4, v7

    .line 376
    .line 377
    aget v5, v4, v11

    .line 378
    .line 379
    sub-int/2addr v0, v5

    .line 380
    const/4 v5, 0x4

    .line 381
    aget v5, v4, v5

    .line 382
    .line 383
    add-int/2addr v0, v5

    .line 384
    const/4 v5, 0x6

    .line 385
    aget v4, v4, v5

    .line 386
    .line 387
    sub-int/2addr v0, v4

    .line 388
    add-int/lit8 v0, v0, 0x9

    .line 389
    .line 390
    rem-int/lit8 v0, v0, 0x9

    .line 391
    .line 392
    const/4 v4, 0x1

    .line 393
    move/from16 p3, v0

    .line 394
    .line 395
    move/from16 p4, v1

    .line 396
    .line 397
    move/from16 p2, v2

    .line 398
    .line 399
    move-object/from16 p0, v3

    .line 400
    .line 401
    move/from16 p5, v4

    .line 402
    .line 403
    move/from16 p1, v9

    .line 404
    .line 405
    invoke-direct/range {p0 .. p5}, Ls6/a;-><init>(IIIII)V

    .line 406
    .line 407
    .line 408
    move-object/from16 v1, p0

    .line 409
    .line 410
    return-object v1

    .line 411
    :cond_19a
    move-object/from16 v18, v3

    .line 412
    .line 413
    move v3, v1

    .line 414
    move-object/from16 v1, v18

    .line 415
    .line 416
    :goto_19f
    aget v10, v4, v6

    .line 417
    .line 418
    add-int/2addr v10, v5

    .line 419
    aput v10, v4, v6

    .line 420
    .line 421
    shr-int/lit8 v0, v0, 0x1

    .line 422
    .line 423
    move/from16 v18, v3

    .line 424
    .line 425
    move-object v3, v1

    .line 426
    move/from16 v1, v18

    .line 427
    .line 428
    goto :goto_169

    .line 429
    :goto_1ac
    return-object p4
.end method

.method public static d(Lf6/b;Ls6/c;Lz5/o;ZII)Ls6/e;
    .registers 17

    .line 1
    move v3, p3

    .line 2
    new-instance v8, Ls6/e;

    .line 3
    .line 4
    invoke-direct {v8, p1, p3}, Ls6/e;-><init>(Ls6/c;Z)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    move v9, v0

    .line 9
    :goto_8
    const/4 v0, 0x2

    .line 10
    if-ge v9, v0, :cond_49

    .line 11
    .line 12
    if-nez v9, :cond_10

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    :goto_e
    move v10, v0

    .line 16
    goto :goto_12

    .line 17
    :cond_10
    const/4 v0, -0x1

    .line 18
    goto :goto_e

    .line 19
    :goto_12
    iget v0, p2, Lz5/o;->a:F

    .line 20
    .line 21
    float-to-int v0, v0

    .line 22
    iget v1, p2, Lz5/o;->b:F

    .line 23
    .line 24
    float-to-int v1, v1

    .line 25
    move v4, v0

    .line 26
    move v5, v1

    .line 27
    :goto_1a
    iget v0, p1, Ls6/c;->i:I

    .line 28
    .line 29
    if-gt v5, v0, :cond_45

    .line 30
    .line 31
    iget v0, p1, Ls6/c;->h:I

    .line 32
    .line 33
    if-lt v5, v0, :cond_45

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    iget v2, p0, Lf6/b;->b:I

    .line 37
    .line 38
    move-object v0, p0

    .line 39
    move v6, p4

    .line 40
    move/from16 v7, p5

    .line 41
    .line 42
    invoke-static/range {v0 .. v7}, Ls6/g;->c(Lf6/b;IIZIIII)Ls6/a;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_42

    .line 47
    .line 48
    iget-object v0, v8, Ll/d;->d:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, [Ls6/a;

    .line 51
    .line 52
    invoke-virtual {v8, v5}, Ll/d;->x(I)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    aput-object v1, v0, v2

    .line 57
    .line 58
    if-eqz p3, :cond_3f

    .line 59
    .line 60
    iget v0, v1, Ls6/a;->b:I

    .line 61
    .line 62
    :goto_3d
    move v4, v0

    .line 63
    goto :goto_42

    .line 64
    :cond_3f
    iget v0, v1, Ls6/a;->c:I

    .line 65
    .line 66
    goto :goto_3d

    .line 67
    :cond_42
    :goto_42
    add-int/2addr v5, v10

    .line 68
    move v3, p3

    .line 69
    goto :goto_1a

    .line 70
    :cond_45
    add-int/lit8 v9, v9, 0x1

    .line 71
    .line 72
    move v3, p3

    .line 73
    goto :goto_8

    .line 74
    :cond_49
    return-object v8
.end method
