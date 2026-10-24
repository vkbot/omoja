.class public Lorg/apache/ftpserver/command/impl/LIST;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "LIST.java"


# static fields
.field private static final LIST_FILE_FORMATER:Lorg/apache/ftpserver/command/impl/listing/LISTFileFormater;


# instance fields
.field private final LOG:Lorg/slf4j/Logger;

.field private final directoryLister:Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lorg/apache/ftpserver/command/impl/listing/LISTFileFormater;

    invoke-direct {v0}, Lorg/apache/ftpserver/command/impl/listing/LISTFileFormater;-><init>()V

    sput-object v0, Lorg/apache/ftpserver/command/impl/LIST;->LIST_FILE_FORMATER:Lorg/apache/ftpserver/command/impl/listing/LISTFileFormater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    .line 62
    const-class v0, Lorg/apache/ftpserver/command/impl/LIST;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/LIST;->LOG:Lorg/slf4j/Logger;

    .line 66
    new-instance v0, Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;

    invoke-direct {v0}, Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/LIST;->directoryLister:Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 18
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

    move-object/from16 v15, p1

    .line 78
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 81
    nop

    .line 82
    invoke-interface/range {p3 .. p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {v0}, Lorg/apache/ftpserver/command/impl/listing/ListArgumentParser;->parse(Ljava/lang/String;)Lorg/apache/ftpserver/command/impl/listing/ListArgument;

    move-result-object v0

    move-object v14, v0

    .line 85
    .local v14, "parsedArg":Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object v0

    invoke-virtual {v14}, Lorg/apache/ftpserver/command/impl/listing/ListArgument;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/ftpserver/ftplet/FileSystemView;->getFile(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/FtpFile;

    move-result-object v8

    .line 87
    .local v8, "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    invoke-interface {v8}, Lorg/apache/ftpserver/ftplet/FtpFile;->doesExist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, v1, Lorg/apache/ftpserver/command/impl/LIST;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Listing on a non-existing file"

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 89
    const/16 v5, 0x1c2

    const-string v6, "LIST"

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v8}, Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;

    move-result-object v0

    invoke-virtual {v15, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 167
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->closeDataConnection()V

    .line 92
    return-void

    .line 97
    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v0

    move-object v13, v0

    .line 98
    .local v13, "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    instance-of v0, v13, Lorg/apache/ftpserver/impl/IODataConnectionFactory;

    if-eqz v0, :cond_1

    .line 99
    move-object v0, v13

    check-cast v0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;

    .line 100
    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 101
    .local v0, "address":Ljava/net/InetAddress;
    if-nez v0, :cond_1

    .line 102
    new-instance v2, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;

    const/16 v3, 0x1f7

    const-string v4, "PORT or PASV must be issued first"

    invoke-direct {v2, v3, v4}, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;-><init>(ILjava/lang/String;)V

    invoke-virtual {v15, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 167
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->closeDataConnection()V

    .line 105
    return-void

    .line 110
    .end local v0    # "address":Ljava/net/InetAddress;
    :cond_1
    const/16 v5, 0x96

    :try_start_2
    const-string v6, "LIST"

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {v15, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 115
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->openConnection()Lorg/apache/ftpserver/ftplet/DataConnection;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v0

    .line 122
    .local v2, "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    nop

    .line 125
    const/4 v3, 0x0

    .line 126
    .local v3, "failure":Z
    :try_start_4
    iget-object v0, v1, Lorg/apache/ftpserver/command/impl/LIST;->directoryLister:Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;

    .line 127
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object v4

    sget-object v5, Lorg/apache/ftpserver/command/impl/LIST;->LIST_FILE_FORMATER:Lorg/apache/ftpserver/command/impl/listing/LISTFileFormater;

    .line 126
    invoke-virtual {v0, v14, v4, v5}, Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;->listFiles(Lorg/apache/ftpserver/command/impl/listing/ListArgument;Lorg/apache/ftpserver/ftplet/FileSystemView;Lorg/apache/ftpserver/command/impl/listing/FileFormater;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v4, v0

    .line 129
    .local v4, "dirList":Ljava/lang/String;
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFtpletSession()Lorg/apache/ftpserver/ftplet/FtpSession;

    move-result-object v0
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-interface {v2, v0, v4}, Lorg/apache/ftpserver/ftplet/DataConnection;->transferToClient(Lorg/apache/ftpserver/ftplet/FtpSession;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 158
    move-object v7, v13

    move-object v5, v14

    move-object v6, v15

    goto/16 :goto_2

    .line 136
    :catch_0
    move-exception v0

    move-object v7, v13

    move-object v5, v14

    move-object v6, v15

    goto :goto_0

    .line 130
    :catch_1
    move-exception v0

    move-object v7, v13

    move-object v5, v14

    move-object v6, v15

    goto/16 :goto_1

    .line 147
    :catch_2
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_7
    iget-object v5, v1, Lorg/apache/ftpserver/command/impl/LIST;->LOG:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal list syntax: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    const/16 v12, 0x1f5

    const-string v5, "LIST"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v6, 0x0

    .line 152
    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p2

    move-object v7, v13

    .end local v13    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    .local v7, "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    move-object v13, v5

    move-object v5, v14

    .end local v14    # "parsedArg":Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    .local v5, "parsedArg":Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    move-object v14, v6

    move-object v6, v15

    move-object v15, v8

    :try_start_8
    invoke-static/range {v9 .. v15}, Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;

    move-result-object v9

    .line 151
    invoke-virtual {v6, v9}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    goto :goto_2

    .line 136
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "parsedArg":Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    .end local v7    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    .restart local v13    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    .restart local v14    # "parsedArg":Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    :catch_3
    move-exception v0

    move-object v7, v13

    move-object v5, v14

    move-object v6, v15

    .line 137
    .end local v13    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    .end local v14    # "parsedArg":Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    .local v0, "ex":Ljava/io/IOException;
    .restart local v5    # "parsedArg":Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    .restart local v7    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    :goto_0
    iget-object v9, v1, Lorg/apache/ftpserver/command/impl/LIST;->LOG:Lorg/slf4j/Logger;

    const-string v10, "IOException during list transfer"

    invoke-interface {v9, v10, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    const/4 v3, 0x1

    .line 139
    const/16 v12, 0x227

    const-string v13, "LIST"

    const/4 v14, 0x0

    .line 141
    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p2

    move-object v15, v8

    invoke-static/range {v9 .. v15}, Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;

    move-result-object v9

    .line 140
    invoke-virtual {v6, v9}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 158
    nop

    .end local v0    # "ex":Ljava/io/IOException;
    goto :goto_2

    .line 130
    .end local v5    # "parsedArg":Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    .end local v7    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    .restart local v13    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    .restart local v14    # "parsedArg":Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    :catch_4
    move-exception v0

    move-object v7, v13

    move-object v5, v14

    move-object v6, v15

    .line 131
    .end local v13    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    .end local v14    # "parsedArg":Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    .local v0, "ex":Ljava/net/SocketException;
    .restart local v5    # "parsedArg":Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    .restart local v7    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    :goto_1
    iget-object v9, v1, Lorg/apache/ftpserver/command/impl/LIST;->LOG:Lorg/slf4j/Logger;

    const-string v10, "Socket exception during list transfer"

    invoke-interface {v9, v10, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    const/4 v3, 0x1

    .line 133
    const/16 v12, 0x1aa

    const-string v13, "LIST"

    const/4 v14, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p2

    move-object v15, v8

    invoke-static/range {v9 .. v15}, Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 158
    nop

    .line 161
    .end local v0    # "ex":Ljava/net/SocketException;
    :goto_2
    if-nez v3, :cond_2

    .line 162
    const/16 v12, 0xe2

    const-string v13, "LIST"

    const/4 v14, 0x0

    .line 164
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v10, v0

    .line 162
    move-object/from16 v9, p1

    move-wide/from16 v16, v10

    move-object/from16 v10, p3

    move-object/from16 v11, p2

    move-object v15, v8

    invoke-static/range {v9 .. v17}, Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;J)Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 167
    .end local v2    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    .end local v3    # "failure":Z
    .end local v4    # "dirList":Ljava/lang/String;
    .end local v5    # "parsedArg":Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    .end local v7    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    .end local v8    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->closeDataConnection()V

    .line 168
    nop

    .line 169
    return-void

    .line 116
    .restart local v8    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    .restart local v13    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    .restart local v14    # "parsedArg":Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    :catch_5
    move-exception v0

    move-object v7, v13

    move-object v5, v14

    move-object v6, v15

    .line 117
    .end local v13    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    .end local v14    # "parsedArg":Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v5    # "parsedArg":Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    .restart local v7    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    :try_start_9
    iget-object v2, v1, Lorg/apache/ftpserver/command/impl/LIST;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Exception getting the output data stream"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    const/16 v12, 0x1a9

    const-string v13, "LIST"

    const/4 v14, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p2

    move-object v15, v8

    invoke-static/range {v9 .. v15}, Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;

    move-result-object v2

    invoke-virtual {v6, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 167
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->closeDataConnection()V

    .line 121
    return-void

    .line 167
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "parsedArg":Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    .end local v7    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    .end local v8    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v6, v15

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->closeDataConnection()V

    .line 168
    throw v0
.end method
