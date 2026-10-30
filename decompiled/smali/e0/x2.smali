.class public final Le0/x2;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/io/File;

.field public final synthetic d:J

.field public final synthetic e:Le0/y2;


# direct methods
.method public constructor <init>(Le0/y2;Landroid/content/Context;Ljava/io/File;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le0/x2;->e:Le0/y2;

    .line 5
    .line 6
    iput-object p2, p0, Le0/x2;->b:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Le0/x2;->c:Ljava/io/File;

    .line 9
    .line 10
    iput-wide p4, p0, Le0/x2;->d:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le0/x2;->e:Le0/y2;

    .line 2
    .line 3
    iget-object p2, p0, Le0/x2;->b:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {p1, p2}, Le0/y2;->a(Le0/y2;Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Le0/x2;->b:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v3, v1, Le0/x2;->e:Le0/y2;

    .line 6
    .line 7
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->isSuccessful()Z

    .line 8
    .line 9
    .line 10
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    const-wide/16 v6, 0x0

    .line 12
    .line 13
    iget-object v8, v1, Le0/x2;->c:Ljava/io/File;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    :cond_0
    move-wide/from16 v16, v6

    .line 24
    .line 25
    goto/16 :goto_8

    .line 26
    .line 27
    :cond_1
    iget-wide v9, v1, Le0/x2;->d:J

    .line 28
    .line 29
    cmp-long v0, v9, v6

    .line 30
    .line 31
    const/4 v11, 0x0

    .line 32
    if-lez v0, :cond_2

    .line 33
    .line 34
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->code()I

    .line 35
    .line 36
    .line 37
    move-result v12

    .line 38
    const/16 v13, 0xce

    .line 39
    .line 40
    if-ne v12, v13, :cond_2

    .line 41
    .line 42
    const/4 v12, 0x1

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto/16 :goto_9

    .line 46
    .line 47
    :cond_2
    move v12, v11

    .line 48
    :goto_0
    if-lez v0, :cond_4

    .line 49
    .line 50
    if-nez v12, :cond_4

    .line 51
    .line 52
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 59
    .line 60
    .line 61
    :cond_3
    move-wide v9, v6

    .line 62
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    .line 67
    .line 68
    .line 69
    move-result-wide v13

    .line 70
    cmp-long v15, v13, v6

    .line 71
    .line 72
    if-lez v15, :cond_5

    .line 73
    .line 74
    add-long/2addr v13, v9

    .line 75
    goto :goto_1

    .line 76
    :cond_5
    const-wide/16 v13, -0x1

    .line 77
    .line 78
    :goto_1
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    .line 79
    .line 80
    .line 81
    move-result-object v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    move-wide/from16 v16, v6

    .line 83
    .line 84
    :try_start_2
    new-instance v6, Ljava/io/FileOutputStream;

    .line 85
    .line 86
    invoke-direct {v6, v8, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 87
    .line 88
    .line 89
    const/16 v0, 0x2000

    .line 90
    .line 91
    :try_start_3
    new-array v0, v0, [B

    .line 92
    .line 93
    move v7, v11

    .line 94
    :goto_2
    invoke-virtual {v15, v0}, Ljava/io/InputStream;->read([B)I

    .line 95
    .line 96
    .line 97
    move-result v12

    .line 98
    const/4 v4, -0x1

    .line 99
    if-eq v12, v4, :cond_8

    .line 100
    .line 101
    invoke-virtual {v6, v0, v11, v12}, Ljava/io/FileOutputStream;->write([BII)V

    .line 102
    .line 103
    .line 104
    int-to-long v11, v12

    .line 105
    add-long/2addr v9, v11

    .line 106
    cmp-long v11, v13, v16

    .line 107
    .line 108
    if-lez v11, :cond_6

    .line 109
    .line 110
    const-wide/16 v11, 0x64

    .line 111
    .line 112
    mul-long/2addr v11, v9

    .line 113
    div-long/2addr v11, v13

    .line 114
    long-to-int v7, v11

    .line 115
    goto :goto_3

    .line 116
    :catchall_1
    move-exception v0

    .line 117
    move-object v4, v0

    .line 118
    goto :goto_4

    .line 119
    :cond_6
    :goto_3
    iget-object v11, v3, Le0/y2;->a:Le0/g2;

    .line 120
    .line 121
    iget-object v12, v11, Le0/g2;->e:Landroidx/appcompat/app/AppCompatActivity;

    .line 122
    .line 123
    new-instance v4, La4/c;

    .line 124
    .line 125
    const/4 v5, 0x5

    .line 126
    invoke-direct {v4, v11, v7, v5}, La4/c;-><init>(Ljava/lang/Object;II)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v12, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 130
    .line 131
    .line 132
    iget-boolean v4, v3, Le0/y2;->b:Z

    .line 133
    .line 134
    if-eqz v4, :cond_7

    .line 135
    .line 136
    invoke-virtual {v3, v2}, Le0/y2;->b(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 137
    .line 138
    .line 139
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 140
    .line 141
    .line 142
    :try_start_5
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 143
    .line 144
    .line 145
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->close()V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :catchall_2
    move-exception v0

    .line 150
    move-object v4, v0

    .line 151
    goto :goto_6

    .line 152
    :cond_7
    const/4 v11, 0x0

    .line 153
    goto :goto_2

    .line 154
    :cond_8
    :try_start_6
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 155
    .line 156
    .line 157
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 158
    .line 159
    .line 160
    :try_start_8
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 161
    .line 162
    .line 163
    const/4 v0, 0x1

    .line 164
    iput-boolean v0, v3, Le0/y2;->b:Z

    .line 165
    .line 166
    iget-object v0, v3, Le0/y2;->a:Le0/g2;

    .line 167
    .line 168
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    const v5, 0x7f1301a7

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    iget-object v5, v0, Le0/g2;->e:Landroidx/appcompat/app/AppCompatActivity;

    .line 180
    .line 181
    new-instance v6, La1/a;

    .line 182
    .line 183
    const/16 v7, 0x1d

    .line 184
    .line 185
    invoke-direct {v6, v7, v0, v4}, La1/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    iget-object v4, v3, Le0/y2;->a:Le0/g2;

    .line 196
    .line 197
    invoke-static {v0, v2, v4}, Le0/y2;->c(Ljava/lang/String;Landroid/content/Context;Le0/g2;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 198
    .line 199
    .line 200
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->close()V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :goto_4
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 205
    .line 206
    .line 207
    goto :goto_5

    .line 208
    :catchall_3
    move-exception v0

    .line 209
    :try_start_a
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 210
    .line 211
    .line 212
    :goto_5
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 213
    :goto_6
    if-eqz v15, :cond_9

    .line 214
    .line 215
    :try_start_b
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 216
    .line 217
    .line 218
    goto :goto_7

    .line 219
    :catchall_4
    move-exception v0

    .line 220
    :try_start_c
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 221
    .line 222
    .line 223
    :cond_9
    :goto_7
    throw v4

    .line 224
    :goto_8
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->code()I

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    const/16 v4, 0x1a0

    .line 229
    .line 230
    if-ne v0, v4, :cond_a

    .line 231
    .line 232
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    if-eqz v0, :cond_a

    .line 237
    .line 238
    invoke-virtual {v8}, Ljava/io/File;->length()J

    .line 239
    .line 240
    .line 241
    move-result-wide v4

    .line 242
    cmp-long v0, v4, v16

    .line 243
    .line 244
    if-lez v0, :cond_a

    .line 245
    .line 246
    const/4 v0, 0x1

    .line 247
    iput-boolean v0, v3, Le0/y2;->b:Z

    .line 248
    .line 249
    iget-object v0, v3, Le0/y2;->a:Le0/g2;

    .line 250
    .line 251
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    const v5, 0x7f1301a7

    .line 256
    .line 257
    .line 258
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    iget-object v5, v0, Le0/g2;->e:Landroidx/appcompat/app/AppCompatActivity;

    .line 263
    .line 264
    new-instance v6, La1/a;

    .line 265
    .line 266
    const/16 v7, 0x1d

    .line 267
    .line 268
    invoke-direct {v6, v7, v0, v4}, La1/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    iget-object v4, v3, Le0/y2;->a:Le0/g2;

    .line 279
    .line 280
    invoke-static {v0, v2, v4}, Le0/y2;->c(Ljava/lang/String;Landroid/content/Context;Le0/g2;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 281
    .line 282
    .line 283
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->close()V

    .line 284
    .line 285
    .line 286
    return-void

    .line 287
    :cond_a
    :try_start_d
    invoke-static {v3, v2}, Le0/y2;->a(Le0/y2;Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 288
    .line 289
    .line 290
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->close()V

    .line 291
    .line 292
    .line 293
    return-void

    .line 294
    :catch_0
    :try_start_e
    invoke-static {v3, v2}, Le0/y2;->a(Le0/y2;Landroid/content/Context;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 295
    .line 296
    .line 297
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->close()V

    .line 298
    .line 299
    .line 300
    return-void

    .line 301
    :goto_9
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->close()V

    .line 302
    .line 303
    .line 304
    throw v0
.end method
