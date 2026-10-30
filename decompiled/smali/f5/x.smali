.class public final synthetic Lf5/x;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lf5/x;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Lf5/x;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lf5/x;->d:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lf5/x;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lf5/x;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lq0/d;

    .line 9
    .line 10
    iget-object v1, p0, Lf5/x;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lq0/c;

    .line 13
    .line 14
    iget-object v2, v0, Lq0/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    goto/16 :goto_5

    .line 24
    .line 25
    :cond_0
    :try_start_0
    iget-object v2, v1, Lq0/c;->b:Landroid/net/Network;

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    new-instance v2, Ljava/net/Socket;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v2}, Landroid/net/Network;->getSocketFactory()Ljavax/net/SocketFactory;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    .line 40
    .line 41
    .line 42
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    :goto_0
    const/4 v4, 0x1

    .line 44
    :try_start_1
    invoke-virtual {v2, v4}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 45
    .line 46
    .line 47
    new-instance v5, Ljava/net/InetSocketAddress;

    .line 48
    .line 49
    iget-object v6, v1, Lq0/c;->a:Ljava/lang/String;

    .line 50
    .line 51
    iget v0, v0, Lq0/d;->h:I

    .line 52
    .line 53
    invoke-direct {v5, v6, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    const/16 v0, 0xdc

    .line 57
    .line 58
    invoke-virtual {v2, v5, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 59
    .line 60
    .line 61
    const/16 v0, 0x2bc

    .line 62
    .line 63
    invoke-virtual {v2, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 74
    .line 75
    .line 76
    new-instance v0, Ljava/io/DataInputStream;

    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-lez v4, :cond_4

    .line 90
    .line 91
    const/high16 v5, 0x10000

    .line 92
    .line 93
    if-le v4, v5, :cond_2

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_2
    new-array v4, v4, [B

    .line 97
    .line 98
    invoke-virtual {v0, v4}, Ljava/io/DataInputStream;->readFully([B)V

    .line 99
    .line 100
    .line 101
    invoke-static {v4}, Lj4/b;->c([B)Lj4/b;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iget-boolean v0, v0, Lj4/b;->c:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .line 107
    if-eqz v0, :cond_3

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    move-object v1, v3

    .line 111
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 112
    .line 113
    .line 114
    :catch_0
    move-object v3, v1

    .line 115
    goto :goto_5

    .line 116
    :catchall_0
    move-exception v0

    .line 117
    move-object v3, v2

    .line 118
    goto :goto_3

    .line 119
    :cond_4
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 120
    .line 121
    .line 122
    goto :goto_5

    .line 123
    :catch_1
    move-object v2, v3

    .line 124
    goto :goto_4

    .line 125
    :catchall_1
    move-exception v0

    .line 126
    :goto_3
    if-eqz v3, :cond_5

    .line 127
    .line 128
    :try_start_4
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 129
    .line 130
    .line 131
    :catch_2
    :cond_5
    throw v0

    .line 132
    :catch_3
    :goto_4
    if-eqz v2, :cond_6

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :catch_4
    :cond_6
    :goto_5
    return-object v3

    .line 136
    :pswitch_0
    iget-object v0, p0, Lf5/x;->c:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v0, Lf5/y;

    .line 139
    .line 140
    iget-object v1, p0, Lf5/x;->d:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v1, Lcom/google/protobuf/a;

    .line 143
    .line 144
    monitor-enter v0

    .line 145
    :try_start_5
    iget-object v2, v0, Lf5/y;->a:Landroid/app/Application;

    .line 146
    .line 147
    iget-object v3, v0, Lf5/y;->b:Ljava/lang/String;

    .line 148
    .line 149
    const/4 v4, 0x0

    .line 150
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    .line 151
    .line 152
    .line 153
    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 154
    :try_start_6
    invoke-virtual {v1}, Lcom/google/protobuf/a;->b()[B

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 159
    .line 160
    .line 161
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 162
    .line 163
    .line 164
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 165
    return-object v1

    .line 166
    :catchall_2
    move-exception v1

    .line 167
    goto :goto_7

    .line 168
    :catchall_3
    move-exception v1

    .line 169
    if-eqz v2, :cond_7

    .line 170
    .line 171
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 172
    .line 173
    .line 174
    goto :goto_6

    .line 175
    :catchall_4
    move-exception v2

    .line 176
    :try_start_9
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 177
    .line 178
    .line 179
    :cond_7
    :goto_6
    throw v1

    .line 180
    :goto_7
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 181
    throw v1

    .line 182
    :pswitch_1
    iget-object v0, p0, Lf5/x;->c:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v0, Lf5/y;

    .line 185
    .line 186
    iget-object v1, p0, Lf5/x;->d:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v1, Lcom/google/protobuf/x0;

    .line 189
    .line 190
    const-string v2, "Recoverable exception while reading cache: "

    .line 191
    .line 192
    monitor-enter v0

    .line 193
    :try_start_a
    iget-object v3, v0, Lf5/y;->a:Landroid/app/Application;

    .line 194
    .line 195
    iget-object v4, v0, Lf5/y;->b:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {v3, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    .line 198
    .line 199
    .line 200
    move-result-object v3
    :try_end_a
    .catch Lcom/google/protobuf/d0; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 201
    :try_start_b
    check-cast v1, Lcom/google/protobuf/x;

    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    sget-object v4, Lcom/google/protobuf/x;->b:Lcom/google/protobuf/p;

    .line 207
    .line 208
    const/4 v5, 0x0

    .line 209
    if-nez v3, :cond_8

    .line 210
    .line 211
    sget-object v6, Lcom/google/protobuf/b0;->b:[B

    .line 212
    .line 213
    array-length v7, v6

    .line 214
    invoke-static {v6, v5, v7, v5}, Lcom/google/protobuf/j;->d([BIIZ)Lcom/google/protobuf/h;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    goto :goto_8

    .line 219
    :cond_8
    new-instance v6, Lcom/google/protobuf/i;

    .line 220
    .line 221
    invoke-direct {v6, v3}, Lcom/google/protobuf/i;-><init>(Ljava/io/InputStream;)V

    .line 222
    .line 223
    .line 224
    :goto_8
    invoke-virtual {v1, v6, v4}, Lcom/google/protobuf/x;->a(Lcom/google/protobuf/j;Lcom/google/protobuf/p;)Lcom/google/protobuf/y;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {v6, v5}, Lcom/google/protobuf/j;->a(I)V

    .line 229
    .line 230
    .line 231
    const/4 v4, 0x1

    .line 232
    invoke-static {v1, v4}, Lcom/google/protobuf/y;->h(Lcom/google/protobuf/y;Z)Z

    .line 233
    .line 234
    .line 235
    move-result v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 236
    if-eqz v4, :cond_a

    .line 237
    .line 238
    if-eqz v3, :cond_9

    .line 239
    .line 240
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Lcom/google/protobuf/d0; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 241
    .line 242
    .line 243
    goto :goto_9

    .line 244
    :catchall_5
    move-exception v1

    .line 245
    goto :goto_d

    .line 246
    :catch_5
    move-exception v1

    .line 247
    goto :goto_b

    .line 248
    :catch_6
    move-exception v1

    .line 249
    goto :goto_b

    .line 250
    :cond_9
    :goto_9
    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 251
    goto :goto_c

    .line 252
    :cond_a
    :try_start_e
    new-instance v1, Lcom/google/protobuf/i1;

    .line 253
    .line 254
    invoke-direct {v1}, Lcom/google/protobuf/i1;-><init>()V

    .line 255
    .line 256
    .line 257
    new-instance v4, Lcom/google/protobuf/d0;

    .line 258
    .line 259
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-direct {v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    throw v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 267
    :catchall_6
    move-exception v1

    .line 268
    if-eqz v3, :cond_b

    .line 269
    .line 270
    :try_start_f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 271
    .line 272
    .line 273
    goto :goto_a

    .line 274
    :catchall_7
    move-exception v3

    .line 275
    :try_start_10
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 276
    .line 277
    .line 278
    :cond_b
    :goto_a
    throw v1
    :try_end_10
    .catch Lcom/google/protobuf/d0; {:try_start_10 .. :try_end_10} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 279
    :goto_b
    :try_start_11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-static {v1}, Le3/d;->n(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    monitor-exit v0

    .line 299
    const/4 v1, 0x0

    .line 300
    :goto_c
    return-object v1

    .line 301
    :goto_d
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 302
    throw v1

    .line 303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
