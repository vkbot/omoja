.class public Lorg/apache/ftpserver/command/impl/STOU;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "STOU.java"


# instance fields
.field private final LOG:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    .line 59
    const-class v0, Lorg/apache/ftpserver/command/impl/STOU;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/STOU;->LOG:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 20
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

    .line 71
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v0

    move-object v12, v0

    .line 72
    .local v12, "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    instance-of v0, v12, Lorg/apache/ftpserver/impl/IODataConnectionFactory;

    if-eqz v0, :cond_0

    .line 73
    move-object v0, v12

    check-cast v0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;

    .line 74
    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 75
    .local v0, "address":Ljava/net/InetAddress;
    if-nez v0, :cond_0

    .line 76
    new-instance v2, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;

    const/16 v3, 0x1f7

    const-string v4, "PORT or PASV must be issued first"

    invoke-direct {v2, v3, v4}, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;-><init>(ILjava/lang/String;)V

    invoke-virtual {v11, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 201
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->closeDataConnection()V

    .line 79
    return-void

    .line 84
    .end local v0    # "address":Ljava/net/InetAddress;
    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 86
    invoke-interface/range {p3 .. p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v13, v0

    .line 89
    .local v13, "pathName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 92
    .local v2, "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    if-nez v13, :cond_1

    .line 93
    :try_start_2
    const-string v0, "ftp.dat"

    .local v0, "filePrefix":Ljava/lang/String;
    goto :goto_0

    .line 95
    .end local v0    # "filePrefix":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object v0

    invoke-interface {v0, v13}, Lorg/apache/ftpserver/ftplet/FileSystemView;->getFile(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/FtpFile;

    move-result-object v0

    .line 97
    .local v0, "dir":Lorg/apache/ftpserver/ftplet/FtpFile;
    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpFile;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/ftp.dat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .local v3, "filePrefix":Ljava/lang/String;
    goto :goto_0

    .line 100
    .end local v3    # "filePrefix":Ljava/lang/String;
    :cond_2
    move-object v3, v13

    move-object v0, v3

    .line 104
    .local v0, "filePrefix":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/apache/ftpserver/ftplet/FileSystemView;->getFile(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/FtpFile;

    move-result-object v3

    move-object v2, v3

    .line 105
    if-eqz v2, :cond_3

    .line 106
    invoke-virtual {v1, v11, v2}, Lorg/apache/ftpserver/command/impl/STOU;->getUniqueFile(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/ftplet/FtpFile;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v2, v3

    .line 110
    .end local v0    # "filePrefix":Ljava/lang/String;
    :cond_3
    move-object v14, v2

    goto :goto_1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_3
    iget-object v3, v1, Lorg/apache/ftpserver/command/impl/STOU;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Exception getting file object"

    invoke-interface {v3, v4, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v14, v2

    .line 112
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    .local v14, "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    :goto_1
    if-nez v14, :cond_4

    .line 113
    const/16 v5, 0x226

    const-string v6, "STOU"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v8}, Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 201
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->closeDataConnection()V

    .line 116
    return-void

    .line 118
    :cond_4
    :try_start_4
    invoke-interface {v14}, Lorg/apache/ftpserver/ftplet/FtpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 121
    .local v15, "fileName":Ljava/lang/String;
    invoke-interface {v14}, Lorg/apache/ftpserver/ftplet/FtpFile;->isWritable()Z

    move-result v0

    if-nez v0, :cond_5

    .line 122
    const/16 v5, 0x226

    const-string v6, "STOU.permission"

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v7, v15

    move-object v8, v14

    invoke-static/range {v2 .. v8}, Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 201
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->closeDataConnection()V

    .line 125
    return-void

    .line 129
    :cond_5
    :try_start_5
    new-instance v0, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;

    const/16 v2, 0x96

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FILE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;-><init>(ILjava/lang/String;)V

    invoke-virtual {v11, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 133
    const/4 v9, 0x0

    .line 134
    .local v9, "failure":Z
    const/4 v10, 0x0

    .line 138
    .local v10, "os":Ljava/io/OutputStream;
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->openConnection()Lorg/apache/ftpserver/ftplet/DataConnection;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v8, v0

    .line 145
    .local v8, "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    nop

    .line 147
    const-wide/16 v2, 0x0

    .line 151
    .local v2, "transSz":J
    const-wide/16 v4, 0x0

    :try_start_7
    invoke-interface {v14, v4, v5}, Lorg/apache/ftpserver/ftplet/FtpFile;->createOutputStream(J)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v10, v0

    .line 154
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFtpletSession()Lorg/apache/ftpserver/ftplet/FtpSession;

    move-result-object v0

    invoke-interface {v8, v0, v10}, Lorg/apache/ftpserver/ftplet/DataConnection;->transferFromClient(Lorg/apache/ftpserver/ftplet/FtpSession;Ljava/io/OutputStream;)J

    move-result-wide v4

    move-wide v2, v4

    .line 158
    if-eqz v10, :cond_6

    .line 159
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 162
    :cond_6
    iget-object v0, v1, Lorg/apache/ftpserver/command/impl/STOU;->LOG:Lorg/slf4j/Logger;

    const-string v4, "File uploaded {}"

    invoke-interface {v0, v4, v15}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    nop

    .line 166
    invoke-interface/range {p2 .. p2}, Lorg/apache/ftpserver/impl/FtpServerContext;->getFtpStatistics()Lorg/apache/ftpserver/ftplet/FtpStatistics;

    move-result-object v0

    check-cast v0, Lorg/apache/ftpserver/impl/ServerFtpStatistics;

    .line 167
    .local v0, "ftpStat":Lorg/apache/ftpserver/impl/ServerFtpStatistics;
    if-eqz v0, :cond_7

    .line 168
    invoke-interface {v0, v11, v14, v2, v3}, Lorg/apache/ftpserver/impl/ServerFtpStatistics;->setUpload(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;J)V
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 190
    .end local v0    # "ftpStat":Lorg/apache/ftpserver/impl/ServerFtpStatistics;
    :cond_7
    :try_start_9
    invoke-static {v10}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/OutputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 191
    move-wide/from16 v16, v2

    move-object/from16 v18, v8

    move v0, v9

    move-object/from16 v19, v10

    goto :goto_4

    .line 171
    :catch_1
    move-exception v0

    move-wide/from16 v16, v2

    move-object/from16 v18, v8

    goto :goto_2

    .line 190
    :catchall_0
    move-exception v0

    move-object/from16 v18, v8

    goto/16 :goto_5

    .line 177
    :catch_2
    move-exception v0

    move-wide/from16 v16, v2

    .line 178
    .end local v2    # "transSz":J
    .local v0, "ex":Ljava/io/IOException;
    .local v16, "transSz":J
    :try_start_a
    iget-object v2, v1, Lorg/apache/ftpserver/command/impl/STOU;->LOG:Lorg/slf4j/Logger;

    const-string v3, "IOException during data transfer"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    const/4 v9, 0x1

    .line 180
    const/16 v5, 0x227

    const-string v6, "STOU"
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 182
    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v7, v15

    move-object/from16 v18, v8

    .end local v8    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    .local v18, "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    move-object v8, v14

    :try_start_b
    invoke-static/range {v2 .. v8}, Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;

    move-result-object v2

    .line 181
    invoke-virtual {v11, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    goto :goto_3

    .line 190
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v18    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    .restart local v8    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    :catchall_1
    move-exception v0

    move-object/from16 v18, v8

    move-wide/from16 v2, v16

    .end local v8    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    .restart local v18    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    goto :goto_5

    .line 171
    .end local v16    # "transSz":J
    .end local v18    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    .restart local v2    # "transSz":J
    .restart local v8    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    :catch_3
    move-exception v0

    move-object/from16 v18, v8

    move-wide/from16 v16, v2

    .line 172
    .end local v2    # "transSz":J
    .end local v8    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    .local v0, "ex":Ljava/net/SocketException;
    .restart local v16    # "transSz":J
    .restart local v18    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    :goto_2
    iget-object v2, v1, Lorg/apache/ftpserver/command/impl/STOU;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Socket exception during data transfer"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    const/4 v9, 0x1

    .line 174
    const/16 v5, 0x1aa

    const-string v6, "STOU"

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v7, v15

    move-object v8, v14

    invoke-static/range {v2 .. v8}, Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;

    move-result-object v2

    invoke-virtual {v11, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 190
    .end local v0    # "ex":Ljava/net/SocketException;
    :goto_3
    :try_start_c
    invoke-static {v10}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/OutputStream;)V

    .line 191
    move v0, v9

    move-object/from16 v19, v10

    .line 194
    .end local v9    # "failure":Z
    .end local v10    # "os":Ljava/io/OutputStream;
    .local v0, "failure":Z
    .local v19, "os":Ljava/io/OutputStream;
    :goto_4
    if-nez v0, :cond_8

    .line 195
    const/16 v5, 0xe2

    const-string v6, "STOU"

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v7, v15

    move-object v8, v14

    move-wide/from16 v9, v16

    invoke-static/range {v2 .. v10}, Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;J)Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;

    move-result-object v2

    invoke-virtual {v11, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 201
    .end local v0    # "failure":Z
    .end local v12    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    .end local v13    # "pathName":Ljava/lang/String;
    .end local v14    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    .end local v15    # "fileName":Ljava/lang/String;
    .end local v16    # "transSz":J
    .end local v18    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    .end local v19    # "os":Ljava/io/OutputStream;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->closeDataConnection()V

    .line 202
    nop

    .line 204
    return-void

    .line 190
    .restart local v9    # "failure":Z
    .restart local v10    # "os":Ljava/io/OutputStream;
    .restart local v12    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    .restart local v13    # "pathName":Ljava/lang/String;
    .restart local v14    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    .restart local v15    # "fileName":Ljava/lang/String;
    .restart local v16    # "transSz":J
    .restart local v18    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    :catchall_2
    move-exception v0

    move-wide/from16 v2, v16

    .end local v16    # "transSz":J
    .restart local v2    # "transSz":J
    :goto_5
    :try_start_d
    invoke-static {v10}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/OutputStream;)V

    .line 191
    nop

    .end local p0    # "this":Lorg/apache/ftpserver/command/impl/STOU;
    .end local p1    # "session":Lorg/apache/ftpserver/impl/FtpIoSession;
    .end local p2    # "context":Lorg/apache/ftpserver/impl/FtpServerContext;
    .end local p3    # "request":Lorg/apache/ftpserver/ftplet/FtpRequest;
    throw v0

    .line 139
    .end local v2    # "transSz":J
    .end local v18    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    .restart local p0    # "this":Lorg/apache/ftpserver/command/impl/STOU;
    .restart local p1    # "session":Lorg/apache/ftpserver/impl/FtpIoSession;
    .restart local p2    # "context":Lorg/apache/ftpserver/impl/FtpServerContext;
    .restart local p3    # "request":Lorg/apache/ftpserver/ftplet/FtpRequest;
    :catch_4
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, v1, Lorg/apache/ftpserver/command/impl/STOU;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Exception getting the input data stream"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    const/16 v5, 0x1a9

    const-string v6, "STOU"

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v7, v15

    move-object v8, v14

    invoke-static/range {v2 .. v8}, Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;

    move-result-object v2

    invoke-virtual {v11, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 201
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->closeDataConnection()V

    .line 144
    return-void

    .line 201
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "failure":Z
    .end local v10    # "os":Ljava/io/OutputStream;
    .end local v12    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    .end local v13    # "pathName":Ljava/lang/String;
    .end local v14    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    .end local v15    # "fileName":Ljava/lang/String;
    :catchall_3
    move-exception v0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->closeDataConnection()V

    .line 202
    throw v0
.end method

.method protected getUniqueFile(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/ftplet/FtpFile;
    .locals 6
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p2, "oldFile"    # Lorg/apache/ftpserver/ftplet/FtpFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 212
    move-object v0, p2

    .line 213
    .local v0, "newFile":Lorg/apache/ftpserver/ftplet/FtpFile;
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object v1

    .line 214
    .local v1, "fsView":Lorg/apache/ftpserver/ftplet/FileSystemView;
    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "fileName":Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpFile;->doesExist()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 216
    invoke-interface {v1, v3}, Lorg/apache/ftpserver/ftplet/FileSystemView;->getFile(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/FtpFile;

    move-result-object v0

    .line 218
    if-nez v0, :cond_0

    .line 222
    :cond_1
    return-object v0
.end method
