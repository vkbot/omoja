.class public Lorg/apache/ftpserver/impl/IODataConnection;
.super Ljava/lang/Object;
.source "IODataConnection.java"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/DataConnection;


# static fields
.field private static final EOL:[B


# instance fields
.field private final LOG:Lorg/slf4j/Logger;

.field private final factory:Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

.field private final session:Lorg/apache/ftpserver/impl/FtpIoSession;

.field private final socket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/ftpserver/impl/IODataConnection;->EOL:[B

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p3, "factory"    # Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-class v0, Lorg/apache/ftpserver/impl/IODataConnection;

    .line 52
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnection;->LOG:Lorg/slf4j/Logger;

    .line 65
    iput-object p2, p0, Lorg/apache/ftpserver/impl/IODataConnection;->session:Lorg/apache/ftpserver/impl/FtpIoSession;

    .line 66
    iput-object p1, p0, Lorg/apache/ftpserver/impl/IODataConnection;->socket:Ljava/net/Socket;

    .line 67
    iput-object p3, p0, Lorg/apache/ftpserver/impl/IODataConnection;->factory:Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    .line 68
    return-void
.end method

.method private getDataInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnection;->socket:Ljava/net/Socket;

    .line 78
    .local v0, "dataSoc":Ljava/net/Socket;
    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 84
    .local v1, "is":Ljava/io/InputStream;
    iget-object v2, p0, Lorg/apache/ftpserver/impl/IODataConnection;->factory:Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    invoke-interface {v2}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->isZipMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    new-instance v2, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 87
    :cond_0
    return-object v1

    .line 79
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Cannot open data connection."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lorg/apache/ftpserver/impl/IODataConnection;
    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v0    # "dataSoc":Ljava/net/Socket;
    .restart local p0    # "this":Lorg/apache/ftpserver/impl/IODataConnection;
    :catch_0
    move-exception v0

    .line 89
    .local v0, "ex":Ljava/io/IOException;
    iget-object v1, p0, Lorg/apache/ftpserver/impl/IODataConnection;->factory:Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    invoke-interface {v1}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->closeDataConnection()V

    .line 90
    throw v0
.end method

.method private getDataOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnection;->socket:Ljava/net/Socket;

    .line 102
    .local v0, "dataSoc":Ljava/net/Socket;
    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 108
    .local v1, "os":Ljava/io/OutputStream;
    iget-object v2, p0, Lorg/apache/ftpserver/impl/IODataConnection;->factory:Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    invoke-interface {v2}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->isZipMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    new-instance v2, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    .line 111
    :cond_0
    return-object v1

    .line 103
    .end local v1    # "os":Ljava/io/OutputStream;
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Cannot open data connection."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lorg/apache/ftpserver/impl/IODataConnection;
    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v0    # "dataSoc":Ljava/net/Socket;
    .restart local p0    # "this":Lorg/apache/ftpserver/impl/IODataConnection;
    :catch_0
    move-exception v0

    .line 113
    .local v0, "ex":Ljava/io/IOException;
    iget-object v1, p0, Lorg/apache/ftpserver/impl/IODataConnection;->factory:Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    invoke-interface {v1}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->closeDataConnection()V

    .line 114
    throw v0
.end method

.method private final transfer(Lorg/apache/ftpserver/ftplet/FtpSession;ZLjava/io/InputStream;Ljava/io/OutputStream;I)J
    .locals 23
    .param p1, "session"    # Lorg/apache/ftpserver/ftplet/FtpSession;
    .param p2, "isWrite"    # Z
    .param p3, "in"    # Ljava/io/InputStream;
    .param p4, "out"    # Ljava/io/OutputStream;
    .param p5, "maxRate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p5

    const-string v4, "Exception during data transfer, closing data connection socket"

    const-wide/16 v5, 0x0

    .line 201
    .local v5, "transferredSize":J
    invoke-interface/range {p1 .. p1}, Lorg/apache/ftpserver/ftplet/FtpSession;->getDataType()Lorg/apache/ftpserver/ftplet/DataType;

    move-result-object v0

    sget-object v7, Lorg/apache/ftpserver/ftplet/DataType;->ASCII:Lorg/apache/ftpserver/ftplet/DataType;

    if-ne v0, v7, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    .line 202
    .local v7, "isAscii":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 203
    .local v9, "startTime":J
    const/16 v0, 0x1000

    new-array v11, v0, [B

    .line 205
    .local v11, "buff":[B
    const/4 v12, 0x0

    .line 206
    .local v12, "bis":Ljava/io/BufferedInputStream;
    const/4 v13, 0x0

    .line 208
    .local v13, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    invoke-static/range {p3 .. p3}, Lorg/apache/ftpserver/util/IoUtils;->getBufferedInputStream(Ljava/io/InputStream;)Ljava/io/BufferedInputStream;

    move-result-object v0

    move-object v12, v0

    .line 210
    invoke-static/range {p4 .. p4}, Lorg/apache/ftpserver/util/IoUtils;->getBufferedOutputStream(Ljava/io/OutputStream;)Ljava/io/BufferedOutputStream;

    move-result-object v0

    move-object v13, v0

    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "defaultFtpSession":Lorg/apache/ftpserver/impl/DefaultFtpSession;
    instance-of v14, v2, Lorg/apache/ftpserver/impl/DefaultFtpSession;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v14, :cond_1

    .line 214
    :try_start_1
    move-object v14, v2

    check-cast v14, Lorg/apache/ftpserver/impl/DefaultFtpSession;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v14

    goto :goto_1

    .line 305
    .end local v0    # "defaultFtpSession":Lorg/apache/ftpserver/impl/DefaultFtpSession;
    :catchall_0
    move-exception v0

    move-wide/from16 v21, v9

    goto/16 :goto_a

    .line 300
    :catch_0
    move-exception v0

    move-wide/from16 v21, v9

    goto/16 :goto_8

    .line 296
    :catch_1
    move-exception v0

    move-wide/from16 v21, v9

    goto/16 :goto_9

    .line 213
    .restart local v0    # "defaultFtpSession":Lorg/apache/ftpserver/impl/DefaultFtpSession;
    :cond_1
    move-object v14, v0

    .line 217
    .end local v0    # "defaultFtpSession":Lorg/apache/ftpserver/impl/DefaultFtpSession;
    .local v14, "defaultFtpSession":Lorg/apache/ftpserver/impl/DefaultFtpSession;
    :goto_1
    const/4 v0, 0x0

    move-wide v15, v5

    move v5, v0

    .line 222
    .local v5, "lastByte":B
    .local v15, "transferredSize":J
    :goto_2
    if-lez v3, :cond_3

    .line 225
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v9

    .line 226
    .local v17, "interval":J
    const-wide/16 v19, 0x0

    cmp-long v0, v17, v19

    if-nez v0, :cond_2

    .line 227
    const-wide/16 v17, 0x1

    .line 231
    :cond_2
    const-wide/16 v19, 0x3e8

    mul-long v19, v19, v15

    div-long v19, v19, v17
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 232
    .local v19, "currRate":J
    move-wide/from16 v21, v9

    .end local v9    # "startTime":J
    .local v21, "startTime":J
    int-to-long v8, v3

    cmp-long v6, v19, v8

    if-lez v6, :cond_4

    .line 234
    const-wide/16 v8, 0x32

    :try_start_3
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 237
    move-wide/from16 v9, v21

    goto :goto_2

    .line 235
    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 236
    .local v0, "ex":Ljava/lang/InterruptedException;
    goto :goto_3

    .line 305
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    .end local v5    # "lastByte":B
    .end local v14    # "defaultFtpSession":Lorg/apache/ftpserver/impl/DefaultFtpSession;
    .end local v17    # "interval":J
    .end local v19    # "currRate":J
    .end local v21    # "startTime":J
    .restart local v9    # "startTime":J
    :catchall_1
    move-exception v0

    move-wide/from16 v21, v9

    move-wide v5, v15

    .end local v9    # "startTime":J
    .restart local v21    # "startTime":J
    goto/16 :goto_a

    .line 300
    .end local v21    # "startTime":J
    .restart local v9    # "startTime":J
    :catch_3
    move-exception v0

    move-wide/from16 v21, v9

    move-wide v5, v15

    .end local v9    # "startTime":J
    .restart local v21    # "startTime":J
    goto/16 :goto_8

    .line 296
    .end local v21    # "startTime":J
    .restart local v9    # "startTime":J
    :catch_4
    move-exception v0

    move-wide/from16 v21, v9

    move-wide v5, v15

    .end local v9    # "startTime":J
    .restart local v21    # "startTime":J
    goto/16 :goto_9

    .line 222
    .end local v21    # "startTime":J
    .restart local v5    # "lastByte":B
    .restart local v9    # "startTime":J
    .restart local v14    # "defaultFtpSession":Lorg/apache/ftpserver/impl/DefaultFtpSession;
    :cond_3
    move-wide/from16 v21, v9

    .line 243
    .end local v9    # "startTime":J
    .restart local v21    # "startTime":J
    :cond_4
    :try_start_4
    invoke-virtual {v12, v11}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 245
    .local v6, "count":I
    const/4 v8, -0x1

    if-ne v6, v8, :cond_6

    .line 246
    nop

    .line 305
    .end local v5    # "lastByte":B
    .end local v6    # "count":I
    .end local v14    # "defaultFtpSession":Lorg/apache/ftpserver/impl/DefaultFtpSession;
    :goto_3
    if-eqz v13, :cond_5

    .line 306
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->flush()V

    .line 310
    :cond_5
    return-wide v15

    .line 250
    .restart local v5    # "lastByte":B
    .restart local v6    # "count":I
    .restart local v14    # "defaultFtpSession":Lorg/apache/ftpserver/impl/DefaultFtpSession;
    :cond_6
    if-eqz v14, :cond_8

    .line 251
    if-eqz p2, :cond_7

    .line 252
    :try_start_5
    invoke-virtual {v14, v6}, Lorg/apache/ftpserver/impl/DefaultFtpSession;->increaseWrittenDataBytes(I)V

    goto :goto_4

    .line 254
    :cond_7
    invoke-virtual {v14, v6}, Lorg/apache/ftpserver/impl/DefaultFtpSession;->increaseReadDataBytes(I)V

    .line 260
    :cond_8
    :goto_4
    if-eqz v7, :cond_f

    .line 261
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5
    if-ge v8, v6, :cond_e

    .line 262
    aget-byte v9, v11, v8

    .line 263
    .local v9, "b":B
    const/16 v10, 0xa

    const/16 v0, 0xd

    if-eqz p2, :cond_a

    .line 264
    if-ne v9, v10, :cond_9

    if-eq v5, v0, :cond_9

    .line 265
    invoke-virtual {v13, v0}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 268
    :cond_9
    invoke-virtual {v13, v9}, Ljava/io/BufferedOutputStream;->write(I)V

    goto :goto_6

    .line 270
    :cond_a
    if-ne v9, v10, :cond_b

    .line 275
    if-eq v5, v0, :cond_d

    .line 276
    sget-object v0, Lorg/apache/ftpserver/impl/IODataConnection;->EOL:[B

    invoke-virtual {v13, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    goto :goto_6

    .line 278
    :cond_b
    if-ne v9, v0, :cond_c

    .line 279
    sget-object v0, Lorg/apache/ftpserver/impl/IODataConnection;->EOL:[B

    invoke-virtual {v13, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    goto :goto_6

    .line 282
    :cond_c
    invoke-virtual {v13, v9}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 286
    :cond_d
    :goto_6
    move v5, v9

    .line 261
    .end local v9    # "b":B
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_e
    const/4 v0, 0x0

    .end local v8    # "i":I
    goto :goto_7

    .line 289
    :cond_f
    const/4 v0, 0x0

    invoke-virtual {v13, v11, v0, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 292
    :goto_7
    int-to-long v8, v6

    add-long/2addr v15, v8

    .line 294
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ftpserver/impl/IODataConnection;->notifyObserver()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 295
    .end local v6    # "count":I
    move-wide/from16 v9, v21

    goto/16 :goto_2

    .line 305
    .end local v5    # "lastByte":B
    .end local v14    # "defaultFtpSession":Lorg/apache/ftpserver/impl/DefaultFtpSession;
    :catchall_2
    move-exception v0

    move-wide v5, v15

    goto :goto_a

    .line 300
    :catch_5
    move-exception v0

    move-wide v5, v15

    goto :goto_8

    .line 296
    :catch_6
    move-exception v0

    move-wide v5, v15

    goto :goto_9

    .line 305
    .end local v15    # "transferredSize":J
    .end local v21    # "startTime":J
    .local v5, "transferredSize":J
    .local v9, "startTime":J
    :catchall_3
    move-exception v0

    move-wide/from16 v21, v9

    .end local v9    # "startTime":J
    .restart local v21    # "startTime":J
    goto :goto_a

    .line 300
    .end local v21    # "startTime":J
    .restart local v9    # "startTime":J
    :catch_7
    move-exception v0

    move-wide/from16 v21, v9

    .line 301
    .end local v9    # "startTime":J
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v21    # "startTime":J
    :goto_8
    :try_start_6
    iget-object v8, v1, Lorg/apache/ftpserver/impl/IODataConnection;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v8, v4, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 302
    iget-object v4, v1, Lorg/apache/ftpserver/impl/IODataConnection;->factory:Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    invoke-interface {v4}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->closeDataConnection()V

    .line 303
    nop

    .end local v5    # "transferredSize":J
    .end local v7    # "isAscii":Z
    .end local v11    # "buff":[B
    .end local v12    # "bis":Ljava/io/BufferedInputStream;
    .end local v13    # "bos":Ljava/io/BufferedOutputStream;
    .end local v21    # "startTime":J
    .end local p0    # "this":Lorg/apache/ftpserver/impl/IODataConnection;
    .end local p1    # "session":Lorg/apache/ftpserver/ftplet/FtpSession;
    .end local p2    # "isWrite":Z
    .end local p3    # "in":Ljava/io/InputStream;
    .end local p4    # "out":Ljava/io/OutputStream;
    .end local p5    # "maxRate":I
    throw v0

    .line 296
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v5    # "transferredSize":J
    .restart local v7    # "isAscii":Z
    .restart local v9    # "startTime":J
    .restart local v11    # "buff":[B
    .restart local v12    # "bis":Ljava/io/BufferedInputStream;
    .restart local v13    # "bos":Ljava/io/BufferedOutputStream;
    .restart local p0    # "this":Lorg/apache/ftpserver/impl/IODataConnection;
    .restart local p1    # "session":Lorg/apache/ftpserver/ftplet/FtpSession;
    .restart local p2    # "isWrite":Z
    .restart local p3    # "in":Ljava/io/InputStream;
    .restart local p4    # "out":Ljava/io/OutputStream;
    .restart local p5    # "maxRate":I
    :catch_8
    move-exception v0

    move-wide/from16 v21, v9

    .line 297
    .end local v9    # "startTime":J
    .local v0, "e":Ljava/io/IOException;
    .restart local v21    # "startTime":J
    :goto_9
    iget-object v8, v1, Lorg/apache/ftpserver/impl/IODataConnection;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v8, v4, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 298
    iget-object v4, v1, Lorg/apache/ftpserver/impl/IODataConnection;->factory:Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    invoke-interface {v4}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->closeDataConnection()V

    .line 299
    nop

    .end local v5    # "transferredSize":J
    .end local v7    # "isAscii":Z
    .end local v11    # "buff":[B
    .end local v12    # "bis":Ljava/io/BufferedInputStream;
    .end local v13    # "bos":Ljava/io/BufferedOutputStream;
    .end local v21    # "startTime":J
    .end local p0    # "this":Lorg/apache/ftpserver/impl/IODataConnection;
    .end local p1    # "session":Lorg/apache/ftpserver/ftplet/FtpSession;
    .end local p2    # "isWrite":Z
    .end local p3    # "in":Ljava/io/InputStream;
    .end local p4    # "out":Ljava/io/OutputStream;
    .end local p5    # "maxRate":I
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 305
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v5    # "transferredSize":J
    .restart local v7    # "isAscii":Z
    .restart local v11    # "buff":[B
    .restart local v12    # "bis":Ljava/io/BufferedInputStream;
    .restart local v13    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v21    # "startTime":J
    .restart local p0    # "this":Lorg/apache/ftpserver/impl/IODataConnection;
    .restart local p1    # "session":Lorg/apache/ftpserver/ftplet/FtpSession;
    .restart local p2    # "isWrite":Z
    .restart local p3    # "in":Ljava/io/InputStream;
    .restart local p4    # "out":Ljava/io/OutputStream;
    .restart local p5    # "maxRate":I
    :catchall_4
    move-exception v0

    :goto_a
    if-eqz v13, :cond_10

    .line 306
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->flush()V

    .line 308
    :cond_10
    throw v0
.end method


# virtual methods
.method protected notifyObserver()V
    .locals 1

    .line 317
    iget-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnection;->session:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->updateLastAccessTime()V

    .line 322
    return-void
.end method

.method public final transferFromClient(Lorg/apache/ftpserver/ftplet/FtpSession;Ljava/io/OutputStream;)J
    .locals 9
    .param p1, "session"    # Lorg/apache/ftpserver/ftplet/FtpSession;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    new-instance v0, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;

    invoke-direct {v0}, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;-><init>()V

    .line 127
    .local v0, "transferRateRequest":Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpSession;->getUser()Lorg/apache/ftpserver/ftplet/User;

    move-result-object v1

    .line 128
    invoke-interface {v1, v0}, Lorg/apache/ftpserver/ftplet/User;->authorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Lorg/apache/ftpserver/ftplet/AuthorizationRequest;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;

    .line 129
    const/4 v1, 0x0

    .line 130
    .local v1, "maxRate":I
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;->getMaxUploadRate()I

    move-result v1

    .line 134
    :cond_0
    invoke-direct {p0}, Lorg/apache/ftpserver/impl/IODataConnection;->getDataInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 136
    .local v8, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, v8

    move-object v6, p2

    move v7, v1

    :try_start_0
    invoke-direct/range {v2 .. v7}, Lorg/apache/ftpserver/impl/IODataConnection;->transfer(Lorg/apache/ftpserver/ftplet/FtpSession;ZLjava/io/InputStream;Ljava/io/OutputStream;I)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    invoke-static {v8}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    .line 136
    return-wide v2

    .line 138
    :catchall_0
    move-exception v2

    invoke-static {v8}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    .line 139
    throw v2
.end method

.method public final transferToClient(Lorg/apache/ftpserver/ftplet/FtpSession;Ljava/io/InputStream;)J
    .locals 9
    .param p1, "session"    # Lorg/apache/ftpserver/ftplet/FtpSession;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    new-instance v0, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;

    invoke-direct {v0}, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;-><init>()V

    .line 152
    .local v0, "transferRateRequest":Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpSession;->getUser()Lorg/apache/ftpserver/ftplet/User;

    move-result-object v1

    .line 153
    invoke-interface {v1, v0}, Lorg/apache/ftpserver/ftplet/User;->authorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Lorg/apache/ftpserver/ftplet/AuthorizationRequest;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;

    .line 154
    const/4 v1, 0x0

    .line 155
    .local v1, "maxRate":I
    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;->getMaxDownloadRate()I

    move-result v1

    .line 159
    :cond_0
    invoke-direct {p0}, Lorg/apache/ftpserver/impl/IODataConnection;->getDataOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 161
    .local v8, "out":Ljava/io/OutputStream;
    const/4 v4, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, v8

    move v7, v1

    :try_start_0
    invoke-direct/range {v2 .. v7}, Lorg/apache/ftpserver/impl/IODataConnection;->transfer(Lorg/apache/ftpserver/ftplet/FtpSession;ZLjava/io/InputStream;Ljava/io/OutputStream;I)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    invoke-static {v8}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/OutputStream;)V

    .line 161
    return-wide v2

    .line 163
    :catchall_0
    move-exception v2

    invoke-static {v8}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/OutputStream;)V

    .line 164
    throw v2
.end method

.method public final transferToClient(Lorg/apache/ftpserver/ftplet/FtpSession;Ljava/lang/String;)V
    .locals 4
    .param p1, "session"    # Lorg/apache/ftpserver/ftplet/FtpSession;
    .param p2, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    const-string v0, "UTF-8"

    invoke-direct {p0}, Lorg/apache/ftpserver/impl/IODataConnection;->getDataOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 177
    .local v1, "out":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 179
    .local v2, "writer":Ljava/io/Writer;
    :try_start_0
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object v2, v3

    .line 180
    invoke-virtual {v2, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 183
    instance-of v3, p1, Lorg/apache/ftpserver/impl/DefaultFtpSession;

    if-eqz v3, :cond_0

    .line 184
    move-object v3, p1

    check-cast v3, Lorg/apache/ftpserver/impl/DefaultFtpSession;

    .line 185
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    .line 184
    invoke-virtual {v3, v0}, Lorg/apache/ftpserver/impl/DefaultFtpSession;->increaseWrittenDataBytes(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_0
    nop

    .line 189
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 191
    invoke-static {v2}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/Writer;)V

    .line 192
    nop

    .line 194
    return-void

    .line 188
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_1

    .line 189
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 191
    :cond_1
    invoke-static {v2}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/Writer;)V

    .line 192
    throw v0
.end method
