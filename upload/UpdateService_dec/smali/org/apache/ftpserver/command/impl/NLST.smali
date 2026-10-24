.class public Lorg/apache/ftpserver/command/impl/NLST;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "NLST.java"


# static fields
.field private static final LIST_FILE_FORMATER:Lorg/apache/ftpserver/command/impl/listing/LISTFileFormater;

.field private static final NLST_FILE_FORMATER:Lorg/apache/ftpserver/command/impl/listing/NLSTFileFormater;


# instance fields
.field private final LOG:Lorg/slf4j/Logger;

.field private final directoryLister:Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lorg/apache/ftpserver/command/impl/listing/NLSTFileFormater;

    invoke-direct {v0}, Lorg/apache/ftpserver/command/impl/listing/NLSTFileFormater;-><init>()V

    sput-object v0, Lorg/apache/ftpserver/command/impl/NLST;->NLST_FILE_FORMATER:Lorg/apache/ftpserver/command/impl/listing/NLSTFileFormater;

    .line 64
    new-instance v0, Lorg/apache/ftpserver/command/impl/listing/LISTFileFormater;

    invoke-direct {v0}, Lorg/apache/ftpserver/command/impl/listing/LISTFileFormater;-><init>()V

    sput-object v0, Lorg/apache/ftpserver/command/impl/NLST;->LIST_FILE_FORMATER:Lorg/apache/ftpserver/command/impl/listing/LISTFileFormater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    .line 60
    const-class v0, Lorg/apache/ftpserver/command/impl/NLST;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/NLST;->LOG:Lorg/slf4j/Logger;

    .line 66
    new-instance v0, Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;

    invoke-direct {v0}, Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/NLST;->directoryLister:Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 12
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p2, "context"    # Lorg/apache/ftpserver/impl/FtpServerContext;
    .param p3, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 78
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 82
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v0

    .line 83
    .local v0, "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    instance-of v1, v0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;

    if-eqz v1, :cond_0

    .line 84
    move-object v1, v0

    check-cast v1, Lorg/apache/ftpserver/impl/IODataConnectionFactory;

    .line 85
    invoke-virtual {v1}, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 86
    .local v1, "address":Ljava/net/InetAddress;
    if-nez v1, :cond_0

    .line 87
    new-instance v2, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;

    const/16 v3, 0x1f7

    const-string v4, "PORT or PASV must be issued first"

    invoke-direct {v2, v3, v4}, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->closeDataConnection()V

    .line 90
    return-void

    .line 95
    .end local v1    # "address":Ljava/net/InetAddress;
    :cond_0
    const/16 v4, 0x96

    :try_start_1
    const-string v5, "NLST"

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :try_start_2
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->openConnection()Lorg/apache/ftpserver/ftplet/DataConnection;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    .local v1, "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    nop

    .line 110
    const/4 v2, 0x0

    .line 113
    .local v2, "failure":Z
    nop

    .line 114
    :try_start_3
    invoke-interface {p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v3

    .line 113
    invoke-static {v3}, Lorg/apache/ftpserver/command/impl/listing/ListArgumentParser;->parse(Ljava/lang/String;)Lorg/apache/ftpserver/command/impl/listing/ListArgument;

    move-result-object v3

    .line 117
    .local v3, "parsedArg":Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    const/16 v4, 0x6c

    invoke-virtual {v3, v4}, Lorg/apache/ftpserver/command/impl/listing/ListArgument;->hasOption(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 118
    sget-object v4, Lorg/apache/ftpserver/command/impl/NLST;->LIST_FILE_FORMATER:Lorg/apache/ftpserver/command/impl/listing/LISTFileFormater;

    .local v4, "formater":Lorg/apache/ftpserver/command/impl/listing/FileFormater;
    goto :goto_0

    .line 120
    .end local v4    # "formater":Lorg/apache/ftpserver/command/impl/listing/FileFormater;
    :cond_1
    sget-object v4, Lorg/apache/ftpserver/command/impl/NLST;->NLST_FILE_FORMATER:Lorg/apache/ftpserver/command/impl/listing/NLSTFileFormater;

    .line 123
    .restart local v4    # "formater":Lorg/apache/ftpserver/command/impl/listing/FileFormater;
    :goto_0
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFtpletSession()Lorg/apache/ftpserver/ftplet/FtpSession;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ftpserver/command/impl/NLST;->directoryLister:Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;

    .line 124
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object v7

    .line 123
    invoke-virtual {v6, v3, v7, v4}, Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;->listFiles(Lorg/apache/ftpserver/command/impl/listing/ListArgument;Lorg/apache/ftpserver/ftplet/FileSystemView;Lorg/apache/ftpserver/command/impl/listing/FileFormater;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Lorg/apache/ftpserver/ftplet/DataConnection;->transferToClient(Lorg/apache/ftpserver/ftplet/FtpSession;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    .end local v3    # "parsedArg":Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    .end local v4    # "formater":Lorg/apache/ftpserver/command/impl/listing/FileFormater;
    goto :goto_1

    .line 142
    :catch_0
    move-exception v3

    .line 143
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4
    iget-object v4, p0, Lorg/apache/ftpserver/command/impl/NLST;->LOG:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal listing syntax: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-interface {p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 144
    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    const/16 v9, 0x1f5

    const-string v10, "LIST"

    const/4 v11, 0x0

    .line 149
    move-object v6, p1

    move-object v7, p3

    move-object v8, p2

    invoke-static/range {v6 .. v11}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v4

    .line 148
    invoke-virtual {p1, v4}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    goto :goto_1

    .line 131
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    .line 132
    .local v3, "ex":Ljava/io/IOException;
    iget-object v4, p0, Lorg/apache/ftpserver/command/impl/NLST;->LOG:Lorg/slf4j/Logger;

    const-string v5, "IOException during data transfer"

    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    const/4 v2, 0x1

    .line 134
    const/16 v7, 0x227

    const-string v8, "NLST"

    const/4 v9, 0x0

    .line 136
    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    invoke-static/range {v4 .. v9}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v4

    .line 135
    invoke-virtual {p1, v4}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 155
    nop

    .end local v3    # "ex":Ljava/io/IOException;
    goto :goto_1

    .line 125
    :catch_2
    move-exception v3

    .line 126
    .local v3, "ex":Ljava/net/SocketException;
    iget-object v4, p0, Lorg/apache/ftpserver/command/impl/NLST;->LOG:Lorg/slf4j/Logger;

    const-string v5, "Socket exception during data transfer"

    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    const/4 v2, 0x1

    .line 128
    const/16 v7, 0x1aa

    const-string v8, "NLST"

    const/4 v9, 0x0

    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    invoke-static/range {v4 .. v9}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 155
    nop

    .line 158
    .end local v3    # "ex":Ljava/net/SocketException;
    :goto_1
    if-nez v2, :cond_2

    .line 159
    const/16 v6, 0xe2

    const-string v7, "NLST"

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-static/range {v3 .. v8}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 164
    .end local v0    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    .end local v1    # "dataConnection":Lorg/apache/ftpserver/ftplet/DataConnection;
    .end local v2    # "failure":Z
    :cond_2
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->closeDataConnection()V

    .line 165
    nop

    .line 166
    return-void

    .line 102
    .restart local v0    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    :catch_3
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    iget-object v2, p0, Lorg/apache/ftpserver/command/impl/NLST;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Exception getting the output data stream"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    const/16 v7, 0x1a9

    const-string v8, "NLST"

    const/4 v9, 0x0

    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    invoke-static/range {v4 .. v9}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 164
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->closeDataConnection()V

    .line 107
    return-void

    .line 164
    .end local v0    # "connFactory":Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->closeDataConnection()V

    .line 165
    throw v0
.end method
