.class public Lorg/apache/ftpserver/command/impl/RETR;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "RETR.java"


# instance fields
.field private final LOG:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    .line 61
    const-class v0, Lorg/apache/ftpserver/command/impl/RETR;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/RETR;->LOG:Lorg/slf4j/Logger;

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

    .line 73
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileOffset()J

    move-result-wide v2

    move-wide v12, v2

    .line 76
    .local v12, "skipLen":J
    invoke-interface/range {p3 .. p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 77
    .local v9, "fileName":Ljava/lang/String;
    if-nez v9, :cond_0

    .line 78
    const/16 v5, 0x1f5

    const-string v6, "RETR"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v8}, Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 215
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 216
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->closeDataConnection()V

    .line 84
    return-void

    .line 88
    :cond_0
    const/4 v2, 0x0

    .line 90
    .local v2, "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object v0

    invoke-interface {v0, v9}, Lorg/apache/ftpserver/ftplet/FileSystemView;->getFile(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/FtpFile;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-object v2, v0

    .line 93
    move-object v14, v2

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, v1, Lorg/apache/ftpserver/command/impl/RETR;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Exception getting file object"

    invoke-interface {v3, v4, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v14, v2

    .line 94
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    .local v14, "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    :goto_0
    if-nez v14, :cond_1

    .line 95
    const/16 v5, 0x226

    const-string v6, "RETR.missing"

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v7, v9

    move-object v8, v14

    invoke-static/range {v2 .. v8}, Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 215
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 216
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->closeDataConnection()V

    .line 98
    return-void

    .line 100
    :cond_1
    :try_start_3
    invoke-interface {v14}, Lorg/apache/ftpserver/ftplet/FtpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 103
    .end local v9    # "fileName":Ljava/lang/String;
    .local v15, "fileName":Ljava/lang/String;
    invoke-interface {v14}, Lorg/apache/ftpserver/ftplet/FtpFile;->doesExist()Z

    move-result v0

    if-nez v0, :cond_2

    .line 104
    const/16 v5, 0x226

    const-string v6, "RETR.missing"

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v7, v15

    move-object v8, v14

    invoke-static/range {v2 .. v8}, Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 215
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 216
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->closeDataConnection()V

    .line 107
    return-void

    .line 111
    :cond_2
    :try_start_4
    invoke-interface {v14}, Lorg/apache/ftpserver/ftplet/FtpFile;->isFile()Z

    move-result v0

    if-nez v0, :cond_3

    .line 112
    const/16 v5, 0x226

    const-string v6, "RETR.invalid"

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v7, v15

    move-object v8, v14

    invoke-static/range {v2 .. v8}, Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 215
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 216
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->closeDataConnection()V

    .line 115
    return-void

    .line 119
    :cond_3
    :try_start_5
    invoke-interface {v14}, Lorg/apache/ftpserver/ftplet/FtpFile;->isReadable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 120
    const/16 v5, 0x226

    const-string v6, "RETR.permission"

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v7, v15

    move-object v8, v14

    invoke-static/range {v2 .. v8}, Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 215
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 216
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->closeDataConnection()V

    .line 123
    return-void

    .line 131
    :cond_4
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v0

    move-object v9, v0

    .line 132
    .local v9, "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    instance-of v0, v9, Lorg/apache/ftpserver/impl/IODataConnectionFactory;

    if-eqz v0, :cond_5

    .line 133
    move-object v0, v9

    check-cast v0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;

    .line 134
    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 135
    .local v0, "address":Ljava/net/InetAddress;
    if-nez v0, :cond_5

    .line 136
    new-instance v2, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;

    const/16 v3, 0x1f7

    const-string v4, "PORT or PASV must be issued first"

    invoke-direct {v2, v3, v4}, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;-><init>(ILjava/lang/String;)V

    invoke-virtual {v11, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 215
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 216
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->closeDataConnection()V

    .line 139
    return-void

    .line 144
    .end local v0    # "address":Ljava/net/InetAddress;
    :cond_5
    const/16 v5, 0x96

    :try_start_7
    const-string v6, "RETR"

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 148
    const/4 v10, 0x0

    .line 149
    .local v10, "failure":Z
    const/16 v16, 0x0

    .line 153
    .local v16, "is":Ljava/io/InputStream;
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->openConnection()Lorg/apache/ftpserver/ftplet/DataConnection;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    move-object v8, v0

    .line 160
    .local v8, "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    nop

    .line 162
    const-wide/16 v2, 0x0

    .line 166
    .local v2, "transSz":J
    :try_start_9
    invoke-virtual {v1, v11, v14, v12, v13}, Lorg/apache/ftpserver/command/impl/RETR;->openInputStream(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;J)Ljava/io/InputStream;

    move-result-object v0
    :try_end_9
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object v4, v0

    .line 169
    .end local v16    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFtpletSession()Lorg/apache/ftpserver/ftplet/FtpSession;

    move-result-object v0

    invoke-interface {v8, v0, v4}, Lorg/apache/ftpserver/ftplet/DataConnection;->transferToClient(Lorg/apache/ftpserver/ftplet/FtpSession;Ljava/io/InputStream;)J

    move-result-wide v5

    move-wide v2, v5

    .line 172
    if-eqz v4, :cond_6

    .line 173
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 176
    :cond_6
    iget-object v0, v1, Lorg/apache/ftpserver/command/impl/RETR;->LOG:Lorg/slf4j/Logger;

    const-string v5, "File downloaded {}"

    invoke-interface {v0, v5, v15}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    nop

    .line 180
    invoke-interface/range {p2 .. p2}, Lorg/apache/ftpserver/impl/FtpServerContext;->getFtpStatistics()Lorg/apache/ftpserver/ftplet/FtpStatistics;

    move-result-object v0

    check-cast v0, Lorg/apache/ftpserver/impl/ServerFtpStatistics;

    .line 181
    .local v0, "ftpStat":Lorg/apache/ftpserver/impl/ServerFtpStatistics;
    if-eqz v0, :cond_7

    .line 182
    invoke-interface {v0, v11, v14, v2, v3}, Lorg/apache/ftpserver/impl/ServerFtpStatistics;->setDownload(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;J)V
    :try_end_a
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 204
    .end local v0    # "ftpStat":Lorg/apache/ftpserver/impl/ServerFtpStatistics;
    :cond_7
    :try_start_b
    invoke-static {v4}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 205
    move-wide/from16 v16, v2

    move-object/from16 v18, v4

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move/from16 v19, v10

    goto/16 :goto_4

    .line 204
    :catchall_0
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    goto/16 :goto_5

    .line 191
    :catch_1
    move-exception v0

    move-wide/from16 v16, v2

    move-object/from16 v18, v4

    goto :goto_1

    .line 185
    :catch_2
    move-exception v0

    move-wide/from16 v16, v2

    move-object/from16 v18, v4

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    goto :goto_2

    .line 204
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v16    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    goto/16 :goto_5

    .line 191
    :catch_3
    move-exception v0

    move-object/from16 v18, v16

    move-wide/from16 v16, v2

    .line 192
    .end local v2    # "transSz":J
    .local v0, "ex":Ljava/io/IOException;
    .local v16, "transSz":J
    .local v18, "is":Ljava/io/InputStream;
    :goto_1
    :try_start_c
    iget-object v2, v1, Lorg/apache/ftpserver/command/impl/RETR;->LOG:Lorg/slf4j/Logger;

    const-string v3, "IOException during data transfer"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 193
    const/16 v19, 0x1

    .line 194
    .end local v10    # "failure":Z
    .local v19, "failure":Z
    const/16 v5, 0x227

    :try_start_d
    const-string v6, "RETR"
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 196
    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v7, v15

    move-object/from16 v20, v8

    .end local v8    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    .local v20, "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    move-object v8, v14

    move-object/from16 v21, v9

    .end local v9    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    .local v21, "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    move-wide/from16 v9, v16

    :try_start_e
    invoke-static/range {v2 .. v10}, Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;J)Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;

    move-result-object v2

    .line 195
    invoke-virtual {v11, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_3

    .line 204
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v20    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    .end local v21    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    .restart local v8    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    .restart local v9    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    :catchall_2
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-wide/from16 v2, v16

    move-object/from16 v16, v18

    move/from16 v10, v19

    .end local v8    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    .end local v9    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    .restart local v20    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    .restart local v21    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    goto/16 :goto_5

    .end local v19    # "failure":Z
    .end local v20    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    .end local v21    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    .restart local v8    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    .restart local v9    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    .restart local v10    # "failure":Z
    :catchall_3
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-wide/from16 v2, v16

    move-object/from16 v16, v18

    .end local v8    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    .end local v9    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    .restart local v20    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    .restart local v21    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    goto :goto_5

    .line 185
    .end local v18    # "is":Ljava/io/InputStream;
    .end local v20    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    .end local v21    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    .restart local v2    # "transSz":J
    .restart local v8    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    .restart local v9    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    .local v16, "is":Ljava/io/InputStream;
    :catch_4
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v18, v16

    move-wide/from16 v16, v2

    .line 186
    .end local v2    # "transSz":J
    .end local v8    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    .end local v9    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    .local v0, "ex":Ljava/net/SocketException;
    .local v16, "transSz":J
    .restart local v18    # "is":Ljava/io/InputStream;
    .restart local v20    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    .restart local v21    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    :goto_2
    :try_start_f
    iget-object v2, v1, Lorg/apache/ftpserver/command/impl/RETR;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Socket exception during data transfer"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 187
    const/16 v19, 0x1

    .line 188
    .end local v10    # "failure":Z
    .restart local v19    # "failure":Z
    const/16 v5, 0x1aa

    :try_start_10
    const-string v6, "RETR"

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v7, v15

    move-object v8, v14

    move-wide/from16 v9, v16

    invoke-static/range {v2 .. v10}, Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;J)Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;

    move-result-object v2

    invoke-virtual {v11, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 204
    .end local v0    # "ex":Ljava/net/SocketException;
    :goto_3
    :try_start_11
    invoke-static/range {v18 .. v18}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    .line 205
    nop

    .line 208
    :goto_4
    if-nez v19, :cond_8

    .line 209
    const/16 v5, 0xe2

    const-string v6, "RETR"

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v7, v15

    move-object v8, v14

    move-wide/from16 v9, v16

    invoke-static/range {v2 .. v10}, Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;J)Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 215
    .end local v12    # "skipLen":J
    .end local v14    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    .end local v15    # "fileName":Ljava/lang/String;
    .end local v16    # "transSz":J
    .end local v18    # "is":Ljava/io/InputStream;
    .end local v19    # "failure":Z
    .end local v20    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    .end local v21    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 216
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->closeDataConnection()V

    .line 217
    nop

    .line 218
    return-void

    .line 204
    .restart local v12    # "skipLen":J
    .restart local v14    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    .restart local v15    # "fileName":Ljava/lang/String;
    .restart local v16    # "transSz":J
    .restart local v18    # "is":Ljava/io/InputStream;
    .restart local v19    # "failure":Z
    .restart local v20    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    .restart local v21    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    :catchall_4
    move-exception v0

    move-wide/from16 v2, v16

    move-object/from16 v16, v18

    move/from16 v10, v19

    goto :goto_5

    .end local v19    # "failure":Z
    .restart local v10    # "failure":Z
    :catchall_5
    move-exception v0

    move-wide/from16 v2, v16

    move-object/from16 v16, v18

    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v2    # "transSz":J
    .local v16, "is":Ljava/io/InputStream;
    :goto_5
    :try_start_12
    invoke-static/range {v16 .. v16}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    .line 205
    nop

    .end local p0    # "this":Lorg/apache/ftpserver/command/impl/RETR;
    .end local p1    # "session":Lorg/apache/ftpserver/impl/FtpIoSession;
    .end local p2    # "context":Lorg/apache/ftpserver/impl/FtpServerContext;
    .end local p3    # "request":Lorg/apache/ftpserver/ftplet/FtpRequest;
    throw v0

    .line 154
    .end local v2    # "transSz":J
    .end local v20    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    .end local v21    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    .restart local v9    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    .restart local p0    # "this":Lorg/apache/ftpserver/command/impl/RETR;
    .restart local p1    # "session":Lorg/apache/ftpserver/impl/FtpIoSession;
    .restart local p2    # "context":Lorg/apache/ftpserver/impl/FtpServerContext;
    .restart local p3    # "request":Lorg/apache/ftpserver/ftplet/FtpRequest;
    :catch_5
    move-exception v0

    move-object/from16 v21, v9

    .line 155
    .end local v9    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v21    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    iget-object v2, v1, Lorg/apache/ftpserver/command/impl/RETR;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Exception getting the output data stream"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    const/16 v5, 0x1a9

    const-string v6, "RETR"

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v8, v14

    invoke-static/range {v2 .. v8}, Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;

    move-result-object v2

    invoke-virtual {v11, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 215
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 216
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->closeDataConnection()V

    .line 159
    return-void

    .line 215
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v10    # "failure":Z
    .end local v12    # "skipLen":J
    .end local v14    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    .end local v15    # "fileName":Ljava/lang/String;
    .end local v16    # "is":Ljava/io/InputStream;
    .end local v21    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    :catchall_6
    move-exception v0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 216
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->closeDataConnection()V

    .line 217
    throw v0
.end method

.method public openInputStream(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;J)Ljava/io/InputStream;
    .locals 8
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p2, "file"    # Lorg/apache/ftpserver/ftplet/FtpFile;
    .param p3, "skipLen"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataType()Lorg/apache/ftpserver/ftplet/DataType;

    move-result-object v0

    sget-object v1, Lorg/apache/ftpserver/ftplet/DataType;->ASCII:Lorg/apache/ftpserver/ftplet/DataType;

    if-ne v0, v1, :cond_3

    .line 228
    const-wide/16 v0, 0x0

    .line 229
    .local v0, "offset":J
    new-instance v2, Ljava/io/BufferedInputStream;

    const-wide/16 v3, 0x0

    invoke-interface {p2, v3, v4}, Lorg/apache/ftpserver/ftplet/FtpFile;->createInputStream(J)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 230
    .local v2, "in":Ljava/io/InputStream;
    :goto_0
    const-wide/16 v3, 0x1

    add-long v5, v0, v3

    .end local v0    # "offset":J
    .local v5, "offset":J
    cmp-long v0, v0, p3

    if-gez v0, :cond_2

    .line 231
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    move v1, v0

    .local v1, "c":I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_1

    .line 234
    const/16 v0, 0xa

    if-ne v1, v0, :cond_0

    .line 235
    add-long/2addr v3, v5

    move-wide v0, v3

    .end local v5    # "offset":J
    .local v3, "offset":J
    goto :goto_0

    .line 234
    .end local v3    # "offset":J
    .restart local v5    # "offset":J
    :cond_0
    move-wide v0, v5

    goto :goto_0

    .line 232
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Cannot skip"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    .end local v1    # "c":I
    .end local v5    # "offset":J
    :cond_2
    goto :goto_1

    .line 239
    .end local v2    # "in":Ljava/io/InputStream;
    :cond_3
    invoke-interface {p2, p3, p4}, Lorg/apache/ftpserver/ftplet/FtpFile;->createInputStream(J)Ljava/io/InputStream;

    move-result-object v2

    .line 241
    .restart local v2    # "in":Ljava/io/InputStream;
    :goto_1
    return-object v2
.end method
