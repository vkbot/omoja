.class public final Lm0/e1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/io/Serializable;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lz3/o;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lm0/e1;->b()V

    .line 5
    .line 6
    .line 7
    sget-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Lm0/e1;->a([ILz3/o;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a([ILz3/o;)V
    .locals 5

    .line 1
    iget v0, p0, Lm0/e1;->b:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    array-length v1, p1

    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    :cond_0
    iput-object p2, p0, Lm0/e1;->c:Ljava/lang/Object;

    .line 9
    .line 10
    :cond_1
    iget-object v1, p0, Lm0/e1;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, [[I

    .line 13
    .line 14
    array-length v2, v1

    .line 15
    if-lt v0, v2, :cond_2

    .line 16
    .line 17
    add-int/lit8 v2, v0, 0xa

    .line 18
    .line 19
    new-array v3, v2, [[I

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-static {v1, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    .line 24
    .line 25
    iput-object v3, p0, Lm0/e1;->d:Ljava/lang/Object;

    .line 26
    .line 27
    new-array v1, v2, [Lz3/o;

    .line 28
    .line 29
    iget-object v2, p0, Lm0/e1;->e:Ljava/io/Serializable;

    .line 30
    .line 31
    check-cast v2, [Lz3/o;

    .line 32
    .line 33
    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lm0/e1;->e:Ljava/io/Serializable;

    .line 37
    .line 38
    :cond_2
    iget-object v0, p0, Lm0/e1;->d:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, [[I

    .line 41
    .line 42
    iget v1, p0, Lm0/e1;->b:I

    .line 43
    .line 44
    aput-object p1, v0, v1

    .line 45
    .line 46
    iget-object p1, p0, Lm0/e1;->e:Ljava/io/Serializable;

    .line 47
    .line 48
    check-cast p1, [Lz3/o;

    .line 49
    .line 50
    aput-object p2, p1, v1

    .line 51
    .line 52
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    iput v1, p0, Lm0/e1;->b:I

    .line 55
    .line 56
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    new-instance v0, Lz3/o;

    .line 2
    .line 3
    invoke-direct {v0}, Lz3/o;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lm0/e1;->c:Ljava/lang/Object;

    .line 7
    .line 8
    const/16 v0, 0xa

    .line 9
    .line 10
    new-array v1, v0, [[I

    .line 11
    .line 12
    iput-object v1, p0, Lm0/e1;->d:Ljava/lang/Object;

    .line 13
    .line 14
    new-array v0, v0, [Lz3/o;

    .line 15
    .line 16
    iput-object v0, p0, Lm0/e1;->e:Ljava/io/Serializable;

    .line 17
    .line 18
    return-void
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lm0/e1;->i:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lm0/i1;

    .line 4
    .line 5
    iget-object p2, p0, Lm0/e1;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    iget-object v0, p0, Lm0/e1;->d:Ljava/lang/Object;

    .line 10
    .line 11
    move-object v3, v0

    .line 12
    check-cast v3, Lm0/h1;

    .line 13
    .line 14
    iget-object v0, p0, Lm0/e1;->e:Ljava/io/Serializable;

    .line 15
    .line 16
    move-object v4, v0

    .line 17
    check-cast v4, Ljava/lang/String;

    .line 18
    .line 19
    iget v5, p0, Lm0/e1;->b:I

    .line 20
    .line 21
    new-instance v1, Lm0/c1;

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    move-object v2, p0

    .line 25
    invoke-direct/range {v1 .. v6}, Lm0/c1;-><init>(Lm0/e1;Lm0/h1;Ljava/lang/String;II)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lm0/i1;->i:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p1, p2, v1}, Lm0/i1;->z(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lm0/e1;->h:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, v1, Lm0/e1;->e:Ljava/io/Serializable;

    .line 8
    .line 9
    move-object v3, v2

    .line 10
    check-cast v3, Ljava/lang/String;

    .line 11
    .line 12
    iget v4, v1, Lm0/e1;->b:I

    .line 13
    .line 14
    iget-object v2, v1, Lm0/e1;->c:Ljava/lang/Object;

    .line 15
    .line 16
    move-object v6, v2

    .line 17
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    .line 19
    iget-object v2, v1, Lm0/e1;->i:Ljava/lang/Object;

    .line 20
    .line 21
    move-object v7, v2

    .line 22
    check-cast v7, Lm0/i1;

    .line 23
    .line 24
    iget-object v2, v1, Lm0/e1;->d:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v2, Lm0/h1;

    .line 27
    .line 28
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->isSuccessful()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-nez v5, :cond_0

    .line 33
    .line 34
    new-instance v0, Lm0/c1;

    .line 35
    .line 36
    const/4 v5, 0x1

    .line 37
    invoke-direct/range {v0 .. v5}, Lm0/c1;-><init>(Lm0/e1;Lm0/h1;Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sget-object v2, Lm0/i1;->i:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v7, v6, v0}, Lm0/i1;->z(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :goto_0
    move-object v1, v0

    .line 50
    goto/16 :goto_3

    .line 51
    .line 52
    :catchall_0
    move-exception v0

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    :try_start_2
    new-instance v5, Ljava/io/File;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    const/4 v9, 0x7

    .line 61
    new-array v9, v9, [B

    .line 62
    .line 63
    fill-array-data v9, :array_0

    .line 64
    .line 65
    .line 66
    const/16 v10, 0x8

    .line 67
    .line 68
    new-array v11, v10, [B

    .line 69
    .line 70
    fill-array-data v11, :array_1

    .line 71
    .line 72
    .line 73
    invoke-static {v9, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    invoke-direct {v5, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    if-nez v8, :cond_1

    .line 85
    .line 86
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 87
    .line 88
    .line 89
    :cond_1
    new-instance v8, Ljava/io/File;

    .line 90
    .line 91
    new-instance v9, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    iget-object v11, v2, Lm0/h1;->c:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const/4 v11, 0x4

    .line 102
    new-array v11, v11, [B

    .line 103
    .line 104
    fill-array-data v11, :array_2

    .line 105
    .line 106
    .line 107
    new-array v10, v10, [B

    .line 108
    .line 109
    fill-array-data v10, :array_3

    .line 110
    .line 111
    .line 112
    invoke-static {v11, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    invoke-direct {v8, v5, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->contentLength()J

    .line 131
    .line 132
    .line 133
    move-result-wide v9

    .line 134
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    new-instance v11, Ljava/io/FileOutputStream;

    .line 143
    .line 144
    invoke-direct {v11, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 145
    .line 146
    .line 147
    const/16 v12, 0x2000

    .line 148
    .line 149
    new-array v12, v12, [B

    .line 150
    .line 151
    const-wide/16 v15, 0x0

    .line 152
    .line 153
    const-wide/16 v17, 0x0

    .line 154
    .line 155
    :goto_1
    invoke-virtual {v5, v12}, Ljava/io/InputStream;->read([B)I

    .line 156
    .line 157
    .line 158
    move-result v13

    .line 159
    const/4 v14, -0x1

    .line 160
    if-eq v13, v14, :cond_3

    .line 161
    .line 162
    const/4 v14, 0x0

    .line 163
    invoke-virtual {v11, v12, v14, v13}, Ljava/io/FileOutputStream;->write([BII)V

    .line 164
    .line 165
    .line 166
    move-wide/from16 v19, v15

    .line 167
    .line 168
    int-to-long v14, v13

    .line 169
    add-long v15, v19, v14

    .line 170
    .line 171
    cmp-long v13, v9, v17

    .line 172
    .line 173
    if-lez v13, :cond_2

    .line 174
    .line 175
    const-wide/16 v13, 0x64

    .line 176
    .line 177
    mul-long/2addr v13, v15

    .line 178
    div-long/2addr v13, v9

    .line 179
    long-to-int v14, v13

    .line 180
    goto :goto_2

    .line 181
    :cond_2
    const/4 v14, 0x0

    .line 182
    :goto_2
    new-instance v13, Lm0/d1;

    .line 183
    .line 184
    invoke-direct {v13, v1, v2, v14, v4}, Lm0/d1;-><init>(Lm0/e1;Lm0/h1;II)V

    .line 185
    .line 186
    .line 187
    sget-object v14, Lm0/i1;->i:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v7, v6, v13}, Lm0/i1;->z(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/Runnable;)V

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_3
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 200
    .line 201
    .line 202
    iget-object v5, v1, Lm0/e1;->f:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast v5, Ljava/lang/String;

    .line 205
    .line 206
    iget-object v9, v2, Lm0/h1;->d:Ljava/lang/String;

    .line 207
    .line 208
    invoke-static {v7, v0, v5, v9, v8}, Lm0/i1;->t(Lm0/i1;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-eqz v0, :cond_4

    .line 213
    .line 214
    iget-object v0, v1, Lm0/e1;->g:Ljava/lang/Object;

    .line 215
    .line 216
    move-object v3, v0

    .line 217
    check-cast v3, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    .line 219
    :cond_4
    :try_start_3
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 220
    .line 221
    .line 222
    :catch_0
    :try_start_4
    new-instance v0, Lm0/c1;

    .line 223
    .line 224
    const/4 v5, 0x2

    .line 225
    invoke-direct/range {v0 .. v5}, Lm0/c1;-><init>(Lm0/e1;Lm0/h1;Ljava/lang/String;II)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v7, v6, v0}, Lm0/i1;->z(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 229
    .line 230
    .line 231
    :try_start_5
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 232
    .line 233
    .line 234
    goto :goto_5

    .line 235
    :goto_3
    if-eqz p2, :cond_5

    .line 236
    .line 237
    :try_start_6
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 238
    .line 239
    .line 240
    goto :goto_4

    .line 241
    :catchall_1
    move-exception v0

    .line 242
    :try_start_7
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 243
    .line 244
    .line 245
    :cond_5
    :goto_4
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 246
    :catch_1
    :goto_5
    return-void

    .line 247
    :array_0
    .array-data 1
        0x7at
        -0x2at
        0x19t
        -0x15t
        0x1dt
        -0x7bt
        0x7ft
    .end array-data

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    :array_1
    .array-data 1
        0x9t
        -0x4bt
        0x6bt
        -0x72t
        0x78t
        -0x15t
        0xct
        0x21t
    .end array-data

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    :array_2
    .array-data 1
        0x6at
        -0x53t
        -0x1et
        -0x22t
    .end array-data

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    :array_3
    .array-data 1
        0x44t
        -0x29t
        -0x75t
        -0x52t
        0x2ft
        -0x1bt
        0x56t
        0x5ft
    .end array-data
.end method
