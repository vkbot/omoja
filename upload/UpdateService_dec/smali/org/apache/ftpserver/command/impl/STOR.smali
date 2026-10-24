.class public Lorg/apache/ftpserver/command/impl/STOR;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "STOR.java"


# instance fields
.field private final LOG:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    .line 60
    const-class v0, Lorg/apache/ftpserver/command/impl/STOR;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/STOR;->LOG:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 22
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p2, "context"    # Lorg/apache/ftpserver/impl/FtpServerContext;
    .param p3, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v11, p1

    .line 72
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileOffset()J

    move-result-wide v2

    move-wide v12, v2

    .line 75
    .local v12, "skipLen":J
    invoke-interface/range {p3 .. p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 76
    .local v9, "fileName":Ljava/lang/String;
    if-nez v9, :cond_0

    .line 77
    const/16 v5, 0x1f5

    const-string v6, "STOR"

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 79
    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v8}, Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;

    move-result-object v0

    .line 78
    invoke-virtual {v11, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 193
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 194
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->closeDataConnection()V

    .line 85
    return-void

    .line 90
    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v0

    move-object v14, v0

    .line 91
    .local v14, "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    instance-of v0, v14, Lorg/apache/ftpserver/impl/IODataConnectionFactory;

    if-eqz v0, :cond_1

    .line 92
    move-object v0, v14

    check-cast v0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;

    .line 93
    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 94
    .local v0, "address":Ljava/net/InetAddress;
    if-nez v0, :cond_1

    .line 95
    new-instance v2, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;

    const/16 v3, 0x1f7

    const-string v4, "PORT or PASV must be issued first"

    invoke-direct {v2, v3, v4}, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;-><init>(ILjava/lang/String;)V

    invoke-virtual {v11, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 193
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 194
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->closeDataConnection()V

    .line 98
    return-void

    .line 103
    .end local v0    # "address":Ljava/net/InetAddress;
    :cond_1
    const/4 v2, 0x0

    .line 105
    .local v2, "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object v0

    invoke-interface {v0, v9}, Lorg/apache/ftpserver/ftplet/FileSystemView;->getFile(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/FtpFile;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-object v2, v0

    .line 108
    move-object v15, v2

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_3
    iget-object v3, v1, Lorg/apache/ftpserver/command/impl/STOR;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Exception getting file object"

    invoke-interface {v3, v4, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v15, v2

    .line 109
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    .local v15, "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    :goto_0
    if-nez v15, :cond_2

    .line 110
    const/16 v5, 0x226

    const-string v6, "STOR.invalid"

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v7, v9

    move-object v8, v15

    invoke-static/range {v2 .. v8}, Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 193
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 194
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->closeDataConnection()V

    .line 113
    return-void

    .line 115
    :cond_2
    :try_start_4
    invoke-interface {v15}, Lorg/apache/ftpserver/ftplet/FtpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 118
    invoke-interface {v15}, Lorg/apache/ftpserver/ftplet/FtpFile;->isWritable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 119
    const/16 v5, 0x226

    const-string v6, "STOR.permission"

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v7, v9

    move-object v8, v15

    invoke-static/range {v2 .. v8}, Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 193
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 194
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->closeDataConnection()V

    .line 122
    return-void

    .line 126
    :cond_3
    const/16 v5, 0x96

    :try_start_5
    const-string v6, "STOR"

    .line 127
    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v7, v9

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    .line 126
    invoke-virtual {v11, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v0

    const-wide/16 v2, 0x2710

    .line 129
    invoke-interface {v0, v2, v3}, Lorg/apache/mina/core/future/WriteFuture;->awaitUninterruptibly(J)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 133
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->openConnection()Lorg/apache/ftpserver/ftplet/DataConnection;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move-object v10, v0

    .line 140
    .local v10, "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    nop

    .line 143
    const/4 v2, 0x0

    .line 144
    .local v2, "failure":Z
    const/4 v3, 0x0

    .line 145
    .local v3, "outStream":Ljava/io/OutputStream;
    const-wide/16 v4, 0x0

    .line 147
    .local v4, "transSz":J
    :try_start_7
    invoke-interface {v15, v12, v13}, Lorg/apache/ftpserver/ftplet/FtpFile;->createOutputStream(J)Ljava/io/OutputStream;

    move-result-object v0

    move-object v3, v0

    .line 148
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFtpletSession()Lorg/apache/ftpserver/ftplet/FtpSession;

    move-result-object v0

    invoke-interface {v10, v0, v3}, Lorg/apache/ftpserver/ftplet/DataConnection;->transferFromClient(Lorg/apache/ftpserver/ftplet/FtpSession;Ljava/io/OutputStream;)J

    move-result-wide v6

    move-wide v4, v6

    .line 152
    if-eqz v3, :cond_4

    .line 153
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 156
    :cond_4
    iget-object v0, v1, Lorg/apache/ftpserver/command/impl/STOR;->LOG:Lorg/slf4j/Logger;

    const-string v6, "File uploaded {}"

    invoke-interface {v0, v6, v9}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    nop

    .line 160
    invoke-interface/range {p2 .. p2}, Lorg/apache/ftpserver/impl/FtpServerContext;->getFtpStatistics()Lorg/apache/ftpserver/ftplet/FtpStatistics;

    move-result-object v0

    check-cast v0, Lorg/apache/ftpserver/impl/ServerFtpStatistics;

    .line 161
    .local v0, "ftpStat":Lorg/apache/ftpserver/impl/ServerFtpStatistics;
    invoke-interface {v0, v11, v15, v4, v5}, Lorg/apache/ftpserver/impl/ServerFtpStatistics;->setUpload(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;J)V
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 182
    .end local v0    # "ftpStat":Lorg/apache/ftpserver/impl/ServerFtpStatistics;
    :try_start_8
    invoke-static {v3}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/OutputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 183
    move/from16 v19, v2

    move-object/from16 v16, v3

    move-wide/from16 v17, v4

    goto/16 :goto_2

    .line 182
    :catchall_0
    move-exception v0

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    goto/16 :goto_4

    .line 169
    :catch_1
    move-exception v0

    move-object/from16 v16, v3

    move-wide/from16 v17, v4

    .line 170
    .end local v3    # "outStream":Ljava/io/OutputStream;
    .end local v4    # "transSz":J
    .local v0, "ex":Ljava/io/IOException;
    .local v16, "outStream":Ljava/io/OutputStream;
    .local v17, "transSz":J
    :try_start_9
    iget-object v3, v1, Lorg/apache/ftpserver/command/impl/STOR;->LOG:Lorg/slf4j/Logger;

    const-string v4, "IOException during data transfer"

    invoke-interface {v3, v4, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 171
    const/16 v19, 0x1

    .line 172
    .end local v2    # "failure":Z
    .local v19, "failure":Z
    const/16 v5, 0x227

    :try_start_a
    const-string v6, "STOR"

    .line 174
    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v7, v9

    move-object v8, v15

    invoke-static/range {v2 .. v8}, Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;

    move-result-object v2

    .line 173
    invoke-virtual {v11, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_1

    .line 182
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v0

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v3, v16

    move-wide/from16 v4, v17

    move/from16 v2, v19

    goto/16 :goto_4

    .end local v19    # "failure":Z
    .restart local v2    # "failure":Z
    :catchall_2
    move-exception v0

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v3, v16

    move-wide/from16 v4, v17

    goto/16 :goto_4

    .line 163
    .end local v16    # "outStream":Ljava/io/OutputStream;
    .end local v17    # "transSz":J
    .restart local v3    # "outStream":Ljava/io/OutputStream;
    .restart local v4    # "transSz":J
    :catch_2
    move-exception v0

    move-object/from16 v16, v3

    move-wide/from16 v17, v4

    .line 164
    .end local v3    # "outStream":Ljava/io/OutputStream;
    .end local v4    # "transSz":J
    .local v0, "ex":Ljava/net/SocketException;
    .restart local v16    # "outStream":Ljava/io/OutputStream;
    .restart local v17    # "transSz":J
    :try_start_b
    iget-object v3, v1, Lorg/apache/ftpserver/command/impl/STOR;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Socket exception during data transfer"

    invoke-interface {v3, v4, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 165
    const/16 v19, 0x1

    .line 166
    .end local v2    # "failure":Z
    .restart local v19    # "failure":Z
    const/16 v5, 0x1aa

    :try_start_c
    const-string v6, "STOR"

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v7, v9

    move-object v8, v15

    invoke-static/range {v2 .. v8}, Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;

    move-result-object v2

    invoke-virtual {v11, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 182
    .end local v0    # "ex":Ljava/net/SocketException;
    :goto_1
    :try_start_d
    invoke-static/range {v16 .. v16}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/OutputStream;)V

    .line 183
    nop

    .line 186
    :goto_2
    if-nez v19, :cond_5

    .line 187
    const/16 v5, 0xe2

    const-string v6, "STOR"

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v7, v9

    move-object v8, v15

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    .end local v9    # "fileName":Ljava/lang/String;
    .end local v10    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    .local v20, "fileName":Ljava/lang/String;
    .local v21, "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    move-wide/from16 v9, v17

    invoke-static/range {v2 .. v10}, Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;J)Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_3

    .line 186
    .end local v20    # "fileName":Ljava/lang/String;
    .end local v21    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    .restart local v9    # "fileName":Ljava/lang/String;
    .restart local v10    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    :cond_5
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    .line 193
    .end local v9    # "fileName":Ljava/lang/String;
    .end local v10    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    .end local v12    # "skipLen":J
    .end local v14    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    .end local v15    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    .end local v16    # "outStream":Ljava/io/OutputStream;
    .end local v17    # "transSz":J
    .end local v19    # "failure":Z
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 194
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->closeDataConnection()V

    .line 195
    nop

    .line 196
    return-void

    .line 182
    .restart local v9    # "fileName":Ljava/lang/String;
    .restart local v10    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    .restart local v12    # "skipLen":J
    .restart local v14    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    .restart local v15    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    .restart local v16    # "outStream":Ljava/io/OutputStream;
    .restart local v17    # "transSz":J
    .restart local v19    # "failure":Z
    :catchall_3
    move-exception v0

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v3, v16

    move-wide/from16 v4, v17

    move/from16 v2, v19

    .end local v9    # "fileName":Ljava/lang/String;
    .end local v10    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    .restart local v20    # "fileName":Ljava/lang/String;
    .restart local v21    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    goto :goto_4

    .end local v19    # "failure":Z
    .end local v20    # "fileName":Ljava/lang/String;
    .end local v21    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    .restart local v2    # "failure":Z
    .restart local v9    # "fileName":Ljava/lang/String;
    .restart local v10    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    :catchall_4
    move-exception v0

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v3, v16

    move-wide/from16 v4, v17

    .end local v9    # "fileName":Ljava/lang/String;
    .end local v10    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    .end local v16    # "outStream":Ljava/io/OutputStream;
    .end local v17    # "transSz":J
    .restart local v3    # "outStream":Ljava/io/OutputStream;
    .restart local v4    # "transSz":J
    .restart local v20    # "fileName":Ljava/lang/String;
    .restart local v21    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    :goto_4
    :try_start_e
    invoke-static {v3}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/OutputStream;)V

    .line 183
    nop

    .end local p0    # "this":Lorg/apache/ftpserver/command/impl/STOR;
    .end local p1    # "session":Lorg/apache/ftpserver/impl/FtpIoSession;
    .end local p2    # "context":Lorg/apache/ftpserver/impl/FtpServerContext;
    .end local p3    # "request":Lorg/apache/ftpserver/ftplet/FtpRequest;
    throw v0

    .line 134
    .end local v2    # "failure":Z
    .end local v3    # "outStream":Ljava/io/OutputStream;
    .end local v4    # "transSz":J
    .end local v20    # "fileName":Ljava/lang/String;
    .end local v21    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    .restart local v9    # "fileName":Ljava/lang/String;
    .restart local p0    # "this":Lorg/apache/ftpserver/command/impl/STOR;
    .restart local p1    # "session":Lorg/apache/ftpserver/impl/FtpIoSession;
    .restart local p2    # "context":Lorg/apache/ftpserver/impl/FtpServerContext;
    .restart local p3    # "request":Lorg/apache/ftpserver/ftplet/FtpRequest;
    :catch_3
    move-exception v0

    move-object/from16 v20, v9

    .line 135
    .end local v9    # "fileName":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v20    # "fileName":Ljava/lang/String;
    iget-object v2, v1, Lorg/apache/ftpserver/command/impl/STOR;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Exception getting the input data stream"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    const/16 v5, 0x1a9

    const-string v6, "STOR"

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v7, v20

    move-object v8, v15

    invoke-static/range {v2 .. v8}, Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;

    move-result-object v2

    invoke-virtual {v11, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 193
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 194
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->closeDataConnection()V

    .line 139
    return-void

    .line 193
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v12    # "skipLen":J
    .end local v14    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    .end local v15    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    .end local v20    # "fileName":Ljava/lang/String;
    :catchall_5
    move-exception v0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 194
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->closeDataConnection()V

    .line 195
    throw v0
.end method
