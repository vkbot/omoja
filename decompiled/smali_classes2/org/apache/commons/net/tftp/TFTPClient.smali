.class public Lorg/apache/commons/net/tftp/TFTPClient;
.super Lorg/apache/commons/net/tftp/TFTP;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final DEFAULT_MAX_TIMEOUTS:I = 0x5


# instance fields
.field private maxTimeouts:I

.field private totalBytesReceived:J

.field private totalBytesSent:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/tftp/TFTP;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x5

    .line 5
    iput v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->maxTimeouts:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public getMaxTimeouts()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->maxTimeouts:I

    .line 2
    .line 3
    return v0
.end method

.method public getTotalBytesReceived()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesReceived:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTotalBytesSent()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesSent:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/lang/String;)I
    .locals 6

    .line 444
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I

    move-result p1

    return p1
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/lang/String;I)I
    .locals 6

    .line 445
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I

    move-result p1

    return p1
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;)I
    .locals 6

    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 443
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I

    move-result p1

    return p1
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move/from16 v3, p5

    .line 8
    .line 9
    const-wide/16 v4, 0x0

    .line 10
    .line 11
    iput-wide v4, v1, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesReceived:J

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v4, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;

    .line 16
    .line 17
    move-object/from16 v5, p3

    .line 18
    .line 19
    invoke-direct {v4, v5}, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object/from16 v5, p3

    .line 24
    .line 25
    move-object v4, v5

    .line 26
    :goto_0
    new-instance v5, Lorg/apache/commons/net/tftp/TFTPReadRequestPacket;

    .line 27
    .line 28
    move-object/from16 v6, p1

    .line 29
    .line 30
    invoke-direct {v5, v2, v3, v6, v0}, Lorg/apache/commons/net/tftp/TFTPReadRequestPacket;-><init>(Ljava/net/InetAddress;ILjava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    new-instance v6, Lorg/apache/commons/net/tftp/TFTPAckPacket;

    .line 34
    .line 35
    const/4 v7, 0x0

    .line 36
    invoke-direct {v6, v2, v3, v7}, Lorg/apache/commons/net/tftp/TFTPAckPacket;-><init>(Ljava/net/InetAddress;II)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lorg/apache/commons/net/tftp/TFTP;->beginBufferedOps()V

    .line 40
    .line 41
    .line 42
    move v9, v7

    .line 43
    move v11, v9

    .line 44
    move v12, v11

    .line 45
    move v13, v12

    .line 46
    const/4 v0, 0x1

    .line 47
    const/4 v10, 0x1

    .line 48
    :goto_1
    :try_start_0
    invoke-virtual {v1, v5}, Lorg/apache/commons/net/tftp/TFTP;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    move v15, v7

    .line 52
    const/4 v14, 0x1

    .line 53
    :goto_2
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/commons/net/tftp/TFTP;->bufferedReceive()Lorg/apache/commons/net/tftp/TFTPPacket;

    .line 54
    .line 55
    .line 56
    move-result-object v16

    .line 57
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    .line 62
    .line 63
    .line 64
    move-result-object v8
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    move/from16 p3, v0

    .line 66
    .line 67
    if-eqz p3, :cond_3

    .line 68
    .line 69
    if-eq v7, v3, :cond_2

    .line 70
    .line 71
    :try_start_2
    invoke-virtual {v6, v7}, Lorg/apache/commons/net/tftp/TFTPPacket;->setPort(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v8}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v9
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    if-nez v9, :cond_1

    .line 79
    .line 80
    :try_start_3
    invoke-virtual {v6, v8}, Lorg/apache/commons/net/tftp/TFTPPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, v8}, Lorg/apache/commons/net/tftp/TFTPPacket;->setAddress(Ljava/net/InetAddress;)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    .line 85
    .line 86
    move v9, v7

    .line 87
    move-object v3, v8

    .line 88
    :goto_3
    const/4 v2, 0x0

    .line 89
    goto :goto_5

    .line 90
    :catchall_0
    move-exception v0

    .line 91
    goto/16 :goto_f

    .line 92
    .line 93
    :catch_0
    move-exception v0

    .line 94
    goto/16 :goto_c

    .line 95
    .line 96
    :catch_1
    move v9, v7

    .line 97
    move-object v2, v8

    .line 98
    :goto_4
    const/4 v0, 0x0

    .line 99
    goto/16 :goto_d

    .line 100
    .line 101
    :cond_1
    move-object v3, v2

    .line 102
    move v9, v7

    .line 103
    goto :goto_3

    .line 104
    :catch_2
    move v9, v7

    .line 105
    goto :goto_4

    .line 106
    :cond_2
    :try_start_4
    new-instance v0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 107
    .line 108
    move-object/from16 v17, v2

    .line 109
    .line 110
    :try_start_5
    const-string v2, "INCORRECT SOURCE PORT"

    .line 111
    .line 112
    const/4 v3, 0x5

    .line 113
    invoke-direct {v0, v8, v7, v3, v2}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v0}, Lorg/apache/commons/net/tftp/TFTP;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 117
    .line 118
    .line 119
    new-instance v0, Ljava/io/IOException;

    .line 120
    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v3, "Incorrect source port ("

    .line 127
    .line 128
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v3, ") in request reply."

    .line 135
    .line 136
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw v0
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/InterruptedIOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 147
    :catch_3
    move-object/from16 v2, v17

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :catch_4
    move-object/from16 v17, v2

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_3
    move-object/from16 v17, v2

    .line 154
    .line 155
    move/from16 v2, p3

    .line 156
    .line 157
    move-object/from16 v3, v17

    .line 158
    .line 159
    :goto_5
    :try_start_6
    invoke-virtual {v3, v8}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v0
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 163
    if-eqz v0, :cond_9

    .line 164
    .line 165
    if-ne v7, v9, :cond_9

    .line 166
    .line 167
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/tftp/TFTPPacket;->getType()I

    .line 168
    .line 169
    .line 170
    move-result v0
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/io/InterruptedIOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 171
    const/4 v7, 0x3

    .line 172
    if-eq v0, v7, :cond_5

    .line 173
    .line 174
    const/4 v8, 0x5

    .line 175
    if-eq v0, v8, :cond_4

    .line 176
    .line 177
    :try_start_8
    new-instance v0, Ljava/io/IOException;

    .line 178
    .line 179
    new-instance v7, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    const-string v8, "Received unexpected packet type ("

    .line 185
    .line 186
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/tftp/TFTPPacket;->getType()I

    .line 190
    .line 191
    .line 192
    move-result v8

    .line 193
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v8, ")"

    .line 197
    .line 198
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw v0

    .line 209
    :catch_5
    move v0, v2

    .line 210
    move-object v2, v3

    .line 211
    goto/16 :goto_d

    .line 212
    .line 213
    :cond_4
    check-cast v16, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    .line 214
    .line 215
    new-instance v0, Ljava/io/IOException;

    .line 216
    .line 217
    new-instance v7, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    const-string v8, "Error code "

    .line 223
    .line 224
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getError()I

    .line 228
    .line 229
    .line 230
    move-result v8

    .line 231
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string v8, " received: "

    .line 235
    .line 236
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getMessage()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v8

    .line 243
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v7

    .line 250
    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw v0
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/InterruptedIOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 254
    :cond_5
    :try_start_9
    check-cast v16, Lorg/apache/commons/net/tftp/TFTPDataPacket;

    .line 255
    .line 256
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getDataLength()I

    .line 257
    .line 258
    .line 259
    move-result v13

    .line 260
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getBlockNumber()I

    .line 261
    .line 262
    .line 263
    move-result v12
    :try_end_9
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/io/InterruptedIOException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 264
    const v0, 0xffff

    .line 265
    .line 266
    .line 267
    if-ne v12, v10, :cond_7

    .line 268
    .line 269
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getData()[B

    .line 270
    .line 271
    .line 272
    move-result-object v8

    .line 273
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getDataOffset()I

    .line 274
    .line 275
    .line 276
    move-result v7

    .line 277
    invoke-virtual {v4, v8, v7, v13}, Ljava/io/OutputStream;->write([BII)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 278
    .line 279
    .line 280
    add-int/lit8 v10, v10, 0x1

    .line 281
    .line 282
    if-le v10, v0, :cond_6

    .line 283
    .line 284
    const/4 v10, 0x0

    .line 285
    :cond_6
    move/from16 v16, v2

    .line 286
    .line 287
    move-object/from16 v17, v3

    .line 288
    .line 289
    :goto_6
    const/4 v14, 0x0

    .line 290
    goto :goto_9

    .line 291
    :catch_6
    move-exception v0

    .line 292
    :try_start_b
    new-instance v7, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    .line 293
    .line 294
    const-string v8, "File write failed."
    :try_end_b
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/io/InterruptedIOException; {:try_start_b .. :try_end_b} :catch_8
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 295
    .line 296
    move/from16 v16, v2

    .line 297
    .line 298
    const/4 v2, 0x3

    .line 299
    :try_start_c
    invoke-direct {v7, v3, v9, v2, v8}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v1, v7}, Lorg/apache/commons/net/tftp/TFTP;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 303
    .line 304
    .line 305
    throw v0

    .line 306
    :catch_7
    :goto_7
    move-object v2, v3

    .line 307
    move/from16 v0, v16

    .line 308
    .line 309
    goto :goto_d

    .line 310
    :catch_8
    move/from16 v16, v2

    .line 311
    .line 312
    goto :goto_7

    .line 313
    :cond_7
    move/from16 v16, v2

    .line 314
    .line 315
    invoke-virtual {v1}, Lorg/apache/commons/net/tftp/TFTP;->discardPackets()V
    :try_end_c
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/io/InterruptedIOException; {:try_start_c .. :try_end_c} :catch_7
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 316
    .line 317
    .line 318
    if-nez v10, :cond_8

    .line 319
    .line 320
    goto :goto_8

    .line 321
    :cond_8
    add-int/lit8 v0, v10, -0x1

    .line 322
    .line 323
    :goto_8
    move-object/from16 v17, v3

    .line 324
    .line 325
    if-ne v12, v0, :cond_a

    .line 326
    .line 327
    goto :goto_6

    .line 328
    :cond_9
    move/from16 v16, v2

    .line 329
    .line 330
    :try_start_d
    new-instance v0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    .line 331
    .line 332
    const-string v2, "Unexpected host or port."
    :try_end_d
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/io/InterruptedIOException; {:try_start_d .. :try_end_d} :catch_a
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 333
    .line 334
    move-object/from16 v17, v3

    .line 335
    .line 336
    const/4 v3, 0x5

    .line 337
    :try_start_e
    invoke-direct {v0, v8, v7, v3, v2}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v1, v0}, Lorg/apache/commons/net/tftp/TFTP;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V
    :try_end_e
    .catch Ljava/net/SocketException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/io/InterruptedIOException; {:try_start_e .. :try_end_e} :catch_9
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 341
    .line 342
    .line 343
    :cond_a
    :goto_9
    move/from16 v0, v16

    .line 344
    .line 345
    move-object/from16 v2, v17

    .line 346
    .line 347
    goto :goto_e

    .line 348
    :catch_9
    :goto_a
    move/from16 v0, v16

    .line 349
    .line 350
    move-object/from16 v2, v17

    .line 351
    .line 352
    goto :goto_d

    .line 353
    :catch_a
    :goto_b
    move-object/from16 v17, v3

    .line 354
    .line 355
    goto :goto_a

    .line 356
    :catch_b
    move/from16 v16, v2

    .line 357
    .line 358
    goto :goto_b

    .line 359
    :catch_c
    move/from16 p3, v0

    .line 360
    .line 361
    move-object/from16 v17, v2

    .line 362
    .line 363
    goto :goto_d

    .line 364
    :goto_c
    :try_start_f
    new-instance v2, Ljava/io/IOException;

    .line 365
    .line 366
    new-instance v3, Ljava/lang/StringBuilder;

    .line 367
    .line 368
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .line 370
    .line 371
    const-string v4, "Bad packet: "

    .line 372
    .line 373
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    throw v2

    .line 391
    :goto_d
    add-int/lit8 v15, v15, 0x1

    .line 392
    .line 393
    iget v3, v1, Lorg/apache/commons/net/tftp/TFTPClient;->maxTimeouts:I

    .line 394
    .line 395
    if-ge v15, v3, :cond_d

    .line 396
    .line 397
    :goto_e
    if-nez v14, :cond_c

    .line 398
    .line 399
    invoke-virtual {v6, v12}, Lorg/apache/commons/net/tftp/TFTPAckPacket;->setBlockNumber(I)V

    .line 400
    .line 401
    .line 402
    add-int/2addr v11, v13

    .line 403
    iget-wide v7, v1, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesReceived:J

    .line 404
    .line 405
    int-to-long v14, v13

    .line 406
    add-long/2addr v7, v14

    .line 407
    iput-wide v7, v1, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesReceived:J

    .line 408
    .line 409
    const/16 v3, 0x200

    .line 410
    .line 411
    if-eq v13, v3, :cond_b

    .line 412
    .line 413
    invoke-virtual {v1, v6}, Lorg/apache/commons/net/tftp/TFTP;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 414
    .line 415
    .line 416
    invoke-virtual {v1}, Lorg/apache/commons/net/tftp/TFTP;->endBufferedOps()V

    .line 417
    .line 418
    .line 419
    return v11

    .line 420
    :cond_b
    move/from16 v3, p5

    .line 421
    .line 422
    move-object v5, v6

    .line 423
    const/4 v7, 0x0

    .line 424
    goto/16 :goto_1

    .line 425
    .line 426
    :cond_c
    move/from16 v3, p5

    .line 427
    .line 428
    const/4 v7, 0x0

    .line 429
    goto/16 :goto_2

    .line 430
    .line 431
    :cond_d
    :try_start_10
    new-instance v0, Ljava/io/IOException;

    .line 432
    .line 433
    const-string v2, "Connection timed out."

    .line 434
    .line 435
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 439
    :goto_f
    invoke-virtual {v1}, Lorg/apache/commons/net/tftp/TFTP;->endBufferedOps()V

    .line 440
    .line 441
    .line 442
    throw v0
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)V
    .locals 6

    .line 342
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V

    return-void
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;I)V
    .locals 6

    .line 343
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V

    return-void
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;)V
    .locals 6

    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 341
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V

    return-void
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p2

    .line 4
    .line 5
    move/from16 v4, p5

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    iput-wide v2, v1, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesSent:J

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v2, Lorg/apache/commons/net/io/ToNetASCIIInputStream;

    .line 14
    .line 15
    move-object/from16 v3, p3

    .line 16
    .line 17
    invoke-direct {v2, v3}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;-><init>(Ljava/io/InputStream;)V

    .line 18
    .line 19
    .line 20
    move-object v9, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object/from16 v3, p3

    .line 23
    .line 24
    move-object v9, v3

    .line 25
    :goto_0
    new-instance v10, Lorg/apache/commons/net/tftp/TFTPWriteRequestPacket;

    .line 26
    .line 27
    move-object/from16 v2, p1

    .line 28
    .line 29
    move-object/from16 v3, p4

    .line 30
    .line 31
    invoke-direct {v10, v3, v4, v2, v0}, Lorg/apache/commons/net/tftp/TFTPWriteRequestPacket;-><init>(Ljava/net/InetAddress;ILjava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    new-instance v2, Lorg/apache/commons/net/tftp/TFTPDataPacket;

    .line 35
    .line 36
    iget-object v6, v1, Lorg/apache/commons/net/tftp/TFTP;->sendBuffer:[B

    .line 37
    .line 38
    const/4 v7, 0x4

    .line 39
    const/4 v8, 0x0

    .line 40
    const/4 v5, 0x0

    .line 41
    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/net/tftp/TFTPDataPacket;-><init>(Ljava/net/InetAddress;II[BII)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Lorg/apache/commons/net/tftp/TFTP;->beginBufferedOps()V

    .line 45
    .line 46
    .line 47
    move-object/from16 v5, p4

    .line 48
    .line 49
    const/4 v6, 0x1

    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v8, 0x0

    .line 52
    const/4 v11, 0x0

    .line 53
    :goto_1
    :try_start_0
    invoke-virtual {v1, v10}, Lorg/apache/commons/net/tftp/TFTP;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    const/4 v12, 0x1

    .line 57
    const/4 v13, 0x0

    .line 58
    :goto_2
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/commons/net/tftp/TFTP;->bufferedReceive()Lorg/apache/commons/net/tftp/TFTPPacket;

    .line 59
    .line 60
    .line 61
    move-result-object v15

    .line 62
    invoke-virtual {v15}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v15}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    .line 67
    .line 68
    .line 69
    move-result v3
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    const/4 v14, 0x5

    .line 71
    if-eqz v6, :cond_3

    .line 72
    .line 73
    if-eq v3, v4, :cond_2

    .line 74
    .line 75
    :try_start_2
    invoke-virtual {v2, v3}, Lorg/apache/commons/net/tftp/TFTPPacket;->setPort(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v6
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    if-nez v6, :cond_1

    .line 83
    .line 84
    :try_start_3
    invoke-virtual {v2, v0}, Lorg/apache/commons/net/tftp/TFTPPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v10, v0}, Lorg/apache/commons/net/tftp/TFTPPacket;->setAddress(Ljava/net/InetAddress;)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    .line 89
    .line 90
    move-object v5, v0

    .line 91
    :cond_1
    move v7, v3

    .line 92
    const/4 v6, 0x0

    .line 93
    goto :goto_3

    .line 94
    :catchall_0
    move-exception v0

    .line 95
    goto/16 :goto_8

    .line 96
    .line 97
    :catch_0
    move-exception v0

    .line 98
    goto/16 :goto_4

    .line 99
    .line 100
    :catch_1
    move-object v5, v0

    .line 101
    :catch_2
    move v7, v3

    .line 102
    :catch_3
    const/4 v6, 0x0

    .line 103
    goto/16 :goto_5

    .line 104
    .line 105
    :cond_2
    :try_start_4
    new-instance v6, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    .line 106
    .line 107
    const-string v15, "INCORRECT SOURCE PORT"

    .line 108
    .line 109
    invoke-direct {v6, v0, v3, v14, v15}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v6}, Lorg/apache/commons/net/tftp/TFTP;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 113
    .line 114
    .line 115
    new-instance v0, Ljava/io/IOException;

    .line 116
    .line 117
    new-instance v6, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v14, "Incorrect source port ("

    .line 123
    .line 124
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v3, ") in request reply."

    .line 131
    .line 132
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw v0
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 143
    :cond_3
    :goto_3
    :try_start_5
    invoke-virtual {v5, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v16

    .line 147
    if-eqz v16, :cond_8

    .line 148
    .line 149
    if-ne v3, v7, :cond_8

    .line 150
    .line 151
    invoke-virtual {v15}, Lorg/apache/commons/net/tftp/TFTPPacket;->getType()I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    const/4 v3, 0x4

    .line 156
    if-eq v0, v3, :cond_5

    .line 157
    .line 158
    if-eq v0, v14, :cond_4

    .line 159
    .line 160
    new-instance v0, Ljava/io/IOException;

    .line 161
    .line 162
    const-string v3, "Received unexpected packet type."

    .line 163
    .line 164
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw v0

    .line 168
    :cond_4
    check-cast v15, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    .line 169
    .line 170
    new-instance v0, Ljava/io/IOException;

    .line 171
    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    const-string v14, "Error code "

    .line 178
    .line 179
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v15}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getError()I

    .line 183
    .line 184
    .line 185
    move-result v14

    .line 186
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v14, " received: "

    .line 190
    .line 191
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v15}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getMessage()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v14

    .line 198
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw v0

    .line 209
    :cond_5
    check-cast v15, Lorg/apache/commons/net/tftp/TFTPAckPacket;

    .line 210
    .line 211
    invoke-virtual {v15}, Lorg/apache/commons/net/tftp/TFTPAckPacket;->getBlockNumber()I

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-ne v0, v8, :cond_7

    .line 216
    .line 217
    add-int/lit8 v8, v8, 0x1

    .line 218
    .line 219
    const v0, 0xffff

    .line 220
    .line 221
    .line 222
    if-le v8, v0, :cond_6

    .line 223
    .line 224
    const/4 v8, 0x0

    .line 225
    :cond_6
    const/4 v12, 0x0

    .line 226
    goto :goto_6

    .line 227
    :cond_7
    invoke-virtual {v1}, Lorg/apache/commons/net/tftp/TFTP;->discardPackets()V

    .line 228
    .line 229
    .line 230
    goto :goto_6

    .line 231
    :cond_8
    new-instance v15, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    .line 232
    .line 233
    const-string v4, "Unexpected host or port."

    .line 234
    .line 235
    invoke-direct {v15, v0, v3, v14, v4}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, v15}, Lorg/apache/commons/net/tftp/TFTP;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/InterruptedIOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 239
    .line 240
    .line 241
    goto :goto_6

    .line 242
    :goto_4
    :try_start_6
    new-instance v2, Ljava/io/IOException;

    .line 243
    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    const-string v4, "Bad packet: "

    .line 250
    .line 251
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    throw v2

    .line 269
    :catch_4
    :goto_5
    add-int/lit8 v13, v13, 0x1

    .line 270
    .line 271
    iget v0, v1, Lorg/apache/commons/net/tftp/TFTPClient;->maxTimeouts:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 272
    .line 273
    if-ge v13, v0, :cond_d

    .line 274
    .line 275
    :goto_6
    if-nez v12, :cond_c

    .line 276
    .line 277
    if-eqz v11, :cond_9

    .line 278
    .line 279
    invoke-virtual {v1}, Lorg/apache/commons/net/tftp/TFTP;->endBufferedOps()V

    .line 280
    .line 281
    .line 282
    return-void

    .line 283
    :cond_9
    const/16 v0, 0x200

    .line 284
    .line 285
    move v4, v0

    .line 286
    const/4 v3, 0x4

    .line 287
    const/4 v10, 0x0

    .line 288
    :goto_7
    if-lez v4, :cond_a

    .line 289
    .line 290
    :try_start_7
    iget-object v12, v1, Lorg/apache/commons/net/tftp/TFTP;->sendBuffer:[B

    .line 291
    .line 292
    invoke-virtual {v9, v12, v3, v4}, Ljava/io/InputStream;->read([BII)I

    .line 293
    .line 294
    .line 295
    move-result v12

    .line 296
    if-lez v12, :cond_a

    .line 297
    .line 298
    add-int/2addr v3, v12

    .line 299
    sub-int/2addr v4, v12

    .line 300
    add-int/2addr v10, v12

    .line 301
    goto :goto_7

    .line 302
    :cond_a
    if-ge v10, v0, :cond_b

    .line 303
    .line 304
    const/4 v11, 0x1

    .line 305
    :cond_b
    invoke-virtual {v2, v8}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->setBlockNumber(I)V

    .line 306
    .line 307
    .line 308
    iget-object v0, v1, Lorg/apache/commons/net/tftp/TFTP;->sendBuffer:[B

    .line 309
    .line 310
    const/4 v3, 0x4

    .line 311
    invoke-virtual {v2, v0, v3, v10}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->setData([BII)V

    .line 312
    .line 313
    .line 314
    iget-wide v3, v1, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesSent:J

    .line 315
    .line 316
    int-to-long v12, v10

    .line 317
    add-long/2addr v3, v12

    .line 318
    iput-wide v3, v1, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesSent:J

    .line 319
    .line 320
    move/from16 v4, p5

    .line 321
    .line 322
    move-object v10, v2

    .line 323
    goto/16 :goto_1

    .line 324
    .line 325
    :cond_c
    move/from16 v4, p5

    .line 326
    .line 327
    goto/16 :goto_2

    .line 328
    .line 329
    :cond_d
    new-instance v0, Ljava/io/IOException;

    .line 330
    .line 331
    const-string v2, "Connection timed out."

    .line 332
    .line 333
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 337
    :goto_8
    invoke-virtual {v1}, Lorg/apache/commons/net/tftp/TFTP;->endBufferedOps()V

    .line 338
    .line 339
    .line 340
    throw v0
.end method

.method public setMaxTimeouts(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    iput p1, p0, Lorg/apache/commons/net/tftp/TFTPClient;->maxTimeouts:I

    .line 7
    .line 8
    return-void
.end method
